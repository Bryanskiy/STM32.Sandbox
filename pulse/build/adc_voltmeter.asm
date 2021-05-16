
build/adc_voltmeter.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             00001138  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           000000a4  080011f8  080011f8  000111f8  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  0800129c  0800129c  0001129c  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  080012a4  080012a4  000112a4  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000434  20000000  080012a8  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              00000050  20000434  080016dc  00020434  2**2  ALLOC
  7 ._user_heap_stack 00000604  20000484  080016dc  00020484  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020434  2**0  CONTENTS, READONLY
  9 .debug_info       00002c2f  00000000  00000000  0002045c  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 10 .debug_abbrev     00000756  00000000  00000000  0002308b  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 11 .debug_loc        00001df2  00000000  00000000  000237e1  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 12 .debug_aranges    00000108  00000000  00000000  000255d3  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 13 .debug_ranges     00000210  00000000  00000000  000256db  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 14 .debug_line       00000ea0  00000000  00000000  000258eb  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 15 .debug_str        00000ec2  00000000  00000000  0002678b  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 16 .comment          000000cc  00000000  00000000  0002764d  2**0  CONTENTS, READONLY
 17 .debug_frame      000004fc  00000000  00000000  0002771c  2**2  CONTENTS, READONLY, DEBUGGING, OCTETS

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
 80000dc:	20000434 	.word	0x20000434
 80000e0:	00000000 	.word	0x00000000
 80000e4:	080011e0 	.word	0x080011e0

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
 8000100:	20000438 	.word	0x20000438
 8000104:	080011e0 	.word	0x080011e0

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
 8000220:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000222:	46c6      	mov	lr, r8
 8000224:	0243      	lsls	r3, r0, #9
 8000226:	0a5b      	lsrs	r3, r3, #9
 8000228:	024e      	lsls	r6, r1, #9
 800022a:	0045      	lsls	r5, r0, #1
 800022c:	004f      	lsls	r7, r1, #1
 800022e:	00da      	lsls	r2, r3, #3
 8000230:	0fc4      	lsrs	r4, r0, #31
 8000232:	469c      	mov	ip, r3
 8000234:	0a70      	lsrs	r0, r6, #9
 8000236:	4690      	mov	r8, r2
 8000238:	b500      	push	{lr}
 800023a:	0e2d      	lsrs	r5, r5, #24
 800023c:	0e3f      	lsrs	r7, r7, #24
 800023e:	0fc9      	lsrs	r1, r1, #31
 8000240:	09b6      	lsrs	r6, r6, #6
 8000242:	428c      	cmp	r4, r1
 8000244:	d04b      	beq.n	80002de <__aeabi_fadd+0xbe>
 8000246:	1bea      	subs	r2, r5, r7
 8000248:	2a00      	cmp	r2, #0
 800024a:	dd36      	ble.n	80002ba <__aeabi_fadd+0x9a>
 800024c:	2f00      	cmp	r7, #0
 800024e:	d061      	beq.n	8000314 <__aeabi_fadd+0xf4>
 8000250:	2dff      	cmp	r5, #255	; 0xff
 8000252:	d100      	bne.n	8000256 <__aeabi_fadd+0x36>
 8000254:	e0ad      	b.n	80003b2 <__aeabi_fadd+0x192>
 8000256:	2380      	movs	r3, #128	; 0x80
 8000258:	04db      	lsls	r3, r3, #19
 800025a:	431e      	orrs	r6, r3
 800025c:	2a1b      	cmp	r2, #27
 800025e:	dc00      	bgt.n	8000262 <__aeabi_fadd+0x42>
 8000260:	e0d3      	b.n	800040a <__aeabi_fadd+0x1ea>
 8000262:	2001      	movs	r0, #1
 8000264:	4643      	mov	r3, r8
 8000266:	1a18      	subs	r0, r3, r0
 8000268:	0143      	lsls	r3, r0, #5
 800026a:	d400      	bmi.n	800026e <__aeabi_fadd+0x4e>
 800026c:	e08c      	b.n	8000388 <__aeabi_fadd+0x168>
 800026e:	0180      	lsls	r0, r0, #6
 8000270:	0987      	lsrs	r7, r0, #6
 8000272:	0038      	movs	r0, r7
 8000274:	f000 fb06 	bl	8000884 <__clzsi2>
 8000278:	3805      	subs	r0, #5
 800027a:	4087      	lsls	r7, r0
 800027c:	4285      	cmp	r5, r0
 800027e:	dc00      	bgt.n	8000282 <__aeabi_fadd+0x62>
 8000280:	e0b6      	b.n	80003f0 <__aeabi_fadd+0x1d0>
 8000282:	1a2d      	subs	r5, r5, r0
 8000284:	48b3      	ldr	r0, [pc, #716]	; (8000554 <__aeabi_fadd+0x334>)
 8000286:	4038      	ands	r0, r7
 8000288:	0743      	lsls	r3, r0, #29
 800028a:	d004      	beq.n	8000296 <__aeabi_fadd+0x76>
 800028c:	230f      	movs	r3, #15
 800028e:	4003      	ands	r3, r0
 8000290:	2b04      	cmp	r3, #4
 8000292:	d000      	beq.n	8000296 <__aeabi_fadd+0x76>
 8000294:	3004      	adds	r0, #4
 8000296:	0143      	lsls	r3, r0, #5
 8000298:	d400      	bmi.n	800029c <__aeabi_fadd+0x7c>
 800029a:	e078      	b.n	800038e <__aeabi_fadd+0x16e>
 800029c:	1c6a      	adds	r2, r5, #1
 800029e:	2dfe      	cmp	r5, #254	; 0xfe
 80002a0:	d065      	beq.n	800036e <__aeabi_fadd+0x14e>
 80002a2:	0180      	lsls	r0, r0, #6
 80002a4:	0a43      	lsrs	r3, r0, #9
 80002a6:	469c      	mov	ip, r3
 80002a8:	b2d2      	uxtb	r2, r2
 80002aa:	4663      	mov	r3, ip
 80002ac:	05d0      	lsls	r0, r2, #23
 80002ae:	4318      	orrs	r0, r3
 80002b0:	07e4      	lsls	r4, r4, #31
 80002b2:	4320      	orrs	r0, r4
 80002b4:	bc80      	pop	{r7}
 80002b6:	46b8      	mov	r8, r7
 80002b8:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80002ba:	2a00      	cmp	r2, #0
 80002bc:	d035      	beq.n	800032a <__aeabi_fadd+0x10a>
 80002be:	1b7a      	subs	r2, r7, r5
 80002c0:	2d00      	cmp	r5, #0
 80002c2:	d000      	beq.n	80002c6 <__aeabi_fadd+0xa6>
 80002c4:	e0af      	b.n	8000426 <__aeabi_fadd+0x206>
 80002c6:	4643      	mov	r3, r8
 80002c8:	2b00      	cmp	r3, #0
 80002ca:	d100      	bne.n	80002ce <__aeabi_fadd+0xae>
 80002cc:	e0a7      	b.n	800041e <__aeabi_fadd+0x1fe>
 80002ce:	1e53      	subs	r3, r2, #1
 80002d0:	2a01      	cmp	r2, #1
 80002d2:	d100      	bne.n	80002d6 <__aeabi_fadd+0xb6>
 80002d4:	e12f      	b.n	8000536 <__aeabi_fadd+0x316>
 80002d6:	2aff      	cmp	r2, #255	; 0xff
 80002d8:	d069      	beq.n	80003ae <__aeabi_fadd+0x18e>
 80002da:	001a      	movs	r2, r3
 80002dc:	e0aa      	b.n	8000434 <__aeabi_fadd+0x214>
 80002de:	1be9      	subs	r1, r5, r7
 80002e0:	2900      	cmp	r1, #0
 80002e2:	dd70      	ble.n	80003c6 <__aeabi_fadd+0x1a6>
 80002e4:	2f00      	cmp	r7, #0
 80002e6:	d037      	beq.n	8000358 <__aeabi_fadd+0x138>
 80002e8:	2dff      	cmp	r5, #255	; 0xff
 80002ea:	d062      	beq.n	80003b2 <__aeabi_fadd+0x192>
 80002ec:	2380      	movs	r3, #128	; 0x80
 80002ee:	04db      	lsls	r3, r3, #19
 80002f0:	431e      	orrs	r6, r3
 80002f2:	291b      	cmp	r1, #27
 80002f4:	dc00      	bgt.n	80002f8 <__aeabi_fadd+0xd8>
 80002f6:	e0b0      	b.n	800045a <__aeabi_fadd+0x23a>
 80002f8:	2001      	movs	r0, #1
 80002fa:	4440      	add	r0, r8
 80002fc:	0143      	lsls	r3, r0, #5
 80002fe:	d543      	bpl.n	8000388 <__aeabi_fadd+0x168>
 8000300:	3501      	adds	r5, #1
 8000302:	2dff      	cmp	r5, #255	; 0xff
 8000304:	d033      	beq.n	800036e <__aeabi_fadd+0x14e>
 8000306:	2301      	movs	r3, #1
 8000308:	4a93      	ldr	r2, [pc, #588]	; (8000558 <__aeabi_fadd+0x338>)
 800030a:	4003      	ands	r3, r0
 800030c:	0840      	lsrs	r0, r0, #1
 800030e:	4010      	ands	r0, r2
 8000310:	4318      	orrs	r0, r3
 8000312:	e7b9      	b.n	8000288 <__aeabi_fadd+0x68>
 8000314:	2e00      	cmp	r6, #0
 8000316:	d100      	bne.n	800031a <__aeabi_fadd+0xfa>
 8000318:	e083      	b.n	8000422 <__aeabi_fadd+0x202>
 800031a:	1e51      	subs	r1, r2, #1
 800031c:	2a01      	cmp	r2, #1
 800031e:	d100      	bne.n	8000322 <__aeabi_fadd+0x102>
 8000320:	e0d8      	b.n	80004d4 <__aeabi_fadd+0x2b4>
 8000322:	2aff      	cmp	r2, #255	; 0xff
 8000324:	d045      	beq.n	80003b2 <__aeabi_fadd+0x192>
 8000326:	000a      	movs	r2, r1
 8000328:	e798      	b.n	800025c <__aeabi_fadd+0x3c>
 800032a:	27fe      	movs	r7, #254	; 0xfe
 800032c:	1c6a      	adds	r2, r5, #1
 800032e:	4217      	tst	r7, r2
 8000330:	d000      	beq.n	8000334 <__aeabi_fadd+0x114>
 8000332:	e086      	b.n	8000442 <__aeabi_fadd+0x222>
 8000334:	2d00      	cmp	r5, #0
 8000336:	d000      	beq.n	800033a <__aeabi_fadd+0x11a>
 8000338:	e0b7      	b.n	80004aa <__aeabi_fadd+0x28a>
 800033a:	4643      	mov	r3, r8
 800033c:	2b00      	cmp	r3, #0
 800033e:	d100      	bne.n	8000342 <__aeabi_fadd+0x122>
 8000340:	e0f3      	b.n	800052a <__aeabi_fadd+0x30a>
 8000342:	2200      	movs	r2, #0
 8000344:	2e00      	cmp	r6, #0
 8000346:	d0b0      	beq.n	80002aa <__aeabi_fadd+0x8a>
 8000348:	1b98      	subs	r0, r3, r6
 800034a:	0143      	lsls	r3, r0, #5
 800034c:	d400      	bmi.n	8000350 <__aeabi_fadd+0x130>
 800034e:	e0fa      	b.n	8000546 <__aeabi_fadd+0x326>
 8000350:	4643      	mov	r3, r8
 8000352:	000c      	movs	r4, r1
 8000354:	1af0      	subs	r0, r6, r3
 8000356:	e797      	b.n	8000288 <__aeabi_fadd+0x68>
 8000358:	2e00      	cmp	r6, #0
 800035a:	d100      	bne.n	800035e <__aeabi_fadd+0x13e>
 800035c:	e0c8      	b.n	80004f0 <__aeabi_fadd+0x2d0>
 800035e:	1e4a      	subs	r2, r1, #1
 8000360:	2901      	cmp	r1, #1
 8000362:	d100      	bne.n	8000366 <__aeabi_fadd+0x146>
 8000364:	e0ae      	b.n	80004c4 <__aeabi_fadd+0x2a4>
 8000366:	29ff      	cmp	r1, #255	; 0xff
 8000368:	d023      	beq.n	80003b2 <__aeabi_fadd+0x192>
 800036a:	0011      	movs	r1, r2
 800036c:	e7c1      	b.n	80002f2 <__aeabi_fadd+0xd2>
 800036e:	2300      	movs	r3, #0
 8000370:	22ff      	movs	r2, #255	; 0xff
 8000372:	469c      	mov	ip, r3
 8000374:	e799      	b.n	80002aa <__aeabi_fadd+0x8a>
 8000376:	21fe      	movs	r1, #254	; 0xfe
 8000378:	1c6a      	adds	r2, r5, #1
 800037a:	4211      	tst	r1, r2
 800037c:	d077      	beq.n	800046e <__aeabi_fadd+0x24e>
 800037e:	2aff      	cmp	r2, #255	; 0xff
 8000380:	d0f5      	beq.n	800036e <__aeabi_fadd+0x14e>
 8000382:	0015      	movs	r5, r2
 8000384:	4446      	add	r6, r8
 8000386:	0870      	lsrs	r0, r6, #1
 8000388:	0743      	lsls	r3, r0, #29
 800038a:	d000      	beq.n	800038e <__aeabi_fadd+0x16e>
 800038c:	e77e      	b.n	800028c <__aeabi_fadd+0x6c>
 800038e:	08c3      	lsrs	r3, r0, #3
 8000390:	2dff      	cmp	r5, #255	; 0xff
 8000392:	d00e      	beq.n	80003b2 <__aeabi_fadd+0x192>
 8000394:	025b      	lsls	r3, r3, #9
 8000396:	0a5b      	lsrs	r3, r3, #9
 8000398:	469c      	mov	ip, r3
 800039a:	b2ea      	uxtb	r2, r5
 800039c:	e785      	b.n	80002aa <__aeabi_fadd+0x8a>
 800039e:	2e00      	cmp	r6, #0
 80003a0:	d007      	beq.n	80003b2 <__aeabi_fadd+0x192>
 80003a2:	2280      	movs	r2, #128	; 0x80
 80003a4:	03d2      	lsls	r2, r2, #15
 80003a6:	4213      	tst	r3, r2
 80003a8:	d003      	beq.n	80003b2 <__aeabi_fadd+0x192>
 80003aa:	4210      	tst	r0, r2
 80003ac:	d101      	bne.n	80003b2 <__aeabi_fadd+0x192>
 80003ae:	000c      	movs	r4, r1
 80003b0:	0003      	movs	r3, r0
 80003b2:	2b00      	cmp	r3, #0
 80003b4:	d0db      	beq.n	800036e <__aeabi_fadd+0x14e>
 80003b6:	2080      	movs	r0, #128	; 0x80
 80003b8:	03c0      	lsls	r0, r0, #15
 80003ba:	4318      	orrs	r0, r3
 80003bc:	0240      	lsls	r0, r0, #9
 80003be:	0a43      	lsrs	r3, r0, #9
 80003c0:	469c      	mov	ip, r3
 80003c2:	22ff      	movs	r2, #255	; 0xff
 80003c4:	e771      	b.n	80002aa <__aeabi_fadd+0x8a>
 80003c6:	2900      	cmp	r1, #0
 80003c8:	d0d5      	beq.n	8000376 <__aeabi_fadd+0x156>
 80003ca:	1b7a      	subs	r2, r7, r5
 80003cc:	2d00      	cmp	r5, #0
 80003ce:	d160      	bne.n	8000492 <__aeabi_fadd+0x272>
 80003d0:	4643      	mov	r3, r8
 80003d2:	2b00      	cmp	r3, #0
 80003d4:	d024      	beq.n	8000420 <__aeabi_fadd+0x200>
 80003d6:	1e53      	subs	r3, r2, #1
 80003d8:	2a01      	cmp	r2, #1
 80003da:	d073      	beq.n	80004c4 <__aeabi_fadd+0x2a4>
 80003dc:	2aff      	cmp	r2, #255	; 0xff
 80003de:	d0e7      	beq.n	80003b0 <__aeabi_fadd+0x190>
 80003e0:	001a      	movs	r2, r3
 80003e2:	2a1b      	cmp	r2, #27
 80003e4:	dc00      	bgt.n	80003e8 <__aeabi_fadd+0x1c8>
 80003e6:	e085      	b.n	80004f4 <__aeabi_fadd+0x2d4>
 80003e8:	2001      	movs	r0, #1
 80003ea:	003d      	movs	r5, r7
 80003ec:	1980      	adds	r0, r0, r6
 80003ee:	e785      	b.n	80002fc <__aeabi_fadd+0xdc>
 80003f0:	2320      	movs	r3, #32
 80003f2:	003a      	movs	r2, r7
 80003f4:	1b45      	subs	r5, r0, r5
 80003f6:	0038      	movs	r0, r7
 80003f8:	3501      	adds	r5, #1
 80003fa:	40ea      	lsrs	r2, r5
 80003fc:	1b5d      	subs	r5, r3, r5
 80003fe:	40a8      	lsls	r0, r5
 8000400:	1e43      	subs	r3, r0, #1
 8000402:	4198      	sbcs	r0, r3
 8000404:	2500      	movs	r5, #0
 8000406:	4310      	orrs	r0, r2
 8000408:	e73e      	b.n	8000288 <__aeabi_fadd+0x68>
 800040a:	2320      	movs	r3, #32
 800040c:	0030      	movs	r0, r6
 800040e:	1a9b      	subs	r3, r3, r2
 8000410:	0031      	movs	r1, r6
 8000412:	4098      	lsls	r0, r3
 8000414:	40d1      	lsrs	r1, r2
 8000416:	1e43      	subs	r3, r0, #1
 8000418:	4198      	sbcs	r0, r3
 800041a:	4308      	orrs	r0, r1
 800041c:	e722      	b.n	8000264 <__aeabi_fadd+0x44>
 800041e:	000c      	movs	r4, r1
 8000420:	0003      	movs	r3, r0
 8000422:	0015      	movs	r5, r2
 8000424:	e7b4      	b.n	8000390 <__aeabi_fadd+0x170>
 8000426:	2fff      	cmp	r7, #255	; 0xff
 8000428:	d0c1      	beq.n	80003ae <__aeabi_fadd+0x18e>
 800042a:	2380      	movs	r3, #128	; 0x80
 800042c:	4640      	mov	r0, r8
 800042e:	04db      	lsls	r3, r3, #19
 8000430:	4318      	orrs	r0, r3
 8000432:	4680      	mov	r8, r0
 8000434:	2a1b      	cmp	r2, #27
 8000436:	dd51      	ble.n	80004dc <__aeabi_fadd+0x2bc>
 8000438:	2001      	movs	r0, #1
 800043a:	000c      	movs	r4, r1
 800043c:	003d      	movs	r5, r7
 800043e:	1a30      	subs	r0, r6, r0
 8000440:	e712      	b.n	8000268 <__aeabi_fadd+0x48>
 8000442:	4643      	mov	r3, r8
 8000444:	1b9f      	subs	r7, r3, r6
 8000446:	017b      	lsls	r3, r7, #5
 8000448:	d42b      	bmi.n	80004a2 <__aeabi_fadd+0x282>
 800044a:	2f00      	cmp	r7, #0
 800044c:	d000      	beq.n	8000450 <__aeabi_fadd+0x230>
 800044e:	e710      	b.n	8000272 <__aeabi_fadd+0x52>
 8000450:	2300      	movs	r3, #0
 8000452:	2400      	movs	r4, #0
 8000454:	2200      	movs	r2, #0
 8000456:	469c      	mov	ip, r3
 8000458:	e727      	b.n	80002aa <__aeabi_fadd+0x8a>
 800045a:	2320      	movs	r3, #32
 800045c:	0032      	movs	r2, r6
 800045e:	0030      	movs	r0, r6
 8000460:	40ca      	lsrs	r2, r1
 8000462:	1a59      	subs	r1, r3, r1
 8000464:	4088      	lsls	r0, r1
 8000466:	1e43      	subs	r3, r0, #1
 8000468:	4198      	sbcs	r0, r3
 800046a:	4310      	orrs	r0, r2
 800046c:	e745      	b.n	80002fa <__aeabi_fadd+0xda>
 800046e:	2d00      	cmp	r5, #0
 8000470:	d14a      	bne.n	8000508 <__aeabi_fadd+0x2e8>
 8000472:	4643      	mov	r3, r8
 8000474:	2b00      	cmp	r3, #0
 8000476:	d063      	beq.n	8000540 <__aeabi_fadd+0x320>
 8000478:	2200      	movs	r2, #0
 800047a:	2e00      	cmp	r6, #0
 800047c:	d100      	bne.n	8000480 <__aeabi_fadd+0x260>
 800047e:	e714      	b.n	80002aa <__aeabi_fadd+0x8a>
 8000480:	0030      	movs	r0, r6
 8000482:	4440      	add	r0, r8
 8000484:	0143      	lsls	r3, r0, #5
 8000486:	d400      	bmi.n	800048a <__aeabi_fadd+0x26a>
 8000488:	e77e      	b.n	8000388 <__aeabi_fadd+0x168>
 800048a:	4b32      	ldr	r3, [pc, #200]	; (8000554 <__aeabi_fadd+0x334>)
 800048c:	3501      	adds	r5, #1
 800048e:	4018      	ands	r0, r3
 8000490:	e77a      	b.n	8000388 <__aeabi_fadd+0x168>
 8000492:	2fff      	cmp	r7, #255	; 0xff
 8000494:	d08c      	beq.n	80003b0 <__aeabi_fadd+0x190>
 8000496:	2380      	movs	r3, #128	; 0x80
 8000498:	4641      	mov	r1, r8
 800049a:	04db      	lsls	r3, r3, #19
 800049c:	4319      	orrs	r1, r3
 800049e:	4688      	mov	r8, r1
 80004a0:	e79f      	b.n	80003e2 <__aeabi_fadd+0x1c2>
 80004a2:	4643      	mov	r3, r8
 80004a4:	000c      	movs	r4, r1
 80004a6:	1af7      	subs	r7, r6, r3
 80004a8:	e6e3      	b.n	8000272 <__aeabi_fadd+0x52>
 80004aa:	4642      	mov	r2, r8
 80004ac:	2a00      	cmp	r2, #0
 80004ae:	d000      	beq.n	80004b2 <__aeabi_fadd+0x292>
 80004b0:	e775      	b.n	800039e <__aeabi_fadd+0x17e>
 80004b2:	2e00      	cmp	r6, #0
 80004b4:	d000      	beq.n	80004b8 <__aeabi_fadd+0x298>
 80004b6:	e77a      	b.n	80003ae <__aeabi_fadd+0x18e>
 80004b8:	2380      	movs	r3, #128	; 0x80
 80004ba:	03db      	lsls	r3, r3, #15
 80004bc:	2400      	movs	r4, #0
 80004be:	469c      	mov	ip, r3
 80004c0:	22ff      	movs	r2, #255	; 0xff
 80004c2:	e6f2      	b.n	80002aa <__aeabi_fadd+0x8a>
 80004c4:	0030      	movs	r0, r6
 80004c6:	4440      	add	r0, r8
 80004c8:	2501      	movs	r5, #1
 80004ca:	0143      	lsls	r3, r0, #5
 80004cc:	d400      	bmi.n	80004d0 <__aeabi_fadd+0x2b0>
 80004ce:	e75b      	b.n	8000388 <__aeabi_fadd+0x168>
 80004d0:	2502      	movs	r5, #2
 80004d2:	e718      	b.n	8000306 <__aeabi_fadd+0xe6>
 80004d4:	4643      	mov	r3, r8
 80004d6:	2501      	movs	r5, #1
 80004d8:	1b98      	subs	r0, r3, r6
 80004da:	e6c5      	b.n	8000268 <__aeabi_fadd+0x48>
 80004dc:	2320      	movs	r3, #32
 80004de:	4644      	mov	r4, r8
 80004e0:	4640      	mov	r0, r8
 80004e2:	40d4      	lsrs	r4, r2
 80004e4:	1a9a      	subs	r2, r3, r2
 80004e6:	4090      	lsls	r0, r2
 80004e8:	1e43      	subs	r3, r0, #1
 80004ea:	4198      	sbcs	r0, r3
 80004ec:	4320      	orrs	r0, r4
 80004ee:	e7a4      	b.n	800043a <__aeabi_fadd+0x21a>
 80004f0:	000d      	movs	r5, r1
 80004f2:	e74d      	b.n	8000390 <__aeabi_fadd+0x170>
 80004f4:	2320      	movs	r3, #32
 80004f6:	4641      	mov	r1, r8
 80004f8:	4640      	mov	r0, r8
 80004fa:	40d1      	lsrs	r1, r2
 80004fc:	1a9a      	subs	r2, r3, r2
 80004fe:	4090      	lsls	r0, r2
 8000500:	1e43      	subs	r3, r0, #1
 8000502:	4198      	sbcs	r0, r3
 8000504:	4308      	orrs	r0, r1
 8000506:	e770      	b.n	80003ea <__aeabi_fadd+0x1ca>
 8000508:	4642      	mov	r2, r8
 800050a:	2a00      	cmp	r2, #0
 800050c:	d100      	bne.n	8000510 <__aeabi_fadd+0x2f0>
 800050e:	e74f      	b.n	80003b0 <__aeabi_fadd+0x190>
 8000510:	2e00      	cmp	r6, #0
 8000512:	d100      	bne.n	8000516 <__aeabi_fadd+0x2f6>
 8000514:	e74d      	b.n	80003b2 <__aeabi_fadd+0x192>
 8000516:	2280      	movs	r2, #128	; 0x80
 8000518:	03d2      	lsls	r2, r2, #15
 800051a:	4213      	tst	r3, r2
 800051c:	d100      	bne.n	8000520 <__aeabi_fadd+0x300>
 800051e:	e748      	b.n	80003b2 <__aeabi_fadd+0x192>
 8000520:	4210      	tst	r0, r2
 8000522:	d000      	beq.n	8000526 <__aeabi_fadd+0x306>
 8000524:	e745      	b.n	80003b2 <__aeabi_fadd+0x192>
 8000526:	0003      	movs	r3, r0
 8000528:	e743      	b.n	80003b2 <__aeabi_fadd+0x192>
 800052a:	2e00      	cmp	r6, #0
 800052c:	d090      	beq.n	8000450 <__aeabi_fadd+0x230>
 800052e:	000c      	movs	r4, r1
 8000530:	4684      	mov	ip, r0
 8000532:	2200      	movs	r2, #0
 8000534:	e6b9      	b.n	80002aa <__aeabi_fadd+0x8a>
 8000536:	4643      	mov	r3, r8
 8000538:	000c      	movs	r4, r1
 800053a:	1af0      	subs	r0, r6, r3
 800053c:	3501      	adds	r5, #1
 800053e:	e693      	b.n	8000268 <__aeabi_fadd+0x48>
 8000540:	4684      	mov	ip, r0
 8000542:	2200      	movs	r2, #0
 8000544:	e6b1      	b.n	80002aa <__aeabi_fadd+0x8a>
 8000546:	2800      	cmp	r0, #0
 8000548:	d000      	beq.n	800054c <__aeabi_fadd+0x32c>
 800054a:	e71d      	b.n	8000388 <__aeabi_fadd+0x168>
 800054c:	2300      	movs	r3, #0
 800054e:	2400      	movs	r4, #0
 8000550:	469c      	mov	ip, r3
 8000552:	e6aa      	b.n	80002aa <__aeabi_fadd+0x8a>
 8000554:	fbffffff 	.word	0xfbffffff
 8000558:	7dffffff 	.word	0x7dffffff

0800055c <__aeabi_fmul>:
 800055c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800055e:	464f      	mov	r7, r9
 8000560:	4646      	mov	r6, r8
 8000562:	46d6      	mov	lr, sl
 8000564:	0244      	lsls	r4, r0, #9
 8000566:	0045      	lsls	r5, r0, #1
 8000568:	b5c0      	push	{r6, r7, lr}
 800056a:	0a64      	lsrs	r4, r4, #9
 800056c:	1c0f      	adds	r7, r1, #0
 800056e:	0e2d      	lsrs	r5, r5, #24
 8000570:	0fc6      	lsrs	r6, r0, #31
 8000572:	2d00      	cmp	r5, #0
 8000574:	d100      	bne.n	8000578 <__aeabi_fmul+0x1c>
 8000576:	e08d      	b.n	8000694 <__aeabi_fmul+0x138>
 8000578:	2dff      	cmp	r5, #255	; 0xff
 800057a:	d100      	bne.n	800057e <__aeabi_fmul+0x22>
 800057c:	e092      	b.n	80006a4 <__aeabi_fmul+0x148>
 800057e:	2300      	movs	r3, #0
 8000580:	2080      	movs	r0, #128	; 0x80
 8000582:	4699      	mov	r9, r3
 8000584:	469a      	mov	sl, r3
 8000586:	00e4      	lsls	r4, r4, #3
 8000588:	04c0      	lsls	r0, r0, #19
 800058a:	4304      	orrs	r4, r0
 800058c:	3d7f      	subs	r5, #127	; 0x7f
 800058e:	0278      	lsls	r0, r7, #9
 8000590:	0a43      	lsrs	r3, r0, #9
 8000592:	4698      	mov	r8, r3
 8000594:	007b      	lsls	r3, r7, #1
 8000596:	0e1b      	lsrs	r3, r3, #24
 8000598:	0fff      	lsrs	r7, r7, #31
 800059a:	2b00      	cmp	r3, #0
 800059c:	d100      	bne.n	80005a0 <__aeabi_fmul+0x44>
 800059e:	e070      	b.n	8000682 <__aeabi_fmul+0x126>
 80005a0:	2bff      	cmp	r3, #255	; 0xff
 80005a2:	d100      	bne.n	80005a6 <__aeabi_fmul+0x4a>
 80005a4:	e086      	b.n	80006b4 <__aeabi_fmul+0x158>
 80005a6:	4642      	mov	r2, r8
 80005a8:	00d0      	lsls	r0, r2, #3
 80005aa:	2280      	movs	r2, #128	; 0x80
 80005ac:	3b7f      	subs	r3, #127	; 0x7f
 80005ae:	18ed      	adds	r5, r5, r3
 80005b0:	2300      	movs	r3, #0
 80005b2:	04d2      	lsls	r2, r2, #19
 80005b4:	4302      	orrs	r2, r0
 80005b6:	4690      	mov	r8, r2
 80005b8:	469c      	mov	ip, r3
 80005ba:	0031      	movs	r1, r6
 80005bc:	464b      	mov	r3, r9
 80005be:	4079      	eors	r1, r7
 80005c0:	1c68      	adds	r0, r5, #1
 80005c2:	2b0f      	cmp	r3, #15
 80005c4:	d81c      	bhi.n	8000600 <__aeabi_fmul+0xa4>
 80005c6:	4a76      	ldr	r2, [pc, #472]	; (80007a0 <__aeabi_fmul+0x244>)
 80005c8:	009b      	lsls	r3, r3, #2
 80005ca:	58d3      	ldr	r3, [r2, r3]
 80005cc:	469f      	mov	pc, r3
 80005ce:	0039      	movs	r1, r7
 80005d0:	4644      	mov	r4, r8
 80005d2:	46e2      	mov	sl, ip
 80005d4:	4653      	mov	r3, sl
 80005d6:	2b02      	cmp	r3, #2
 80005d8:	d00f      	beq.n	80005fa <__aeabi_fmul+0x9e>
 80005da:	2b03      	cmp	r3, #3
 80005dc:	d100      	bne.n	80005e0 <__aeabi_fmul+0x84>
 80005de:	e0d7      	b.n	8000790 <__aeabi_fmul+0x234>
 80005e0:	2b01      	cmp	r3, #1
 80005e2:	d137      	bne.n	8000654 <__aeabi_fmul+0xf8>
 80005e4:	2000      	movs	r0, #0
 80005e6:	2400      	movs	r4, #0
 80005e8:	05c0      	lsls	r0, r0, #23
 80005ea:	4320      	orrs	r0, r4
 80005ec:	07c9      	lsls	r1, r1, #31
 80005ee:	4308      	orrs	r0, r1
 80005f0:	bce0      	pop	{r5, r6, r7}
 80005f2:	46ba      	mov	sl, r7
 80005f4:	46b1      	mov	r9, r6
 80005f6:	46a8      	mov	r8, r5
 80005f8:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80005fa:	20ff      	movs	r0, #255	; 0xff
 80005fc:	2400      	movs	r4, #0
 80005fe:	e7f3      	b.n	80005e8 <__aeabi_fmul+0x8c>
 8000600:	0c26      	lsrs	r6, r4, #16
 8000602:	0424      	lsls	r4, r4, #16
 8000604:	0c22      	lsrs	r2, r4, #16
 8000606:	4644      	mov	r4, r8
 8000608:	0424      	lsls	r4, r4, #16
 800060a:	0c24      	lsrs	r4, r4, #16
 800060c:	4643      	mov	r3, r8
 800060e:	0027      	movs	r7, r4
 8000610:	0c1b      	lsrs	r3, r3, #16
 8000612:	4357      	muls	r7, r2
 8000614:	4374      	muls	r4, r6
 8000616:	435a      	muls	r2, r3
 8000618:	435e      	muls	r6, r3
 800061a:	1912      	adds	r2, r2, r4
 800061c:	0c3b      	lsrs	r3, r7, #16
 800061e:	189b      	adds	r3, r3, r2
 8000620:	429c      	cmp	r4, r3
 8000622:	d903      	bls.n	800062c <__aeabi_fmul+0xd0>
 8000624:	2280      	movs	r2, #128	; 0x80
 8000626:	0252      	lsls	r2, r2, #9
 8000628:	4694      	mov	ip, r2
 800062a:	4466      	add	r6, ip
 800062c:	043f      	lsls	r7, r7, #16
 800062e:	041a      	lsls	r2, r3, #16
 8000630:	0c3f      	lsrs	r7, r7, #16
 8000632:	19d2      	adds	r2, r2, r7
 8000634:	0194      	lsls	r4, r2, #6
 8000636:	1e67      	subs	r7, r4, #1
 8000638:	41bc      	sbcs	r4, r7
 800063a:	0c1b      	lsrs	r3, r3, #16
 800063c:	0e92      	lsrs	r2, r2, #26
 800063e:	199b      	adds	r3, r3, r6
 8000640:	4314      	orrs	r4, r2
 8000642:	019b      	lsls	r3, r3, #6
 8000644:	431c      	orrs	r4, r3
 8000646:	011b      	lsls	r3, r3, #4
 8000648:	d400      	bmi.n	800064c <__aeabi_fmul+0xf0>
 800064a:	e09b      	b.n	8000784 <__aeabi_fmul+0x228>
 800064c:	2301      	movs	r3, #1
 800064e:	0862      	lsrs	r2, r4, #1
 8000650:	401c      	ands	r4, r3
 8000652:	4314      	orrs	r4, r2
 8000654:	0002      	movs	r2, r0
 8000656:	327f      	adds	r2, #127	; 0x7f
 8000658:	2a00      	cmp	r2, #0
 800065a:	dd64      	ble.n	8000726 <__aeabi_fmul+0x1ca>
 800065c:	0763      	lsls	r3, r4, #29
 800065e:	d004      	beq.n	800066a <__aeabi_fmul+0x10e>
 8000660:	230f      	movs	r3, #15
 8000662:	4023      	ands	r3, r4
 8000664:	2b04      	cmp	r3, #4
 8000666:	d000      	beq.n	800066a <__aeabi_fmul+0x10e>
 8000668:	3404      	adds	r4, #4
 800066a:	0123      	lsls	r3, r4, #4
 800066c:	d503      	bpl.n	8000676 <__aeabi_fmul+0x11a>
 800066e:	0002      	movs	r2, r0
 8000670:	4b4c      	ldr	r3, [pc, #304]	; (80007a4 <__aeabi_fmul+0x248>)
 8000672:	3280      	adds	r2, #128	; 0x80
 8000674:	401c      	ands	r4, r3
 8000676:	2afe      	cmp	r2, #254	; 0xfe
 8000678:	dcbf      	bgt.n	80005fa <__aeabi_fmul+0x9e>
 800067a:	01a4      	lsls	r4, r4, #6
 800067c:	0a64      	lsrs	r4, r4, #9
 800067e:	b2d0      	uxtb	r0, r2
 8000680:	e7b2      	b.n	80005e8 <__aeabi_fmul+0x8c>
 8000682:	4643      	mov	r3, r8
 8000684:	2b00      	cmp	r3, #0
 8000686:	d13d      	bne.n	8000704 <__aeabi_fmul+0x1a8>
 8000688:	464a      	mov	r2, r9
 800068a:	3301      	adds	r3, #1
 800068c:	431a      	orrs	r2, r3
 800068e:	4691      	mov	r9, r2
 8000690:	469c      	mov	ip, r3
 8000692:	e792      	b.n	80005ba <__aeabi_fmul+0x5e>
 8000694:	2c00      	cmp	r4, #0
 8000696:	d129      	bne.n	80006ec <__aeabi_fmul+0x190>
 8000698:	2304      	movs	r3, #4
 800069a:	4699      	mov	r9, r3
 800069c:	3b03      	subs	r3, #3
 800069e:	2500      	movs	r5, #0
 80006a0:	469a      	mov	sl, r3
 80006a2:	e774      	b.n	800058e <__aeabi_fmul+0x32>
 80006a4:	2c00      	cmp	r4, #0
 80006a6:	d11b      	bne.n	80006e0 <__aeabi_fmul+0x184>
 80006a8:	2308      	movs	r3, #8
 80006aa:	4699      	mov	r9, r3
 80006ac:	3b06      	subs	r3, #6
 80006ae:	25ff      	movs	r5, #255	; 0xff
 80006b0:	469a      	mov	sl, r3
 80006b2:	e76c      	b.n	800058e <__aeabi_fmul+0x32>
 80006b4:	4643      	mov	r3, r8
 80006b6:	35ff      	adds	r5, #255	; 0xff
 80006b8:	2b00      	cmp	r3, #0
 80006ba:	d10b      	bne.n	80006d4 <__aeabi_fmul+0x178>
 80006bc:	2302      	movs	r3, #2
 80006be:	464a      	mov	r2, r9
 80006c0:	431a      	orrs	r2, r3
 80006c2:	4691      	mov	r9, r2
 80006c4:	469c      	mov	ip, r3
 80006c6:	e778      	b.n	80005ba <__aeabi_fmul+0x5e>
 80006c8:	4653      	mov	r3, sl
 80006ca:	0031      	movs	r1, r6
 80006cc:	2b02      	cmp	r3, #2
 80006ce:	d000      	beq.n	80006d2 <__aeabi_fmul+0x176>
 80006d0:	e783      	b.n	80005da <__aeabi_fmul+0x7e>
 80006d2:	e792      	b.n	80005fa <__aeabi_fmul+0x9e>
 80006d4:	2303      	movs	r3, #3
 80006d6:	464a      	mov	r2, r9
 80006d8:	431a      	orrs	r2, r3
 80006da:	4691      	mov	r9, r2
 80006dc:	469c      	mov	ip, r3
 80006de:	e76c      	b.n	80005ba <__aeabi_fmul+0x5e>
 80006e0:	230c      	movs	r3, #12
 80006e2:	4699      	mov	r9, r3
 80006e4:	3b09      	subs	r3, #9
 80006e6:	25ff      	movs	r5, #255	; 0xff
 80006e8:	469a      	mov	sl, r3
 80006ea:	e750      	b.n	800058e <__aeabi_fmul+0x32>
 80006ec:	0020      	movs	r0, r4
 80006ee:	f000 f8c9 	bl	8000884 <__clzsi2>
 80006f2:	2576      	movs	r5, #118	; 0x76
 80006f4:	1f43      	subs	r3, r0, #5
 80006f6:	409c      	lsls	r4, r3
 80006f8:	2300      	movs	r3, #0
 80006fa:	426d      	negs	r5, r5
 80006fc:	4699      	mov	r9, r3
 80006fe:	469a      	mov	sl, r3
 8000700:	1a2d      	subs	r5, r5, r0
 8000702:	e744      	b.n	800058e <__aeabi_fmul+0x32>
 8000704:	4640      	mov	r0, r8
 8000706:	f000 f8bd 	bl	8000884 <__clzsi2>
 800070a:	4642      	mov	r2, r8
 800070c:	1f43      	subs	r3, r0, #5
 800070e:	409a      	lsls	r2, r3
 8000710:	2300      	movs	r3, #0
 8000712:	1a2d      	subs	r5, r5, r0
 8000714:	4690      	mov	r8, r2
 8000716:	469c      	mov	ip, r3
 8000718:	3d76      	subs	r5, #118	; 0x76
 800071a:	e74e      	b.n	80005ba <__aeabi_fmul+0x5e>
 800071c:	2480      	movs	r4, #128	; 0x80
 800071e:	2100      	movs	r1, #0
 8000720:	20ff      	movs	r0, #255	; 0xff
 8000722:	03e4      	lsls	r4, r4, #15
 8000724:	e760      	b.n	80005e8 <__aeabi_fmul+0x8c>
 8000726:	2301      	movs	r3, #1
 8000728:	1a9b      	subs	r3, r3, r2
 800072a:	2b1b      	cmp	r3, #27
 800072c:	dd00      	ble.n	8000730 <__aeabi_fmul+0x1d4>
 800072e:	e759      	b.n	80005e4 <__aeabi_fmul+0x88>
 8000730:	0022      	movs	r2, r4
 8000732:	309e      	adds	r0, #158	; 0x9e
 8000734:	40da      	lsrs	r2, r3
 8000736:	4084      	lsls	r4, r0
 8000738:	0013      	movs	r3, r2
 800073a:	1e62      	subs	r2, r4, #1
 800073c:	4194      	sbcs	r4, r2
 800073e:	431c      	orrs	r4, r3
 8000740:	0763      	lsls	r3, r4, #29
 8000742:	d004      	beq.n	800074e <__aeabi_fmul+0x1f2>
 8000744:	230f      	movs	r3, #15
 8000746:	4023      	ands	r3, r4
 8000748:	2b04      	cmp	r3, #4
 800074a:	d000      	beq.n	800074e <__aeabi_fmul+0x1f2>
 800074c:	3404      	adds	r4, #4
 800074e:	0163      	lsls	r3, r4, #5
 8000750:	d51a      	bpl.n	8000788 <__aeabi_fmul+0x22c>
 8000752:	2001      	movs	r0, #1
 8000754:	2400      	movs	r4, #0
 8000756:	e747      	b.n	80005e8 <__aeabi_fmul+0x8c>
 8000758:	2080      	movs	r0, #128	; 0x80
 800075a:	03c0      	lsls	r0, r0, #15
 800075c:	4204      	tst	r4, r0
 800075e:	d009      	beq.n	8000774 <__aeabi_fmul+0x218>
 8000760:	4643      	mov	r3, r8
 8000762:	4203      	tst	r3, r0
 8000764:	d106      	bne.n	8000774 <__aeabi_fmul+0x218>
 8000766:	4644      	mov	r4, r8
 8000768:	4304      	orrs	r4, r0
 800076a:	0264      	lsls	r4, r4, #9
 800076c:	0039      	movs	r1, r7
 800076e:	20ff      	movs	r0, #255	; 0xff
 8000770:	0a64      	lsrs	r4, r4, #9
 8000772:	e739      	b.n	80005e8 <__aeabi_fmul+0x8c>
 8000774:	2080      	movs	r0, #128	; 0x80
 8000776:	03c0      	lsls	r0, r0, #15
 8000778:	4304      	orrs	r4, r0
 800077a:	0264      	lsls	r4, r4, #9
 800077c:	0031      	movs	r1, r6
 800077e:	20ff      	movs	r0, #255	; 0xff
 8000780:	0a64      	lsrs	r4, r4, #9
 8000782:	e731      	b.n	80005e8 <__aeabi_fmul+0x8c>
 8000784:	0028      	movs	r0, r5
 8000786:	e765      	b.n	8000654 <__aeabi_fmul+0xf8>
 8000788:	01a4      	lsls	r4, r4, #6
 800078a:	2000      	movs	r0, #0
 800078c:	0a64      	lsrs	r4, r4, #9
 800078e:	e72b      	b.n	80005e8 <__aeabi_fmul+0x8c>
 8000790:	2080      	movs	r0, #128	; 0x80
 8000792:	03c0      	lsls	r0, r0, #15
 8000794:	4304      	orrs	r4, r0
 8000796:	0264      	lsls	r4, r4, #9
 8000798:	20ff      	movs	r0, #255	; 0xff
 800079a:	0a64      	lsrs	r4, r4, #9
 800079c:	e724      	b.n	80005e8 <__aeabi_fmul+0x8c>
 800079e:	46c0      	nop			; (mov r8, r8)
 80007a0:	080011f8 	.word	0x080011f8
 80007a4:	f7ffffff 	.word	0xf7ffffff

080007a8 <__aeabi_f2iz>:
 80007a8:	0241      	lsls	r1, r0, #9
 80007aa:	0042      	lsls	r2, r0, #1
 80007ac:	0fc3      	lsrs	r3, r0, #31
 80007ae:	0a49      	lsrs	r1, r1, #9
 80007b0:	2000      	movs	r0, #0
 80007b2:	0e12      	lsrs	r2, r2, #24
 80007b4:	2a7e      	cmp	r2, #126	; 0x7e
 80007b6:	dd03      	ble.n	80007c0 <__aeabi_f2iz+0x18>
 80007b8:	2a9d      	cmp	r2, #157	; 0x9d
 80007ba:	dd02      	ble.n	80007c2 <__aeabi_f2iz+0x1a>
 80007bc:	4a09      	ldr	r2, [pc, #36]	; (80007e4 <__aeabi_f2iz+0x3c>)
 80007be:	1898      	adds	r0, r3, r2
 80007c0:	4770      	bx	lr
 80007c2:	2080      	movs	r0, #128	; 0x80
 80007c4:	0400      	lsls	r0, r0, #16
 80007c6:	4301      	orrs	r1, r0
 80007c8:	2a95      	cmp	r2, #149	; 0x95
 80007ca:	dc07      	bgt.n	80007dc <__aeabi_f2iz+0x34>
 80007cc:	2096      	movs	r0, #150	; 0x96
 80007ce:	1a82      	subs	r2, r0, r2
 80007d0:	40d1      	lsrs	r1, r2
 80007d2:	4248      	negs	r0, r1
 80007d4:	2b00      	cmp	r3, #0
 80007d6:	d1f3      	bne.n	80007c0 <__aeabi_f2iz+0x18>
 80007d8:	0008      	movs	r0, r1
 80007da:	e7f1      	b.n	80007c0 <__aeabi_f2iz+0x18>
 80007dc:	3a96      	subs	r2, #150	; 0x96
 80007de:	4091      	lsls	r1, r2
 80007e0:	e7f7      	b.n	80007d2 <__aeabi_f2iz+0x2a>
 80007e2:	46c0      	nop			; (mov r8, r8)
 80007e4:	7fffffff 	.word	0x7fffffff

080007e8 <__aeabi_i2f>:
 80007e8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80007ea:	2800      	cmp	r0, #0
 80007ec:	d013      	beq.n	8000816 <__aeabi_i2f+0x2e>
 80007ee:	17c3      	asrs	r3, r0, #31
 80007f0:	18c6      	adds	r6, r0, r3
 80007f2:	405e      	eors	r6, r3
 80007f4:	0fc4      	lsrs	r4, r0, #31
 80007f6:	0030      	movs	r0, r6
 80007f8:	f000 f844 	bl	8000884 <__clzsi2>
 80007fc:	239e      	movs	r3, #158	; 0x9e
 80007fe:	0005      	movs	r5, r0
 8000800:	1a1b      	subs	r3, r3, r0
 8000802:	2b96      	cmp	r3, #150	; 0x96
 8000804:	dc0f      	bgt.n	8000826 <__aeabi_i2f+0x3e>
 8000806:	2808      	cmp	r0, #8
 8000808:	dd01      	ble.n	800080e <__aeabi_i2f+0x26>
 800080a:	3d08      	subs	r5, #8
 800080c:	40ae      	lsls	r6, r5
 800080e:	0276      	lsls	r6, r6, #9
 8000810:	0a76      	lsrs	r6, r6, #9
 8000812:	b2d8      	uxtb	r0, r3
 8000814:	e002      	b.n	800081c <__aeabi_i2f+0x34>
 8000816:	2400      	movs	r4, #0
 8000818:	2000      	movs	r0, #0
 800081a:	2600      	movs	r6, #0
 800081c:	05c0      	lsls	r0, r0, #23
 800081e:	4330      	orrs	r0, r6
 8000820:	07e4      	lsls	r4, r4, #31
 8000822:	4320      	orrs	r0, r4
 8000824:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8000826:	2b99      	cmp	r3, #153	; 0x99
 8000828:	dd0c      	ble.n	8000844 <__aeabi_i2f+0x5c>
 800082a:	2205      	movs	r2, #5
 800082c:	0031      	movs	r1, r6
 800082e:	1a12      	subs	r2, r2, r0
 8000830:	40d1      	lsrs	r1, r2
 8000832:	000a      	movs	r2, r1
 8000834:	0001      	movs	r1, r0
 8000836:	0030      	movs	r0, r6
 8000838:	311b      	adds	r1, #27
 800083a:	4088      	lsls	r0, r1
 800083c:	1e41      	subs	r1, r0, #1
 800083e:	4188      	sbcs	r0, r1
 8000840:	4302      	orrs	r2, r0
 8000842:	0016      	movs	r6, r2
 8000844:	2d05      	cmp	r5, #5
 8000846:	dc12      	bgt.n	800086e <__aeabi_i2f+0x86>
 8000848:	0031      	movs	r1, r6
 800084a:	4f0d      	ldr	r7, [pc, #52]	; (8000880 <__aeabi_i2f+0x98>)
 800084c:	4039      	ands	r1, r7
 800084e:	0772      	lsls	r2, r6, #29
 8000850:	d009      	beq.n	8000866 <__aeabi_i2f+0x7e>
 8000852:	200f      	movs	r0, #15
 8000854:	4030      	ands	r0, r6
 8000856:	2804      	cmp	r0, #4
 8000858:	d005      	beq.n	8000866 <__aeabi_i2f+0x7e>
 800085a:	3104      	adds	r1, #4
 800085c:	014a      	lsls	r2, r1, #5
 800085e:	d502      	bpl.n	8000866 <__aeabi_i2f+0x7e>
 8000860:	239f      	movs	r3, #159	; 0x9f
 8000862:	4039      	ands	r1, r7
 8000864:	1b5b      	subs	r3, r3, r5
 8000866:	0189      	lsls	r1, r1, #6
 8000868:	0a4e      	lsrs	r6, r1, #9
 800086a:	b2d8      	uxtb	r0, r3
 800086c:	e7d6      	b.n	800081c <__aeabi_i2f+0x34>
 800086e:	1f6a      	subs	r2, r5, #5
 8000870:	4096      	lsls	r6, r2
 8000872:	0031      	movs	r1, r6
 8000874:	4f02      	ldr	r7, [pc, #8]	; (8000880 <__aeabi_i2f+0x98>)
 8000876:	4039      	ands	r1, r7
 8000878:	0772      	lsls	r2, r6, #29
 800087a:	d0f4      	beq.n	8000866 <__aeabi_i2f+0x7e>
 800087c:	e7e9      	b.n	8000852 <__aeabi_i2f+0x6a>
 800087e:	46c0      	nop			; (mov r8, r8)
 8000880:	fbffffff 	.word	0xfbffffff

08000884 <__clzsi2>:
 8000884:	211c      	movs	r1, #28
 8000886:	2301      	movs	r3, #1
 8000888:	041b      	lsls	r3, r3, #16
 800088a:	4298      	cmp	r0, r3
 800088c:	d301      	bcc.n	8000892 <__clzsi2+0xe>
 800088e:	0c00      	lsrs	r0, r0, #16
 8000890:	3910      	subs	r1, #16
 8000892:	0a1b      	lsrs	r3, r3, #8
 8000894:	4298      	cmp	r0, r3
 8000896:	d301      	bcc.n	800089c <__clzsi2+0x18>
 8000898:	0a00      	lsrs	r0, r0, #8
 800089a:	3908      	subs	r1, #8
 800089c:	091b      	lsrs	r3, r3, #4
 800089e:	4298      	cmp	r0, r3
 80008a0:	d301      	bcc.n	80008a6 <__clzsi2+0x22>
 80008a2:	0900      	lsrs	r0, r0, #4
 80008a4:	3904      	subs	r1, #4
 80008a6:	a202      	add	r2, pc, #8	; (adr r2, 80008b0 <__clzsi2+0x2c>)
 80008a8:	5c10      	ldrb	r0, [r2, r0]
 80008aa:	1840      	adds	r0, r0, r1
 80008ac:	4770      	bx	lr
 80008ae:	46c0      	nop			; (mov r8, r8)
 80008b0:	02020304 	.word	0x02020304
 80008b4:	01010101 	.word	0x01010101
	...

080008c0 <Reset_Handler>:
 80008c0:	480d      	ldr	r0, [pc, #52]	; (80008f8 <LoopForever+0x2>)
 80008c2:	4685      	mov	sp, r0
 80008c4:	480d      	ldr	r0, [pc, #52]	; (80008fc <LoopForever+0x6>)
 80008c6:	490e      	ldr	r1, [pc, #56]	; (8000900 <LoopForever+0xa>)
 80008c8:	4a0e      	ldr	r2, [pc, #56]	; (8000904 <LoopForever+0xe>)
 80008ca:	2300      	movs	r3, #0
 80008cc:	e002      	b.n	80008d4 <LoopCopyDataInit>

080008ce <CopyDataInit>:
 80008ce:	58d4      	ldr	r4, [r2, r3]
 80008d0:	50c4      	str	r4, [r0, r3]
 80008d2:	3304      	adds	r3, #4

080008d4 <LoopCopyDataInit>:
 80008d4:	18c4      	adds	r4, r0, r3
 80008d6:	428c      	cmp	r4, r1
 80008d8:	d3f9      	bcc.n	80008ce <CopyDataInit>
 80008da:	4a0b      	ldr	r2, [pc, #44]	; (8000908 <LoopForever+0x12>)
 80008dc:	4c0b      	ldr	r4, [pc, #44]	; (800090c <LoopForever+0x16>)
 80008de:	2300      	movs	r3, #0
 80008e0:	e001      	b.n	80008e6 <LoopFillZerobss>

080008e2 <FillZerobss>:
 80008e2:	6013      	str	r3, [r2, #0]
 80008e4:	3204      	adds	r2, #4

080008e6 <LoopFillZerobss>:
 80008e6:	42a2      	cmp	r2, r4
 80008e8:	d3fb      	bcc.n	80008e2 <FillZerobss>
 80008ea:	f000 fa25 	bl	8000d38 <SystemInit>
 80008ee:	f000 fbd3 	bl	8001098 <__libc_init_array>
 80008f2:	f000 f84b 	bl	800098c <main>

080008f6 <LoopForever>:
 80008f6:	e7fe      	b.n	80008f6 <LoopForever>
 80008f8:	20002000 	.word	0x20002000
 80008fc:	20000000 	.word	0x20000000
 8000900:	20000434 	.word	0x20000434
 8000904:	080012a8 	.word	0x080012a8
 8000908:	20000434 	.word	0x20000434
 800090c:	20000484 	.word	0x20000484

08000910 <ADC1_COMP_IRQHandler>:
 8000910:	e7fe      	b.n	8000910 <ADC1_COMP_IRQHandler>
	...

08000914 <usart_getc>:
 8000914:	4904      	ldr	r1, [pc, #16]	; (8000928 <usart_getc+0x14>)
 8000916:	2220      	movs	r2, #32
 8000918:	69cb      	ldr	r3, [r1, #28]
 800091a:	421a      	tst	r2, r3
 800091c:	d0fc      	beq.n	8000918 <usart_getc+0x4>
 800091e:	4b02      	ldr	r3, [pc, #8]	; (8000928 <usart_getc+0x14>)
 8000920:	8c98      	ldrh	r0, [r3, #36]	; 0x24
 8000922:	b2c0      	uxtb	r0, r0
 8000924:	4770      	bx	lr
 8000926:	46c0      	nop			; (mov r8, r8)
 8000928:	40013800 	.word	0x40013800

0800092c <usart_putc>:
 800092c:	4906      	ldr	r1, [pc, #24]	; (8000948 <usart_putc+0x1c>)
 800092e:	2280      	movs	r2, #128	; 0x80
 8000930:	69cb      	ldr	r3, [r1, #28]
 8000932:	421a      	tst	r2, r3
 8000934:	d0fc      	beq.n	8000930 <usart_putc+0x4>
 8000936:	b280      	uxth	r0, r0
 8000938:	4b03      	ldr	r3, [pc, #12]	; (8000948 <usart_putc+0x1c>)
 800093a:	8518      	strh	r0, [r3, #40]	; 0x28
 800093c:	0019      	movs	r1, r3
 800093e:	2240      	movs	r2, #64	; 0x40
 8000940:	69cb      	ldr	r3, [r1, #28]
 8000942:	421a      	tst	r2, r3
 8000944:	d0fc      	beq.n	8000940 <usart_putc+0x14>
 8000946:	4770      	bx	lr
 8000948:	40013800 	.word	0x40013800

0800094c <DMA1_Channel1_IRQHandler>:
 800094c:	b570      	push	{r4, r5, r6, lr}
 800094e:	4d0c      	ldr	r5, [pc, #48]	; (8000980 <DMA1_Channel1_IRQHandler+0x34>)
 8000950:	002e      	movs	r6, r5
 8000952:	3620      	adds	r6, #32
 8000954:	2400      	movs	r4, #0
 8000956:	8828      	ldrh	r0, [r5, #0]
 8000958:	f7ff ff46 	bl	80007e8 <__aeabi_i2f>
 800095c:	1c01      	adds	r1, r0, #0
 800095e:	1c20      	adds	r0, r4, #0
 8000960:	f7ff fc5e 	bl	8000220 <__aeabi_fadd>
 8000964:	1c04      	adds	r4, r0, #0
 8000966:	3502      	adds	r5, #2
 8000968:	42b5      	cmp	r5, r6
 800096a:	d1f4      	bne.n	8000956 <DMA1_Channel1_IRQHandler+0xa>
 800096c:	21f6      	movs	r1, #246	; 0xf6
 800096e:	0589      	lsls	r1, r1, #22
 8000970:	f7ff fdf4 	bl	800055c <__aeabi_fmul>
 8000974:	4b03      	ldr	r3, [pc, #12]	; (8000984 <DMA1_Channel1_IRQHandler+0x38>)
 8000976:	6018      	str	r0, [r3, #0]
 8000978:	4b03      	ldr	r3, [pc, #12]	; (8000988 <DMA1_Channel1_IRQHandler+0x3c>)
 800097a:	2202      	movs	r2, #2
 800097c:	605a      	str	r2, [r3, #4]
 800097e:	bd70      	pop	{r4, r5, r6, pc}
 8000980:	20000450 	.word	0x20000450
 8000984:	20000470 	.word	0x20000470
 8000988:	40020000 	.word	0x40020000

0800098c <main>:
 800098c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800098e:	46de      	mov	lr, fp
 8000990:	4657      	mov	r7, sl
 8000992:	464e      	mov	r6, r9
 8000994:	4645      	mov	r5, r8
 8000996:	b5e0      	push	{r5, r6, r7, lr}
 8000998:	b087      	sub	sp, #28
 800099a:	49c4      	ldr	r1, [pc, #784]	; (8000cac <main+0x320>)
 800099c:	680b      	ldr	r3, [r1, #0]
 800099e:	2201      	movs	r2, #1
 80009a0:	4393      	bics	r3, r2
 80009a2:	4313      	orrs	r3, r2
 80009a4:	600b      	str	r3, [r1, #0]
 80009a6:	49c2      	ldr	r1, [pc, #776]	; (8000cb0 <main+0x324>)
 80009a8:	680b      	ldr	r3, [r1, #0]
 80009aa:	4313      	orrs	r3, r2
 80009ac:	600b      	str	r3, [r1, #0]
 80009ae:	3201      	adds	r2, #1
 80009b0:	680b      	ldr	r3, [r1, #0]
 80009b2:	421a      	tst	r2, r3
 80009b4:	d0fc      	beq.n	80009b0 <main+0x24>
 80009b6:	4bbe      	ldr	r3, [pc, #760]	; (8000cb0 <main+0x324>)
 80009b8:	685a      	ldr	r2, [r3, #4]
 80009ba:	49be      	ldr	r1, [pc, #760]	; (8000cb4 <main+0x328>)
 80009bc:	4011      	ands	r1, r2
 80009be:	22a0      	movs	r2, #160	; 0xa0
 80009c0:	0392      	lsls	r2, r2, #14
 80009c2:	430a      	orrs	r2, r1
 80009c4:	605a      	str	r2, [r3, #4]
 80009c6:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 80009c8:	210f      	movs	r1, #15
 80009ca:	438a      	bics	r2, r1
 80009cc:	62da      	str	r2, [r3, #44]	; 0x2c
 80009ce:	6819      	ldr	r1, [r3, #0]
 80009d0:	2280      	movs	r2, #128	; 0x80
 80009d2:	0452      	lsls	r2, r2, #17
 80009d4:	430a      	orrs	r2, r1
 80009d6:	601a      	str	r2, [r3, #0]
 80009d8:	0019      	movs	r1, r3
 80009da:	2280      	movs	r2, #128	; 0x80
 80009dc:	0492      	lsls	r2, r2, #18
 80009de:	680b      	ldr	r3, [r1, #0]
 80009e0:	4213      	tst	r3, r2
 80009e2:	d0fc      	beq.n	80009de <main+0x52>
 80009e4:	4ab2      	ldr	r2, [pc, #712]	; (8000cb0 <main+0x324>)
 80009e6:	6853      	ldr	r3, [r2, #4]
 80009e8:	21f0      	movs	r1, #240	; 0xf0
 80009ea:	438b      	bics	r3, r1
 80009ec:	6053      	str	r3, [r2, #4]
 80009ee:	6853      	ldr	r3, [r2, #4]
 80009f0:	39ed      	subs	r1, #237	; 0xed
 80009f2:	438b      	bics	r3, r1
 80009f4:	3901      	subs	r1, #1
 80009f6:	430b      	orrs	r3, r1
 80009f8:	6053      	str	r3, [r2, #4]
 80009fa:	0011      	movs	r1, r2
 80009fc:	220c      	movs	r2, #12
 80009fe:	684b      	ldr	r3, [r1, #4]
 8000a00:	4013      	ands	r3, r2
 8000a02:	2b08      	cmp	r3, #8
 8000a04:	d1fb      	bne.n	80009fe <main+0x72>
 8000a06:	4baa      	ldr	r3, [pc, #680]	; (8000cb0 <main+0x324>)
 8000a08:	685a      	ldr	r2, [r3, #4]
 8000a0a:	49ab      	ldr	r1, [pc, #684]	; (8000cb8 <main+0x32c>)
 8000a0c:	400a      	ands	r2, r1
 8000a0e:	605a      	str	r2, [r3, #4]
 8000a10:	4aaa      	ldr	r2, [pc, #680]	; (8000cbc <main+0x330>)
 8000a12:	49ab      	ldr	r1, [pc, #684]	; (8000cc0 <main+0x334>)
 8000a14:	6011      	str	r1, [r2, #0]
 8000a16:	6959      	ldr	r1, [r3, #20]
 8000a18:	2080      	movs	r0, #128	; 0x80
 8000a1a:	0300      	lsls	r0, r0, #12
 8000a1c:	4301      	orrs	r1, r0
 8000a1e:	6159      	str	r1, [r3, #20]
 8000a20:	695a      	ldr	r2, [r3, #20]
 8000a22:	4002      	ands	r2, r0
 8000a24:	9205      	str	r2, [sp, #20]
 8000a26:	9a05      	ldr	r2, [sp, #20]
 8000a28:	4aa6      	ldr	r2, [pc, #664]	; (8000cc4 <main+0x338>)
 8000a2a:	6811      	ldr	r1, [r2, #0]
 8000a2c:	48a6      	ldr	r0, [pc, #664]	; (8000cc8 <main+0x33c>)
 8000a2e:	4008      	ands	r0, r1
 8000a30:	2180      	movs	r1, #128	; 0x80
 8000a32:	0249      	lsls	r1, r1, #9
 8000a34:	4301      	orrs	r1, r0
 8000a36:	6011      	str	r1, [r2, #0]
 8000a38:	6811      	ldr	r1, [r2, #0]
 8000a3a:	48a4      	ldr	r0, [pc, #656]	; (8000ccc <main+0x340>)
 8000a3c:	4008      	ands	r0, r1
 8000a3e:	2180      	movs	r1, #128	; 0x80
 8000a40:	02c9      	lsls	r1, r1, #11
 8000a42:	4301      	orrs	r1, r0
 8000a44:	6011      	str	r1, [r2, #0]
 8000a46:	6999      	ldr	r1, [r3, #24]
 8000a48:	2080      	movs	r0, #128	; 0x80
 8000a4a:	0080      	lsls	r0, r0, #2
 8000a4c:	4301      	orrs	r1, r0
 8000a4e:	6199      	str	r1, [r3, #24]
 8000a50:	699a      	ldr	r2, [r3, #24]
 8000a52:	4002      	ands	r2, r0
 8000a54:	9204      	str	r2, [sp, #16]
 8000a56:	9a04      	ldr	r2, [sp, #16]
 8000a58:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 8000a5a:	2101      	movs	r1, #1
 8000a5c:	430a      	orrs	r2, r1
 8000a5e:	635a      	str	r2, [r3, #52]	; 0x34
 8000a60:	4a9b      	ldr	r2, [pc, #620]	; (8000cd0 <main+0x344>)
 8000a62:	6913      	ldr	r3, [r2, #16]
 8000a64:	009b      	lsls	r3, r3, #2
 8000a66:	089b      	lsrs	r3, r3, #2
 8000a68:	6113      	str	r3, [r2, #16]
 8000a6a:	4991      	ldr	r1, [pc, #580]	; (8000cb0 <main+0x324>)
 8000a6c:	2202      	movs	r2, #2
 8000a6e:	6b4b      	ldr	r3, [r1, #52]	; 0x34
 8000a70:	421a      	tst	r2, r3
 8000a72:	d0fc      	beq.n	8000a6e <main+0xe2>
 8000a74:	4b96      	ldr	r3, [pc, #600]	; (8000cd0 <main+0x344>)
 8000a76:	689b      	ldr	r3, [r3, #8]
 8000a78:	07db      	lsls	r3, r3, #31
 8000a7a:	d506      	bpl.n	8000a8a <main+0xfe>
 8000a7c:	4994      	ldr	r1, [pc, #592]	; (8000cd0 <main+0x344>)
 8000a7e:	688b      	ldr	r3, [r1, #8]
 8000a80:	4a94      	ldr	r2, [pc, #592]	; (8000cd4 <main+0x348>)
 8000a82:	401a      	ands	r2, r3
 8000a84:	2302      	movs	r3, #2
 8000a86:	4313      	orrs	r3, r2
 8000a88:	608b      	str	r3, [r1, #8]
 8000a8a:	4991      	ldr	r1, [pc, #580]	; (8000cd0 <main+0x344>)
 8000a8c:	2201      	movs	r2, #1
 8000a8e:	688b      	ldr	r3, [r1, #8]
 8000a90:	421a      	tst	r2, r3
 8000a92:	d1fc      	bne.n	8000a8e <main+0x102>
 8000a94:	498e      	ldr	r1, [pc, #568]	; (8000cd0 <main+0x344>)
 8000a96:	688b      	ldr	r3, [r1, #8]
 8000a98:	4a8e      	ldr	r2, [pc, #568]	; (8000cd4 <main+0x348>)
 8000a9a:	401a      	ands	r2, r3
 8000a9c:	2380      	movs	r3, #128	; 0x80
 8000a9e:	061b      	lsls	r3, r3, #24
 8000aa0:	4313      	orrs	r3, r2
 8000aa2:	608b      	str	r3, [r1, #8]
 8000aa4:	000a      	movs	r2, r1
 8000aa6:	6893      	ldr	r3, [r2, #8]
 8000aa8:	2b00      	cmp	r3, #0
 8000aaa:	dbfc      	blt.n	8000aa6 <main+0x11a>
 8000aac:	4a88      	ldr	r2, [pc, #544]	; (8000cd0 <main+0x344>)
 8000aae:	6893      	ldr	r3, [r2, #8]
 8000ab0:	4988      	ldr	r1, [pc, #544]	; (8000cd4 <main+0x348>)
 8000ab2:	4688      	mov	r8, r1
 8000ab4:	400b      	ands	r3, r1
 8000ab6:	2501      	movs	r5, #1
 8000ab8:	432b      	orrs	r3, r5
 8000aba:	6093      	str	r3, [r2, #8]
 8000abc:	68d3      	ldr	r3, [r2, #12]
 8000abe:	2118      	movs	r1, #24
 8000ac0:	438b      	bics	r3, r1
 8000ac2:	60d3      	str	r3, [r2, #12]
 8000ac4:	68d3      	ldr	r3, [r2, #12]
 8000ac6:	2420      	movs	r4, #32
 8000ac8:	43a3      	bics	r3, r4
 8000aca:	60d3      	str	r3, [r2, #12]
 8000acc:	68d3      	ldr	r3, [r2, #12]
 8000ace:	4982      	ldr	r1, [pc, #520]	; (8000cd8 <main+0x34c>)
 8000ad0:	400b      	ands	r3, r1
 8000ad2:	60d3      	str	r3, [r2, #12]
 8000ad4:	6953      	ldr	r3, [r2, #20]
 8000ad6:	2107      	movs	r1, #7
 8000ad8:	430b      	orrs	r3, r1
 8000ada:	6153      	str	r3, [r2, #20]
 8000adc:	68d3      	ldr	r3, [r2, #12]
 8000ade:	497f      	ldr	r1, [pc, #508]	; (8000cdc <main+0x350>)
 8000ae0:	400b      	ands	r3, r1
 8000ae2:	60d3      	str	r3, [r2, #12]
 8000ae4:	6295      	str	r5, [r2, #40]	; 0x28
 8000ae6:	68d3      	ldr	r3, [r2, #12]
 8000ae8:	497d      	ldr	r1, [pc, #500]	; (8000ce0 <main+0x354>)
 8000aea:	4019      	ands	r1, r3
 8000aec:	2380      	movs	r3, #128	; 0x80
 8000aee:	019b      	lsls	r3, r3, #6
 8000af0:	430b      	orrs	r3, r1
 8000af2:	60d3      	str	r3, [r2, #12]
 8000af4:	68d3      	ldr	r3, [r2, #12]
 8000af6:	2103      	movs	r1, #3
 8000af8:	468c      	mov	ip, r1
 8000afa:	438b      	bics	r3, r1
 8000afc:	430b      	orrs	r3, r1
 8000afe:	60d3      	str	r3, [r2, #12]
 8000b00:	68d3      	ldr	r3, [r2, #12]
 8000b02:	4f78      	ldr	r7, [pc, #480]	; (8000ce4 <main+0x358>)
 8000b04:	403b      	ands	r3, r7
 8000b06:	60d3      	str	r3, [r2, #12]
 8000b08:	4969      	ldr	r1, [pc, #420]	; (8000cb0 <main+0x324>)
 8000b0a:	694b      	ldr	r3, [r1, #20]
 8000b0c:	432b      	orrs	r3, r5
 8000b0e:	614b      	str	r3, [r1, #20]
 8000b10:	694b      	ldr	r3, [r1, #20]
 8000b12:	402b      	ands	r3, r5
 8000b14:	9303      	str	r3, [sp, #12]
 8000b16:	9b03      	ldr	r3, [sp, #12]
 8000b18:	4b73      	ldr	r3, [pc, #460]	; (8000ce8 <main+0x35c>)
 8000b1a:	6818      	ldr	r0, [r3, #0]
 8000b1c:	4e73      	ldr	r6, [pc, #460]	; (8000cec <main+0x360>)
 8000b1e:	4030      	ands	r0, r6
 8000b20:	6018      	str	r0, [r3, #0]
 8000b22:	6818      	ldr	r0, [r3, #0]
 8000b24:	43a0      	bics	r0, r4
 8000b26:	4320      	orrs	r0, r4
 8000b28:	6018      	str	r0, [r3, #0]
 8000b2a:	6818      	ldr	r0, [r3, #0]
 8000b2c:	3420      	adds	r4, #32
 8000b2e:	43a0      	bics	r0, r4
 8000b30:	6018      	str	r0, [r3, #0]
 8000b32:	6818      	ldr	r0, [r3, #0]
 8000b34:	3440      	adds	r4, #64	; 0x40
 8000b36:	4320      	orrs	r0, r4
 8000b38:	6018      	str	r0, [r3, #0]
 8000b3a:	6818      	ldr	r0, [r3, #0]
 8000b3c:	4c6c      	ldr	r4, [pc, #432]	; (8000cf0 <main+0x364>)
 8000b3e:	4020      	ands	r0, r4
 8000b40:	2480      	movs	r4, #128	; 0x80
 8000b42:	0064      	lsls	r4, r4, #1
 8000b44:	4320      	orrs	r0, r4
 8000b46:	6018      	str	r0, [r3, #0]
 8000b48:	6818      	ldr	r0, [r3, #0]
 8000b4a:	4e6a      	ldr	r6, [pc, #424]	; (8000cf4 <main+0x368>)
 8000b4c:	4006      	ands	r6, r0
 8000b4e:	2080      	movs	r0, #128	; 0x80
 8000b50:	00c0      	lsls	r0, r0, #3
 8000b52:	4330      	orrs	r0, r6
 8000b54:	6018      	str	r0, [r3, #0]
 8000b56:	6818      	ldr	r0, [r3, #0]
 8000b58:	4e67      	ldr	r6, [pc, #412]	; (8000cf8 <main+0x36c>)
 8000b5a:	4030      	ands	r0, r6
 8000b5c:	4681      	mov	r9, r0
 8000b5e:	20c0      	movs	r0, #192	; 0xc0
 8000b60:	0180      	lsls	r0, r0, #6
 8000b62:	464c      	mov	r4, r9
 8000b64:	4320      	orrs	r0, r4
 8000b66:	6018      	str	r0, [r3, #0]
 8000b68:	6858      	ldr	r0, [r3, #4]
 8000b6a:	0c00      	lsrs	r0, r0, #16
 8000b6c:	0400      	lsls	r0, r0, #16
 8000b6e:	2410      	movs	r4, #16
 8000b70:	46a1      	mov	r9, r4
 8000b72:	4320      	orrs	r0, r4
 8000b74:	6058      	str	r0, [r3, #4]
 8000b76:	4861      	ldr	r0, [pc, #388]	; (8000cfc <main+0x370>)
 8000b78:	6098      	str	r0, [r3, #8]
 8000b7a:	4861      	ldr	r0, [pc, #388]	; (8000d00 <main+0x374>)
 8000b7c:	60d8      	str	r0, [r3, #12]
 8000b7e:	6818      	ldr	r0, [r3, #0]
 8000b80:	4328      	orrs	r0, r5
 8000b82:	6018      	str	r0, [r3, #0]
 8000b84:	6818      	ldr	r0, [r3, #0]
 8000b86:	3c0e      	subs	r4, #14
 8000b88:	4320      	orrs	r0, r4
 8000b8a:	6018      	str	r0, [r3, #0]
 8000b8c:	4b5d      	ldr	r3, [pc, #372]	; (8000d04 <main+0x378>)
 8000b8e:	20c2      	movs	r0, #194	; 0xc2
 8000b90:	0080      	lsls	r0, r0, #2
 8000b92:	4682      	mov	sl, r0
 8000b94:	5818      	ldr	r0, [r3, r0]
 8000b96:	4c5c      	ldr	r4, [pc, #368]	; (8000d08 <main+0x37c>)
 8000b98:	4020      	ands	r0, r4
 8000b9a:	4654      	mov	r4, sl
 8000b9c:	5118      	str	r0, [r3, r4]
 8000b9e:	2080      	movs	r0, #128	; 0x80
 8000ba0:	0080      	lsls	r0, r0, #2
 8000ba2:	6018      	str	r0, [r3, #0]
 8000ba4:	6893      	ldr	r3, [r2, #8]
 8000ba6:	4640      	mov	r0, r8
 8000ba8:	4003      	ands	r3, r0
 8000baa:	2004      	movs	r0, #4
 8000bac:	4303      	orrs	r3, r0
 8000bae:	6093      	str	r3, [r2, #8]
 8000bb0:	694a      	ldr	r2, [r1, #20]
 8000bb2:	2080      	movs	r0, #128	; 0x80
 8000bb4:	0280      	lsls	r0, r0, #10
 8000bb6:	4302      	orrs	r2, r0
 8000bb8:	614a      	str	r2, [r1, #20]
 8000bba:	694b      	ldr	r3, [r1, #20]
 8000bbc:	4003      	ands	r3, r0
 8000bbe:	9301      	str	r3, [sp, #4]
 8000bc0:	9b01      	ldr	r3, [sp, #4]
 8000bc2:	2390      	movs	r3, #144	; 0x90
 8000bc4:	05db      	lsls	r3, r3, #23
 8000bc6:	681a      	ldr	r2, [r3, #0]
 8000bc8:	4840      	ldr	r0, [pc, #256]	; (8000ccc <main+0x340>)
 8000bca:	4002      	ands	r2, r0
 8000bcc:	4690      	mov	r8, r2
 8000bce:	2280      	movs	r2, #128	; 0x80
 8000bd0:	0312      	lsls	r2, r2, #12
 8000bd2:	4644      	mov	r4, r8
 8000bd4:	4322      	orrs	r2, r4
 8000bd6:	601a      	str	r2, [r3, #0]
 8000bd8:	6a5a      	ldr	r2, [r3, #36]	; 0x24
 8000bda:	24f0      	movs	r4, #240	; 0xf0
 8000bdc:	43a2      	bics	r2, r4
 8000bde:	464c      	mov	r4, r9
 8000be0:	4322      	orrs	r2, r4
 8000be2:	625a      	str	r2, [r3, #36]	; 0x24
 8000be4:	689a      	ldr	r2, [r3, #8]
 8000be6:	4010      	ands	r0, r2
 8000be8:	22c0      	movs	r2, #192	; 0xc0
 8000bea:	0312      	lsls	r2, r2, #12
 8000bec:	4302      	orrs	r2, r0
 8000bee:	609a      	str	r2, [r3, #8]
 8000bf0:	681a      	ldr	r2, [r3, #0]
 8000bf2:	4846      	ldr	r0, [pc, #280]	; (8000d0c <main+0x380>)
 8000bf4:	4680      	mov	r8, r0
 8000bf6:	4002      	ands	r2, r0
 8000bf8:	2080      	movs	r0, #128	; 0x80
 8000bfa:	0380      	lsls	r0, r0, #14
 8000bfc:	4310      	orrs	r0, r2
 8000bfe:	6018      	str	r0, [r3, #0]
 8000c00:	6a58      	ldr	r0, [r3, #36]	; 0x24
 8000c02:	4a43      	ldr	r2, [pc, #268]	; (8000d10 <main+0x384>)
 8000c04:	4010      	ands	r0, r2
 8000c06:	34f0      	adds	r4, #240	; 0xf0
 8000c08:	4304      	orrs	r4, r0
 8000c0a:	625c      	str	r4, [r3, #36]	; 0x24
 8000c0c:	6898      	ldr	r0, [r3, #8]
 8000c0e:	4642      	mov	r2, r8
 8000c10:	4010      	ands	r0, r2
 8000c12:	22c0      	movs	r2, #192	; 0xc0
 8000c14:	0392      	lsls	r2, r2, #14
 8000c16:	4302      	orrs	r2, r0
 8000c18:	609a      	str	r2, [r3, #8]
 8000c1a:	698a      	ldr	r2, [r1, #24]
 8000c1c:	2080      	movs	r0, #128	; 0x80
 8000c1e:	01c0      	lsls	r0, r0, #7
 8000c20:	4302      	orrs	r2, r0
 8000c22:	618a      	str	r2, [r1, #24]
 8000c24:	698b      	ldr	r3, [r1, #24]
 8000c26:	4003      	ands	r3, r0
 8000c28:	9302      	str	r3, [sp, #8]
 8000c2a:	9b02      	ldr	r3, [sp, #8]
 8000c2c:	6b0b      	ldr	r3, [r1, #48]	; 0x30
 8000c2e:	4662      	mov	r2, ip
 8000c30:	4393      	bics	r3, r2
 8000c32:	630b      	str	r3, [r1, #48]	; 0x30
 8000c34:	4c37      	ldr	r4, [pc, #220]	; (8000d14 <main+0x388>)
 8000c36:	6823      	ldr	r3, [r4, #0]
 8000c38:	3209      	adds	r2, #9
 8000c3a:	4313      	orrs	r3, r2
 8000c3c:	6023      	str	r3, [r4, #0]
 8000c3e:	6823      	ldr	r3, [r4, #0]
 8000c40:	4a35      	ldr	r2, [pc, #212]	; (8000d18 <main+0x38c>)
 8000c42:	4013      	ands	r3, r2
 8000c44:	6023      	str	r3, [r4, #0]
 8000c46:	6823      	ldr	r3, [r4, #0]
 8000c48:	401f      	ands	r7, r3
 8000c4a:	6027      	str	r7, [r4, #0]
 8000c4c:	6863      	ldr	r3, [r4, #4]
 8000c4e:	401e      	ands	r6, r3
 8000c50:	6066      	str	r6, [r4, #4]
 8000c52:	6863      	ldr	r3, [r4, #4]
 8000c54:	4a31      	ldr	r2, [pc, #196]	; (8000d1c <main+0x390>)
 8000c56:	4013      	ands	r3, r2
 8000c58:	6063      	str	r3, [r4, #4]
 8000c5a:	4b18      	ldr	r3, [pc, #96]	; (8000cbc <main+0x330>)
 8000c5c:	6818      	ldr	r0, [r3, #0]
 8000c5e:	23e1      	movs	r3, #225	; 0xe1
 8000c60:	021b      	lsls	r3, r3, #8
 8000c62:	469c      	mov	ip, r3
 8000c64:	4460      	add	r0, ip
 8000c66:	21e1      	movs	r1, #225	; 0xe1
 8000c68:	0249      	lsls	r1, r1, #9
 8000c6a:	f7ff fa4d 	bl	8000108 <__udivsi3>
 8000c6e:	60e0      	str	r0, [r4, #12]
 8000c70:	6823      	ldr	r3, [r4, #0]
 8000c72:	431d      	orrs	r5, r3
 8000c74:	6025      	str	r5, [r4, #0]
 8000c76:	0022      	movs	r2, r4
 8000c78:	2180      	movs	r1, #128	; 0x80
 8000c7a:	0389      	lsls	r1, r1, #14
 8000c7c:	2080      	movs	r0, #128	; 0x80
 8000c7e:	03c0      	lsls	r0, r0, #15
 8000c80:	69d3      	ldr	r3, [r2, #28]
 8000c82:	420b      	tst	r3, r1
 8000c84:	d0fc      	beq.n	8000c80 <main+0x2f4>
 8000c86:	69d3      	ldr	r3, [r2, #28]
 8000c88:	4203      	tst	r3, r0
 8000c8a:	d0f9      	beq.n	8000c80 <main+0x2f4>
 8000c8c:	4b24      	ldr	r3, [pc, #144]	; (8000d20 <main+0x394>)
 8000c8e:	4a25      	ldr	r2, [pc, #148]	; (8000d24 <main+0x398>)
 8000c90:	601a      	str	r2, [r3, #0]
 8000c92:	4b25      	ldr	r3, [pc, #148]	; (8000d28 <main+0x39c>)
 8000c94:	4a25      	ldr	r2, [pc, #148]	; (8000d2c <main+0x3a0>)
 8000c96:	601a      	str	r2, [r3, #0]
 8000c98:	4d25      	ldr	r5, [pc, #148]	; (8000d30 <main+0x3a4>)
 8000c9a:	4c26      	ldr	r4, [pc, #152]	; (8000d34 <main+0x3a8>)
 8000c9c:	6828      	ldr	r0, [r5, #0]
 8000c9e:	f7ff fd83 	bl	80007a8 <__aeabi_f2iz>
 8000ca2:	0001      	movs	r1, r0
 8000ca4:	0020      	movs	r0, r4
 8000ca6:	f000 f9e7 	bl	8001078 <xprintf>
 8000caa:	e7f7      	b.n	8000c9c <main+0x310>
 8000cac:	40022000 	.word	0x40022000
 8000cb0:	40021000 	.word	0x40021000
 8000cb4:	ffc2ffff 	.word	0xffc2ffff
 8000cb8:	fffff8ff 	.word	0xfffff8ff
 8000cbc:	20000000 	.word	0x20000000
 8000cc0:	02dc6c00 	.word	0x02dc6c00
 8000cc4:	48000800 	.word	0x48000800
 8000cc8:	fffcffff 	.word	0xfffcffff
 8000ccc:	fff3ffff 	.word	0xfff3ffff
 8000cd0:	40012400 	.word	0x40012400
 8000cd4:	7fffffe8 	.word	0x7fffffe8
 8000cd8:	ffff3fff 	.word	0xffff3fff
 8000cdc:	fffff23f 	.word	0xfffff23f
 8000ce0:	ffffdfff 	.word	0xffffdfff
 8000ce4:	ffffefff 	.word	0xffffefff
 8000ce8:	40020008 	.word	0x40020008
 8000cec:	ffffbfef 	.word	0xffffbfef
 8000cf0:	fffffcff 	.word	0xfffffcff
 8000cf4:	fffff3ff 	.word	0xfffff3ff
 8000cf8:	ffffcfff 	.word	0xffffcfff
 8000cfc:	40012440 	.word	0x40012440
 8000d00:	20000450 	.word	0x20000450
 8000d04:	e000e100 	.word	0xe000e100
 8000d08:	ffff00ff 	.word	0xffff00ff
 8000d0c:	ffcfffff 	.word	0xffcfffff
 8000d10:	fffff0ff 	.word	0xfffff0ff
 8000d14:	40013800 	.word	0x40013800
 8000d18:	fffff9ff 	.word	0xfffff9ff
 8000d1c:	fff7ffff 	.word	0xfff7ffff
 8000d20:	20000480 	.word	0x20000480
 8000d24:	0800092d 	.word	0x0800092d
 8000d28:	2000047c 	.word	0x2000047c
 8000d2c:	08000915 	.word	0x08000915
 8000d30:	20000470 	.word	0x20000470
 8000d34:	08001238 	.word	0x08001238

08000d38 <SystemInit>:
 8000d38:	4b11      	ldr	r3, [pc, #68]	; (8000d80 <SystemInit+0x48>)
 8000d3a:	681a      	ldr	r2, [r3, #0]
 8000d3c:	2101      	movs	r1, #1
 8000d3e:	430a      	orrs	r2, r1
 8000d40:	601a      	str	r2, [r3, #0]
 8000d42:	685a      	ldr	r2, [r3, #4]
 8000d44:	480f      	ldr	r0, [pc, #60]	; (8000d84 <SystemInit+0x4c>)
 8000d46:	4002      	ands	r2, r0
 8000d48:	605a      	str	r2, [r3, #4]
 8000d4a:	681a      	ldr	r2, [r3, #0]
 8000d4c:	480e      	ldr	r0, [pc, #56]	; (8000d88 <SystemInit+0x50>)
 8000d4e:	4002      	ands	r2, r0
 8000d50:	601a      	str	r2, [r3, #0]
 8000d52:	681a      	ldr	r2, [r3, #0]
 8000d54:	480d      	ldr	r0, [pc, #52]	; (8000d8c <SystemInit+0x54>)
 8000d56:	4002      	ands	r2, r0
 8000d58:	601a      	str	r2, [r3, #0]
 8000d5a:	685a      	ldr	r2, [r3, #4]
 8000d5c:	480c      	ldr	r0, [pc, #48]	; (8000d90 <SystemInit+0x58>)
 8000d5e:	4002      	ands	r2, r0
 8000d60:	605a      	str	r2, [r3, #4]
 8000d62:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8000d64:	200f      	movs	r0, #15
 8000d66:	4382      	bics	r2, r0
 8000d68:	62da      	str	r2, [r3, #44]	; 0x2c
 8000d6a:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8000d6c:	4809      	ldr	r0, [pc, #36]	; (8000d94 <SystemInit+0x5c>)
 8000d6e:	4002      	ands	r2, r0
 8000d70:	631a      	str	r2, [r3, #48]	; 0x30
 8000d72:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 8000d74:	438a      	bics	r2, r1
 8000d76:	635a      	str	r2, [r3, #52]	; 0x34
 8000d78:	2200      	movs	r2, #0
 8000d7a:	609a      	str	r2, [r3, #8]
 8000d7c:	4770      	bx	lr
 8000d7e:	46c0      	nop			; (mov r8, r8)
 8000d80:	40021000 	.word	0x40021000
 8000d84:	f8ffb80c 	.word	0xf8ffb80c
 8000d88:	fef6ffff 	.word	0xfef6ffff
 8000d8c:	fffbffff 	.word	0xfffbffff
 8000d90:	ffc0ffff 	.word	0xffc0ffff
 8000d94:	fffffeac 	.word	0xfffffeac

08000d98 <xputc>:
 8000d98:	b510      	push	{r4, lr}
 8000d9a:	0004      	movs	r4, r0
 8000d9c:	280a      	cmp	r0, #10
 8000d9e:	d008      	beq.n	8000db2 <xputc+0x1a>
 8000da0:	4b09      	ldr	r3, [pc, #36]	; (8000dc8 <xputc+0x30>)
 8000da2:	681b      	ldr	r3, [r3, #0]
 8000da4:	2b00      	cmp	r3, #0
 8000da6:	d008      	beq.n	8000dba <xputc+0x22>
 8000da8:	1c59      	adds	r1, r3, #1
 8000daa:	4a07      	ldr	r2, [pc, #28]	; (8000dc8 <xputc+0x30>)
 8000dac:	6011      	str	r1, [r2, #0]
 8000dae:	701c      	strb	r4, [r3, #0]
 8000db0:	bd10      	pop	{r4, pc}
 8000db2:	200d      	movs	r0, #13
 8000db4:	f7ff fff0 	bl	8000d98 <xputc>
 8000db8:	e7f2      	b.n	8000da0 <xputc+0x8>
 8000dba:	4b04      	ldr	r3, [pc, #16]	; (8000dcc <xputc+0x34>)
 8000dbc:	681b      	ldr	r3, [r3, #0]
 8000dbe:	2b00      	cmp	r3, #0
 8000dc0:	d0f6      	beq.n	8000db0 <xputc+0x18>
 8000dc2:	0020      	movs	r0, r4
 8000dc4:	4798      	blx	r3
 8000dc6:	e7f3      	b.n	8000db0 <xputc+0x18>
 8000dc8:	20000474 	.word	0x20000474
 8000dcc:	20000480 	.word	0x20000480

08000dd0 <xputs>:
 8000dd0:	b510      	push	{r4, lr}
 8000dd2:	0004      	movs	r4, r0
 8000dd4:	7800      	ldrb	r0, [r0, #0]
 8000dd6:	2800      	cmp	r0, #0
 8000dd8:	d005      	beq.n	8000de6 <xputs+0x16>
 8000dda:	3401      	adds	r4, #1
 8000ddc:	f7ff ffdc 	bl	8000d98 <xputc>
 8000de0:	7820      	ldrb	r0, [r4, #0]
 8000de2:	2800      	cmp	r0, #0
 8000de4:	d1f9      	bne.n	8000dda <xputs+0xa>
 8000de6:	bd10      	pop	{r4, pc}

08000de8 <xvprintf>:
 8000de8:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000dea:	46de      	mov	lr, fp
 8000dec:	4657      	mov	r7, sl
 8000dee:	464e      	mov	r6, r9
 8000df0:	4645      	mov	r5, r8
 8000df2:	b5e0      	push	{r5, r6, r7, lr}
 8000df4:	b089      	sub	sp, #36	; 0x24
 8000df6:	4680      	mov	r8, r0
 8000df8:	9101      	str	r1, [sp, #4]
 8000dfa:	e007      	b.n	8000e0c <xvprintf+0x24>
 8000dfc:	464b      	mov	r3, r9
 8000dfe:	9301      	str	r3, [sp, #4]
 8000e00:	e004      	b.n	8000e0c <xvprintf+0x24>
 8000e02:	2301      	movs	r3, #1
 8000e04:	469c      	mov	ip, r3
 8000e06:	44e0      	add	r8, ip
 8000e08:	f7ff ffc6 	bl	8000d98 <xputc>
 8000e0c:	4643      	mov	r3, r8
 8000e0e:	7818      	ldrb	r0, [r3, #0]
 8000e10:	2800      	cmp	r0, #0
 8000e12:	d100      	bne.n	8000e16 <xvprintf+0x2e>
 8000e14:	e126      	b.n	8001064 <xvprintf+0x27c>
 8000e16:	2825      	cmp	r0, #37	; 0x25
 8000e18:	d1f3      	bne.n	8000e02 <xvprintf+0x1a>
 8000e1a:	785b      	ldrb	r3, [r3, #1]
 8000e1c:	2b30      	cmp	r3, #48	; 0x30
 8000e1e:	d030      	beq.n	8000e82 <xvprintf+0x9a>
 8000e20:	2b2d      	cmp	r3, #45	; 0x2d
 8000e22:	d034      	beq.n	8000e8e <xvprintf+0xa6>
 8000e24:	4642      	mov	r2, r8
 8000e26:	3202      	adds	r2, #2
 8000e28:	2100      	movs	r1, #0
 8000e2a:	468a      	mov	sl, r1
 8000e2c:	0019      	movs	r1, r3
 8000e2e:	3930      	subs	r1, #48	; 0x30
 8000e30:	2909      	cmp	r1, #9
 8000e32:	d832      	bhi.n	8000e9a <xvprintf+0xb2>
 8000e34:	2600      	movs	r6, #0
 8000e36:	0019      	movs	r1, r3
 8000e38:	00b3      	lsls	r3, r6, #2
 8000e3a:	199b      	adds	r3, r3, r6
 8000e3c:	005b      	lsls	r3, r3, #1
 8000e3e:	185b      	adds	r3, r3, r1
 8000e40:	3b30      	subs	r3, #48	; 0x30
 8000e42:	001e      	movs	r6, r3
 8000e44:	1c53      	adds	r3, r2, #1
 8000e46:	7811      	ldrb	r1, [r2, #0]
 8000e48:	001a      	movs	r2, r3
 8000e4a:	0008      	movs	r0, r1
 8000e4c:	3830      	subs	r0, #48	; 0x30
 8000e4e:	2809      	cmp	r0, #9
 8000e50:	d9f2      	bls.n	8000e38 <xvprintf+0x50>
 8000e52:	4698      	mov	r8, r3
 8000e54:	000b      	movs	r3, r1
 8000e56:	001a      	movs	r2, r3
 8000e58:	2120      	movs	r1, #32
 8000e5a:	438a      	bics	r2, r1
 8000e5c:	2a4c      	cmp	r2, #76	; 0x4c
 8000e5e:	d01f      	beq.n	8000ea0 <xvprintf+0xb8>
 8000e60:	2b00      	cmp	r3, #0
 8000e62:	d100      	bne.n	8000e66 <xvprintf+0x7e>
 8000e64:	e0fe      	b.n	8001064 <xvprintf+0x27c>
 8000e66:	0019      	movs	r1, r3
 8000e68:	2b60      	cmp	r3, #96	; 0x60
 8000e6a:	d901      	bls.n	8000e70 <xvprintf+0x88>
 8000e6c:	3920      	subs	r1, #32
 8000e6e:	b2c9      	uxtb	r1, r1
 8000e70:	000a      	movs	r2, r1
 8000e72:	3a42      	subs	r2, #66	; 0x42
 8000e74:	b2d0      	uxtb	r0, r2
 8000e76:	2816      	cmp	r0, #22
 8000e78:	d851      	bhi.n	8000f1e <xvprintf+0x136>
 8000e7a:	0082      	lsls	r2, r0, #2
 8000e7c:	487d      	ldr	r0, [pc, #500]	; (8001074 <xvprintf+0x28c>)
 8000e7e:	5882      	ldr	r2, [r0, r2]
 8000e80:	4697      	mov	pc, r2
 8000e82:	4643      	mov	r3, r8
 8000e84:	1cda      	adds	r2, r3, #3
 8000e86:	789b      	ldrb	r3, [r3, #2]
 8000e88:	2101      	movs	r1, #1
 8000e8a:	468a      	mov	sl, r1
 8000e8c:	e7ce      	b.n	8000e2c <xvprintf+0x44>
 8000e8e:	4643      	mov	r3, r8
 8000e90:	1cda      	adds	r2, r3, #3
 8000e92:	789b      	ldrb	r3, [r3, #2]
 8000e94:	2102      	movs	r1, #2
 8000e96:	468a      	mov	sl, r1
 8000e98:	e7c8      	b.n	8000e2c <xvprintf+0x44>
 8000e9a:	4690      	mov	r8, r2
 8000e9c:	2600      	movs	r6, #0
 8000e9e:	e7da      	b.n	8000e56 <xvprintf+0x6e>
 8000ea0:	4653      	mov	r3, sl
 8000ea2:	3a48      	subs	r2, #72	; 0x48
 8000ea4:	4313      	orrs	r3, r2
 8000ea6:	469a      	mov	sl, r3
 8000ea8:	4643      	mov	r3, r8
 8000eaa:	781b      	ldrb	r3, [r3, #0]
 8000eac:	3a03      	subs	r2, #3
 8000eae:	4694      	mov	ip, r2
 8000eb0:	44e0      	add	r8, ip
 8000eb2:	e7d5      	b.n	8000e60 <xvprintf+0x78>
 8000eb4:	9b01      	ldr	r3, [sp, #4]
 8000eb6:	1d1a      	adds	r2, r3, #4
 8000eb8:	4691      	mov	r9, r2
 8000eba:	681f      	ldr	r7, [r3, #0]
 8000ebc:	783b      	ldrb	r3, [r7, #0]
 8000ebe:	2b00      	cmp	r3, #0
 8000ec0:	d022      	beq.n	8000f08 <xvprintf+0x120>
 8000ec2:	2400      	movs	r4, #0
 8000ec4:	3401      	adds	r4, #1
 8000ec6:	5d3b      	ldrb	r3, [r7, r4]
 8000ec8:	2b00      	cmp	r3, #0
 8000eca:	d1fb      	bne.n	8000ec4 <xvprintf+0xdc>
 8000ecc:	4653      	mov	r3, sl
 8000ece:	079b      	lsls	r3, r3, #30
 8000ed0:	d40a      	bmi.n	8000ee8 <xvprintf+0x100>
 8000ed2:	1c65      	adds	r5, r4, #1
 8000ed4:	42b4      	cmp	r4, r6
 8000ed6:	d219      	bcs.n	8000f0c <xvprintf+0x124>
 8000ed8:	1c74      	adds	r4, r6, #1
 8000eda:	2020      	movs	r0, #32
 8000edc:	f7ff ff5c 	bl	8000d98 <xputc>
 8000ee0:	3501      	adds	r5, #1
 8000ee2:	42ac      	cmp	r4, r5
 8000ee4:	d1f9      	bne.n	8000eda <xvprintf+0xf2>
 8000ee6:	1c74      	adds	r4, r6, #1
 8000ee8:	0038      	movs	r0, r7
 8000eea:	f7ff ff71 	bl	8000dd0 <xputs>
 8000eee:	1c65      	adds	r5, r4, #1
 8000ef0:	42b4      	cmp	r4, r6
 8000ef2:	d283      	bcs.n	8000dfc <xvprintf+0x14>
 8000ef4:	3601      	adds	r6, #1
 8000ef6:	2020      	movs	r0, #32
 8000ef8:	f7ff ff4e 	bl	8000d98 <xputc>
 8000efc:	3501      	adds	r5, #1
 8000efe:	42b5      	cmp	r5, r6
 8000f00:	d1f9      	bne.n	8000ef6 <xvprintf+0x10e>
 8000f02:	464b      	mov	r3, r9
 8000f04:	9301      	str	r3, [sp, #4]
 8000f06:	e781      	b.n	8000e0c <xvprintf+0x24>
 8000f08:	2400      	movs	r4, #0
 8000f0a:	e7df      	b.n	8000ecc <xvprintf+0xe4>
 8000f0c:	002c      	movs	r4, r5
 8000f0e:	e7eb      	b.n	8000ee8 <xvprintf+0x100>
 8000f10:	9b01      	ldr	r3, [sp, #4]
 8000f12:	1d1c      	adds	r4, r3, #4
 8000f14:	7818      	ldrb	r0, [r3, #0]
 8000f16:	f7ff ff3f 	bl	8000d98 <xputc>
 8000f1a:	9401      	str	r4, [sp, #4]
 8000f1c:	e776      	b.n	8000e0c <xvprintf+0x24>
 8000f1e:	0018      	movs	r0, r3
 8000f20:	f7ff ff3a 	bl	8000d98 <xputc>
 8000f24:	e772      	b.n	8000e0c <xvprintf+0x24>
 8000f26:	2204      	movs	r2, #4
 8000f28:	4650      	mov	r0, sl
 8000f2a:	4202      	tst	r2, r0
 8000f2c:	d012      	beq.n	8000f54 <xvprintf+0x16c>
 8000f2e:	3206      	adds	r2, #6
 8000f30:	9200      	str	r2, [sp, #0]
 8000f32:	9801      	ldr	r0, [sp, #4]
 8000f34:	1d02      	adds	r2, r0, #4
 8000f36:	6807      	ldr	r7, [r0, #0]
 8000f38:	9201      	str	r2, [sp, #4]
 8000f3a:	2944      	cmp	r1, #68	; 0x44
 8000f3c:	d16c      	bne.n	8001018 <xvprintf+0x230>
 8000f3e:	2f00      	cmp	r7, #0
 8000f40:	da6a      	bge.n	8001018 <xvprintf+0x230>
 8000f42:	427f      	negs	r7, r7
 8000f44:	2210      	movs	r2, #16
 8000f46:	4651      	mov	r1, sl
 8000f48:	4311      	orrs	r1, r2
 8000f4a:	468a      	mov	sl, r1
 8000f4c:	e064      	b.n	8001018 <xvprintf+0x230>
 8000f4e:	2210      	movs	r2, #16
 8000f50:	9200      	str	r2, [sp, #0]
 8000f52:	e7ee      	b.n	8000f32 <xvprintf+0x14a>
 8000f54:	220a      	movs	r2, #10
 8000f56:	9200      	str	r2, [sp, #0]
 8000f58:	2944      	cmp	r1, #68	; 0x44
 8000f5a:	d159      	bne.n	8001010 <xvprintf+0x228>
 8000f5c:	9a01      	ldr	r2, [sp, #4]
 8000f5e:	6817      	ldr	r7, [r2, #0]
 8000f60:	3204      	adds	r2, #4
 8000f62:	9201      	str	r2, [sp, #4]
 8000f64:	e7eb      	b.n	8000f3e <xvprintf+0x156>
 8000f66:	2227      	movs	r2, #39	; 0x27
 8000f68:	e05a      	b.n	8001020 <xvprintf+0x238>
 8000f6a:	1c7b      	adds	r3, r7, #1
 8000f6c:	3430      	adds	r4, #48	; 0x30
 8000f6e:	aa02      	add	r2, sp, #8
 8000f70:	55d4      	strb	r4, [r2, r7]
 8000f72:	2d00      	cmp	r5, #0
 8000f74:	d011      	beq.n	8000f9a <xvprintf+0x1b2>
 8000f76:	2b18      	cmp	r3, #24
 8000f78:	d00f      	beq.n	8000f9a <xvprintf+0x1b2>
 8000f7a:	001f      	movs	r7, r3
 8000f7c:	9900      	ldr	r1, [sp, #0]
 8000f7e:	0028      	movs	r0, r5
 8000f80:	f7ff f948 	bl	8000214 <__aeabi_uidivmod>
 8000f84:	b2cc      	uxtb	r4, r1
 8000f86:	9900      	ldr	r1, [sp, #0]
 8000f88:	0028      	movs	r0, r5
 8000f8a:	f7ff f8bd 	bl	8000108 <__udivsi3>
 8000f8e:	0005      	movs	r5, r0
 8000f90:	2c09      	cmp	r4, #9
 8000f92:	d9ea      	bls.n	8000f6a <xvprintf+0x182>
 8000f94:	1934      	adds	r4, r6, r4
 8000f96:	b2e4      	uxtb	r4, r4
 8000f98:	e7e7      	b.n	8000f6a <xvprintf+0x182>
 8000f9a:	001d      	movs	r5, r3
 8000f9c:	464e      	mov	r6, r9
 8000f9e:	4653      	mov	r3, sl
 8000fa0:	06db      	lsls	r3, r3, #27
 8000fa2:	d503      	bpl.n	8000fac <xvprintf+0x1c4>
 8000fa4:	232d      	movs	r3, #45	; 0x2d
 8000fa6:	aa02      	add	r2, sp, #8
 8000fa8:	5553      	strb	r3, [r2, r5]
 8000faa:	1cbd      	adds	r5, r7, #2
 8000fac:	4653      	mov	r3, sl
 8000fae:	07db      	lsls	r3, r3, #31
 8000fb0:	17db      	asrs	r3, r3, #31
 8000fb2:	2410      	movs	r4, #16
 8000fb4:	401c      	ands	r4, r3
 8000fb6:	3420      	adds	r4, #32
 8000fb8:	4653      	mov	r3, sl
 8000fba:	079b      	lsls	r3, r3, #30
 8000fbc:	d420      	bmi.n	8001000 <xvprintf+0x218>
 8000fbe:	1c6f      	adds	r7, r5, #1
 8000fc0:	42b5      	cmp	r5, r6
 8000fc2:	d20a      	bcs.n	8000fda <xvprintf+0x1f2>
 8000fc4:	1c73      	adds	r3, r6, #1
 8000fc6:	46a9      	mov	r9, r5
 8000fc8:	001d      	movs	r5, r3
 8000fca:	0020      	movs	r0, r4
 8000fcc:	f7ff fee4 	bl	8000d98 <xputc>
 8000fd0:	3701      	adds	r7, #1
 8000fd2:	42af      	cmp	r7, r5
 8000fd4:	d1f9      	bne.n	8000fca <xvprintf+0x1e2>
 8000fd6:	464d      	mov	r5, r9
 8000fd8:	1c77      	adds	r7, r6, #1
 8000fda:	3d01      	subs	r5, #1
 8000fdc:	ab02      	add	r3, sp, #8
 8000fde:	5ce8      	ldrb	r0, [r5, r3]
 8000fe0:	f7ff feda 	bl	8000d98 <xputc>
 8000fe4:	2d00      	cmp	r5, #0
 8000fe6:	d1f8      	bne.n	8000fda <xvprintf+0x1f2>
 8000fe8:	1c7c      	adds	r4, r7, #1
 8000fea:	42b7      	cmp	r7, r6
 8000fec:	d300      	bcc.n	8000ff0 <xvprintf+0x208>
 8000fee:	e70d      	b.n	8000e0c <xvprintf+0x24>
 8000ff0:	3601      	adds	r6, #1
 8000ff2:	2020      	movs	r0, #32
 8000ff4:	f7ff fed0 	bl	8000d98 <xputc>
 8000ff8:	3401      	adds	r4, #1
 8000ffa:	42b4      	cmp	r4, r6
 8000ffc:	d1f9      	bne.n	8000ff2 <xvprintf+0x20a>
 8000ffe:	e705      	b.n	8000e0c <xvprintf+0x24>
 8001000:	002f      	movs	r7, r5
 8001002:	e7ea      	b.n	8000fda <xvprintf+0x1f2>
 8001004:	2204      	movs	r2, #4
 8001006:	4650      	mov	r0, sl
 8001008:	4202      	tst	r2, r0
 800100a:	d1a0      	bne.n	8000f4e <xvprintf+0x166>
 800100c:	320c      	adds	r2, #12
 800100e:	9200      	str	r2, [sp, #0]
 8001010:	9a01      	ldr	r2, [sp, #4]
 8001012:	6817      	ldr	r7, [r2, #0]
 8001014:	3204      	adds	r2, #4
 8001016:	9201      	str	r2, [sp, #4]
 8001018:	0039      	movs	r1, r7
 800101a:	2207      	movs	r2, #7
 800101c:	2b78      	cmp	r3, #120	; 0x78
 800101e:	d0a2      	beq.n	8000f66 <xvprintf+0x17e>
 8001020:	b2d3      	uxtb	r3, r2
 8001022:	2700      	movs	r7, #0
 8001024:	000d      	movs	r5, r1
 8001026:	46b1      	mov	r9, r6
 8001028:	001e      	movs	r6, r3
 800102a:	e7a7      	b.n	8000f7c <xvprintf+0x194>
 800102c:	9a01      	ldr	r2, [sp, #4]
 800102e:	6817      	ldr	r7, [r2, #0]
 8001030:	3204      	adds	r2, #4
 8001032:	9201      	str	r2, [sp, #4]
 8001034:	2202      	movs	r2, #2
 8001036:	9200      	str	r2, [sp, #0]
 8001038:	e7ee      	b.n	8001018 <xvprintf+0x230>
 800103a:	2204      	movs	r2, #4
 800103c:	4650      	mov	r0, sl
 800103e:	4202      	tst	r2, r0
 8001040:	d1f4      	bne.n	800102c <xvprintf+0x244>
 8001042:	3a02      	subs	r2, #2
 8001044:	9200      	str	r2, [sp, #0]
 8001046:	e787      	b.n	8000f58 <xvprintf+0x170>
 8001048:	9a01      	ldr	r2, [sp, #4]
 800104a:	6817      	ldr	r7, [r2, #0]
 800104c:	3204      	adds	r2, #4
 800104e:	9201      	str	r2, [sp, #4]
 8001050:	2208      	movs	r2, #8
 8001052:	9200      	str	r2, [sp, #0]
 8001054:	e7e0      	b.n	8001018 <xvprintf+0x230>
 8001056:	2204      	movs	r2, #4
 8001058:	4651      	mov	r1, sl
 800105a:	420a      	tst	r2, r1
 800105c:	d1f4      	bne.n	8001048 <xvprintf+0x260>
 800105e:	3204      	adds	r2, #4
 8001060:	9200      	str	r2, [sp, #0]
 8001062:	e7d5      	b.n	8001010 <xvprintf+0x228>
 8001064:	b009      	add	sp, #36	; 0x24
 8001066:	bc3c      	pop	{r2, r3, r4, r5}
 8001068:	4690      	mov	r8, r2
 800106a:	4699      	mov	r9, r3
 800106c:	46a2      	mov	sl, r4
 800106e:	46ab      	mov	fp, r5
 8001070:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001072:	46c0      	nop			; (mov r8, r8)
 8001074:	0800123c 	.word	0x0800123c

08001078 <xprintf>:
 8001078:	b40f      	push	{r0, r1, r2, r3}
 800107a:	b500      	push	{lr}
 800107c:	b083      	sub	sp, #12
 800107e:	a904      	add	r1, sp, #16
 8001080:	c901      	ldmia	r1!, {r0}
 8001082:	9101      	str	r1, [sp, #4]
 8001084:	f7ff feb0 	bl	8000de8 <xvprintf>
 8001088:	b003      	add	sp, #12
 800108a:	bc08      	pop	{r3}
 800108c:	b004      	add	sp, #16
 800108e:	4718      	bx	r3

08001090 <NMI_Handler>:
 8001090:	4770      	bx	lr

08001092 <HardFault_Handler>:
 8001092:	e7fe      	b.n	8001092 <HardFault_Handler>

08001094 <SVC_Handler>:
 8001094:	4770      	bx	lr

08001096 <PendSV_Handler>:
 8001096:	4770      	bx	lr

08001098 <__libc_init_array>:
 8001098:	b570      	push	{r4, r5, r6, lr}
 800109a:	4d0c      	ldr	r5, [pc, #48]	; (80010cc <__libc_init_array+0x34>)
 800109c:	4e0c      	ldr	r6, [pc, #48]	; (80010d0 <__libc_init_array+0x38>)
 800109e:	1b76      	subs	r6, r6, r5
 80010a0:	10b6      	asrs	r6, r6, #2
 80010a2:	d005      	beq.n	80010b0 <__libc_init_array+0x18>
 80010a4:	2400      	movs	r4, #0
 80010a6:	cd08      	ldmia	r5!, {r3}
 80010a8:	3401      	adds	r4, #1
 80010aa:	4798      	blx	r3
 80010ac:	42a6      	cmp	r6, r4
 80010ae:	d1fa      	bne.n	80010a6 <__libc_init_array+0xe>
 80010b0:	f000 f896 	bl	80011e0 <_init>
 80010b4:	4d07      	ldr	r5, [pc, #28]	; (80010d4 <__libc_init_array+0x3c>)
 80010b6:	4e08      	ldr	r6, [pc, #32]	; (80010d8 <__libc_init_array+0x40>)
 80010b8:	1b76      	subs	r6, r6, r5
 80010ba:	10b6      	asrs	r6, r6, #2
 80010bc:	d005      	beq.n	80010ca <__libc_init_array+0x32>
 80010be:	2400      	movs	r4, #0
 80010c0:	cd08      	ldmia	r5!, {r3}
 80010c2:	3401      	adds	r4, #1
 80010c4:	4798      	blx	r3
 80010c6:	42a6      	cmp	r6, r4
 80010c8:	d1fa      	bne.n	80010c0 <__libc_init_array+0x28>
 80010ca:	bd70      	pop	{r4, r5, r6, pc}
 80010cc:	0800129c 	.word	0x0800129c
 80010d0:	0800129c 	.word	0x0800129c
 80010d4:	0800129c 	.word	0x0800129c
 80010d8:	080012a4 	.word	0x080012a4

080010dc <register_fini>:
 80010dc:	4b03      	ldr	r3, [pc, #12]	; (80010ec <register_fini+0x10>)
 80010de:	b510      	push	{r4, lr}
 80010e0:	2b00      	cmp	r3, #0
 80010e2:	d002      	beq.n	80010ea <register_fini+0xe>
 80010e4:	4802      	ldr	r0, [pc, #8]	; (80010f0 <register_fini+0x14>)
 80010e6:	f000 f805 	bl	80010f4 <atexit>
 80010ea:	bd10      	pop	{r4, pc}
 80010ec:	00000000 	.word	0x00000000
 80010f0:	08001105 	.word	0x08001105

080010f4 <atexit>:
 80010f4:	b510      	push	{r4, lr}
 80010f6:	0001      	movs	r1, r0
 80010f8:	2300      	movs	r3, #0
 80010fa:	2200      	movs	r2, #0
 80010fc:	2000      	movs	r0, #0
 80010fe:	f000 f819 	bl	8001134 <__register_exitproc>
 8001102:	bd10      	pop	{r4, pc}

08001104 <__libc_fini_array>:
 8001104:	b570      	push	{r4, r5, r6, lr}
 8001106:	4d07      	ldr	r5, [pc, #28]	; (8001124 <__libc_fini_array+0x20>)
 8001108:	4c07      	ldr	r4, [pc, #28]	; (8001128 <__libc_fini_array+0x24>)
 800110a:	1b64      	subs	r4, r4, r5
 800110c:	10a4      	asrs	r4, r4, #2
 800110e:	d005      	beq.n	800111c <__libc_fini_array+0x18>
 8001110:	3c01      	subs	r4, #1
 8001112:	00a3      	lsls	r3, r4, #2
 8001114:	58eb      	ldr	r3, [r5, r3]
 8001116:	4798      	blx	r3
 8001118:	2c00      	cmp	r4, #0
 800111a:	d1f9      	bne.n	8001110 <__libc_fini_array+0xc>
 800111c:	f000 f866 	bl	80011ec <_fini>
 8001120:	bd70      	pop	{r4, r5, r6, pc}
 8001122:	46c0      	nop			; (mov r8, r8)
 8001124:	080012a4 	.word	0x080012a4
 8001128:	080012a8 	.word	0x080012a8

0800112c <__retarget_lock_acquire_recursive>:
 800112c:	4770      	bx	lr
 800112e:	46c0      	nop			; (mov r8, r8)

08001130 <__retarget_lock_release_recursive>:
 8001130:	4770      	bx	lr
 8001132:	46c0      	nop			; (mov r8, r8)

08001134 <__register_exitproc>:
 8001134:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001136:	46d6      	mov	lr, sl
 8001138:	464f      	mov	r7, r9
 800113a:	4646      	mov	r6, r8
 800113c:	b5c0      	push	{r6, r7, lr}
 800113e:	4f26      	ldr	r7, [pc, #152]	; (80011d8 <__register_exitproc+0xa4>)
 8001140:	b082      	sub	sp, #8
 8001142:	0006      	movs	r6, r0
 8001144:	6838      	ldr	r0, [r7, #0]
 8001146:	4692      	mov	sl, r2
 8001148:	4698      	mov	r8, r3
 800114a:	4689      	mov	r9, r1
 800114c:	f7ff ffee 	bl	800112c <__retarget_lock_acquire_recursive>
 8001150:	4b22      	ldr	r3, [pc, #136]	; (80011dc <__register_exitproc+0xa8>)
 8001152:	681b      	ldr	r3, [r3, #0]
 8001154:	9301      	str	r3, [sp, #4]
 8001156:	23a4      	movs	r3, #164	; 0xa4
 8001158:	9a01      	ldr	r2, [sp, #4]
 800115a:	005b      	lsls	r3, r3, #1
 800115c:	58d5      	ldr	r5, [r2, r3]
 800115e:	2d00      	cmp	r5, #0
 8001160:	d02e      	beq.n	80011c0 <__register_exitproc+0x8c>
 8001162:	686c      	ldr	r4, [r5, #4]
 8001164:	2c1f      	cmp	r4, #31
 8001166:	dc30      	bgt.n	80011ca <__register_exitproc+0x96>
 8001168:	2e00      	cmp	r6, #0
 800116a:	d10f      	bne.n	800118c <__register_exitproc+0x58>
 800116c:	1c63      	adds	r3, r4, #1
 800116e:	606b      	str	r3, [r5, #4]
 8001170:	464b      	mov	r3, r9
 8001172:	3402      	adds	r4, #2
 8001174:	00a4      	lsls	r4, r4, #2
 8001176:	6838      	ldr	r0, [r7, #0]
 8001178:	5163      	str	r3, [r4, r5]
 800117a:	f7ff ffd9 	bl	8001130 <__retarget_lock_release_recursive>
 800117e:	2000      	movs	r0, #0
 8001180:	b002      	add	sp, #8
 8001182:	bce0      	pop	{r5, r6, r7}
 8001184:	46ba      	mov	sl, r7
 8001186:	46b1      	mov	r9, r6
 8001188:	46a8      	mov	r8, r5
 800118a:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800118c:	2288      	movs	r2, #136	; 0x88
 800118e:	4651      	mov	r1, sl
 8001190:	0028      	movs	r0, r5
 8001192:	00a3      	lsls	r3, r4, #2
 8001194:	18eb      	adds	r3, r5, r3
 8001196:	5099      	str	r1, [r3, r2]
 8001198:	3a87      	subs	r2, #135	; 0x87
 800119a:	40a2      	lsls	r2, r4
 800119c:	3089      	adds	r0, #137	; 0x89
 800119e:	30ff      	adds	r0, #255	; 0xff
 80011a0:	6801      	ldr	r1, [r0, #0]
 80011a2:	4311      	orrs	r1, r2
 80011a4:	6001      	str	r1, [r0, #0]
 80011a6:	2184      	movs	r1, #132	; 0x84
 80011a8:	4640      	mov	r0, r8
 80011aa:	0049      	lsls	r1, r1, #1
 80011ac:	5058      	str	r0, [r3, r1]
 80011ae:	2e02      	cmp	r6, #2
 80011b0:	d1dc      	bne.n	800116c <__register_exitproc+0x38>
 80011b2:	002b      	movs	r3, r5
 80011b4:	338d      	adds	r3, #141	; 0x8d
 80011b6:	33ff      	adds	r3, #255	; 0xff
 80011b8:	6819      	ldr	r1, [r3, #0]
 80011ba:	430a      	orrs	r2, r1
 80011bc:	601a      	str	r2, [r3, #0]
 80011be:	e7d5      	b.n	800116c <__register_exitproc+0x38>
 80011c0:	0015      	movs	r5, r2
 80011c2:	354d      	adds	r5, #77	; 0x4d
 80011c4:	35ff      	adds	r5, #255	; 0xff
 80011c6:	50d5      	str	r5, [r2, r3]
 80011c8:	e7cb      	b.n	8001162 <__register_exitproc+0x2e>
 80011ca:	6838      	ldr	r0, [r7, #0]
 80011cc:	f7ff ffb0 	bl	8001130 <__retarget_lock_release_recursive>
 80011d0:	2001      	movs	r0, #1
 80011d2:	4240      	negs	r0, r0
 80011d4:	e7d4      	b.n	8001180 <__register_exitproc+0x4c>
 80011d6:	46c0      	nop			; (mov r8, r8)
 80011d8:	20000430 	.word	0x20000430
 80011dc:	08001298 	.word	0x08001298

080011e0 <_init>:
 80011e0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80011e2:	46c0      	nop			; (mov r8, r8)
 80011e4:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80011e6:	bc08      	pop	{r3}
 80011e8:	469e      	mov	lr, r3
 80011ea:	4770      	bx	lr

080011ec <_fini>:
 80011ec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80011ee:	46c0      	nop			; (mov r8, r8)
 80011f0:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80011f2:	bc08      	pop	{r3}
 80011f4:	469e      	mov	lr, r3
 80011f6:	4770      	bx	lr
