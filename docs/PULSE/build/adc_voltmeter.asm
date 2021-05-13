
build/adc_voltmeter.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             00001464  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           000005ac  08001524  08001524  00011524  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  08001ad0  08001ad0  00011ad0  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  08001ad8  08001ad8  00011ad8  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             0000043c  20000000  08001adc  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              00000474  2000043c  08001f18  0002043c  2**2  ALLOC
  7 ._user_heap_stack 00000600  200008b0  08001f18  000208b0  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  0002043c  2**0  CONTENTS, READONLY
  9 .debug_info       0000476c  00000000  00000000  00020464  2**0  CONTENTS, READONLY, DEBUGGING
 10 .debug_abbrev     00000c6f  00000000  00000000  00024bd0  2**0  CONTENTS, READONLY, DEBUGGING
 11 .debug_loc        0000235d  00000000  00000000  0002583f  2**0  CONTENTS, READONLY, DEBUGGING
 12 .debug_aranges    00000188  00000000  00000000  00027b9c  2**0  CONTENTS, READONLY, DEBUGGING
 13 .debug_ranges     00000188  00000000  00000000  00027d24  2**0  CONTENTS, READONLY, DEBUGGING
 14 .debug_line       00000c52  00000000  00000000  00027eac  2**0  CONTENTS, READONLY, DEBUGGING
 15 .debug_str        000012e1  00000000  00000000  00028afe  2**0  CONTENTS, READONLY, DEBUGGING
 16 .comment          0000007f  00000000  00000000  00029ddf  2**0  CONTENTS, READONLY
 17 .debug_frame      00000660  00000000  00000000  00029e60  2**2  CONTENTS, READONLY, DEBUGGING

Disassembly of section .text:

