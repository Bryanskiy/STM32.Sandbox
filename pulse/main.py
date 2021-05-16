import serial
import pyaudio
import numpy as np
import wave
import scipy.signal as signal
import warnings
import matplotlib.pyplot as plt
import matplotlib as mpl
import matplotlib.animation as animation
warnings.filterwarnings('ignore')

def serial_init(speed):
    dev = serial.Serial(
        # Здесь указывается устройство, с которым будет производится работа
        # /dev/ttyUSBx - для Linux
        # /dev/tty.SLAB_USBtoUART - для MacOS
        port='/dev/ttyUSB0', 
        # Скорость передачи
        baudrate=speed,
        # Использование бита четности
        parity=serial.PARITY_NONE,
        # Длина стоп-бита
        stopbits=serial.STOPBITS_ONE,
        # Длина пакета
        bytesize=serial.EIGHTBITS,
        # Максимальное время ожидания устройства
        timeout=0.1
    )
    return dev

def serial_recv(dev):
    # Для простоты макс. кол-во символов для чтения - 255. Время ожидания - 0.1
    # decode необходим для конвертирования набора полученных байтов в строку
    ret = dev.read(1).decode()
    return ret

def serial_send(dev, string):
    # encode конвертирует строку в кодировке utf-8 в набор байтов 
    dev.write(string.encode('utf-8'))
    
def serial_get_int(dev):
    char = serial_recv(dev)
    ret = 0
    while char != ' ':
        ret = ret * 10 + int(char)
        char = serial_recv(dev)
    return ret  


dev = serial_init(115200)
fig = plt.figure()
ax1 = fig.add_subplot(1, 1, 1)
data = []
while len(data) < 1000:
        data.append(serial_get_int(dev))
x = np.linspace(1, 1000, 1000)

def animate(i):
    # init data array
    data.append(serial_get_int(dev))
    data.pop(0)

    ax1.clear()
    ax1.plot(x, data)


ani = animation.FuncAnimation(fig, animate, interval=50)
plt.show()  