080000c0 <__do_global_dtors_aux>:
 80000c0:	b510      	push	{r4, lr}
 80000c2:	4c06      	ldr	r4, [pc, #24]	; (80000dc <__do_global_dtors_aux+0x1c>)
 80000c4:	7823      	ldrb	r3, [r4, #0]
 80000c6:	2b00      	cmp	r3, #0
 80000c8:	d107      	bne.n	80000da <__do_global_dtors_aux+0x1a>
 80000ca:	4b05      	ldr	r3, [pc, #20]	; (80000e0 <__do_global_dtors_aux+0x20>)
 80000cc:	2b00      	cmp	r3, #0
 80000ce:	d002      	beq.n	80000d6 <__do_global_dtors_aux+0x16>
 80000d0:	4804      	ldr	r0, [pc, #16]	; (80000e4 <__do_global_dtors_aux+0x24>)
 80000d2:	e000      	b.n	80000d6 <__do_global_dtors_aux+0x16>
 80000d4:	bf00      	nop
 80000d6:	2301      	movs	r3, #1
 80000d8:	7023      	strb	r3, [r4, #0]
 80000da:	bd10      	pop	{r4, pc}
 80000dc:	2000043c 	.word	0x2000043c
 80000e0:	00000000 	.word	0x00000000
 80000e4:	0800150c 	.word	0x0800150c

080000e8 <frame_dummy>:
 80000e8:	4b04      	ldr	r3, [pc, #16]	; (80000fc <frame_dummy+0x14>)
 80000ea:	b510      	push	{r4, lr}
 80000ec:	2b00      	cmp	r3, #0
 80000ee:	d003      	beq.n	80000f8 <frame_dummy+0x10>
 80000f0:	4903      	ldr	r1, [pc, #12]	; (8000100 <frame_dummy+0x18>)
 80000f2:	4804      	ldr	r0, [pc, #16]	; (8000104 <frame_dummy+0x1c>)
 80000f4:	e000      	b.n	80000f8 <frame_dummy+0x10>
 80000f6:	bf00      	nop
 80000f8:	bd10      	pop	{r4, pc}
 80000fa:	46c0      	nop			; (mov r8, r8)
 80000fc:	00000000 	.word	0x00000000
 8000100:	20000440 	.word	0x20000440
 8000104:	0800150c 	.word	0x0800150c

08000108 <__udivsi3>:
 8000108:	2200      	movs	r2, #0
 800010a:	0843      	lsrs	r3, r0, #1
 800010c:	428b      	cmp	r3, r1
 800010e:	d374      	bcc.n	80001fa <__udivsi3+0xf2>
 8000110:	0903      	lsrs	r3, r0, #4
 8000112:	428b      	cmp	r3, r1
 8000114:	d35f      	bcc.n	80001d6 <__udivsi3+0xce>
 8000116:	0a03      	lsrs	r3, r0, #8
 8000118:	428b      	cmp	r3, r1
 800011a:	d344      	bcc.n	80001a6 <__udivsi3+0x9e>
 800011c:	0b03      	lsrs	r3, r0, #12
 800011e:	428b      	cmp	r3, r1
 8000120:	d328      	bcc.n	8000174 <__udivsi3+0x6c>
 8000122:	0c03      	lsrs	r3, r0, #16
 8000124:	428b      	cmp	r3, r1
 8000126:	d30d      	bcc.n	8000144 <__udivsi3+0x3c>
 8000128:	22ff      	movs	r2, #255	; 0xff
 800012a:	0209      	lsls	r1, r1, #8
 800012c:	ba12      	rev	r2, r2
 800012e:	0c03      	lsrs	r3, r0, #16
 8000130:	428b      	cmp	r3, r1
 8000132:	d302      	bcc.n	800013a <__udivsi3+0x32>
 8000134:	1212      	asrs	r2, r2, #8
 8000136:	0209      	lsls	r1, r1, #8
 8000138:	d065      	beq.n	8000206 <__udivsi3+0xfe>
 800013a:	0b03      	lsrs	r3, r0, #12
 800013c:	428b      	cmp	r3, r1
 800013e:	d319      	bcc.n	8000174 <__udivsi3+0x6c>
 8000140:	e000      	b.n	8000144 <__udivsi3+0x3c>
 8000142:	0a09      	lsrs	r1, r1, #8
 8000144:	0bc3      	lsrs	r3, r0, #15
 8000146:	428b      	cmp	r3, r1
 8000148:	d301      	bcc.n	800014e <__udivsi3+0x46>
 800014a:	03cb      	lsls	r3, r1, #15
 800014c:	1ac0      	subs	r0, r0, r3
 800014e:	4152      	adcs	r2, r2
 8000150:	0b83      	lsrs	r3, r0, #14
 8000152:	428b      	cmp	r3, r1
 8000154:	d301      	bcc.n	800015a <__udivsi3+0x52>
 8000156:	038b      	lsls	r3, r1, #14
 8000158:	1ac0      	subs	r0, r0, r3
 800015a:	4152      	adcs	r2, r2
 800015c:	0b43      	lsrs	r3, r0, #13
 800015e:	428b      	cmp	r3, r1
 8000160:	d301      	bcc.n	8000166 <__udivsi3+0x5e>
 8000162:	034b      	lsls	r3, r1, #13
 8000164:	1ac0      	subs	r0, r0, r3
 8000166:	4152      	adcs	r2, r2
 8000168:	0b03      	lsrs	r3, r0, #12
 800016a:	428b      	cmp	r3, r1
 800016c:	d301      	bcc.n	8000172 <__udivsi3+0x6a>
 800016e:	030b      	lsls	r3, r1, #12
 8000170:	1ac0      	subs	r0, r0, r3
 8000172:	4152      	adcs	r2, r2
 8000174:	0ac3      	lsrs	r3, r0, #11
 8000176:	428b      	cmp	r3, r1
 8000178:	d301      	bcc.n	800017e <__udivsi3+0x76>
 800017a:	02cb      	lsls	r3, r1, #11
 800017c:	1ac0      	subs	r0, r0, r3
 800017e:	4152      	adcs	r2, r2
 8000180:	0a83      	lsrs	r3, r0, #10
 8000182:	428b      	cmp	r3, r1
 8000184:	d301      	bcc.n	800018a <__udivsi3+0x82>
 8000186:	028b      	lsls	r3, r1, #10
 8000188:	1ac0      	subs	r0, r0, r3
 800018a:	4152      	adcs	r2, r2
 800018c:	0a43      	lsrs	r3, r0, #9
 800018e:	428b      	cmp	r3, r1
 8000190:	d301      	bcc.n	8000196 <__udivsi3+0x8e>
 8000192:	024b      	lsls	r3, r1, #9
 8000194:	1ac0      	subs	r0, r0, r3
 8000196:	4152      	adcs	r2, r2
 8000198:	0a03      	lsrs	r3, r0, #8
 800019a:	428b      	cmp	r3, r1
 800019c:	d301      	bcc.n	80001a2 <__udivsi3+0x9a>
 800019e:	020b      	lsls	r3, r1, #8
 80001a0:	1ac0      	subs	r0, r0, r3
 80001a2:	4152      	adcs	r2, r2
 80001a4:	d2cd      	bcs.n	8000142 <__udivsi3+0x3a>
 80001a6:	09c3      	lsrs	r3, r0, #7
 80001a8:	428b      	cmp	r3, r1
 80001aa:	d301      	bcc.n	80001b0 <__udivsi3+0xa8>
 80001ac:	01cb      	lsls	r3, r1, #7
 80001ae:	1ac0      	subs	r0, r0, r3
 80001b0:	4152      	adcs	r2, r2
 80001b2:	0983      	lsrs	r3, r0, #6
 80001b4:	428b      	cmp	r3, r1
 80001b6:	d301      	bcc.n	80001bc <__udivsi3+0xb4>
 80001b8:	018b      	lsls	r3, r1, #6
 80001ba:	1ac0      	subs	r0, r0, r3
 80001bc:	4152      	adcs	r2, r2
 80001be:	0943      	lsrs	r3, r0, #5
 80001c0:	428b      	cmp	r3, r1
 80001c2:	d301      	bcc.n	80001c8 <__udivsi3+0xc0>
 80001c4:	014b      	lsls	r3, r1, #5
 80001c6:	1ac0      	subs	r0, r0, r3
 80001c8:	4152      	adcs	r2, r2
 80001ca:	0903      	lsrs	r3, r0, #4
 80001cc:	428b      	cmp	r3, r1
 80001ce:	d301      	bcc.n	80001d4 <__udivsi3+0xcc>
 80001d0:	010b      	lsls	r3, r1, #4
 80001d2:	1ac0      	subs	r0, r0, r3
 80001d4:	4152      	adcs	r2, r2
 80001d6:	08c3      	lsrs	r3, r0, #3
 80001d8:	428b      	cmp	r3, r1
 80001da:	d301      	bcc.n	80001e0 <__udivsi3+0xd8>
 80001dc:	00cb      	lsls	r3, r1, #3
 80001de:	1ac0      	subs	r0, r0, r3
 80001e0:	4152      	adcs	r2, r2
 80001e2:	0883      	lsrs	r3, r0, #2
 80001e4:	428b      	cmp	r3, r1
 80001e6:	d301      	bcc.n	80001ec <__udivsi3+0xe4>
 80001e8:	008b      	lsls	r3, r1, #2
 80001ea:	1ac0      	subs	r0, r0, r3
 80001ec:	4152      	adcs	r2, r2
 80001ee:	0843      	lsrs	r3, r0, #1
 80001f0:	428b      	cmp	r3, r1
 80001f2:	d301      	bcc.n	80001f8 <__udivsi3+0xf0>
 80001f4:	004b      	lsls	r3, r1, #1
 80001f6:	1ac0      	subs	r0, r0, r3
 80001f8:	4152      	adcs	r2, r2
 80001fa:	1a41      	subs	r1, r0, r1
 80001fc:	d200      	bcs.n	8000200 <__udivsi3+0xf8>
 80001fe:	4601      	mov	r1, r0
 8000200:	4152      	adcs	r2, r2
 8000202:	4610      	mov	r0, r2
 8000204:	4770      	bx	lr
 8000206:	e7ff      	b.n	8000208 <__udivsi3+0x100>
 8000208:	b501      	push	{r0, lr}
 800020a:	2000      	movs	r0, #0
 800020c:	f000 f806 	bl	800021c <__aeabi_idiv0>
 8000210:	bd02      	pop	{r1, pc}
 8000212:	46c0      	nop			; (mov r8, r8)

08000214 <__aeabi_uidivmod>:
 8000214:	2900      	cmp	r1, #0
 8000216:	d0f7      	beq.n	8000208 <__udivsi3+0x100>
 8000218:	e776      	b.n	8000108 <__udivsi3>
 800021a:	4770      	bx	lr

0800021c <__aeabi_idiv0>:
 800021c:	4770      	bx	lr
 800021e:	46c0      	nop			; (mov r8, r8)

08000220 <__aeabi_fadd>:
 8000220:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000222:	4647      	mov	r7, r8
 8000224:	46ce      	mov	lr, r9
 8000226:	0243      	lsls	r3, r0, #9
 8000228:	0a5b      	lsrs	r3, r3, #9
 800022a:	0044      	lsls	r4, r0, #1
 800022c:	0fc2      	lsrs	r2, r0, #31
 800022e:	469c      	mov	ip, r3
 8000230:	0048      	lsls	r0, r1, #1
 8000232:	00dd      	lsls	r5, r3, #3
 8000234:	024b      	lsls	r3, r1, #9
 8000236:	0e24      	lsrs	r4, r4, #24
 8000238:	0a5b      	lsrs	r3, r3, #9
 800023a:	0e00      	lsrs	r0, r0, #24
 800023c:	b580      	push	{r7, lr}
 800023e:	4698      	mov	r8, r3
 8000240:	0026      	movs	r6, r4
 8000242:	4691      	mov	r9, r2
 8000244:	0fc9      	lsrs	r1, r1, #31
 8000246:	00db      	lsls	r3, r3, #3
 8000248:	1a27      	subs	r7, r4, r0
 800024a:	428a      	cmp	r2, r1
 800024c:	d029      	beq.n	80002a2 <__aeabi_fadd+0x82>
 800024e:	2f00      	cmp	r7, #0
 8000250:	dd15      	ble.n	800027e <__aeabi_fadd+0x5e>
 8000252:	2800      	cmp	r0, #0
 8000254:	d14a      	bne.n	80002ec <__aeabi_fadd+0xcc>
 8000256:	2b00      	cmp	r3, #0
 8000258:	d000      	beq.n	800025c <__aeabi_fadd+0x3c>
 800025a:	e095      	b.n	8000388 <__aeabi_fadd+0x168>
 800025c:	08ed      	lsrs	r5, r5, #3
 800025e:	2cff      	cmp	r4, #255	; 0xff
 8000260:	d100      	bne.n	8000264 <__aeabi_fadd+0x44>
 8000262:	e088      	b.n	8000376 <__aeabi_fadd+0x156>
 8000264:	026b      	lsls	r3, r5, #9
 8000266:	0a5b      	lsrs	r3, r3, #9
 8000268:	b2e6      	uxtb	r6, r4
 800026a:	025b      	lsls	r3, r3, #9
 800026c:	05f6      	lsls	r6, r6, #23
 800026e:	0a58      	lsrs	r0, r3, #9
 8000270:	4330      	orrs	r0, r6
 8000272:	07d2      	lsls	r2, r2, #31
 8000274:	4310      	orrs	r0, r2
 8000276:	bc0c      	pop	{r2, r3}
 8000278:	4690      	mov	r8, r2
 800027a:	4699      	mov	r9, r3
 800027c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800027e:	2f00      	cmp	r7, #0
 8000280:	d000      	beq.n	8000284 <__aeabi_fadd+0x64>
 8000282:	e087      	b.n	8000394 <__aeabi_fadd+0x174>
 8000284:	1c60      	adds	r0, r4, #1
 8000286:	b2c0      	uxtb	r0, r0
 8000288:	2801      	cmp	r0, #1
 800028a:	dc00      	bgt.n	800028e <__aeabi_fadd+0x6e>
 800028c:	e0b6      	b.n	80003fc <__aeabi_fadd+0x1dc>
 800028e:	1aee      	subs	r6, r5, r3
 8000290:	0172      	lsls	r2, r6, #5
 8000292:	d500      	bpl.n	8000296 <__aeabi_fadd+0x76>
 8000294:	e0c5      	b.n	8000422 <__aeabi_fadd+0x202>
 8000296:	2e00      	cmp	r6, #0
 8000298:	d13d      	bne.n	8000316 <__aeabi_fadd+0xf6>
 800029a:	2200      	movs	r2, #0
 800029c:	2600      	movs	r6, #0
 800029e:	2300      	movs	r3, #0
 80002a0:	e7e3      	b.n	800026a <__aeabi_fadd+0x4a>
 80002a2:	2f00      	cmp	r7, #0
 80002a4:	dc00      	bgt.n	80002a8 <__aeabi_fadd+0x88>
 80002a6:	e096      	b.n	80003d6 <__aeabi_fadd+0x1b6>
 80002a8:	2800      	cmp	r0, #0
 80002aa:	d05d      	beq.n	8000368 <__aeabi_fadd+0x148>
 80002ac:	2cff      	cmp	r4, #255	; 0xff
 80002ae:	d060      	beq.n	8000372 <__aeabi_fadd+0x152>
 80002b0:	2280      	movs	r2, #128	; 0x80
 80002b2:	04d2      	lsls	r2, r2, #19
 80002b4:	4313      	orrs	r3, r2
 80002b6:	2f1b      	cmp	r7, #27
 80002b8:	dd00      	ble.n	80002bc <__aeabi_fadd+0x9c>
 80002ba:	e0ec      	b.n	8000496 <__aeabi_fadd+0x276>
 80002bc:	2220      	movs	r2, #32
 80002be:	1bd2      	subs	r2, r2, r7
 80002c0:	0018      	movs	r0, r3
 80002c2:	4093      	lsls	r3, r2
 80002c4:	40f8      	lsrs	r0, r7
 80002c6:	1e5a      	subs	r2, r3, #1
 80002c8:	4193      	sbcs	r3, r2
 80002ca:	4303      	orrs	r3, r0
 80002cc:	18ed      	adds	r5, r5, r3
 80002ce:	016b      	lsls	r3, r5, #5
 80002d0:	d57b      	bpl.n	80003ca <__aeabi_fadd+0x1aa>
 80002d2:	3401      	adds	r4, #1
 80002d4:	2cff      	cmp	r4, #255	; 0xff
 80002d6:	d100      	bne.n	80002da <__aeabi_fadd+0xba>
 80002d8:	e0b7      	b.n	800044a <__aeabi_fadd+0x22a>
 80002da:	2201      	movs	r2, #1
 80002dc:	2607      	movs	r6, #7
 80002de:	402a      	ands	r2, r5
 80002e0:	086b      	lsrs	r3, r5, #1
 80002e2:	4d9a      	ldr	r5, [pc, #616]	; (800054c <__aeabi_fadd+0x32c>)
 80002e4:	401d      	ands	r5, r3
 80002e6:	4315      	orrs	r5, r2
 80002e8:	402e      	ands	r6, r5
 80002ea:	e029      	b.n	8000340 <__aeabi_fadd+0x120>
 80002ec:	2cff      	cmp	r4, #255	; 0xff
 80002ee:	d0b5      	beq.n	800025c <__aeabi_fadd+0x3c>
 80002f0:	2280      	movs	r2, #128	; 0x80
 80002f2:	04d2      	lsls	r2, r2, #19
 80002f4:	4313      	orrs	r3, r2
 80002f6:	2f1b      	cmp	r7, #27
 80002f8:	dd00      	ble.n	80002fc <__aeabi_fadd+0xdc>
 80002fa:	e0b2      	b.n	8000462 <__aeabi_fadd+0x242>
 80002fc:	2220      	movs	r2, #32
 80002fe:	1bd2      	subs	r2, r2, r7
 8000300:	0019      	movs	r1, r3
 8000302:	4093      	lsls	r3, r2
 8000304:	40f9      	lsrs	r1, r7
 8000306:	1e5a      	subs	r2, r3, #1
 8000308:	4193      	sbcs	r3, r2
 800030a:	430b      	orrs	r3, r1
 800030c:	1aed      	subs	r5, r5, r3
 800030e:	016b      	lsls	r3, r5, #5
 8000310:	d55b      	bpl.n	80003ca <__aeabi_fadd+0x1aa>
 8000312:	01ad      	lsls	r5, r5, #6
 8000314:	09ae      	lsrs	r6, r5, #6
 8000316:	0030      	movs	r0, r6
 8000318:	f000 fab8 	bl	800088c <__clzsi2>
 800031c:	3805      	subs	r0, #5
 800031e:	4086      	lsls	r6, r0
 8000320:	4284      	cmp	r4, r0
 8000322:	dc65      	bgt.n	80003f0 <__aeabi_fadd+0x1d0>
 8000324:	1b04      	subs	r4, r0, r4
 8000326:	0033      	movs	r3, r6
 8000328:	2020      	movs	r0, #32
 800032a:	3401      	adds	r4, #1
 800032c:	40e3      	lsrs	r3, r4
 800032e:	1b04      	subs	r4, r0, r4
 8000330:	40a6      	lsls	r6, r4
 8000332:	1e75      	subs	r5, r6, #1
 8000334:	41ae      	sbcs	r6, r5
 8000336:	4333      	orrs	r3, r6
 8000338:	2607      	movs	r6, #7
 800033a:	001d      	movs	r5, r3
 800033c:	2400      	movs	r4, #0
 800033e:	401e      	ands	r6, r3
 8000340:	2201      	movs	r2, #1
 8000342:	464b      	mov	r3, r9
 8000344:	401a      	ands	r2, r3
 8000346:	2e00      	cmp	r6, #0
 8000348:	d004      	beq.n	8000354 <__aeabi_fadd+0x134>
 800034a:	230f      	movs	r3, #15
 800034c:	402b      	ands	r3, r5
 800034e:	2b04      	cmp	r3, #4
 8000350:	d000      	beq.n	8000354 <__aeabi_fadd+0x134>
 8000352:	3504      	adds	r5, #4
 8000354:	016b      	lsls	r3, r5, #5
 8000356:	d400      	bmi.n	800035a <__aeabi_fadd+0x13a>
 8000358:	e780      	b.n	800025c <__aeabi_fadd+0x3c>
 800035a:	3401      	adds	r4, #1
 800035c:	b2e6      	uxtb	r6, r4
 800035e:	2cff      	cmp	r4, #255	; 0xff
 8000360:	d12f      	bne.n	80003c2 <__aeabi_fadd+0x1a2>
 8000362:	26ff      	movs	r6, #255	; 0xff
 8000364:	2300      	movs	r3, #0
 8000366:	e780      	b.n	800026a <__aeabi_fadd+0x4a>
 8000368:	2b00      	cmp	r3, #0
 800036a:	d152      	bne.n	8000412 <__aeabi_fadd+0x1f2>
 800036c:	2cff      	cmp	r4, #255	; 0xff
 800036e:	d000      	beq.n	8000372 <__aeabi_fadd+0x152>
 8000370:	e774      	b.n	800025c <__aeabi_fadd+0x3c>
 8000372:	000a      	movs	r2, r1
 8000374:	08ed      	lsrs	r5, r5, #3
 8000376:	2d00      	cmp	r5, #0
 8000378:	d0f3      	beq.n	8000362 <__aeabi_fadd+0x142>
 800037a:	2380      	movs	r3, #128	; 0x80
 800037c:	03db      	lsls	r3, r3, #15
 800037e:	432b      	orrs	r3, r5
 8000380:	025b      	lsls	r3, r3, #9
 8000382:	0a5b      	lsrs	r3, r3, #9
 8000384:	26ff      	movs	r6, #255	; 0xff
 8000386:	e770      	b.n	800026a <__aeabi_fadd+0x4a>
 8000388:	3f01      	subs	r7, #1
 800038a:	2f00      	cmp	r7, #0
 800038c:	d0be      	beq.n	800030c <__aeabi_fadd+0xec>
 800038e:	2cff      	cmp	r4, #255	; 0xff
 8000390:	d1b1      	bne.n	80002f6 <__aeabi_fadd+0xd6>
 8000392:	e763      	b.n	800025c <__aeabi_fadd+0x3c>
 8000394:	2c00      	cmp	r4, #0
 8000396:	d047      	beq.n	8000428 <__aeabi_fadd+0x208>
 8000398:	28ff      	cmp	r0, #255	; 0xff
 800039a:	d069      	beq.n	8000470 <__aeabi_fadd+0x250>
 800039c:	2480      	movs	r4, #128	; 0x80
 800039e:	04e4      	lsls	r4, r4, #19
 80003a0:	427a      	negs	r2, r7
 80003a2:	4325      	orrs	r5, r4
 80003a4:	2a1b      	cmp	r2, #27
 80003a6:	dd00      	ble.n	80003aa <__aeabi_fadd+0x18a>
 80003a8:	e0c5      	b.n	8000536 <__aeabi_fadd+0x316>
 80003aa:	002c      	movs	r4, r5
 80003ac:	2620      	movs	r6, #32
 80003ae:	40d4      	lsrs	r4, r2
 80003b0:	1ab2      	subs	r2, r6, r2
 80003b2:	4095      	lsls	r5, r2
 80003b4:	1e6a      	subs	r2, r5, #1
 80003b6:	4195      	sbcs	r5, r2
 80003b8:	4325      	orrs	r5, r4
 80003ba:	1b5d      	subs	r5, r3, r5
 80003bc:	0004      	movs	r4, r0
 80003be:	4689      	mov	r9, r1
 80003c0:	e7a5      	b.n	800030e <__aeabi_fadd+0xee>
 80003c2:	01ab      	lsls	r3, r5, #6
 80003c4:	0a5b      	lsrs	r3, r3, #9
 80003c6:	e750      	b.n	800026a <__aeabi_fadd+0x4a>
 80003c8:	2400      	movs	r4, #0
 80003ca:	2201      	movs	r2, #1
 80003cc:	464b      	mov	r3, r9
 80003ce:	401a      	ands	r2, r3
 80003d0:	076b      	lsls	r3, r5, #29
 80003d2:	d1ba      	bne.n	800034a <__aeabi_fadd+0x12a>
 80003d4:	e742      	b.n	800025c <__aeabi_fadd+0x3c>
 80003d6:	2f00      	cmp	r7, #0
 80003d8:	d13b      	bne.n	8000452 <__aeabi_fadd+0x232>
 80003da:	3401      	adds	r4, #1
 80003dc:	b2e0      	uxtb	r0, r4
 80003de:	2801      	cmp	r0, #1
 80003e0:	dd4a      	ble.n	8000478 <__aeabi_fadd+0x258>
 80003e2:	2cff      	cmp	r4, #255	; 0xff
 80003e4:	d0bd      	beq.n	8000362 <__aeabi_fadd+0x142>
 80003e6:	2607      	movs	r6, #7
 80003e8:	18ed      	adds	r5, r5, r3
 80003ea:	086d      	lsrs	r5, r5, #1
 80003ec:	402e      	ands	r6, r5
 80003ee:	e7a7      	b.n	8000340 <__aeabi_fadd+0x120>
 80003f0:	2307      	movs	r3, #7
 80003f2:	4d57      	ldr	r5, [pc, #348]	; (8000550 <__aeabi_fadd+0x330>)
 80003f4:	1a24      	subs	r4, r4, r0
 80003f6:	4035      	ands	r5, r6
 80003f8:	401e      	ands	r6, r3
 80003fa:	e7a1      	b.n	8000340 <__aeabi_fadd+0x120>
 80003fc:	2c00      	cmp	r4, #0
 80003fe:	d11b      	bne.n	8000438 <__aeabi_fadd+0x218>
 8000400:	2d00      	cmp	r5, #0
 8000402:	d16e      	bne.n	80004e2 <__aeabi_fadd+0x2c2>
 8000404:	2b00      	cmp	r3, #0
 8000406:	d100      	bne.n	800040a <__aeabi_fadd+0x1ea>
 8000408:	e09a      	b.n	8000540 <__aeabi_fadd+0x320>
 800040a:	000a      	movs	r2, r1
 800040c:	001d      	movs	r5, r3
 800040e:	003c      	movs	r4, r7
 8000410:	e724      	b.n	800025c <__aeabi_fadd+0x3c>
 8000412:	3f01      	subs	r7, #1
 8000414:	2f00      	cmp	r7, #0
 8000416:	d100      	bne.n	800041a <__aeabi_fadd+0x1fa>
 8000418:	e758      	b.n	80002cc <__aeabi_fadd+0xac>
 800041a:	2cff      	cmp	r4, #255	; 0xff
 800041c:	d000      	beq.n	8000420 <__aeabi_fadd+0x200>
 800041e:	e74a      	b.n	80002b6 <__aeabi_fadd+0x96>
 8000420:	e7a7      	b.n	8000372 <__aeabi_fadd+0x152>
 8000422:	1b5e      	subs	r6, r3, r5
 8000424:	4689      	mov	r9, r1
 8000426:	e776      	b.n	8000316 <__aeabi_fadd+0xf6>
 8000428:	2d00      	cmp	r5, #0
 800042a:	d11c      	bne.n	8000466 <__aeabi_fadd+0x246>
 800042c:	000a      	movs	r2, r1
 800042e:	28ff      	cmp	r0, #255	; 0xff
 8000430:	d01f      	beq.n	8000472 <__aeabi_fadd+0x252>
 8000432:	0004      	movs	r4, r0
 8000434:	001d      	movs	r5, r3
 8000436:	e711      	b.n	800025c <__aeabi_fadd+0x3c>
 8000438:	2d00      	cmp	r5, #0
 800043a:	d15d      	bne.n	80004f8 <__aeabi_fadd+0x2d8>
 800043c:	2b00      	cmp	r3, #0
 800043e:	d117      	bne.n	8000470 <__aeabi_fadd+0x250>
 8000440:	2380      	movs	r3, #128	; 0x80
 8000442:	2200      	movs	r2, #0
 8000444:	03db      	lsls	r3, r3, #15
 8000446:	26ff      	movs	r6, #255	; 0xff
 8000448:	e70f      	b.n	800026a <__aeabi_fadd+0x4a>
 800044a:	000a      	movs	r2, r1
 800044c:	26ff      	movs	r6, #255	; 0xff
 800044e:	2300      	movs	r3, #0
 8000450:	e70b      	b.n	800026a <__aeabi_fadd+0x4a>
 8000452:	2c00      	cmp	r4, #0
 8000454:	d121      	bne.n	800049a <__aeabi_fadd+0x27a>
 8000456:	2d00      	cmp	r5, #0
 8000458:	d166      	bne.n	8000528 <__aeabi_fadd+0x308>
 800045a:	28ff      	cmp	r0, #255	; 0xff
 800045c:	d1e9      	bne.n	8000432 <__aeabi_fadd+0x212>
 800045e:	001d      	movs	r5, r3
 8000460:	e787      	b.n	8000372 <__aeabi_fadd+0x152>
 8000462:	2301      	movs	r3, #1
 8000464:	e752      	b.n	800030c <__aeabi_fadd+0xec>
 8000466:	1c7a      	adds	r2, r7, #1
 8000468:	d0a7      	beq.n	80003ba <__aeabi_fadd+0x19a>
 800046a:	43fa      	mvns	r2, r7
 800046c:	28ff      	cmp	r0, #255	; 0xff
 800046e:	d199      	bne.n	80003a4 <__aeabi_fadd+0x184>
 8000470:	000a      	movs	r2, r1
 8000472:	001d      	movs	r5, r3
 8000474:	24ff      	movs	r4, #255	; 0xff
 8000476:	e6f1      	b.n	800025c <__aeabi_fadd+0x3c>
 8000478:	2e00      	cmp	r6, #0
 800047a:	d121      	bne.n	80004c0 <__aeabi_fadd+0x2a0>
 800047c:	2d00      	cmp	r5, #0
 800047e:	d04f      	beq.n	8000520 <__aeabi_fadd+0x300>
 8000480:	2b00      	cmp	r3, #0
 8000482:	d04c      	beq.n	800051e <__aeabi_fadd+0x2fe>
 8000484:	18ed      	adds	r5, r5, r3
 8000486:	016b      	lsls	r3, r5, #5
 8000488:	d59e      	bpl.n	80003c8 <__aeabi_fadd+0x1a8>
 800048a:	4b31      	ldr	r3, [pc, #196]	; (8000550 <__aeabi_fadd+0x330>)
 800048c:	3607      	adds	r6, #7
 800048e:	402e      	ands	r6, r5
 8000490:	2401      	movs	r4, #1
 8000492:	401d      	ands	r5, r3
 8000494:	e754      	b.n	8000340 <__aeabi_fadd+0x120>
 8000496:	2301      	movs	r3, #1
 8000498:	e718      	b.n	80002cc <__aeabi_fadd+0xac>
 800049a:	28ff      	cmp	r0, #255	; 0xff
 800049c:	d0df      	beq.n	800045e <__aeabi_fadd+0x23e>
 800049e:	2480      	movs	r4, #128	; 0x80
 80004a0:	04e4      	lsls	r4, r4, #19
 80004a2:	427f      	negs	r7, r7
 80004a4:	4325      	orrs	r5, r4
 80004a6:	2f1b      	cmp	r7, #27
 80004a8:	dc4d      	bgt.n	8000546 <__aeabi_fadd+0x326>
 80004aa:	2620      	movs	r6, #32
 80004ac:	1bf6      	subs	r6, r6, r7
 80004ae:	002c      	movs	r4, r5
 80004b0:	40b5      	lsls	r5, r6
 80004b2:	40fc      	lsrs	r4, r7
 80004b4:	1e6a      	subs	r2, r5, #1
 80004b6:	4195      	sbcs	r5, r2
 80004b8:	4325      	orrs	r5, r4
 80004ba:	18ed      	adds	r5, r5, r3
 80004bc:	0004      	movs	r4, r0
 80004be:	e706      	b.n	80002ce <__aeabi_fadd+0xae>
 80004c0:	2d00      	cmp	r5, #0
 80004c2:	d0cc      	beq.n	800045e <__aeabi_fadd+0x23e>
 80004c4:	2b00      	cmp	r3, #0
 80004c6:	d100      	bne.n	80004ca <__aeabi_fadd+0x2aa>
 80004c8:	e753      	b.n	8000372 <__aeabi_fadd+0x152>
 80004ca:	2180      	movs	r1, #128	; 0x80
 80004cc:	4660      	mov	r0, ip
 80004ce:	03c9      	lsls	r1, r1, #15
 80004d0:	4208      	tst	r0, r1
 80004d2:	d003      	beq.n	80004dc <__aeabi_fadd+0x2bc>
 80004d4:	4640      	mov	r0, r8
 80004d6:	4208      	tst	r0, r1
 80004d8:	d100      	bne.n	80004dc <__aeabi_fadd+0x2bc>
 80004da:	001d      	movs	r5, r3
 80004dc:	2101      	movs	r1, #1
 80004de:	4011      	ands	r1, r2
 80004e0:	e747      	b.n	8000372 <__aeabi_fadd+0x152>
 80004e2:	2b00      	cmp	r3, #0
 80004e4:	d100      	bne.n	80004e8 <__aeabi_fadd+0x2c8>
 80004e6:	e6b9      	b.n	800025c <__aeabi_fadd+0x3c>
 80004e8:	1aea      	subs	r2, r5, r3
 80004ea:	0150      	lsls	r0, r2, #5
 80004ec:	d525      	bpl.n	800053a <__aeabi_fadd+0x31a>
 80004ee:	2607      	movs	r6, #7
 80004f0:	1b5d      	subs	r5, r3, r5
 80004f2:	402e      	ands	r6, r5
 80004f4:	4689      	mov	r9, r1
 80004f6:	e723      	b.n	8000340 <__aeabi_fadd+0x120>
 80004f8:	24ff      	movs	r4, #255	; 0xff
 80004fa:	2b00      	cmp	r3, #0
 80004fc:	d100      	bne.n	8000500 <__aeabi_fadd+0x2e0>
 80004fe:	e6ad      	b.n	800025c <__aeabi_fadd+0x3c>
 8000500:	2280      	movs	r2, #128	; 0x80
 8000502:	4660      	mov	r0, ip
 8000504:	03d2      	lsls	r2, r2, #15
 8000506:	4210      	tst	r0, r2
 8000508:	d004      	beq.n	8000514 <__aeabi_fadd+0x2f4>
 800050a:	4640      	mov	r0, r8
 800050c:	4210      	tst	r0, r2
 800050e:	d101      	bne.n	8000514 <__aeabi_fadd+0x2f4>
 8000510:	001d      	movs	r5, r3
 8000512:	4689      	mov	r9, r1
 8000514:	2201      	movs	r2, #1
 8000516:	464b      	mov	r3, r9
 8000518:	24ff      	movs	r4, #255	; 0xff
 800051a:	401a      	ands	r2, r3
 800051c:	e69e      	b.n	800025c <__aeabi_fadd+0x3c>
 800051e:	002b      	movs	r3, r5
 8000520:	08dd      	lsrs	r5, r3, #3
 8000522:	000a      	movs	r2, r1
 8000524:	2400      	movs	r4, #0
 8000526:	e69d      	b.n	8000264 <__aeabi_fadd+0x44>
 8000528:	1c7a      	adds	r2, r7, #1
 800052a:	d0c6      	beq.n	80004ba <__aeabi_fadd+0x29a>
 800052c:	43ff      	mvns	r7, r7
 800052e:	28ff      	cmp	r0, #255	; 0xff
 8000530:	d1b9      	bne.n	80004a6 <__aeabi_fadd+0x286>
 8000532:	001d      	movs	r5, r3
 8000534:	e71d      	b.n	8000372 <__aeabi_fadd+0x152>
 8000536:	2501      	movs	r5, #1
 8000538:	e73f      	b.n	80003ba <__aeabi_fadd+0x19a>
 800053a:	1e15      	subs	r5, r2, #0
 800053c:	d000      	beq.n	8000540 <__aeabi_fadd+0x320>
 800053e:	e744      	b.n	80003ca <__aeabi_fadd+0x1aa>
 8000540:	2200      	movs	r2, #0
 8000542:	2300      	movs	r3, #0
 8000544:	e691      	b.n	800026a <__aeabi_fadd+0x4a>
 8000546:	2501      	movs	r5, #1
 8000548:	e7b7      	b.n	80004ba <__aeabi_fadd+0x29a>
 800054a:	46c0      	nop			; (mov r8, r8)
 800054c:	7dffffff 	.word	0x7dffffff
 8000550:	fbffffff 	.word	0xfbffffff

08000554 <__aeabi_fmul>:
 8000554:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000556:	464e      	mov	r6, r9
 8000558:	4657      	mov	r7, sl
 800055a:	4645      	mov	r5, r8
 800055c:	46de      	mov	lr, fp
 800055e:	b5e0      	push	{r5, r6, r7, lr}
 8000560:	0243      	lsls	r3, r0, #9
 8000562:	0a5b      	lsrs	r3, r3, #9
 8000564:	0045      	lsls	r5, r0, #1
 8000566:	b083      	sub	sp, #12
 8000568:	1c0f      	adds	r7, r1, #0
 800056a:	4699      	mov	r9, r3
 800056c:	0e2d      	lsrs	r5, r5, #24
 800056e:	0fc6      	lsrs	r6, r0, #31
 8000570:	2d00      	cmp	r5, #0
 8000572:	d057      	beq.n	8000624 <__aeabi_fmul+0xd0>
 8000574:	2dff      	cmp	r5, #255	; 0xff
 8000576:	d024      	beq.n	80005c2 <__aeabi_fmul+0x6e>
 8000578:	2080      	movs	r0, #128	; 0x80
 800057a:	00db      	lsls	r3, r3, #3
 800057c:	04c0      	lsls	r0, r0, #19
 800057e:	4318      	orrs	r0, r3
 8000580:	2300      	movs	r3, #0
 8000582:	4681      	mov	r9, r0
 8000584:	469a      	mov	sl, r3
 8000586:	469b      	mov	fp, r3
 8000588:	3d7f      	subs	r5, #127	; 0x7f
 800058a:	027c      	lsls	r4, r7, #9
 800058c:	007a      	lsls	r2, r7, #1
 800058e:	0ffb      	lsrs	r3, r7, #31
 8000590:	0a64      	lsrs	r4, r4, #9
 8000592:	0e12      	lsrs	r2, r2, #24
 8000594:	4698      	mov	r8, r3
 8000596:	d023      	beq.n	80005e0 <__aeabi_fmul+0x8c>
 8000598:	2aff      	cmp	r2, #255	; 0xff
 800059a:	d04b      	beq.n	8000634 <__aeabi_fmul+0xe0>
 800059c:	00e3      	lsls	r3, r4, #3
 800059e:	2480      	movs	r4, #128	; 0x80
 80005a0:	2000      	movs	r0, #0
 80005a2:	04e4      	lsls	r4, r4, #19
 80005a4:	3a7f      	subs	r2, #127	; 0x7f
 80005a6:	431c      	orrs	r4, r3
 80005a8:	18ad      	adds	r5, r5, r2
 80005aa:	1c6b      	adds	r3, r5, #1
 80005ac:	4647      	mov	r7, r8
 80005ae:	9301      	str	r3, [sp, #4]
 80005b0:	4653      	mov	r3, sl
 80005b2:	4077      	eors	r7, r6
 80005b4:	003a      	movs	r2, r7
 80005b6:	2b0f      	cmp	r3, #15
 80005b8:	d848      	bhi.n	800064c <__aeabi_fmul+0xf8>
 80005ba:	497d      	ldr	r1, [pc, #500]	; (80007b0 <__aeabi_fmul+0x25c>)
 80005bc:	009b      	lsls	r3, r3, #2
 80005be:	58cb      	ldr	r3, [r1, r3]
 80005c0:	469f      	mov	pc, r3
 80005c2:	2b00      	cmp	r3, #0
 80005c4:	d000      	beq.n	80005c8 <__aeabi_fmul+0x74>
 80005c6:	e085      	b.n	80006d4 <__aeabi_fmul+0x180>
 80005c8:	3308      	adds	r3, #8
 80005ca:	469a      	mov	sl, r3
 80005cc:	3b06      	subs	r3, #6
 80005ce:	469b      	mov	fp, r3
 80005d0:	027c      	lsls	r4, r7, #9
 80005d2:	007a      	lsls	r2, r7, #1
 80005d4:	0ffb      	lsrs	r3, r7, #31
 80005d6:	25ff      	movs	r5, #255	; 0xff
 80005d8:	0a64      	lsrs	r4, r4, #9
 80005da:	0e12      	lsrs	r2, r2, #24
 80005dc:	4698      	mov	r8, r3
 80005de:	d1db      	bne.n	8000598 <__aeabi_fmul+0x44>
 80005e0:	2c00      	cmp	r4, #0
 80005e2:	d000      	beq.n	80005e6 <__aeabi_fmul+0x92>
 80005e4:	e090      	b.n	8000708 <__aeabi_fmul+0x1b4>
 80005e6:	4652      	mov	r2, sl
 80005e8:	2301      	movs	r3, #1
 80005ea:	431a      	orrs	r2, r3
 80005ec:	4692      	mov	sl, r2
 80005ee:	2001      	movs	r0, #1
 80005f0:	e7db      	b.n	80005aa <__aeabi_fmul+0x56>
 80005f2:	464c      	mov	r4, r9
 80005f4:	4658      	mov	r0, fp
 80005f6:	0017      	movs	r7, r2
 80005f8:	2802      	cmp	r0, #2
 80005fa:	d024      	beq.n	8000646 <__aeabi_fmul+0xf2>
 80005fc:	2803      	cmp	r0, #3
 80005fe:	d100      	bne.n	8000602 <__aeabi_fmul+0xae>
 8000600:	e0cf      	b.n	80007a2 <__aeabi_fmul+0x24e>
 8000602:	2200      	movs	r2, #0
 8000604:	2300      	movs	r3, #0
 8000606:	2801      	cmp	r0, #1
 8000608:	d14d      	bne.n	80006a6 <__aeabi_fmul+0x152>
 800060a:	0258      	lsls	r0, r3, #9
 800060c:	05d2      	lsls	r2, r2, #23
 800060e:	0a40      	lsrs	r0, r0, #9
 8000610:	07ff      	lsls	r7, r7, #31
 8000612:	4310      	orrs	r0, r2
 8000614:	4338      	orrs	r0, r7
 8000616:	b003      	add	sp, #12
 8000618:	bc3c      	pop	{r2, r3, r4, r5}
 800061a:	4690      	mov	r8, r2
 800061c:	4699      	mov	r9, r3
 800061e:	46a2      	mov	sl, r4
 8000620:	46ab      	mov	fp, r5
 8000622:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000624:	2b00      	cmp	r3, #0
 8000626:	d15b      	bne.n	80006e0 <__aeabi_fmul+0x18c>
 8000628:	2304      	movs	r3, #4
 800062a:	469a      	mov	sl, r3
 800062c:	3b03      	subs	r3, #3
 800062e:	2500      	movs	r5, #0
 8000630:	469b      	mov	fp, r3
 8000632:	e7aa      	b.n	800058a <__aeabi_fmul+0x36>
 8000634:	35ff      	adds	r5, #255	; 0xff
 8000636:	2c00      	cmp	r4, #0
 8000638:	d160      	bne.n	80006fc <__aeabi_fmul+0x1a8>
 800063a:	4652      	mov	r2, sl
 800063c:	2302      	movs	r3, #2
 800063e:	431a      	orrs	r2, r3
 8000640:	4692      	mov	sl, r2
 8000642:	2002      	movs	r0, #2
 8000644:	e7b1      	b.n	80005aa <__aeabi_fmul+0x56>
 8000646:	22ff      	movs	r2, #255	; 0xff
 8000648:	2300      	movs	r3, #0
 800064a:	e7de      	b.n	800060a <__aeabi_fmul+0xb6>
 800064c:	464b      	mov	r3, r9
 800064e:	0c1b      	lsrs	r3, r3, #16
 8000650:	469c      	mov	ip, r3
 8000652:	464b      	mov	r3, r9
 8000654:	0426      	lsls	r6, r4, #16
 8000656:	0c36      	lsrs	r6, r6, #16
 8000658:	0418      	lsls	r0, r3, #16
 800065a:	4661      	mov	r1, ip
 800065c:	0033      	movs	r3, r6
 800065e:	0c22      	lsrs	r2, r4, #16
 8000660:	4664      	mov	r4, ip
 8000662:	0c00      	lsrs	r0, r0, #16
 8000664:	4343      	muls	r3, r0
 8000666:	434e      	muls	r6, r1
 8000668:	4350      	muls	r0, r2
 800066a:	4354      	muls	r4, r2
 800066c:	1980      	adds	r0, r0, r6
 800066e:	0c1a      	lsrs	r2, r3, #16
 8000670:	1812      	adds	r2, r2, r0
 8000672:	4296      	cmp	r6, r2
 8000674:	d903      	bls.n	800067e <__aeabi_fmul+0x12a>
 8000676:	2180      	movs	r1, #128	; 0x80
 8000678:	0249      	lsls	r1, r1, #9
 800067a:	468c      	mov	ip, r1
 800067c:	4464      	add	r4, ip
 800067e:	041b      	lsls	r3, r3, #16
 8000680:	0c1b      	lsrs	r3, r3, #16
 8000682:	0410      	lsls	r0, r2, #16
 8000684:	18c0      	adds	r0, r0, r3
 8000686:	0183      	lsls	r3, r0, #6
 8000688:	1e5e      	subs	r6, r3, #1
 800068a:	41b3      	sbcs	r3, r6
 800068c:	0e80      	lsrs	r0, r0, #26
 800068e:	4318      	orrs	r0, r3
 8000690:	0c13      	lsrs	r3, r2, #16
 8000692:	191b      	adds	r3, r3, r4
 8000694:	019b      	lsls	r3, r3, #6
 8000696:	4303      	orrs	r3, r0
 8000698:	001c      	movs	r4, r3
 800069a:	0123      	lsls	r3, r4, #4
 800069c:	d579      	bpl.n	8000792 <__aeabi_fmul+0x23e>
 800069e:	2301      	movs	r3, #1
 80006a0:	0862      	lsrs	r2, r4, #1
 80006a2:	401c      	ands	r4, r3
 80006a4:	4314      	orrs	r4, r2
 80006a6:	9a01      	ldr	r2, [sp, #4]
 80006a8:	327f      	adds	r2, #127	; 0x7f
 80006aa:	2a00      	cmp	r2, #0
 80006ac:	dd4d      	ble.n	800074a <__aeabi_fmul+0x1f6>
 80006ae:	0763      	lsls	r3, r4, #29
 80006b0:	d004      	beq.n	80006bc <__aeabi_fmul+0x168>
 80006b2:	230f      	movs	r3, #15
 80006b4:	4023      	ands	r3, r4
 80006b6:	2b04      	cmp	r3, #4
 80006b8:	d000      	beq.n	80006bc <__aeabi_fmul+0x168>
 80006ba:	3404      	adds	r4, #4
 80006bc:	0123      	lsls	r3, r4, #4
 80006be:	d503      	bpl.n	80006c8 <__aeabi_fmul+0x174>
 80006c0:	4b3c      	ldr	r3, [pc, #240]	; (80007b4 <__aeabi_fmul+0x260>)
 80006c2:	9a01      	ldr	r2, [sp, #4]
 80006c4:	401c      	ands	r4, r3
 80006c6:	3280      	adds	r2, #128	; 0x80
 80006c8:	2afe      	cmp	r2, #254	; 0xfe
 80006ca:	dcbc      	bgt.n	8000646 <__aeabi_fmul+0xf2>
 80006cc:	01a3      	lsls	r3, r4, #6
 80006ce:	0a5b      	lsrs	r3, r3, #9
 80006d0:	b2d2      	uxtb	r2, r2
 80006d2:	e79a      	b.n	800060a <__aeabi_fmul+0xb6>
 80006d4:	230c      	movs	r3, #12
 80006d6:	469a      	mov	sl, r3
 80006d8:	3b09      	subs	r3, #9
 80006da:	25ff      	movs	r5, #255	; 0xff
 80006dc:	469b      	mov	fp, r3
 80006de:	e754      	b.n	800058a <__aeabi_fmul+0x36>
 80006e0:	0018      	movs	r0, r3
 80006e2:	f000 f8d3 	bl	800088c <__clzsi2>
 80006e6:	464a      	mov	r2, r9
 80006e8:	1f43      	subs	r3, r0, #5
 80006ea:	2576      	movs	r5, #118	; 0x76
 80006ec:	409a      	lsls	r2, r3
 80006ee:	2300      	movs	r3, #0
 80006f0:	426d      	negs	r5, r5
 80006f2:	4691      	mov	r9, r2
 80006f4:	1a2d      	subs	r5, r5, r0
 80006f6:	469a      	mov	sl, r3
 80006f8:	469b      	mov	fp, r3
 80006fa:	e746      	b.n	800058a <__aeabi_fmul+0x36>
 80006fc:	4652      	mov	r2, sl
 80006fe:	2303      	movs	r3, #3
 8000700:	431a      	orrs	r2, r3
 8000702:	4692      	mov	sl, r2
 8000704:	2003      	movs	r0, #3
 8000706:	e750      	b.n	80005aa <__aeabi_fmul+0x56>
 8000708:	0020      	movs	r0, r4
 800070a:	f000 f8bf 	bl	800088c <__clzsi2>
 800070e:	1f43      	subs	r3, r0, #5
 8000710:	1a2d      	subs	r5, r5, r0
 8000712:	409c      	lsls	r4, r3
 8000714:	3d76      	subs	r5, #118	; 0x76
 8000716:	2000      	movs	r0, #0
 8000718:	e747      	b.n	80005aa <__aeabi_fmul+0x56>
 800071a:	2380      	movs	r3, #128	; 0x80
 800071c:	2700      	movs	r7, #0
 800071e:	03db      	lsls	r3, r3, #15
 8000720:	22ff      	movs	r2, #255	; 0xff
 8000722:	e772      	b.n	800060a <__aeabi_fmul+0xb6>
 8000724:	4642      	mov	r2, r8
 8000726:	e766      	b.n	80005f6 <__aeabi_fmul+0xa2>
 8000728:	464c      	mov	r4, r9
 800072a:	0032      	movs	r2, r6
 800072c:	4658      	mov	r0, fp
 800072e:	e762      	b.n	80005f6 <__aeabi_fmul+0xa2>
 8000730:	2380      	movs	r3, #128	; 0x80
 8000732:	464a      	mov	r2, r9
 8000734:	03db      	lsls	r3, r3, #15
 8000736:	421a      	tst	r2, r3
 8000738:	d022      	beq.n	8000780 <__aeabi_fmul+0x22c>
 800073a:	421c      	tst	r4, r3
 800073c:	d120      	bne.n	8000780 <__aeabi_fmul+0x22c>
 800073e:	4323      	orrs	r3, r4
 8000740:	025b      	lsls	r3, r3, #9
 8000742:	0a5b      	lsrs	r3, r3, #9
 8000744:	4647      	mov	r7, r8
 8000746:	22ff      	movs	r2, #255	; 0xff
 8000748:	e75f      	b.n	800060a <__aeabi_fmul+0xb6>
 800074a:	2301      	movs	r3, #1
 800074c:	1a9a      	subs	r2, r3, r2
 800074e:	2a1b      	cmp	r2, #27
 8000750:	dc21      	bgt.n	8000796 <__aeabi_fmul+0x242>
 8000752:	0023      	movs	r3, r4
 8000754:	9901      	ldr	r1, [sp, #4]
 8000756:	40d3      	lsrs	r3, r2
 8000758:	319e      	adds	r1, #158	; 0x9e
 800075a:	408c      	lsls	r4, r1
 800075c:	001a      	movs	r2, r3
 800075e:	0023      	movs	r3, r4
 8000760:	1e5c      	subs	r4, r3, #1
 8000762:	41a3      	sbcs	r3, r4
 8000764:	4313      	orrs	r3, r2
 8000766:	075a      	lsls	r2, r3, #29
 8000768:	d004      	beq.n	8000774 <__aeabi_fmul+0x220>
 800076a:	220f      	movs	r2, #15
 800076c:	401a      	ands	r2, r3
 800076e:	2a04      	cmp	r2, #4
 8000770:	d000      	beq.n	8000774 <__aeabi_fmul+0x220>
 8000772:	3304      	adds	r3, #4
 8000774:	015a      	lsls	r2, r3, #5
 8000776:	d411      	bmi.n	800079c <__aeabi_fmul+0x248>
 8000778:	019b      	lsls	r3, r3, #6
 800077a:	0a5b      	lsrs	r3, r3, #9
 800077c:	2200      	movs	r2, #0
 800077e:	e744      	b.n	800060a <__aeabi_fmul+0xb6>
 8000780:	2380      	movs	r3, #128	; 0x80
 8000782:	464a      	mov	r2, r9
 8000784:	03db      	lsls	r3, r3, #15
 8000786:	4313      	orrs	r3, r2
 8000788:	025b      	lsls	r3, r3, #9
 800078a:	0a5b      	lsrs	r3, r3, #9
 800078c:	0037      	movs	r7, r6
 800078e:	22ff      	movs	r2, #255	; 0xff
 8000790:	e73b      	b.n	800060a <__aeabi_fmul+0xb6>
 8000792:	9501      	str	r5, [sp, #4]
 8000794:	e787      	b.n	80006a6 <__aeabi_fmul+0x152>
 8000796:	2200      	movs	r2, #0
 8000798:	2300      	movs	r3, #0
 800079a:	e736      	b.n	800060a <__aeabi_fmul+0xb6>
 800079c:	2201      	movs	r2, #1
 800079e:	2300      	movs	r3, #0
 80007a0:	e733      	b.n	800060a <__aeabi_fmul+0xb6>
 80007a2:	2380      	movs	r3, #128	; 0x80
 80007a4:	03db      	lsls	r3, r3, #15
 80007a6:	4323      	orrs	r3, r4
 80007a8:	025b      	lsls	r3, r3, #9
 80007aa:	0a5b      	lsrs	r3, r3, #9
 80007ac:	22ff      	movs	r2, #255	; 0xff
 80007ae:	e72c      	b.n	800060a <__aeabi_fmul+0xb6>
 80007b0:	08001524 	.word	0x08001524
 80007b4:	f7ffffff 	.word	0xf7ffffff

080007b8 <__aeabi_f2iz>:
 80007b8:	0241      	lsls	r1, r0, #9
 80007ba:	0042      	lsls	r2, r0, #1
 80007bc:	0fc3      	lsrs	r3, r0, #31
 80007be:	0a49      	lsrs	r1, r1, #9
 80007c0:	0e12      	lsrs	r2, r2, #24
 80007c2:	2000      	movs	r0, #0
 80007c4:	2a7e      	cmp	r2, #126	; 0x7e
 80007c6:	d90d      	bls.n	80007e4 <__aeabi_f2iz+0x2c>
 80007c8:	2a9d      	cmp	r2, #157	; 0x9d
 80007ca:	d80c      	bhi.n	80007e6 <__aeabi_f2iz+0x2e>
 80007cc:	2080      	movs	r0, #128	; 0x80
 80007ce:	0400      	lsls	r0, r0, #16
 80007d0:	4301      	orrs	r1, r0
 80007d2:	2a95      	cmp	r2, #149	; 0x95
 80007d4:	dc0a      	bgt.n	80007ec <__aeabi_f2iz+0x34>
 80007d6:	2096      	movs	r0, #150	; 0x96
 80007d8:	1a82      	subs	r2, r0, r2
 80007da:	40d1      	lsrs	r1, r2
 80007dc:	4248      	negs	r0, r1
 80007de:	2b00      	cmp	r3, #0
 80007e0:	d100      	bne.n	80007e4 <__aeabi_f2iz+0x2c>
 80007e2:	0008      	movs	r0, r1
 80007e4:	4770      	bx	lr
 80007e6:	4a03      	ldr	r2, [pc, #12]	; (80007f4 <__aeabi_f2iz+0x3c>)
 80007e8:	1898      	adds	r0, r3, r2
 80007ea:	e7fb      	b.n	80007e4 <__aeabi_f2iz+0x2c>
 80007ec:	3a96      	subs	r2, #150	; 0x96
 80007ee:	4091      	lsls	r1, r2
 80007f0:	e7f4      	b.n	80007dc <__aeabi_f2iz+0x24>
 80007f2:	46c0      	nop			; (mov r8, r8)
 80007f4:	7fffffff 	.word	0x7fffffff

080007f8 <__aeabi_i2f>:
 80007f8:	b570      	push	{r4, r5, r6, lr}
 80007fa:	2800      	cmp	r0, #0
 80007fc:	d03d      	beq.n	800087a <__aeabi_i2f+0x82>
 80007fe:	17c3      	asrs	r3, r0, #31
 8000800:	18c5      	adds	r5, r0, r3
 8000802:	405d      	eors	r5, r3
 8000804:	0fc4      	lsrs	r4, r0, #31
 8000806:	0028      	movs	r0, r5
 8000808:	f000 f840 	bl	800088c <__clzsi2>
 800080c:	229e      	movs	r2, #158	; 0x9e
 800080e:	1a12      	subs	r2, r2, r0
 8000810:	2a96      	cmp	r2, #150	; 0x96
 8000812:	dc07      	bgt.n	8000824 <__aeabi_i2f+0x2c>
 8000814:	b2d2      	uxtb	r2, r2
 8000816:	2808      	cmp	r0, #8
 8000818:	dd33      	ble.n	8000882 <__aeabi_i2f+0x8a>
 800081a:	3808      	subs	r0, #8
 800081c:	4085      	lsls	r5, r0
 800081e:	0268      	lsls	r0, r5, #9
 8000820:	0a40      	lsrs	r0, r0, #9
 8000822:	e023      	b.n	800086c <__aeabi_i2f+0x74>
 8000824:	2a99      	cmp	r2, #153	; 0x99
 8000826:	dd0b      	ble.n	8000840 <__aeabi_i2f+0x48>
 8000828:	2305      	movs	r3, #5
 800082a:	0029      	movs	r1, r5
 800082c:	1a1b      	subs	r3, r3, r0
 800082e:	40d9      	lsrs	r1, r3
 8000830:	0003      	movs	r3, r0
 8000832:	331b      	adds	r3, #27
 8000834:	409d      	lsls	r5, r3
 8000836:	002b      	movs	r3, r5
 8000838:	1e5d      	subs	r5, r3, #1
 800083a:	41ab      	sbcs	r3, r5
 800083c:	4319      	orrs	r1, r3
 800083e:	000d      	movs	r5, r1
 8000840:	2805      	cmp	r0, #5
 8000842:	dd01      	ble.n	8000848 <__aeabi_i2f+0x50>
 8000844:	1f43      	subs	r3, r0, #5
 8000846:	409d      	lsls	r5, r3
 8000848:	002b      	movs	r3, r5
 800084a:	490f      	ldr	r1, [pc, #60]	; (8000888 <__aeabi_i2f+0x90>)
 800084c:	400b      	ands	r3, r1
 800084e:	076e      	lsls	r6, r5, #29
 8000850:	d009      	beq.n	8000866 <__aeabi_i2f+0x6e>
 8000852:	260f      	movs	r6, #15
 8000854:	4035      	ands	r5, r6
 8000856:	2d04      	cmp	r5, #4
 8000858:	d005      	beq.n	8000866 <__aeabi_i2f+0x6e>
 800085a:	3304      	adds	r3, #4
 800085c:	015d      	lsls	r5, r3, #5
 800085e:	d502      	bpl.n	8000866 <__aeabi_i2f+0x6e>
 8000860:	229f      	movs	r2, #159	; 0x9f
 8000862:	400b      	ands	r3, r1
 8000864:	1a12      	subs	r2, r2, r0
 8000866:	019b      	lsls	r3, r3, #6
 8000868:	0a58      	lsrs	r0, r3, #9
 800086a:	b2d2      	uxtb	r2, r2
 800086c:	0240      	lsls	r0, r0, #9
 800086e:	05d2      	lsls	r2, r2, #23
 8000870:	0a40      	lsrs	r0, r0, #9
 8000872:	07e4      	lsls	r4, r4, #31
 8000874:	4310      	orrs	r0, r2
 8000876:	4320      	orrs	r0, r4
 8000878:	bd70      	pop	{r4, r5, r6, pc}
 800087a:	2400      	movs	r4, #0
 800087c:	2200      	movs	r2, #0
 800087e:	2000      	movs	r0, #0
 8000880:	e7f4      	b.n	800086c <__aeabi_i2f+0x74>
 8000882:	0268      	lsls	r0, r5, #9
 8000884:	0a40      	lsrs	r0, r0, #9
 8000886:	e7f1      	b.n	800086c <__aeabi_i2f+0x74>
 8000888:	fbffffff 	.word	0xfbffffff

0800088c <__clzsi2>:
 800088c:	211c      	movs	r1, #28
 800088e:	2301      	movs	r3, #1
 8000890:	041b      	lsls	r3, r3, #16
 8000892:	4298      	cmp	r0, r3
 8000894:	d301      	bcc.n	800089a <__clzsi2+0xe>
 8000896:	0c00      	lsrs	r0, r0, #16
 8000898:	3910      	subs	r1, #16
 800089a:	0a1b      	lsrs	r3, r3, #8
 800089c:	4298      	cmp	r0, r3
 800089e:	d301      	bcc.n	80008a4 <__clzsi2+0x18>
 80008a0:	0a00      	lsrs	r0, r0, #8
 80008a2:	3908      	subs	r1, #8
 80008a4:	091b      	lsrs	r3, r3, #4
 80008a6:	4298      	cmp	r0, r3
 80008a8:	d301      	bcc.n	80008ae <__clzsi2+0x22>
 80008aa:	0900      	lsrs	r0, r0, #4
 80008ac:	3904      	subs	r1, #4
 80008ae:	a202      	add	r2, pc, #8	; (adr r2, 80008b8 <__clzsi2+0x2c>)
 80008b0:	5c10      	ldrb	r0, [r2, r0]
 80008b2:	1840      	adds	r0, r0, r1
 80008b4:	4770      	bx	lr
 80008b6:	46c0      	nop			; (mov r8, r8)
 80008b8:	02020304 	.word	0x02020304
 80008bc:	01010101 	.word	0x01010101
	...

080008c8 <Reset_Handler>:
 80008c8:	480d      	ldr	r0, [pc, #52]	; (8000900 <LoopForever+0x2>)
 80008ca:	4685      	mov	sp, r0
 80008cc:	480d      	ldr	r0, [pc, #52]	; (8000904 <LoopForever+0x6>)
 80008ce:	490e      	ldr	r1, [pc, #56]	; (8000908 <LoopForever+0xa>)
 80008d0:	4a0e      	ldr	r2, [pc, #56]	; (800090c <LoopForever+0xe>)
 80008d2:	2300      	movs	r3, #0
 80008d4:	e002      	b.n	80008dc <LoopCopyDataInit>

080008d6 <CopyDataInit>:
 80008d6:	58d4      	ldr	r4, [r2, r3]
 80008d8:	50c4      	str	r4, [r0, r3]
 80008da:	3304      	adds	r3, #4

080008dc <LoopCopyDataInit>:
 80008dc:	18c4      	adds	r4, r0, r3
 80008de:	428c      	cmp	r4, r1
 80008e0:	d3f9      	bcc.n	80008d6 <CopyDataInit>
 80008e2:	4a0b      	ldr	r2, [pc, #44]	; (8000910 <LoopForever+0x12>)
 80008e4:	4c0b      	ldr	r4, [pc, #44]	; (8000914 <LoopForever+0x16>)
 80008e6:	2300      	movs	r3, #0
 80008e8:	e001      	b.n	80008ee <LoopFillZerobss>

080008ea <FillZerobss>:
 80008ea:	6013      	str	r3, [r2, #0]
 80008ec:	3204      	adds	r2, #4

080008ee <LoopFillZerobss>:
 80008ee:	42a2      	cmp	r2, r4
 80008f0:	d3fb      	bcc.n	80008ea <FillZerobss>
 80008f2:	f000 f97f 	bl	8000bf4 <SystemInit>
 80008f6:	f000 fceb 	bl	80012d0 <__libc_init_array>
 80008fa:	f000 f82f 	bl	800095c <main>

080008fe <LoopForever>:
 80008fe:	e7fe      	b.n	80008fe <LoopForever>
 8000900:	20002000 	.word	0x20002000
 8000904:	20000000 	.word	0x20000000
 8000908:	2000043c 	.word	0x2000043c
 800090c:	08001adc 	.word	0x08001adc
 8000910:	2000043c 	.word	0x2000043c
 8000914:	200008b0 	.word	0x200008b0

08000918 <ADC1_COMP_IRQHandler>:
 8000918:	e7fe      	b.n	8000918 <ADC1_COMP_IRQHandler>
	...

0800091c <DMA1_Channel1_IRQHandler>:
 800091c:	b570      	push	{r4, r5, r6, lr}
 800091e:	4c0c      	ldr	r4, [pc, #48]	; (8000950 <DMA1_Channel1_IRQHandler+0x34>)
 8000920:	0026      	movs	r6, r4
 8000922:	3620      	adds	r6, #32
 8000924:	2500      	movs	r5, #0
 8000926:	8820      	ldrh	r0, [r4, #0]
 8000928:	f7ff ff66 	bl	80007f8 <__aeabi_i2f>
 800092c:	1c01      	adds	r1, r0, #0
 800092e:	1c28      	adds	r0, r5, #0
 8000930:	f7ff fc76 	bl	8000220 <__aeabi_fadd>
 8000934:	1c05      	adds	r5, r0, #0
 8000936:	3402      	adds	r4, #2
 8000938:	42b4      	cmp	r4, r6
 800093a:	d1f4      	bne.n	8000926 <DMA1_Channel1_IRQHandler+0xa>
 800093c:	21f6      	movs	r1, #246	; 0xf6
 800093e:	0589      	lsls	r1, r1, #22
 8000940:	f7ff fe08 	bl	8000554 <__aeabi_fmul>
 8000944:	4b03      	ldr	r3, [pc, #12]	; (8000954 <DMA1_Channel1_IRQHandler+0x38>)
 8000946:	6018      	str	r0, [r3, #0]
 8000948:	4b03      	ldr	r3, [pc, #12]	; (8000958 <DMA1_Channel1_IRQHandler+0x3c>)
 800094a:	2202      	movs	r2, #2
 800094c:	605a      	str	r2, [r3, #4]
 800094e:	bd70      	pop	{r4, r5, r6, pc}
 8000950:	20000458 	.word	0x20000458
 8000954:	20000478 	.word	0x20000478
 8000958:	40020000 	.word	0x40020000

0800095c <main>:
 800095c:	b570      	push	{r4, r5, r6, lr}
 800095e:	b084      	sub	sp, #16
 8000960:	498a      	ldr	r1, [pc, #552]	; (8000b8c <main+0x230>)
 8000962:	680b      	ldr	r3, [r1, #0]
 8000964:	2201      	movs	r2, #1
 8000966:	4393      	bics	r3, r2
 8000968:	4313      	orrs	r3, r2
 800096a:	600b      	str	r3, [r1, #0]
 800096c:	4988      	ldr	r1, [pc, #544]	; (8000b90 <main+0x234>)
 800096e:	680b      	ldr	r3, [r1, #0]
 8000970:	4313      	orrs	r3, r2
 8000972:	600b      	str	r3, [r1, #0]
 8000974:	000a      	movs	r2, r1
 8000976:	2302      	movs	r3, #2
 8000978:	6811      	ldr	r1, [r2, #0]
 800097a:	420b      	tst	r3, r1
 800097c:	d0fc      	beq.n	8000978 <main+0x1c>
 800097e:	4b84      	ldr	r3, [pc, #528]	; (8000b90 <main+0x234>)
 8000980:	685a      	ldr	r2, [r3, #4]
 8000982:	4984      	ldr	r1, [pc, #528]	; (8000b94 <main+0x238>)
 8000984:	4011      	ands	r1, r2
 8000986:	22a0      	movs	r2, #160	; 0xa0
 8000988:	0392      	lsls	r2, r2, #14
 800098a:	430a      	orrs	r2, r1
 800098c:	605a      	str	r2, [r3, #4]
 800098e:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8000990:	210f      	movs	r1, #15
 8000992:	438a      	bics	r2, r1
 8000994:	62da      	str	r2, [r3, #44]	; 0x2c
 8000996:	6819      	ldr	r1, [r3, #0]
 8000998:	2280      	movs	r2, #128	; 0x80
 800099a:	0452      	lsls	r2, r2, #17
 800099c:	430a      	orrs	r2, r1
 800099e:	601a      	str	r2, [r3, #0]
 80009a0:	001a      	movs	r2, r3
 80009a2:	2380      	movs	r3, #128	; 0x80
 80009a4:	049b      	lsls	r3, r3, #18
 80009a6:	6811      	ldr	r1, [r2, #0]
 80009a8:	4219      	tst	r1, r3
 80009aa:	d0fc      	beq.n	80009a6 <main+0x4a>
 80009ac:	4a78      	ldr	r2, [pc, #480]	; (8000b90 <main+0x234>)
 80009ae:	6853      	ldr	r3, [r2, #4]
 80009b0:	21f0      	movs	r1, #240	; 0xf0
 80009b2:	438b      	bics	r3, r1
 80009b4:	6053      	str	r3, [r2, #4]
 80009b6:	6853      	ldr	r3, [r2, #4]
 80009b8:	39ed      	subs	r1, #237	; 0xed
 80009ba:	438b      	bics	r3, r1
 80009bc:	3901      	subs	r1, #1
 80009be:	430b      	orrs	r3, r1
 80009c0:	6053      	str	r3, [r2, #4]
 80009c2:	0011      	movs	r1, r2
 80009c4:	220c      	movs	r2, #12
 80009c6:	684b      	ldr	r3, [r1, #4]
 80009c8:	4013      	ands	r3, r2
 80009ca:	2b08      	cmp	r3, #8
 80009cc:	d1fb      	bne.n	80009c6 <main+0x6a>
 80009ce:	4b70      	ldr	r3, [pc, #448]	; (8000b90 <main+0x234>)
 80009d0:	685a      	ldr	r2, [r3, #4]
 80009d2:	4971      	ldr	r1, [pc, #452]	; (8000b98 <main+0x23c>)
 80009d4:	400a      	ands	r2, r1
 80009d6:	605a      	str	r2, [r3, #4]
 80009d8:	4a70      	ldr	r2, [pc, #448]	; (8000b9c <main+0x240>)
 80009da:	4971      	ldr	r1, [pc, #452]	; (8000ba0 <main+0x244>)
 80009dc:	6011      	str	r1, [r2, #0]
 80009de:	6959      	ldr	r1, [r3, #20]
 80009e0:	2080      	movs	r0, #128	; 0x80
 80009e2:	0280      	lsls	r0, r0, #10
 80009e4:	4301      	orrs	r1, r0
 80009e6:	6159      	str	r1, [r3, #20]
 80009e8:	695a      	ldr	r2, [r3, #20]
 80009ea:	4002      	ands	r2, r0
 80009ec:	9203      	str	r2, [sp, #12]
 80009ee:	9a03      	ldr	r2, [sp, #12]
 80009f0:	2190      	movs	r1, #144	; 0x90
 80009f2:	05c9      	lsls	r1, r1, #23
 80009f4:	680a      	ldr	r2, [r1, #0]
 80009f6:	2003      	movs	r0, #3
 80009f8:	4302      	orrs	r2, r0
 80009fa:	600a      	str	r2, [r1, #0]
 80009fc:	6999      	ldr	r1, [r3, #24]
 80009fe:	30fe      	adds	r0, #254	; 0xfe
 8000a00:	30ff      	adds	r0, #255	; 0xff
 8000a02:	4301      	orrs	r1, r0
 8000a04:	6199      	str	r1, [r3, #24]
 8000a06:	699a      	ldr	r2, [r3, #24]
 8000a08:	4002      	ands	r2, r0
 8000a0a:	9202      	str	r2, [sp, #8]
 8000a0c:	9a02      	ldr	r2, [sp, #8]
 8000a0e:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 8000a10:	2101      	movs	r1, #1
 8000a12:	430a      	orrs	r2, r1
 8000a14:	635a      	str	r2, [r3, #52]	; 0x34
 8000a16:	4a63      	ldr	r2, [pc, #396]	; (8000ba4 <main+0x248>)
 8000a18:	6913      	ldr	r3, [r2, #16]
 8000a1a:	009b      	lsls	r3, r3, #2
 8000a1c:	089b      	lsrs	r3, r3, #2
 8000a1e:	6113      	str	r3, [r2, #16]
 8000a20:	4a5b      	ldr	r2, [pc, #364]	; (8000b90 <main+0x234>)
 8000a22:	2302      	movs	r3, #2
 8000a24:	6b51      	ldr	r1, [r2, #52]	; 0x34
 8000a26:	420b      	tst	r3, r1
 8000a28:	d0fc      	beq.n	8000a24 <main+0xc8>
 8000a2a:	4b5e      	ldr	r3, [pc, #376]	; (8000ba4 <main+0x248>)
 8000a2c:	689b      	ldr	r3, [r3, #8]
 8000a2e:	07db      	lsls	r3, r3, #31
 8000a30:	d506      	bpl.n	8000a40 <main+0xe4>
 8000a32:	4a5c      	ldr	r2, [pc, #368]	; (8000ba4 <main+0x248>)
 8000a34:	6893      	ldr	r3, [r2, #8]
 8000a36:	495c      	ldr	r1, [pc, #368]	; (8000ba8 <main+0x24c>)
 8000a38:	400b      	ands	r3, r1
 8000a3a:	2102      	movs	r1, #2
 8000a3c:	430b      	orrs	r3, r1
 8000a3e:	6093      	str	r3, [r2, #8]
 8000a40:	4a58      	ldr	r2, [pc, #352]	; (8000ba4 <main+0x248>)
 8000a42:	2301      	movs	r3, #1
 8000a44:	6891      	ldr	r1, [r2, #8]
 8000a46:	420b      	tst	r3, r1
 8000a48:	d1fc      	bne.n	8000a44 <main+0xe8>
 8000a4a:	4956      	ldr	r1, [pc, #344]	; (8000ba4 <main+0x248>)
 8000a4c:	688b      	ldr	r3, [r1, #8]
 8000a4e:	4a56      	ldr	r2, [pc, #344]	; (8000ba8 <main+0x24c>)
 8000a50:	401a      	ands	r2, r3
 8000a52:	2380      	movs	r3, #128	; 0x80
 8000a54:	061b      	lsls	r3, r3, #24
 8000a56:	4313      	orrs	r3, r2
 8000a58:	608b      	str	r3, [r1, #8]
 8000a5a:	000b      	movs	r3, r1
 8000a5c:	689a      	ldr	r2, [r3, #8]
 8000a5e:	2a00      	cmp	r2, #0
 8000a60:	dbfc      	blt.n	8000a5c <main+0x100>
 8000a62:	4a50      	ldr	r2, [pc, #320]	; (8000ba4 <main+0x248>)
 8000a64:	6891      	ldr	r1, [r2, #8]
 8000a66:	4c50      	ldr	r4, [pc, #320]	; (8000ba8 <main+0x24c>)
 8000a68:	4021      	ands	r1, r4
 8000a6a:	2001      	movs	r0, #1
 8000a6c:	4301      	orrs	r1, r0
 8000a6e:	6091      	str	r1, [r2, #8]
 8000a70:	68d3      	ldr	r3, [r2, #12]
 8000a72:	2118      	movs	r1, #24
 8000a74:	438b      	bics	r3, r1
 8000a76:	60d3      	str	r3, [r2, #12]
 8000a78:	68d3      	ldr	r3, [r2, #12]
 8000a7a:	2520      	movs	r5, #32
 8000a7c:	43ab      	bics	r3, r5
 8000a7e:	60d3      	str	r3, [r2, #12]
 8000a80:	68d3      	ldr	r3, [r2, #12]
 8000a82:	494a      	ldr	r1, [pc, #296]	; (8000bac <main+0x250>)
 8000a84:	400b      	ands	r3, r1
 8000a86:	60d3      	str	r3, [r2, #12]
 8000a88:	6953      	ldr	r3, [r2, #20]
 8000a8a:	2107      	movs	r1, #7
 8000a8c:	430b      	orrs	r3, r1
 8000a8e:	6153      	str	r3, [r2, #20]
 8000a90:	68d3      	ldr	r3, [r2, #12]
 8000a92:	4947      	ldr	r1, [pc, #284]	; (8000bb0 <main+0x254>)
 8000a94:	400b      	ands	r3, r1
 8000a96:	60d3      	str	r3, [r2, #12]
 8000a98:	6290      	str	r0, [r2, #40]	; 0x28
 8000a9a:	68d3      	ldr	r3, [r2, #12]
 8000a9c:	4945      	ldr	r1, [pc, #276]	; (8000bb4 <main+0x258>)
 8000a9e:	4019      	ands	r1, r3
 8000aa0:	2380      	movs	r3, #128	; 0x80
 8000aa2:	019b      	lsls	r3, r3, #6
 8000aa4:	430b      	orrs	r3, r1
 8000aa6:	60d3      	str	r3, [r2, #12]
 8000aa8:	68d3      	ldr	r3, [r2, #12]
 8000aaa:	2103      	movs	r1, #3
 8000aac:	430b      	orrs	r3, r1
 8000aae:	60d3      	str	r3, [r2, #12]
 8000ab0:	68d3      	ldr	r3, [r2, #12]
 8000ab2:	4941      	ldr	r1, [pc, #260]	; (8000bb8 <main+0x25c>)
 8000ab4:	400b      	ands	r3, r1
 8000ab6:	60d3      	str	r3, [r2, #12]
 8000ab8:	4b35      	ldr	r3, [pc, #212]	; (8000b90 <main+0x234>)
 8000aba:	6959      	ldr	r1, [r3, #20]
 8000abc:	4301      	orrs	r1, r0
 8000abe:	6159      	str	r1, [r3, #20]
 8000ac0:	695b      	ldr	r3, [r3, #20]
 8000ac2:	4003      	ands	r3, r0
 8000ac4:	9301      	str	r3, [sp, #4]
 8000ac6:	9b01      	ldr	r3, [sp, #4]
 8000ac8:	4b3c      	ldr	r3, [pc, #240]	; (8000bbc <main+0x260>)
 8000aca:	6819      	ldr	r1, [r3, #0]
 8000acc:	4e3c      	ldr	r6, [pc, #240]	; (8000bc0 <main+0x264>)
 8000ace:	4031      	ands	r1, r6
 8000ad0:	6019      	str	r1, [r3, #0]
 8000ad2:	6819      	ldr	r1, [r3, #0]
 8000ad4:	43a9      	bics	r1, r5
 8000ad6:	4329      	orrs	r1, r5
 8000ad8:	6019      	str	r1, [r3, #0]
 8000ada:	6819      	ldr	r1, [r3, #0]
 8000adc:	3520      	adds	r5, #32
 8000ade:	43a9      	bics	r1, r5
 8000ae0:	6019      	str	r1, [r3, #0]
 8000ae2:	6819      	ldr	r1, [r3, #0]
 8000ae4:	3540      	adds	r5, #64	; 0x40
 8000ae6:	4329      	orrs	r1, r5
 8000ae8:	6019      	str	r1, [r3, #0]
 8000aea:	6819      	ldr	r1, [r3, #0]
 8000aec:	4d35      	ldr	r5, [pc, #212]	; (8000bc4 <main+0x268>)
 8000aee:	400d      	ands	r5, r1
 8000af0:	2180      	movs	r1, #128	; 0x80
 8000af2:	0049      	lsls	r1, r1, #1
 8000af4:	4329      	orrs	r1, r5
 8000af6:	6019      	str	r1, [r3, #0]
 8000af8:	6819      	ldr	r1, [r3, #0]
 8000afa:	4d33      	ldr	r5, [pc, #204]	; (8000bc8 <main+0x26c>)
 8000afc:	400d      	ands	r5, r1
 8000afe:	2180      	movs	r1, #128	; 0x80
 8000b00:	00c9      	lsls	r1, r1, #3
 8000b02:	4329      	orrs	r1, r5
 8000b04:	6019      	str	r1, [r3, #0]
 8000b06:	6819      	ldr	r1, [r3, #0]
 8000b08:	4d30      	ldr	r5, [pc, #192]	; (8000bcc <main+0x270>)
 8000b0a:	400d      	ands	r5, r1
 8000b0c:	21c0      	movs	r1, #192	; 0xc0
 8000b0e:	0189      	lsls	r1, r1, #6
 8000b10:	4329      	orrs	r1, r5
 8000b12:	6019      	str	r1, [r3, #0]
 8000b14:	6859      	ldr	r1, [r3, #4]
 8000b16:	0c09      	lsrs	r1, r1, #16
 8000b18:	0409      	lsls	r1, r1, #16
 8000b1a:	2510      	movs	r5, #16
 8000b1c:	4329      	orrs	r1, r5
 8000b1e:	6059      	str	r1, [r3, #4]
 8000b20:	492b      	ldr	r1, [pc, #172]	; (8000bd0 <main+0x274>)
 8000b22:	6099      	str	r1, [r3, #8]
 8000b24:	492b      	ldr	r1, [pc, #172]	; (8000bd4 <main+0x278>)
 8000b26:	60d9      	str	r1, [r3, #12]
 8000b28:	6819      	ldr	r1, [r3, #0]
 8000b2a:	4308      	orrs	r0, r1
 8000b2c:	6018      	str	r0, [r3, #0]
 8000b2e:	6819      	ldr	r1, [r3, #0]
 8000b30:	2002      	movs	r0, #2
 8000b32:	4301      	orrs	r1, r0
 8000b34:	6019      	str	r1, [r3, #0]
 8000b36:	4b28      	ldr	r3, [pc, #160]	; (8000bd8 <main+0x27c>)
 8000b38:	20c2      	movs	r0, #194	; 0xc2
 8000b3a:	0080      	lsls	r0, r0, #2
 8000b3c:	5819      	ldr	r1, [r3, r0]
 8000b3e:	4d27      	ldr	r5, [pc, #156]	; (8000bdc <main+0x280>)
 8000b40:	4029      	ands	r1, r5
 8000b42:	5019      	str	r1, [r3, r0]
 8000b44:	2180      	movs	r1, #128	; 0x80
 8000b46:	0089      	lsls	r1, r1, #2
 8000b48:	6019      	str	r1, [r3, #0]
 8000b4a:	6893      	ldr	r3, [r2, #8]
 8000b4c:	4023      	ands	r3, r4
 8000b4e:	39fd      	subs	r1, #253	; 0xfd
 8000b50:	39ff      	subs	r1, #255	; 0xff
 8000b52:	430b      	orrs	r3, r1
 8000b54:	6093      	str	r3, [r2, #8]
 8000b56:	f000 fa5b 	bl	8001010 <oled_config>
 8000b5a:	4b21      	ldr	r3, [pc, #132]	; (8000be0 <main+0x284>)
 8000b5c:	4a21      	ldr	r2, [pc, #132]	; (8000be4 <main+0x288>)
 8000b5e:	601a      	str	r2, [r3, #0]
 8000b60:	4d21      	ldr	r5, [pc, #132]	; (8000be8 <main+0x28c>)
 8000b62:	4c22      	ldr	r4, [pc, #136]	; (8000bec <main+0x290>)
 8000b64:	e00c      	b.n	8000b80 <main+0x224>
 8000b66:	2103      	movs	r1, #3
 8000b68:	2000      	movs	r0, #0
 8000b6a:	f000 fb41 	bl	80011f0 <oled_set_cursor>
 8000b6e:	6828      	ldr	r0, [r5, #0]
 8000b70:	f7ff fe22 	bl	80007b8 <__aeabi_f2iz>
 8000b74:	0001      	movs	r1, r0
 8000b76:	0020      	movs	r0, r4
 8000b78:	f000 f9dc 	bl	8000f34 <xprintf>
 8000b7c:	f000 fa12 	bl	8000fa4 <oled_update>
 8000b80:	4b1b      	ldr	r3, [pc, #108]	; (8000bf0 <main+0x294>)
 8000b82:	3b01      	subs	r3, #1
 8000b84:	2b00      	cmp	r3, #0
 8000b86:	d1fc      	bne.n	8000b82 <main+0x226>
 8000b88:	e7ed      	b.n	8000b66 <main+0x20a>
 8000b8a:	46c0      	nop			; (mov r8, r8)
 8000b8c:	40022000 	.word	0x40022000
 8000b90:	40021000 	.word	0x40021000
 8000b94:	ffc2ffff 	.word	0xffc2ffff
 8000b98:	fffff8ff 	.word	0xfffff8ff
 8000b9c:	20000000 	.word	0x20000000
 8000ba0:	02dc6c00 	.word	0x02dc6c00
 8000ba4:	40012400 	.word	0x40012400
 8000ba8:	7fffffe8 	.word	0x7fffffe8
 8000bac:	ffff3fff 	.word	0xffff3fff
 8000bb0:	fffff23f 	.word	0xfffff23f
 8000bb4:	ffffdfff 	.word	0xffffdfff
 8000bb8:	ffffefff 	.word	0xffffefff
 8000bbc:	40020008 	.word	0x40020008
 8000bc0:	ffffbfef 	.word	0xffffbfef
 8000bc4:	fffffcff 	.word	0xfffffcff
 8000bc8:	fffff3ff 	.word	0xfffff3ff
 8000bcc:	ffffcfff 	.word	0xffffcfff
 8000bd0:	40012440 	.word	0x40012440
 8000bd4:	20000458 	.word	0x20000458
 8000bd8:	e000e100 	.word	0xe000e100
 8000bdc:	ffff00ff 	.word	0xffff00ff
 8000be0:	20000888 	.word	0x20000888
 8000be4:	08001205 	.word	0x08001205
 8000be8:	20000478 	.word	0x20000478
 8000bec:	08001564 	.word	0x08001564
 8000bf0:	000186a0 	.word	0x000186a0

08000bf4 <SystemInit>:
 8000bf4:	4b11      	ldr	r3, [pc, #68]	; (8000c3c <SystemInit+0x48>)
 8000bf6:	681a      	ldr	r2, [r3, #0]
 8000bf8:	2101      	movs	r1, #1
 8000bfa:	430a      	orrs	r2, r1
 8000bfc:	601a      	str	r2, [r3, #0]
 8000bfe:	685a      	ldr	r2, [r3, #4]
 8000c00:	480f      	ldr	r0, [pc, #60]	; (8000c40 <SystemInit+0x4c>)
 8000c02:	4002      	ands	r2, r0
 8000c04:	605a      	str	r2, [r3, #4]
 8000c06:	681a      	ldr	r2, [r3, #0]
 8000c08:	480e      	ldr	r0, [pc, #56]	; (8000c44 <SystemInit+0x50>)
 8000c0a:	4002      	ands	r2, r0
 8000c0c:	601a      	str	r2, [r3, #0]
 8000c0e:	681a      	ldr	r2, [r3, #0]
 8000c10:	480d      	ldr	r0, [pc, #52]	; (8000c48 <SystemInit+0x54>)
 8000c12:	4002      	ands	r2, r0
 8000c14:	601a      	str	r2, [r3, #0]
 8000c16:	685a      	ldr	r2, [r3, #4]
 8000c18:	480c      	ldr	r0, [pc, #48]	; (8000c4c <SystemInit+0x58>)
 8000c1a:	4002      	ands	r2, r0
 8000c1c:	605a      	str	r2, [r3, #4]
 8000c1e:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8000c20:	200f      	movs	r0, #15
 8000c22:	4382      	bics	r2, r0
 8000c24:	62da      	str	r2, [r3, #44]	; 0x2c
 8000c26:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8000c28:	4809      	ldr	r0, [pc, #36]	; (8000c50 <SystemInit+0x5c>)
 8000c2a:	4002      	ands	r2, r0
 8000c2c:	631a      	str	r2, [r3, #48]	; 0x30
 8000c2e:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 8000c30:	438a      	bics	r2, r1
 8000c32:	635a      	str	r2, [r3, #52]	; 0x34
 8000c34:	2200      	movs	r2, #0
 8000c36:	609a      	str	r2, [r3, #8]
 8000c38:	4770      	bx	lr
 8000c3a:	46c0      	nop			; (mov r8, r8)
 8000c3c:	40021000 	.word	0x40021000
 8000c40:	f8ffb80c 	.word	0xf8ffb80c
 8000c44:	fef6ffff 	.word	0xfef6ffff
 8000c48:	fffbffff 	.word	0xfffbffff
 8000c4c:	ffc0ffff 	.word	0xffc0ffff
 8000c50:	fffffeac 	.word	0xfffffeac

08000c54 <xputc>:
 8000c54:	b510      	push	{r4, lr}
 8000c56:	0004      	movs	r4, r0
 8000c58:	280a      	cmp	r0, #10
 8000c5a:	d008      	beq.n	8000c6e <xputc+0x1a>
 8000c5c:	4b09      	ldr	r3, [pc, #36]	; (8000c84 <xputc+0x30>)
 8000c5e:	681b      	ldr	r3, [r3, #0]
 8000c60:	2b00      	cmp	r3, #0
 8000c62:	d008      	beq.n	8000c76 <xputc+0x22>
 8000c64:	1c59      	adds	r1, r3, #1
 8000c66:	4a07      	ldr	r2, [pc, #28]	; (8000c84 <xputc+0x30>)
 8000c68:	6011      	str	r1, [r2, #0]
 8000c6a:	701c      	strb	r4, [r3, #0]
 8000c6c:	bd10      	pop	{r4, pc}
 8000c6e:	200d      	movs	r0, #13
 8000c70:	f7ff fff0 	bl	8000c54 <xputc>
 8000c74:	e7f2      	b.n	8000c5c <xputc+0x8>
 8000c76:	4b04      	ldr	r3, [pc, #16]	; (8000c88 <xputc+0x34>)
 8000c78:	681b      	ldr	r3, [r3, #0]
 8000c7a:	2b00      	cmp	r3, #0
 8000c7c:	d0f6      	beq.n	8000c6c <xputc+0x18>
 8000c7e:	0020      	movs	r0, r4
 8000c80:	4798      	blx	r3
 8000c82:	e7f3      	b.n	8000c6c <xputc+0x18>
 8000c84:	2000047c 	.word	0x2000047c
 8000c88:	20000888 	.word	0x20000888

08000c8c <xputs>:
 8000c8c:	b510      	push	{r4, lr}
 8000c8e:	0004      	movs	r4, r0
 8000c90:	7800      	ldrb	r0, [r0, #0]
 8000c92:	2800      	cmp	r0, #0
 8000c94:	d005      	beq.n	8000ca2 <xputs+0x16>
 8000c96:	3401      	adds	r4, #1
 8000c98:	f7ff ffdc 	bl	8000c54 <xputc>
 8000c9c:	7820      	ldrb	r0, [r4, #0]
 8000c9e:	2800      	cmp	r0, #0
 8000ca0:	d1f9      	bne.n	8000c96 <xputs+0xa>
 8000ca2:	bd10      	pop	{r4, pc}

08000ca4 <xvprintf>:
 8000ca4:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000ca6:	46de      	mov	lr, fp
 8000ca8:	4657      	mov	r7, sl
 8000caa:	464e      	mov	r6, r9
 8000cac:	4645      	mov	r5, r8
 8000cae:	b5e0      	push	{r5, r6, r7, lr}
 8000cb0:	b089      	sub	sp, #36	; 0x24
 8000cb2:	4680      	mov	r8, r0
 8000cb4:	9101      	str	r1, [sp, #4]
 8000cb6:	e007      	b.n	8000cc8 <xvprintf+0x24>
 8000cb8:	464b      	mov	r3, r9
 8000cba:	9301      	str	r3, [sp, #4]
 8000cbc:	e004      	b.n	8000cc8 <xvprintf+0x24>
 8000cbe:	2301      	movs	r3, #1
 8000cc0:	469c      	mov	ip, r3
 8000cc2:	44e0      	add	r8, ip
 8000cc4:	f7ff ffc6 	bl	8000c54 <xputc>
 8000cc8:	4643      	mov	r3, r8
 8000cca:	7818      	ldrb	r0, [r3, #0]
 8000ccc:	2800      	cmp	r0, #0
 8000cce:	d100      	bne.n	8000cd2 <xvprintf+0x2e>
 8000cd0:	e126      	b.n	8000f20 <xvprintf+0x27c>
 8000cd2:	2825      	cmp	r0, #37	; 0x25
 8000cd4:	d1f3      	bne.n	8000cbe <xvprintf+0x1a>
 8000cd6:	785b      	ldrb	r3, [r3, #1]
 8000cd8:	2b30      	cmp	r3, #48	; 0x30
 8000cda:	d030      	beq.n	8000d3e <xvprintf+0x9a>
 8000cdc:	2b2d      	cmp	r3, #45	; 0x2d
 8000cde:	d034      	beq.n	8000d4a <xvprintf+0xa6>
 8000ce0:	4642      	mov	r2, r8
 8000ce2:	3202      	adds	r2, #2
 8000ce4:	2100      	movs	r1, #0
 8000ce6:	468a      	mov	sl, r1
 8000ce8:	0019      	movs	r1, r3
 8000cea:	3930      	subs	r1, #48	; 0x30
 8000cec:	2909      	cmp	r1, #9
 8000cee:	d832      	bhi.n	8000d56 <xvprintf+0xb2>
 8000cf0:	2600      	movs	r6, #0
 8000cf2:	0019      	movs	r1, r3
 8000cf4:	00b3      	lsls	r3, r6, #2
 8000cf6:	199b      	adds	r3, r3, r6
 8000cf8:	005b      	lsls	r3, r3, #1
 8000cfa:	185b      	adds	r3, r3, r1
 8000cfc:	3b30      	subs	r3, #48	; 0x30
 8000cfe:	001e      	movs	r6, r3
 8000d00:	1c53      	adds	r3, r2, #1
 8000d02:	7811      	ldrb	r1, [r2, #0]
 8000d04:	001a      	movs	r2, r3
 8000d06:	0008      	movs	r0, r1
 8000d08:	3830      	subs	r0, #48	; 0x30
 8000d0a:	2809      	cmp	r0, #9
 8000d0c:	d9f2      	bls.n	8000cf4 <xvprintf+0x50>
 8000d0e:	4698      	mov	r8, r3
 8000d10:	000b      	movs	r3, r1
 8000d12:	001a      	movs	r2, r3
 8000d14:	2120      	movs	r1, #32
 8000d16:	438a      	bics	r2, r1
 8000d18:	2a4c      	cmp	r2, #76	; 0x4c
 8000d1a:	d01f      	beq.n	8000d5c <xvprintf+0xb8>
 8000d1c:	2b00      	cmp	r3, #0
 8000d1e:	d100      	bne.n	8000d22 <xvprintf+0x7e>
 8000d20:	e0fe      	b.n	8000f20 <xvprintf+0x27c>
 8000d22:	0019      	movs	r1, r3
 8000d24:	2b60      	cmp	r3, #96	; 0x60
 8000d26:	d901      	bls.n	8000d2c <xvprintf+0x88>
 8000d28:	3920      	subs	r1, #32
 8000d2a:	b2c9      	uxtb	r1, r1
 8000d2c:	000a      	movs	r2, r1
 8000d2e:	3a42      	subs	r2, #66	; 0x42
 8000d30:	b2d0      	uxtb	r0, r2
 8000d32:	2816      	cmp	r0, #22
 8000d34:	d851      	bhi.n	8000dda <xvprintf+0x136>
 8000d36:	0082      	lsls	r2, r0, #2
 8000d38:	487d      	ldr	r0, [pc, #500]	; (8000f30 <xvprintf+0x28c>)
 8000d3a:	5882      	ldr	r2, [r0, r2]
 8000d3c:	4697      	mov	pc, r2
 8000d3e:	4643      	mov	r3, r8
 8000d40:	1cda      	adds	r2, r3, #3
 8000d42:	789b      	ldrb	r3, [r3, #2]
 8000d44:	2101      	movs	r1, #1
 8000d46:	468a      	mov	sl, r1
 8000d48:	e7ce      	b.n	8000ce8 <xvprintf+0x44>
 8000d4a:	4643      	mov	r3, r8
 8000d4c:	1cda      	adds	r2, r3, #3
 8000d4e:	789b      	ldrb	r3, [r3, #2]
 8000d50:	2102      	movs	r1, #2
 8000d52:	468a      	mov	sl, r1
 8000d54:	e7c8      	b.n	8000ce8 <xvprintf+0x44>
 8000d56:	4690      	mov	r8, r2
 8000d58:	2600      	movs	r6, #0
 8000d5a:	e7da      	b.n	8000d12 <xvprintf+0x6e>
 8000d5c:	4653      	mov	r3, sl
 8000d5e:	3a48      	subs	r2, #72	; 0x48
 8000d60:	4313      	orrs	r3, r2
 8000d62:	469a      	mov	sl, r3
 8000d64:	4643      	mov	r3, r8
 8000d66:	781b      	ldrb	r3, [r3, #0]
 8000d68:	3a03      	subs	r2, #3
 8000d6a:	4694      	mov	ip, r2
 8000d6c:	44e0      	add	r8, ip
 8000d6e:	e7d5      	b.n	8000d1c <xvprintf+0x78>
 8000d70:	9b01      	ldr	r3, [sp, #4]
 8000d72:	1d1a      	adds	r2, r3, #4
 8000d74:	4691      	mov	r9, r2
 8000d76:	681f      	ldr	r7, [r3, #0]
 8000d78:	783b      	ldrb	r3, [r7, #0]
 8000d7a:	2b00      	cmp	r3, #0
 8000d7c:	d022      	beq.n	8000dc4 <xvprintf+0x120>
 8000d7e:	2400      	movs	r4, #0
 8000d80:	3401      	adds	r4, #1
 8000d82:	5d3b      	ldrb	r3, [r7, r4]
 8000d84:	2b00      	cmp	r3, #0
 8000d86:	d1fb      	bne.n	8000d80 <xvprintf+0xdc>
 8000d88:	4653      	mov	r3, sl
 8000d8a:	079b      	lsls	r3, r3, #30
 8000d8c:	d40a      	bmi.n	8000da4 <xvprintf+0x100>
 8000d8e:	1c65      	adds	r5, r4, #1
 8000d90:	42b4      	cmp	r4, r6
 8000d92:	d219      	bcs.n	8000dc8 <xvprintf+0x124>
 8000d94:	1c74      	adds	r4, r6, #1
 8000d96:	2020      	movs	r0, #32
 8000d98:	f7ff ff5c 	bl	8000c54 <xputc>
 8000d9c:	3501      	adds	r5, #1
 8000d9e:	42ac      	cmp	r4, r5
 8000da0:	d1f9      	bne.n	8000d96 <xvprintf+0xf2>
 8000da2:	1c74      	adds	r4, r6, #1
 8000da4:	0038      	movs	r0, r7
 8000da6:	f7ff ff71 	bl	8000c8c <xputs>
 8000daa:	1c65      	adds	r5, r4, #1
 8000dac:	42b4      	cmp	r4, r6
 8000dae:	d283      	bcs.n	8000cb8 <xvprintf+0x14>
 8000db0:	3601      	adds	r6, #1
 8000db2:	2020      	movs	r0, #32
 8000db4:	f7ff ff4e 	bl	8000c54 <xputc>
 8000db8:	3501      	adds	r5, #1
 8000dba:	42b5      	cmp	r5, r6
 8000dbc:	d1f9      	bne.n	8000db2 <xvprintf+0x10e>
 8000dbe:	464b      	mov	r3, r9
 8000dc0:	9301      	str	r3, [sp, #4]
 8000dc2:	e781      	b.n	8000cc8 <xvprintf+0x24>
 8000dc4:	2400      	movs	r4, #0
 8000dc6:	e7df      	b.n	8000d88 <xvprintf+0xe4>
 8000dc8:	002c      	movs	r4, r5
 8000dca:	e7eb      	b.n	8000da4 <xvprintf+0x100>
 8000dcc:	9b01      	ldr	r3, [sp, #4]
 8000dce:	1d1c      	adds	r4, r3, #4
 8000dd0:	7818      	ldrb	r0, [r3, #0]
 8000dd2:	f7ff ff3f 	bl	8000c54 <xputc>
 8000dd6:	9401      	str	r4, [sp, #4]
 8000dd8:	e776      	b.n	8000cc8 <xvprintf+0x24>
 8000dda:	0018      	movs	r0, r3
 8000ddc:	f7ff ff3a 	bl	8000c54 <xputc>
 8000de0:	e772      	b.n	8000cc8 <xvprintf+0x24>
 8000de2:	2204      	movs	r2, #4
 8000de4:	4650      	mov	r0, sl
 8000de6:	4202      	tst	r2, r0
 8000de8:	d012      	beq.n	8000e10 <xvprintf+0x16c>
 8000dea:	3206      	adds	r2, #6
 8000dec:	9200      	str	r2, [sp, #0]
 8000dee:	9801      	ldr	r0, [sp, #4]
 8000df0:	1d02      	adds	r2, r0, #4
 8000df2:	6807      	ldr	r7, [r0, #0]
 8000df4:	9201      	str	r2, [sp, #4]
 8000df6:	2944      	cmp	r1, #68	; 0x44
 8000df8:	d16c      	bne.n	8000ed4 <xvprintf+0x230>
 8000dfa:	2f00      	cmp	r7, #0
 8000dfc:	da6a      	bge.n	8000ed4 <xvprintf+0x230>
 8000dfe:	427f      	negs	r7, r7
 8000e00:	2210      	movs	r2, #16
 8000e02:	4651      	mov	r1, sl
 8000e04:	4311      	orrs	r1, r2
 8000e06:	468a      	mov	sl, r1
 8000e08:	e064      	b.n	8000ed4 <xvprintf+0x230>
 8000e0a:	2210      	movs	r2, #16
 8000e0c:	9200      	str	r2, [sp, #0]
 8000e0e:	e7ee      	b.n	8000dee <xvprintf+0x14a>
 8000e10:	220a      	movs	r2, #10
 8000e12:	9200      	str	r2, [sp, #0]
 8000e14:	2944      	cmp	r1, #68	; 0x44
 8000e16:	d159      	bne.n	8000ecc <xvprintf+0x228>
 8000e18:	9a01      	ldr	r2, [sp, #4]
 8000e1a:	6817      	ldr	r7, [r2, #0]
 8000e1c:	3204      	adds	r2, #4
 8000e1e:	9201      	str	r2, [sp, #4]
 8000e20:	e7eb      	b.n	8000dfa <xvprintf+0x156>
 8000e22:	2227      	movs	r2, #39	; 0x27
 8000e24:	e05a      	b.n	8000edc <xvprintf+0x238>
 8000e26:	1c7b      	adds	r3, r7, #1
 8000e28:	3430      	adds	r4, #48	; 0x30
 8000e2a:	aa02      	add	r2, sp, #8
 8000e2c:	55d4      	strb	r4, [r2, r7]
 8000e2e:	2d00      	cmp	r5, #0
 8000e30:	d011      	beq.n	8000e56 <xvprintf+0x1b2>
 8000e32:	2b18      	cmp	r3, #24
 8000e34:	d00f      	beq.n	8000e56 <xvprintf+0x1b2>
 8000e36:	001f      	movs	r7, r3
 8000e38:	9900      	ldr	r1, [sp, #0]
 8000e3a:	0028      	movs	r0, r5
 8000e3c:	f7ff f9ea 	bl	8000214 <__aeabi_uidivmod>
 8000e40:	b2cc      	uxtb	r4, r1
 8000e42:	9900      	ldr	r1, [sp, #0]
 8000e44:	0028      	movs	r0, r5
 8000e46:	f7ff f95f 	bl	8000108 <__udivsi3>
 8000e4a:	0005      	movs	r5, r0
 8000e4c:	2c09      	cmp	r4, #9
 8000e4e:	d9ea      	bls.n	8000e26 <xvprintf+0x182>
 8000e50:	1934      	adds	r4, r6, r4
 8000e52:	b2e4      	uxtb	r4, r4
 8000e54:	e7e7      	b.n	8000e26 <xvprintf+0x182>
 8000e56:	001d      	movs	r5, r3
 8000e58:	464e      	mov	r6, r9
 8000e5a:	4653      	mov	r3, sl
 8000e5c:	06db      	lsls	r3, r3, #27
 8000e5e:	d503      	bpl.n	8000e68 <xvprintf+0x1c4>
 8000e60:	232d      	movs	r3, #45	; 0x2d
 8000e62:	aa02      	add	r2, sp, #8
 8000e64:	5553      	strb	r3, [r2, r5]
 8000e66:	1cbd      	adds	r5, r7, #2
 8000e68:	4653      	mov	r3, sl
 8000e6a:	07db      	lsls	r3, r3, #31
 8000e6c:	17db      	asrs	r3, r3, #31
 8000e6e:	2410      	movs	r4, #16
 8000e70:	401c      	ands	r4, r3
 8000e72:	3420      	adds	r4, #32
 8000e74:	4653      	mov	r3, sl
 8000e76:	079b      	lsls	r3, r3, #30
 8000e78:	d420      	bmi.n	8000ebc <xvprintf+0x218>
 8000e7a:	1c6f      	adds	r7, r5, #1
 8000e7c:	42b5      	cmp	r5, r6
 8000e7e:	d20a      	bcs.n	8000e96 <xvprintf+0x1f2>
 8000e80:	1c73      	adds	r3, r6, #1
 8000e82:	46a9      	mov	r9, r5
 8000e84:	001d      	movs	r5, r3
 8000e86:	0020      	movs	r0, r4
 8000e88:	f7ff fee4 	bl	8000c54 <xputc>
 8000e8c:	3701      	adds	r7, #1
 8000e8e:	42af      	cmp	r7, r5
 8000e90:	d1f9      	bne.n	8000e86 <xvprintf+0x1e2>
 8000e92:	464d      	mov	r5, r9
 8000e94:	1c77      	adds	r7, r6, #1
 8000e96:	3d01      	subs	r5, #1
 8000e98:	ab02      	add	r3, sp, #8
 8000e9a:	5ce8      	ldrb	r0, [r5, r3]
 8000e9c:	f7ff feda 	bl	8000c54 <xputc>
 8000ea0:	2d00      	cmp	r5, #0
 8000ea2:	d1f8      	bne.n	8000e96 <xvprintf+0x1f2>
 8000ea4:	1c7c      	adds	r4, r7, #1
 8000ea6:	42b7      	cmp	r7, r6
 8000ea8:	d300      	bcc.n	8000eac <xvprintf+0x208>
 8000eaa:	e70d      	b.n	8000cc8 <xvprintf+0x24>
 8000eac:	3601      	adds	r6, #1
 8000eae:	2020      	movs	r0, #32
 8000eb0:	f7ff fed0 	bl	8000c54 <xputc>
 8000eb4:	3401      	adds	r4, #1
 8000eb6:	42b4      	cmp	r4, r6
 8000eb8:	d1f9      	bne.n	8000eae <xvprintf+0x20a>
 8000eba:	e705      	b.n	8000cc8 <xvprintf+0x24>
 8000ebc:	002f      	movs	r7, r5
 8000ebe:	e7ea      	b.n	8000e96 <xvprintf+0x1f2>
 8000ec0:	2204      	movs	r2, #4
 8000ec2:	4650      	mov	r0, sl
 8000ec4:	4202      	tst	r2, r0
 8000ec6:	d1a0      	bne.n	8000e0a <xvprintf+0x166>
 8000ec8:	320c      	adds	r2, #12
 8000eca:	9200      	str	r2, [sp, #0]
 8000ecc:	9a01      	ldr	r2, [sp, #4]
 8000ece:	6817      	ldr	r7, [r2, #0]
 8000ed0:	3204      	adds	r2, #4
 8000ed2:	9201      	str	r2, [sp, #4]
 8000ed4:	0039      	movs	r1, r7
 8000ed6:	2207      	movs	r2, #7
 8000ed8:	2b78      	cmp	r3, #120	; 0x78
 8000eda:	d0a2      	beq.n	8000e22 <xvprintf+0x17e>
 8000edc:	b2d3      	uxtb	r3, r2
 8000ede:	2700      	movs	r7, #0
 8000ee0:	000d      	movs	r5, r1
 8000ee2:	46b1      	mov	r9, r6
 8000ee4:	001e      	movs	r6, r3
 8000ee6:	e7a7      	b.n	8000e38 <xvprintf+0x194>
 8000ee8:	9a01      	ldr	r2, [sp, #4]
 8000eea:	6817      	ldr	r7, [r2, #0]
 8000eec:	3204      	adds	r2, #4
 8000eee:	9201      	str	r2, [sp, #4]
 8000ef0:	2202      	movs	r2, #2
 8000ef2:	9200      	str	r2, [sp, #0]
 8000ef4:	e7ee      	b.n	8000ed4 <xvprintf+0x230>
 8000ef6:	2204      	movs	r2, #4
 8000ef8:	4650      	mov	r0, sl
 8000efa:	4202      	tst	r2, r0
 8000efc:	d1f4      	bne.n	8000ee8 <xvprintf+0x244>
 8000efe:	3a02      	subs	r2, #2
 8000f00:	9200      	str	r2, [sp, #0]
 8000f02:	e787      	b.n	8000e14 <xvprintf+0x170>
 8000f04:	9a01      	ldr	r2, [sp, #4]
 8000f06:	6817      	ldr	r7, [r2, #0]
 8000f08:	3204      	adds	r2, #4
 8000f0a:	9201      	str	r2, [sp, #4]
 8000f0c:	2208      	movs	r2, #8
 8000f0e:	9200      	str	r2, [sp, #0]
 8000f10:	e7e0      	b.n	8000ed4 <xvprintf+0x230>
 8000f12:	2204      	movs	r2, #4
 8000f14:	4651      	mov	r1, sl
 8000f16:	420a      	tst	r2, r1
 8000f18:	d1f4      	bne.n	8000f04 <xvprintf+0x260>
 8000f1a:	3204      	adds	r2, #4
 8000f1c:	9200      	str	r2, [sp, #0]
 8000f1e:	e7d5      	b.n	8000ecc <xvprintf+0x228>
 8000f20:	b009      	add	sp, #36	; 0x24
 8000f22:	bc3c      	pop	{r2, r3, r4, r5}
 8000f24:	4690      	mov	r8, r2
 8000f26:	4699      	mov	r9, r3
 8000f28:	46a2      	mov	sl, r4
 8000f2a:	46ab      	mov	fp, r5
 8000f2c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000f2e:	46c0      	nop			; (mov r8, r8)
 8000f30:	08001574 	.word	0x08001574

08000f34 <xprintf>:
 8000f34:	b40f      	push	{r0, r1, r2, r3}
 8000f36:	b500      	push	{lr}
 8000f38:	b083      	sub	sp, #12
 8000f3a:	a904      	add	r1, sp, #16
 8000f3c:	c901      	ldmia	r1!, {r0}
 8000f3e:	9101      	str	r1, [sp, #4]
 8000f40:	f7ff feb0 	bl	8000ca4 <xvprintf>
 8000f44:	b003      	add	sp, #12
 8000f46:	bc08      	pop	{r3}
 8000f48:	b004      	add	sp, #16
 8000f4a:	4718      	bx	r3

08000f4c <oled_cmd_send>:
 8000f4c:	490d      	ldr	r1, [pc, #52]	; (8000f84 <oled_cmd_send+0x38>)
 8000f4e:	684b      	ldr	r3, [r1, #4]
 8000f50:	4a0d      	ldr	r2, [pc, #52]	; (8000f88 <oled_cmd_send+0x3c>)
 8000f52:	401a      	ands	r2, r3
 8000f54:	4b0d      	ldr	r3, [pc, #52]	; (8000f8c <oled_cmd_send+0x40>)
 8000f56:	4313      	orrs	r3, r2
 8000f58:	604b      	str	r3, [r1, #4]
 8000f5a:	2202      	movs	r2, #2
 8000f5c:	698b      	ldr	r3, [r1, #24]
 8000f5e:	421a      	tst	r2, r3
 8000f60:	d0fc      	beq.n	8000f5c <oled_cmd_send+0x10>
 8000f62:	4b08      	ldr	r3, [pc, #32]	; (8000f84 <oled_cmd_send+0x38>)
 8000f64:	2200      	movs	r2, #0
 8000f66:	629a      	str	r2, [r3, #40]	; 0x28
 8000f68:	0019      	movs	r1, r3
 8000f6a:	3202      	adds	r2, #2
 8000f6c:	698b      	ldr	r3, [r1, #24]
 8000f6e:	421a      	tst	r2, r3
 8000f70:	d0fc      	beq.n	8000f6c <oled_cmd_send+0x20>
 8000f72:	4b04      	ldr	r3, [pc, #16]	; (8000f84 <oled_cmd_send+0x38>)
 8000f74:	6298      	str	r0, [r3, #40]	; 0x28
 8000f76:	0019      	movs	r1, r3
 8000f78:	2240      	movs	r2, #64	; 0x40
 8000f7a:	698b      	ldr	r3, [r1, #24]
 8000f7c:	421a      	tst	r2, r3
 8000f7e:	d1fc      	bne.n	8000f7a <oled_cmd_send+0x2e>
 8000f80:	2000      	movs	r0, #0
 8000f82:	4770      	bx	lr
 8000f84:	40005400 	.word	0x40005400
 8000f88:	fc008000 	.word	0xfc008000
 8000f8c:	02022078 	.word	0x02022078

08000f90 <oled_clr>:
 8000f90:	b510      	push	{r4, lr}
 8000f92:	0001      	movs	r1, r0
 8000f94:	2280      	movs	r2, #128	; 0x80
 8000f96:	00d2      	lsls	r2, r2, #3
 8000f98:	4801      	ldr	r0, [pc, #4]	; (8000fa0 <oled_clr+0x10>)
 8000f9a:	f000 f9bd 	bl	8001318 <memset>
 8000f9e:	bd10      	pop	{r4, pc}
 8000fa0:	20000484 	.word	0x20000484

08000fa4 <oled_update>:
 8000fa4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000fa6:	4e16      	ldr	r6, [pc, #88]	; (8001000 <oled_update+0x5c>)
 8000fa8:	27b0      	movs	r7, #176	; 0xb0
 8000faa:	4c16      	ldr	r4, [pc, #88]	; (8001004 <oled_update+0x60>)
 8000fac:	2502      	movs	r5, #2
 8000fae:	e006      	b.n	8000fbe <oled_update+0x1a>
 8000fb0:	69a3      	ldr	r3, [r4, #24]
 8000fb2:	421a      	tst	r2, r3
 8000fb4:	d1fc      	bne.n	8000fb0 <oled_update+0xc>
 8000fb6:	3701      	adds	r7, #1
 8000fb8:	b2ff      	uxtb	r7, r7
 8000fba:	2fb8      	cmp	r7, #184	; 0xb8
 8000fbc:	d01f      	beq.n	8000ffe <oled_update+0x5a>
 8000fbe:	0038      	movs	r0, r7
 8000fc0:	f7ff ffc4 	bl	8000f4c <oled_cmd_send>
 8000fc4:	2000      	movs	r0, #0
 8000fc6:	f7ff ffc1 	bl	8000f4c <oled_cmd_send>
 8000fca:	2010      	movs	r0, #16
 8000fcc:	f7ff ffbe 	bl	8000f4c <oled_cmd_send>
 8000fd0:	6863      	ldr	r3, [r4, #4]
 8000fd2:	4a0d      	ldr	r2, [pc, #52]	; (8001008 <oled_update+0x64>)
 8000fd4:	401a      	ands	r2, r3
 8000fd6:	4b0d      	ldr	r3, [pc, #52]	; (800100c <oled_update+0x68>)
 8000fd8:	4313      	orrs	r3, r2
 8000fda:	6063      	str	r3, [r4, #4]
 8000fdc:	69a3      	ldr	r3, [r4, #24]
 8000fde:	421d      	tst	r5, r3
 8000fe0:	d0fc      	beq.n	8000fdc <oled_update+0x38>
 8000fe2:	2340      	movs	r3, #64	; 0x40
 8000fe4:	62a3      	str	r3, [r4, #40]	; 0x28
 8000fe6:	0032      	movs	r2, r6
 8000fe8:	3280      	adds	r2, #128	; 0x80
 8000fea:	69a3      	ldr	r3, [r4, #24]
 8000fec:	421d      	tst	r5, r3
 8000fee:	d0fc      	beq.n	8000fea <oled_update+0x46>
 8000ff0:	7833      	ldrb	r3, [r6, #0]
 8000ff2:	62a3      	str	r3, [r4, #40]	; 0x28
 8000ff4:	3601      	adds	r6, #1
 8000ff6:	42b2      	cmp	r2, r6
 8000ff8:	d1f7      	bne.n	8000fea <oled_update+0x46>
 8000ffa:	2240      	movs	r2, #64	; 0x40
 8000ffc:	e7d8      	b.n	8000fb0 <oled_update+0xc>
 8000ffe:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8001000:	20000484 	.word	0x20000484
 8001004:	40005400 	.word	0x40005400
 8001008:	fc008000 	.word	0xfc008000
 800100c:	02812078 	.word	0x02812078

08001010 <oled_config>:
 8001010:	b530      	push	{r4, r5, lr}
 8001012:	b083      	sub	sp, #12
 8001014:	4a5a      	ldr	r2, [pc, #360]	; (8001180 <oled_config+0x170>)
 8001016:	6951      	ldr	r1, [r2, #20]
 8001018:	2080      	movs	r0, #128	; 0x80
 800101a:	02c0      	lsls	r0, r0, #11
 800101c:	4301      	orrs	r1, r0
 800101e:	6151      	str	r1, [r2, #20]
 8001020:	6953      	ldr	r3, [r2, #20]
 8001022:	4003      	ands	r3, r0
 8001024:	9300      	str	r3, [sp, #0]
 8001026:	9b00      	ldr	r3, [sp, #0]
 8001028:	4b56      	ldr	r3, [pc, #344]	; (8001184 <oled_config+0x174>)
 800102a:	681d      	ldr	r5, [r3, #0]
 800102c:	4856      	ldr	r0, [pc, #344]	; (8001188 <oled_config+0x178>)
 800102e:	4005      	ands	r5, r0
 8001030:	2480      	movs	r4, #128	; 0x80
 8001032:	01a4      	lsls	r4, r4, #6
 8001034:	432c      	orrs	r4, r5
 8001036:	601c      	str	r4, [r3, #0]
 8001038:	685c      	ldr	r4, [r3, #4]
 800103a:	2140      	movs	r1, #64	; 0x40
 800103c:	430c      	orrs	r4, r1
 800103e:	605c      	str	r4, [r3, #4]
 8001040:	6a1c      	ldr	r4, [r3, #32]
 8001042:	4d52      	ldr	r5, [pc, #328]	; (800118c <oled_config+0x17c>)
 8001044:	4025      	ands	r5, r4
 8001046:	2480      	movs	r4, #128	; 0x80
 8001048:	0464      	lsls	r4, r4, #17
 800104a:	432c      	orrs	r4, r5
 800104c:	621c      	str	r4, [r3, #32]
 800104e:	6899      	ldr	r1, [r3, #8]
 8001050:	4008      	ands	r0, r1
 8001052:	21c0      	movs	r1, #192	; 0xc0
 8001054:	0189      	lsls	r1, r1, #6
 8001056:	4301      	orrs	r1, r0
 8001058:	6099      	str	r1, [r3, #8]
 800105a:	6819      	ldr	r1, [r3, #0]
 800105c:	484c      	ldr	r0, [pc, #304]	; (8001190 <oled_config+0x180>)
 800105e:	4001      	ands	r1, r0
 8001060:	2480      	movs	r4, #128	; 0x80
 8001062:	0224      	lsls	r4, r4, #8
 8001064:	430c      	orrs	r4, r1
 8001066:	601c      	str	r4, [r3, #0]
 8001068:	685c      	ldr	r4, [r3, #4]
 800106a:	2180      	movs	r1, #128	; 0x80
 800106c:	430c      	orrs	r4, r1
 800106e:	605c      	str	r4, [r3, #4]
 8001070:	6a19      	ldr	r1, [r3, #32]
 8001072:	0109      	lsls	r1, r1, #4
 8001074:	0909      	lsrs	r1, r1, #4
 8001076:	2480      	movs	r4, #128	; 0x80
 8001078:	0564      	lsls	r4, r4, #21
 800107a:	4321      	orrs	r1, r4
 800107c:	6219      	str	r1, [r3, #32]
 800107e:	6899      	ldr	r1, [r3, #8]
 8001080:	4008      	ands	r0, r1
 8001082:	21c0      	movs	r1, #192	; 0xc0
 8001084:	0209      	lsls	r1, r1, #8
 8001086:	4301      	orrs	r1, r0
 8001088:	6099      	str	r1, [r3, #8]
 800108a:	6b13      	ldr	r3, [r2, #48]	; 0x30
 800108c:	2110      	movs	r1, #16
 800108e:	430b      	orrs	r3, r1
 8001090:	6313      	str	r3, [r2, #48]	; 0x30
 8001092:	4b40      	ldr	r3, [pc, #256]	; (8001194 <oled_config+0x184>)
 8001094:	6819      	ldr	r1, [r3, #0]
 8001096:	2401      	movs	r4, #1
 8001098:	43a1      	bics	r1, r4
 800109a:	6019      	str	r1, [r3, #0]
 800109c:	69d1      	ldr	r1, [r2, #28]
 800109e:	2080      	movs	r0, #128	; 0x80
 80010a0:	0380      	lsls	r0, r0, #14
 80010a2:	4301      	orrs	r1, r0
 80010a4:	61d1      	str	r1, [r2, #28]
 80010a6:	69d2      	ldr	r2, [r2, #28]
 80010a8:	4002      	ands	r2, r0
 80010aa:	9201      	str	r2, [sp, #4]
 80010ac:	9a01      	ldr	r2, [sp, #4]
 80010ae:	6819      	ldr	r1, [r3, #0]
 80010b0:	2280      	movs	r2, #128	; 0x80
 80010b2:	0152      	lsls	r2, r2, #5
 80010b4:	430a      	orrs	r2, r1
 80010b6:	601a      	str	r2, [r3, #0]
 80010b8:	6819      	ldr	r1, [r3, #0]
 80010ba:	4837      	ldr	r0, [pc, #220]	; (8001198 <oled_config+0x188>)
 80010bc:	4008      	ands	r0, r1
 80010be:	2180      	movs	r1, #128	; 0x80
 80010c0:	0049      	lsls	r1, r1, #1
 80010c2:	4301      	orrs	r1, r0
 80010c4:	6019      	str	r1, [r3, #0]
 80010c6:	4a35      	ldr	r2, [pc, #212]	; (800119c <oled_config+0x18c>)
 80010c8:	611a      	str	r2, [r3, #16]
 80010ca:	681a      	ldr	r2, [r3, #0]
 80010cc:	2180      	movs	r1, #128	; 0x80
 80010ce:	0289      	lsls	r1, r1, #10
 80010d0:	4311      	orrs	r1, r2
 80010d2:	6019      	str	r1, [r3, #0]
 80010d4:	6859      	ldr	r1, [r3, #4]
 80010d6:	4a32      	ldr	r2, [pc, #200]	; (80011a0 <oled_config+0x190>)
 80010d8:	4011      	ands	r1, r2
 80010da:	6059      	str	r1, [r3, #4]
 80010dc:	6819      	ldr	r1, [r3, #0]
 80010de:	4a31      	ldr	r2, [pc, #196]	; (80011a4 <oled_config+0x194>)
 80010e0:	4011      	ands	r1, r2
 80010e2:	6019      	str	r1, [r3, #0]
 80010e4:	681a      	ldr	r2, [r3, #0]
 80010e6:	4322      	orrs	r2, r4
 80010e8:	601a      	str	r2, [r3, #0]
 80010ea:	4b2f      	ldr	r3, [pc, #188]	; (80011a8 <oled_config+0x198>)
 80010ec:	3b01      	subs	r3, #1
 80010ee:	2b00      	cmp	r3, #0
 80010f0:	d1fc      	bne.n	80010ec <oled_config+0xdc>
 80010f2:	20ae      	movs	r0, #174	; 0xae
 80010f4:	f7ff ff2a 	bl	8000f4c <oled_cmd_send>
 80010f8:	2020      	movs	r0, #32
 80010fa:	f7ff ff27 	bl	8000f4c <oled_cmd_send>
 80010fe:	2010      	movs	r0, #16
 8001100:	f7ff ff24 	bl	8000f4c <oled_cmd_send>
 8001104:	20c8      	movs	r0, #200	; 0xc8
 8001106:	f7ff ff21 	bl	8000f4c <oled_cmd_send>
 800110a:	2040      	movs	r0, #64	; 0x40
 800110c:	f7ff ff1e 	bl	8000f4c <oled_cmd_send>
 8001110:	2081      	movs	r0, #129	; 0x81
 8001112:	f7ff ff1b 	bl	8000f4c <oled_cmd_send>
 8001116:	20ff      	movs	r0, #255	; 0xff
 8001118:	f7ff ff18 	bl	8000f4c <oled_cmd_send>
 800111c:	20a1      	movs	r0, #161	; 0xa1
 800111e:	f7ff ff15 	bl	8000f4c <oled_cmd_send>
 8001122:	20a6      	movs	r0, #166	; 0xa6
 8001124:	f7ff ff12 	bl	8000f4c <oled_cmd_send>
 8001128:	20a8      	movs	r0, #168	; 0xa8
 800112a:	f7ff ff0f 	bl	8000f4c <oled_cmd_send>
 800112e:	203f      	movs	r0, #63	; 0x3f
 8001130:	f7ff ff0c 	bl	8000f4c <oled_cmd_send>
 8001134:	20a4      	movs	r0, #164	; 0xa4
 8001136:	f7ff ff09 	bl	8000f4c <oled_cmd_send>
 800113a:	20d3      	movs	r0, #211	; 0xd3
 800113c:	f7ff ff06 	bl	8000f4c <oled_cmd_send>
 8001140:	2000      	movs	r0, #0
 8001142:	f7ff ff03 	bl	8000f4c <oled_cmd_send>
 8001146:	20d5      	movs	r0, #213	; 0xd5
 8001148:	f7ff ff00 	bl	8000f4c <oled_cmd_send>
 800114c:	20f0      	movs	r0, #240	; 0xf0
 800114e:	f7ff fefd 	bl	8000f4c <oled_cmd_send>
 8001152:	20da      	movs	r0, #218	; 0xda
 8001154:	f7ff fefa 	bl	8000f4c <oled_cmd_send>
 8001158:	2012      	movs	r0, #18
 800115a:	f7ff fef7 	bl	8000f4c <oled_cmd_send>
 800115e:	208d      	movs	r0, #141	; 0x8d
 8001160:	f7ff fef4 	bl	8000f4c <oled_cmd_send>
 8001164:	2014      	movs	r0, #20
 8001166:	f7ff fef1 	bl	8000f4c <oled_cmd_send>
 800116a:	20af      	movs	r0, #175	; 0xaf
 800116c:	f7ff feee 	bl	8000f4c <oled_cmd_send>
 8001170:	2000      	movs	r0, #0
 8001172:	f7ff ff0d 	bl	8000f90 <oled_clr>
 8001176:	f7ff ff15 	bl	8000fa4 <oled_update>
 800117a:	b003      	add	sp, #12
 800117c:	bd30      	pop	{r4, r5, pc}
 800117e:	46c0      	nop			; (mov r8, r8)
 8001180:	40021000 	.word	0x40021000
 8001184:	48000400 	.word	0x48000400
 8001188:	ffffcfff 	.word	0xffffcfff
 800118c:	f0ffffff 	.word	0xf0ffffff
 8001190:	ffff3fff 	.word	0xffff3fff
 8001194:	40005400 	.word	0x40005400
 8001198:	fffff0ff 	.word	0xfffff0ff
 800119c:	50330309 	.word	0x50330309
 80011a0:	fffff7ff 	.word	0xfffff7ff
 80011a4:	ffcfffff 	.word	0xffcfffff
 80011a8:	001e8481 	.word	0x001e8481

080011ac <oled_set_pix>:
 80011ac:	b510      	push	{r4, lr}
 80011ae:	b243      	sxtb	r3, r0
 80011b0:	2b00      	cmp	r3, #0
 80011b2:	db0e      	blt.n	80011d2 <oled_set_pix+0x26>
 80011b4:	293f      	cmp	r1, #63	; 0x3f
 80011b6:	d80c      	bhi.n	80011d2 <oled_set_pix+0x26>
 80011b8:	2a00      	cmp	r2, #0
 80011ba:	d10b      	bne.n	80011d4 <oled_set_pix+0x28>
 80011bc:	08cb      	lsrs	r3, r1, #3
 80011be:	01db      	lsls	r3, r3, #7
 80011c0:	1818      	adds	r0, r3, r0
 80011c2:	4c0a      	ldr	r4, [pc, #40]	; (80011ec <oled_set_pix+0x40>)
 80011c4:	2307      	movs	r3, #7
 80011c6:	4019      	ands	r1, r3
 80011c8:	2201      	movs	r2, #1
 80011ca:	408a      	lsls	r2, r1
 80011cc:	5c23      	ldrb	r3, [r4, r0]
 80011ce:	4393      	bics	r3, r2
 80011d0:	5423      	strb	r3, [r4, r0]
 80011d2:	bd10      	pop	{r4, pc}
 80011d4:	08cb      	lsrs	r3, r1, #3
 80011d6:	01db      	lsls	r3, r3, #7
 80011d8:	1818      	adds	r0, r3, r0
 80011da:	4a04      	ldr	r2, [pc, #16]	; (80011ec <oled_set_pix+0x40>)
 80011dc:	2307      	movs	r3, #7
 80011de:	4019      	ands	r1, r3
 80011e0:	3b06      	subs	r3, #6
 80011e2:	408b      	lsls	r3, r1
 80011e4:	5c11      	ldrb	r1, [r2, r0]
 80011e6:	430b      	orrs	r3, r1
 80011e8:	5413      	strb	r3, [r2, r0]
 80011ea:	e7f2      	b.n	80011d2 <oled_set_pix+0x26>
 80011ec:	20000484 	.word	0x20000484

080011f0 <oled_set_cursor>:
 80011f0:	4b02      	ldr	r3, [pc, #8]	; (80011fc <oled_set_cursor+0xc>)
 80011f2:	7018      	strb	r0, [r3, #0]
 80011f4:	4b02      	ldr	r3, [pc, #8]	; (8001200 <oled_set_cursor+0x10>)
 80011f6:	7019      	strb	r1, [r3, #0]
 80011f8:	4770      	bx	lr
 80011fa:	46c0      	nop			; (mov r8, r8)
 80011fc:	20000480 	.word	0x20000480
 8001200:	20000481 	.word	0x20000481

08001204 <oled_putc>:
 8001204:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001206:	46d6      	mov	lr, sl
 8001208:	4647      	mov	r7, r8
 800120a:	b580      	push	{r7, lr}
 800120c:	b083      	sub	sp, #12
 800120e:	9001      	str	r0, [sp, #4]
 8001210:	280a      	cmp	r0, #10
 8001212:	d00c      	beq.n	800122e <oled_putc+0x2a>
 8001214:	9b01      	ldr	r3, [sp, #4]
 8001216:	2b0d      	cmp	r3, #13
 8001218:	d00e      	beq.n	8001238 <oled_putc+0x34>
 800121a:	4b22      	ldr	r3, [pc, #136]	; (80012a4 <oled_putc+0xa0>)
 800121c:	795b      	ldrb	r3, [r3, #5]
 800121e:	2700      	movs	r7, #0
 8001220:	2b00      	cmp	r3, #0
 8001222:	d035      	beq.n	8001290 <oled_putc+0x8c>
 8001224:	4b1f      	ldr	r3, [pc, #124]	; (80012a4 <oled_putc+0xa0>)
 8001226:	469a      	mov	sl, r3
 8001228:	001d      	movs	r5, r3
 800122a:	4e1f      	ldr	r6, [pc, #124]	; (80012a8 <oled_putc+0xa4>)
 800122c:	e028      	b.n	8001280 <oled_putc+0x7c>
 800122e:	4a1e      	ldr	r2, [pc, #120]	; (80012a8 <oled_putc+0xa4>)
 8001230:	7813      	ldrb	r3, [r2, #0]
 8001232:	3301      	adds	r3, #1
 8001234:	7013      	strb	r3, [r2, #0]
 8001236:	e02f      	b.n	8001298 <oled_putc+0x94>
 8001238:	4b1c      	ldr	r3, [pc, #112]	; (80012ac <oled_putc+0xa8>)
 800123a:	2200      	movs	r2, #0
 800123c:	701a      	strb	r2, [r3, #0]
 800123e:	e02b      	b.n	8001298 <oled_putc+0x94>
 8001240:	003a      	movs	r2, r7
 8001242:	0021      	movs	r1, r4
 8001244:	9801      	ldr	r0, [sp, #4]
 8001246:	68ab      	ldr	r3, [r5, #8]
 8001248:	4798      	blx	r3
 800124a:	0002      	movs	r2, r0
 800124c:	7969      	ldrb	r1, [r5, #5]
 800124e:	3102      	adds	r1, #2
 8001250:	7833      	ldrb	r3, [r6, #0]
 8001252:	4359      	muls	r1, r3
 8001254:	1879      	adds	r1, r7, r1
 8001256:	b2c9      	uxtb	r1, r1
 8001258:	792b      	ldrb	r3, [r5, #4]
 800125a:	3301      	adds	r3, #1
 800125c:	4640      	mov	r0, r8
 800125e:	7800      	ldrb	r0, [r0, #0]
 8001260:	4343      	muls	r3, r0
 8001262:	18e3      	adds	r3, r4, r3
 8001264:	b2d8      	uxtb	r0, r3
 8001266:	f7ff ffa1 	bl	80011ac <oled_set_pix>
 800126a:	3401      	adds	r4, #1
 800126c:	b2e4      	uxtb	r4, r4
 800126e:	792b      	ldrb	r3, [r5, #4]
 8001270:	42a3      	cmp	r3, r4
 8001272:	d8e5      	bhi.n	8001240 <oled_putc+0x3c>
 8001274:	3701      	adds	r7, #1
 8001276:	b2ff      	uxtb	r7, r7
 8001278:	4b0a      	ldr	r3, [pc, #40]	; (80012a4 <oled_putc+0xa0>)
 800127a:	795b      	ldrb	r3, [r3, #5]
 800127c:	42bb      	cmp	r3, r7
 800127e:	d907      	bls.n	8001290 <oled_putc+0x8c>
 8001280:	4653      	mov	r3, sl
 8001282:	791b      	ldrb	r3, [r3, #4]
 8001284:	2400      	movs	r4, #0
 8001286:	2b00      	cmp	r3, #0
 8001288:	d0f4      	beq.n	8001274 <oled_putc+0x70>
 800128a:	4b08      	ldr	r3, [pc, #32]	; (80012ac <oled_putc+0xa8>)
 800128c:	4698      	mov	r8, r3
 800128e:	e7d7      	b.n	8001240 <oled_putc+0x3c>
 8001290:	4a06      	ldr	r2, [pc, #24]	; (80012ac <oled_putc+0xa8>)
 8001292:	7813      	ldrb	r3, [r2, #0]
 8001294:	3301      	adds	r3, #1
 8001296:	7013      	strb	r3, [r2, #0]
 8001298:	b003      	add	sp, #12
 800129a:	bc0c      	pop	{r2, r3}
 800129c:	4690      	mov	r8, r2
 800129e:	469a      	mov	sl, r3
 80012a0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80012a2:	46c0      	nop			; (mov r8, r8)
 80012a4:	20000004 	.word	0x20000004
 80012a8:	20000481 	.word	0x20000481
 80012ac:	20000480 	.word	0x20000480

080012b0 <get_pix>:
 80012b0:	0083      	lsls	r3, r0, #2
 80012b2:	181b      	adds	r3, r3, r0
 80012b4:	4803      	ldr	r0, [pc, #12]	; (80012c4 <get_pix+0x14>)
 80012b6:	18c0      	adds	r0, r0, r3
 80012b8:	5c43      	ldrb	r3, [r0, r1]
 80012ba:	4113      	asrs	r3, r2
 80012bc:	2001      	movs	r0, #1
 80012be:	4018      	ands	r0, r3
 80012c0:	4770      	bx	lr
 80012c2:	46c0      	nop			; (mov r8, r8)
 80012c4:	080015d0 	.word	0x080015d0

080012c8 <NMI_Handler>:
 80012c8:	4770      	bx	lr

080012ca <HardFault_Handler>:
 80012ca:	e7fe      	b.n	80012ca <HardFault_Handler>

080012cc <SVC_Handler>:
 80012cc:	4770      	bx	lr

080012ce <PendSV_Handler>:
 80012ce:	4770      	bx	lr

080012d0 <__libc_init_array>:
 80012d0:	b570      	push	{r4, r5, r6, lr}
 80012d2:	4e0d      	ldr	r6, [pc, #52]	; (8001308 <__libc_init_array+0x38>)
 80012d4:	4d0d      	ldr	r5, [pc, #52]	; (800130c <__libc_init_array+0x3c>)
 80012d6:	1bad      	subs	r5, r5, r6
 80012d8:	10ad      	asrs	r5, r5, #2
 80012da:	d006      	beq.n	80012ea <__libc_init_array+0x1a>
 80012dc:	2400      	movs	r4, #0
 80012de:	00a3      	lsls	r3, r4, #2
 80012e0:	58f3      	ldr	r3, [r6, r3]
 80012e2:	3401      	adds	r4, #1
 80012e4:	4798      	blx	r3
 80012e6:	42a5      	cmp	r5, r4
 80012e8:	d1f9      	bne.n	80012de <__libc_init_array+0xe>
 80012ea:	f000 f90f 	bl	800150c <_init>
 80012ee:	4e08      	ldr	r6, [pc, #32]	; (8001310 <__libc_init_array+0x40>)
 80012f0:	4d08      	ldr	r5, [pc, #32]	; (8001314 <__libc_init_array+0x44>)
 80012f2:	1bad      	subs	r5, r5, r6
 80012f4:	10ad      	asrs	r5, r5, #2
 80012f6:	d006      	beq.n	8001306 <__libc_init_array+0x36>
 80012f8:	2400      	movs	r4, #0
 80012fa:	00a3      	lsls	r3, r4, #2
 80012fc:	58f3      	ldr	r3, [r6, r3]
 80012fe:	3401      	adds	r4, #1
 8001300:	4798      	blx	r3
 8001302:	42a5      	cmp	r5, r4
 8001304:	d1f9      	bne.n	80012fa <__libc_init_array+0x2a>
 8001306:	bd70      	pop	{r4, r5, r6, pc}
 8001308:	08001ad0 	.word	0x08001ad0
 800130c:	08001ad0 	.word	0x08001ad0
 8001310:	08001ad0 	.word	0x08001ad0
 8001314:	08001ad8 	.word	0x08001ad8

08001318 <memset>:
 8001318:	b5f0      	push	{r4, r5, r6, r7, lr}
 800131a:	0783      	lsls	r3, r0, #30
 800131c:	d046      	beq.n	80013ac <memset+0x94>
 800131e:	1e54      	subs	r4, r2, #1
 8001320:	2a00      	cmp	r2, #0
 8001322:	d042      	beq.n	80013aa <memset+0x92>
 8001324:	b2ce      	uxtb	r6, r1
 8001326:	0002      	movs	r2, r0
 8001328:	2503      	movs	r5, #3
 800132a:	e002      	b.n	8001332 <memset+0x1a>
 800132c:	001a      	movs	r2, r3
 800132e:	3c01      	subs	r4, #1
 8001330:	d33b      	bcc.n	80013aa <memset+0x92>
 8001332:	1c53      	adds	r3, r2, #1
 8001334:	7016      	strb	r6, [r2, #0]
 8001336:	422b      	tst	r3, r5
 8001338:	d1f8      	bne.n	800132c <memset+0x14>
 800133a:	2c03      	cmp	r4, #3
 800133c:	d92d      	bls.n	800139a <memset+0x82>
 800133e:	22ff      	movs	r2, #255	; 0xff
 8001340:	400a      	ands	r2, r1
 8001342:	0215      	lsls	r5, r2, #8
 8001344:	4315      	orrs	r5, r2
 8001346:	042a      	lsls	r2, r5, #16
 8001348:	4315      	orrs	r5, r2
 800134a:	2c0f      	cmp	r4, #15
 800134c:	d916      	bls.n	800137c <memset+0x64>
 800134e:	0027      	movs	r7, r4
 8001350:	3f10      	subs	r7, #16
 8001352:	093f      	lsrs	r7, r7, #4
 8001354:	013e      	lsls	r6, r7, #4
 8001356:	46b4      	mov	ip, r6
 8001358:	001e      	movs	r6, r3
 800135a:	001a      	movs	r2, r3
 800135c:	3610      	adds	r6, #16
 800135e:	4466      	add	r6, ip
 8001360:	6015      	str	r5, [r2, #0]
 8001362:	6055      	str	r5, [r2, #4]
 8001364:	6095      	str	r5, [r2, #8]
 8001366:	60d5      	str	r5, [r2, #12]
 8001368:	3210      	adds	r2, #16
 800136a:	42b2      	cmp	r2, r6
 800136c:	d1f8      	bne.n	8001360 <memset+0x48>
 800136e:	220f      	movs	r2, #15
 8001370:	3701      	adds	r7, #1
 8001372:	013f      	lsls	r7, r7, #4
 8001374:	19db      	adds	r3, r3, r7
 8001376:	4014      	ands	r4, r2
 8001378:	2c03      	cmp	r4, #3
 800137a:	d90e      	bls.n	800139a <memset+0x82>
 800137c:	1f26      	subs	r6, r4, #4
 800137e:	08b6      	lsrs	r6, r6, #2
 8001380:	00b7      	lsls	r7, r6, #2
 8001382:	46bc      	mov	ip, r7
 8001384:	001a      	movs	r2, r3
 8001386:	1d1f      	adds	r7, r3, #4
 8001388:	4467      	add	r7, ip
 800138a:	c220      	stmia	r2!, {r5}
 800138c:	42ba      	cmp	r2, r7
 800138e:	d1fc      	bne.n	800138a <memset+0x72>
 8001390:	2203      	movs	r2, #3
 8001392:	3601      	adds	r6, #1
 8001394:	00b6      	lsls	r6, r6, #2
 8001396:	199b      	adds	r3, r3, r6
 8001398:	4014      	ands	r4, r2
 800139a:	2c00      	cmp	r4, #0
 800139c:	d005      	beq.n	80013aa <memset+0x92>
 800139e:	b2c9      	uxtb	r1, r1
 80013a0:	191c      	adds	r4, r3, r4
 80013a2:	7019      	strb	r1, [r3, #0]
 80013a4:	3301      	adds	r3, #1
 80013a6:	429c      	cmp	r4, r3
 80013a8:	d1fb      	bne.n	80013a2 <memset+0x8a>
 80013aa:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80013ac:	0014      	movs	r4, r2
 80013ae:	0003      	movs	r3, r0
 80013b0:	e7c3      	b.n	800133a <memset+0x22>
 80013b2:	46c0      	nop			; (mov r8, r8)

080013b4 <register_fini>:
 80013b4:	4b03      	ldr	r3, [pc, #12]	; (80013c4 <register_fini+0x10>)
 80013b6:	b510      	push	{r4, lr}
 80013b8:	2b00      	cmp	r3, #0
 80013ba:	d002      	beq.n	80013c2 <register_fini+0xe>
 80013bc:	4802      	ldr	r0, [pc, #8]	; (80013c8 <register_fini+0x14>)
 80013be:	f000 f805 	bl	80013cc <atexit>
 80013c2:	bd10      	pop	{r4, pc}
 80013c4:	00000000 	.word	0x00000000
 80013c8:	080013dd 	.word	0x080013dd

080013cc <atexit>:
 80013cc:	b510      	push	{r4, lr}
 80013ce:	0001      	movs	r1, r0
 80013d0:	2300      	movs	r3, #0
 80013d2:	2200      	movs	r2, #0
 80013d4:	2000      	movs	r0, #0
 80013d6:	f000 f81f 	bl	8001418 <__register_exitproc>
 80013da:	bd10      	pop	{r4, pc}

080013dc <__libc_fini_array>:
 80013dc:	b570      	push	{r4, r5, r6, lr}
 80013de:	4b09      	ldr	r3, [pc, #36]	; (8001404 <__libc_fini_array+0x28>)
 80013e0:	4c09      	ldr	r4, [pc, #36]	; (8001408 <__libc_fini_array+0x2c>)
 80013e2:	1ae4      	subs	r4, r4, r3
 80013e4:	10a4      	asrs	r4, r4, #2
 80013e6:	d009      	beq.n	80013fc <__libc_fini_array+0x20>
 80013e8:	4a08      	ldr	r2, [pc, #32]	; (800140c <__libc_fini_array+0x30>)
 80013ea:	18a5      	adds	r5, r4, r2
 80013ec:	00ad      	lsls	r5, r5, #2
 80013ee:	18ed      	adds	r5, r5, r3
 80013f0:	682b      	ldr	r3, [r5, #0]
 80013f2:	3c01      	subs	r4, #1
 80013f4:	4798      	blx	r3
 80013f6:	3d04      	subs	r5, #4
 80013f8:	2c00      	cmp	r4, #0
 80013fa:	d1f9      	bne.n	80013f0 <__libc_fini_array+0x14>
 80013fc:	f000 f88c 	bl	8001518 <_fini>
 8001400:	bd70      	pop	{r4, r5, r6, pc}
 8001402:	46c0      	nop			; (mov r8, r8)
 8001404:	08001ad8 	.word	0x08001ad8
 8001408:	08001adc 	.word	0x08001adc
 800140c:	3fffffff 	.word	0x3fffffff

08001410 <__retarget_lock_acquire_recursive>:
 8001410:	4770      	bx	lr
 8001412:	46c0      	nop			; (mov r8, r8)

08001414 <__retarget_lock_release_recursive>:
 8001414:	4770      	bx	lr
 8001416:	46c0      	nop			; (mov r8, r8)

08001418 <__register_exitproc>:
 8001418:	b5f0      	push	{r4, r5, r6, r7, lr}
 800141a:	464e      	mov	r6, r9
 800141c:	4645      	mov	r5, r8
 800141e:	46de      	mov	lr, fp
 8001420:	4657      	mov	r7, sl
 8001422:	b5e0      	push	{r5, r6, r7, lr}
 8001424:	4d36      	ldr	r5, [pc, #216]	; (8001500 <__register_exitproc+0xe8>)
 8001426:	b083      	sub	sp, #12
 8001428:	0006      	movs	r6, r0
 800142a:	6828      	ldr	r0, [r5, #0]
 800142c:	4698      	mov	r8, r3
 800142e:	000f      	movs	r7, r1
 8001430:	4691      	mov	r9, r2
 8001432:	f7ff ffed 	bl	8001410 <__retarget_lock_acquire_recursive>
 8001436:	4b33      	ldr	r3, [pc, #204]	; (8001504 <__register_exitproc+0xec>)
 8001438:	681c      	ldr	r4, [r3, #0]
 800143a:	23a4      	movs	r3, #164	; 0xa4
 800143c:	005b      	lsls	r3, r3, #1
 800143e:	58e0      	ldr	r0, [r4, r3]
 8001440:	2800      	cmp	r0, #0
 8001442:	d052      	beq.n	80014ea <__register_exitproc+0xd2>
 8001444:	6843      	ldr	r3, [r0, #4]
 8001446:	2b1f      	cmp	r3, #31
 8001448:	dc13      	bgt.n	8001472 <__register_exitproc+0x5a>
 800144a:	1c5a      	adds	r2, r3, #1
 800144c:	9201      	str	r2, [sp, #4]
 800144e:	2e00      	cmp	r6, #0
 8001450:	d128      	bne.n	80014a4 <__register_exitproc+0x8c>
 8001452:	9a01      	ldr	r2, [sp, #4]
 8001454:	3302      	adds	r3, #2
 8001456:	009b      	lsls	r3, r3, #2
 8001458:	6042      	str	r2, [r0, #4]
 800145a:	501f      	str	r7, [r3, r0]
 800145c:	6828      	ldr	r0, [r5, #0]
 800145e:	f7ff ffd9 	bl	8001414 <__retarget_lock_release_recursive>
 8001462:	2000      	movs	r0, #0
 8001464:	b003      	add	sp, #12
 8001466:	bc3c      	pop	{r2, r3, r4, r5}
 8001468:	4690      	mov	r8, r2
 800146a:	4699      	mov	r9, r3
 800146c:	46a2      	mov	sl, r4
 800146e:	46ab      	mov	fp, r5
 8001470:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001472:	4b25      	ldr	r3, [pc, #148]	; (8001508 <__register_exitproc+0xf0>)
 8001474:	2b00      	cmp	r3, #0
 8001476:	d03d      	beq.n	80014f4 <__register_exitproc+0xdc>
 8001478:	20c8      	movs	r0, #200	; 0xc8
 800147a:	0040      	lsls	r0, r0, #1
 800147c:	e000      	b.n	8001480 <__register_exitproc+0x68>
 800147e:	bf00      	nop
 8001480:	2800      	cmp	r0, #0
 8001482:	d037      	beq.n	80014f4 <__register_exitproc+0xdc>
 8001484:	22a4      	movs	r2, #164	; 0xa4
 8001486:	2300      	movs	r3, #0
 8001488:	0052      	lsls	r2, r2, #1
 800148a:	58a1      	ldr	r1, [r4, r2]
 800148c:	6043      	str	r3, [r0, #4]
 800148e:	6001      	str	r1, [r0, #0]
 8001490:	50a0      	str	r0, [r4, r2]
 8001492:	3240      	adds	r2, #64	; 0x40
 8001494:	5083      	str	r3, [r0, r2]
 8001496:	3204      	adds	r2, #4
 8001498:	5083      	str	r3, [r0, r2]
 800149a:	3301      	adds	r3, #1
 800149c:	9301      	str	r3, [sp, #4]
 800149e:	2300      	movs	r3, #0
 80014a0:	2e00      	cmp	r6, #0
 80014a2:	d0d6      	beq.n	8001452 <__register_exitproc+0x3a>
 80014a4:	009a      	lsls	r2, r3, #2
 80014a6:	4692      	mov	sl, r2
 80014a8:	4482      	add	sl, r0
 80014aa:	464a      	mov	r2, r9
 80014ac:	2188      	movs	r1, #136	; 0x88
 80014ae:	4654      	mov	r4, sl
 80014b0:	5062      	str	r2, [r4, r1]
 80014b2:	22c4      	movs	r2, #196	; 0xc4
 80014b4:	0052      	lsls	r2, r2, #1
 80014b6:	4691      	mov	r9, r2
 80014b8:	4481      	add	r9, r0
 80014ba:	464a      	mov	r2, r9
 80014bc:	3987      	subs	r1, #135	; 0x87
 80014be:	4099      	lsls	r1, r3
 80014c0:	6812      	ldr	r2, [r2, #0]
 80014c2:	468b      	mov	fp, r1
 80014c4:	430a      	orrs	r2, r1
 80014c6:	4694      	mov	ip, r2
 80014c8:	464a      	mov	r2, r9
 80014ca:	4661      	mov	r1, ip
 80014cc:	6011      	str	r1, [r2, #0]
 80014ce:	2284      	movs	r2, #132	; 0x84
 80014d0:	4641      	mov	r1, r8
 80014d2:	0052      	lsls	r2, r2, #1
 80014d4:	50a1      	str	r1, [r4, r2]
 80014d6:	2e02      	cmp	r6, #2
 80014d8:	d1bb      	bne.n	8001452 <__register_exitproc+0x3a>
 80014da:	0002      	movs	r2, r0
 80014dc:	465c      	mov	r4, fp
 80014de:	328d      	adds	r2, #141	; 0x8d
 80014e0:	32ff      	adds	r2, #255	; 0xff
 80014e2:	6811      	ldr	r1, [r2, #0]
 80014e4:	430c      	orrs	r4, r1
 80014e6:	6014      	str	r4, [r2, #0]
 80014e8:	e7b3      	b.n	8001452 <__register_exitproc+0x3a>
 80014ea:	0020      	movs	r0, r4
 80014ec:	304d      	adds	r0, #77	; 0x4d
 80014ee:	30ff      	adds	r0, #255	; 0xff
 80014f0:	50e0      	str	r0, [r4, r3]
 80014f2:	e7a7      	b.n	8001444 <__register_exitproc+0x2c>
 80014f4:	6828      	ldr	r0, [r5, #0]
 80014f6:	f7ff ff8d 	bl	8001414 <__retarget_lock_release_recursive>
 80014fa:	2001      	movs	r0, #1
 80014fc:	4240      	negs	r0, r0
 80014fe:	e7b1      	b.n	8001464 <__register_exitproc+0x4c>
 8001500:	20000438 	.word	0x20000438
 8001504:	08001acc 	.word	0x08001acc
 8001508:	00000000 	.word	0x00000000

0800150c <_init>:
 800150c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800150e:	46c0      	nop			; (mov r8, r8)
 8001510:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8001512:	bc08      	pop	{r3}
 8001514:	469e      	mov	lr, r3
 8001516:	4770      	bx	lr

08001518 <_fini>:
 8001518:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800151a:	46c0      	nop			; (mov r8, r8)
 800151c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800151e:	bc08      	pop	{r3}
 8001520:	469e      	mov	lr, r3
 8001522:	4770      	bx	lr
