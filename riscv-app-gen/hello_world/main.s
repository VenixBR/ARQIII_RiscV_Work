
main.elf:     formato de ficheiro elf32-littleriscv


Desmontagem da secção .text:

80000000 <_printf_r>:
80000000:	fc010113          	addi	sp,sp,-64
80000004:	02c12423          	sw	a2,40(sp)
80000008:	02d12623          	sw	a3,44(sp)
8000000c:	02e12823          	sw	a4,48(sp)
80000010:	02f12a23          	sw	a5,52(sp)
80000014:	03012c23          	sw	a6,56(sp)
80000018:	03112e23          	sw	a7,60(sp)
8000001c:	00058613          	mv	a2,a1
80000020:	00852583          	lw	a1,8(a0)
80000024:	02810693          	addi	a3,sp,40
80000028:	00112e23          	sw	ra,28(sp)
8000002c:	00d12623          	sw	a3,12(sp)
80000030:	060000ef          	jal	ra,80000090 <_vfprintf_r>
80000034:	01c12083          	lw	ra,28(sp)
80000038:	04010113          	addi	sp,sp,64
8000003c:	00008067          	ret

80000040 <printf>:
80000040:	80016337          	lui	t1,0x80016
80000044:	99c32303          	lw	t1,-1636(t1) # 8001599c <heap_end.1814+0xffffffb8>
80000048:	fc010113          	addi	sp,sp,-64
8000004c:	02c12423          	sw	a2,40(sp)
80000050:	02d12623          	sw	a3,44(sp)
80000054:	02b12223          	sw	a1,36(sp)
80000058:	02e12823          	sw	a4,48(sp)
8000005c:	02f12a23          	sw	a5,52(sp)
80000060:	03012c23          	sw	a6,56(sp)
80000064:	03112e23          	sw	a7,60(sp)
80000068:	00832583          	lw	a1,8(t1)
8000006c:	02410693          	addi	a3,sp,36
80000070:	00050613          	mv	a2,a0
80000074:	00030513          	mv	a0,t1
80000078:	00112e23          	sw	ra,28(sp)
8000007c:	00d12623          	sw	a3,12(sp)
80000080:	010000ef          	jal	ra,80000090 <_vfprintf_r>
80000084:	01c12083          	lw	ra,28(sp)
80000088:	04010113          	addi	sp,sp,64
8000008c:	00008067          	ret

80000090 <_vfprintf_r>:
80000090:	e1010113          	addi	sp,sp,-496
80000094:	1e112623          	sw	ra,492(sp)
80000098:	1f212023          	sw	s2,480(sp)
8000009c:	1d812423          	sw	s8,456(sp)
800000a0:	1da12023          	sw	s10,448(sp)
800000a4:	00058c13          	mv	s8,a1
800000a8:	00060913          	mv	s2,a2
800000ac:	00d12a23          	sw	a3,20(sp)
800000b0:	1e812423          	sw	s0,488(sp)
800000b4:	1e912223          	sw	s1,484(sp)
800000b8:	1d312e23          	sw	s3,476(sp)
800000bc:	1d412c23          	sw	s4,472(sp)
800000c0:	1d512a23          	sw	s5,468(sp)
800000c4:	1d612823          	sw	s6,464(sp)
800000c8:	1d712623          	sw	s7,460(sp)
800000cc:	1d912223          	sw	s9,452(sp)
800000d0:	1bb12e23          	sw	s11,444(sp)
800000d4:	00050d13          	mv	s10,a0
800000d8:	3fc060ef          	jal	ra,800064d4 <_localeconv_r>
800000dc:	00052783          	lw	a5,0(a0)
800000e0:	00078513          	mv	a0,a5
800000e4:	02f12823          	sw	a5,48(sp)
800000e8:	748080ef          	jal	ra,80008830 <strlen>
800000ec:	02a12623          	sw	a0,44(sp)
800000f0:	0e012823          	sw	zero,240(sp)
800000f4:	0e012a23          	sw	zero,244(sp)
800000f8:	0e012c23          	sw	zero,248(sp)
800000fc:	0e012e23          	sw	zero,252(sp)
80000100:	000d0663          	beqz	s10,8000010c <_vfprintf_r+0x7c>
80000104:	038d2703          	lw	a4,56(s10)
80000108:	0a0708e3          	beqz	a4,800009b8 <_vfprintf_r+0x928>
8000010c:	00cc1683          	lh	a3,12(s8)
80000110:	01069713          	slli	a4,a3,0x10
80000114:	01269793          	slli	a5,a3,0x12
80000118:	01075713          	srli	a4,a4,0x10
8000011c:	0207ca63          	bltz	a5,80000150 <_vfprintf_r+0xc0>
80000120:	00002737          	lui	a4,0x2
80000124:	064c2603          	lw	a2,100(s8)
80000128:	00e6e733          	or	a4,a3,a4
8000012c:	01071713          	slli	a4,a4,0x10
80000130:	ffffe6b7          	lui	a3,0xffffe
80000134:	41075713          	srai	a4,a4,0x10
80000138:	fff68693          	addi	a3,a3,-1 # ffffdfff <heap_end.1814+0x7ffe861b>
8000013c:	00d676b3          	and	a3,a2,a3
80000140:	00ec1623          	sh	a4,12(s8)
80000144:	01071713          	slli	a4,a4,0x10
80000148:	06dc2223          	sw	a3,100(s8)
8000014c:	01075713          	srli	a4,a4,0x10
80000150:	00877693          	andi	a3,a4,8
80000154:	2e068863          	beqz	a3,80000444 <_vfprintf_r+0x3b4>
80000158:	010c2683          	lw	a3,16(s8)
8000015c:	2e068463          	beqz	a3,80000444 <_vfprintf_r+0x3b4>
80000160:	01a77713          	andi	a4,a4,26
80000164:	00a00693          	li	a3,10
80000168:	30d70063          	beq	a4,a3,80000468 <_vfprintf_r+0x3d8>
8000016c:	10c10793          	addi	a5,sp,268
80000170:	80014737          	lui	a4,0x80014
80000174:	0ef12223          	sw	a5,228(sp)
80000178:	00078893          	mv	a7,a5
8000017c:	f4870793          	addi	a5,a4,-184 # 80013f48 <heap_end.1814+0xffffe564>
80000180:	80014737          	lui	a4,0x80014
80000184:	00f12c23          	sw	a5,24(sp)
80000188:	00090b13          	mv	s6,s2
8000018c:	0c470793          	addi	a5,a4,196 # 800140c4 <heap_end.1814+0xffffe6e0>
80000190:	00f12423          	sw	a5,8(sp)
80000194:	000b4783          	lbu	a5,0(s6)
80000198:	0e012623          	sw	zero,236(sp)
8000019c:	0e012423          	sw	zero,232(sp)
800001a0:	02012023          	sw	zero,32(sp)
800001a4:	02012a23          	sw	zero,52(sp)
800001a8:	02012c23          	sw	zero,56(sp)
800001ac:	02012e23          	sw	zero,60(sp)
800001b0:	04012423          	sw	zero,72(sp)
800001b4:	04012623          	sw	zero,76(sp)
800001b8:	00012623          	sw	zero,12(sp)
800001bc:	22078663          	beqz	a5,800003e8 <_vfprintf_r+0x358>
800001c0:	000b0413          	mv	s0,s6
800001c4:	02500693          	li	a3,37
800001c8:	30d78a63          	beq	a5,a3,800004dc <_vfprintf_r+0x44c>
800001cc:	00144783          	lbu	a5,1(s0)
800001d0:	00140413          	addi	s0,s0,1
800001d4:	fe079ae3          	bnez	a5,800001c8 <_vfprintf_r+0x138>
800001d8:	416404b3          	sub	s1,s0,s6
800001dc:	21640663          	beq	s0,s6,800003e8 <_vfprintf_r+0x358>
800001e0:	0ec12683          	lw	a3,236(sp)
800001e4:	0e812783          	lw	a5,232(sp)
800001e8:	0168a023          	sw	s6,0(a7)
800001ec:	009686b3          	add	a3,a3,s1
800001f0:	00178793          	addi	a5,a5,1
800001f4:	0098a223          	sw	s1,4(a7)
800001f8:	0ed12623          	sw	a3,236(sp)
800001fc:	0ef12423          	sw	a5,232(sp)
80000200:	00700693          	li	a3,7
80000204:	00888893          	addi	a7,a7,8
80000208:	2ef6c263          	blt	a3,a5,800004ec <_vfprintf_r+0x45c>
8000020c:	00c12703          	lw	a4,12(sp)
80000210:	00044783          	lbu	a5,0(s0)
80000214:	00970733          	add	a4,a4,s1
80000218:	00e12623          	sw	a4,12(sp)
8000021c:	1c078663          	beqz	a5,800003e8 <_vfprintf_r+0x358>
80000220:	00144483          	lbu	s1,1(s0)
80000224:	0c0103a3          	sb	zero,199(sp)
80000228:	00140413          	addi	s0,s0,1
8000022c:	fff00d93          	li	s11,-1
80000230:	00000993          	li	s3,0
80000234:	00000a13          	li	s4,0
80000238:	05a00913          	li	s2,90
8000023c:	00900a93          	li	s5,9
80000240:	02a00b93          	li	s7,42
80000244:	00088c93          	mv	s9,a7
80000248:	00140413          	addi	s0,s0,1
8000024c:	fe048793          	addi	a5,s1,-32
80000250:	04f96463          	bltu	s2,a5,80000298 <_vfprintf_r+0x208>
80000254:	01812703          	lw	a4,24(sp)
80000258:	00279793          	slli	a5,a5,0x2
8000025c:	00e787b3          	add	a5,a5,a4
80000260:	0007a783          	lw	a5,0(a5)
80000264:	00078067          	jr	a5
80000268:	00000993          	li	s3,0
8000026c:	fd048693          	addi	a3,s1,-48
80000270:	00044483          	lbu	s1,0(s0)
80000274:	00299793          	slli	a5,s3,0x2
80000278:	013787b3          	add	a5,a5,s3
8000027c:	00179793          	slli	a5,a5,0x1
80000280:	00f689b3          	add	s3,a3,a5
80000284:	fd048693          	addi	a3,s1,-48
80000288:	00140413          	addi	s0,s0,1
8000028c:	fedaf2e3          	bgeu	s5,a3,80000270 <_vfprintf_r+0x1e0>
80000290:	fe048793          	addi	a5,s1,-32
80000294:	fcf970e3          	bgeu	s2,a5,80000254 <_vfprintf_r+0x1c4>
80000298:	000c8893          	mv	a7,s9
8000029c:	14048663          	beqz	s1,800003e8 <_vfprintf_r+0x358>
800002a0:	14910623          	sb	s1,332(sp)
800002a4:	0c0103a3          	sb	zero,199(sp)
800002a8:	00100a93          	li	s5,1
800002ac:	00100c93          	li	s9,1
800002b0:	14c10b13          	addi	s6,sp,332
800002b4:	00012823          	sw	zero,16(sp)
800002b8:	00000d93          	li	s11,0
800002bc:	02012423          	sw	zero,40(sp)
800002c0:	02012223          	sw	zero,36(sp)
800002c4:	00012e23          	sw	zero,28(sp)
800002c8:	002a7b93          	andi	s7,s4,2
800002cc:	000b8463          	beqz	s7,800002d4 <_vfprintf_r+0x244>
800002d0:	002a8a93          	addi	s5,s5,2
800002d4:	084a7913          	andi	s2,s4,132
800002d8:	0ec12783          	lw	a5,236(sp)
800002dc:	00091663          	bnez	s2,800002e8 <_vfprintf_r+0x258>
800002e0:	41598833          	sub	a6,s3,s5
800002e4:	710046e3          	bgtz	a6,800011f0 <_vfprintf_r+0x1160>
800002e8:	0c714683          	lbu	a3,199(sp)
800002ec:	02068a63          	beqz	a3,80000320 <_vfprintf_r+0x290>
800002f0:	0e812683          	lw	a3,232(sp)
800002f4:	0c710613          	addi	a2,sp,199
800002f8:	00c8a023          	sw	a2,0(a7)
800002fc:	00178793          	addi	a5,a5,1
80000300:	00100613          	li	a2,1
80000304:	00168693          	addi	a3,a3,1
80000308:	00c8a223          	sw	a2,4(a7)
8000030c:	0ef12623          	sw	a5,236(sp)
80000310:	0ed12423          	sw	a3,232(sp)
80000314:	00700613          	li	a2,7
80000318:	00888893          	addi	a7,a7,8
8000031c:	52d64263          	blt	a2,a3,80000840 <_vfprintf_r+0x7b0>
80000320:	020b8c63          	beqz	s7,80000358 <_vfprintf_r+0x2c8>
80000324:	0e812683          	lw	a3,232(sp)
80000328:	0c810613          	addi	a2,sp,200
8000032c:	00c8a023          	sw	a2,0(a7)
80000330:	00278793          	addi	a5,a5,2
80000334:	00200613          	li	a2,2
80000338:	00168693          	addi	a3,a3,1
8000033c:	00c8a223          	sw	a2,4(a7)
80000340:	0ef12623          	sw	a5,236(sp)
80000344:	0ed12423          	sw	a3,232(sp)
80000348:	00700613          	li	a2,7
8000034c:	00888893          	addi	a7,a7,8
80000350:	00d65463          	bge	a2,a3,80000358 <_vfprintf_r+0x2c8>
80000354:	78d0006f          	j	800012e0 <_vfprintf_r+0x1250>
80000358:	08000693          	li	a3,128
8000035c:	3cd90ee3          	beq	s2,a3,80000f38 <_vfprintf_r+0xea8>
80000360:	419d8db3          	sub	s11,s11,s9
80000364:	49b04ae3          	bgtz	s11,80000ff8 <_vfprintf_r+0xf68>
80000368:	100a7693          	andi	a3,s4,256
8000036c:	280698e3          	bnez	a3,80000dfc <_vfprintf_r+0xd6c>
80000370:	0e812703          	lw	a4,232(sp)
80000374:	019787b3          	add	a5,a5,s9
80000378:	0168a023          	sw	s6,0(a7)
8000037c:	00170713          	addi	a4,a4,1
80000380:	0198a223          	sw	s9,4(a7)
80000384:	0ef12623          	sw	a5,236(sp)
80000388:	0ee12423          	sw	a4,232(sp)
8000038c:	00700693          	li	a3,7
80000390:	54e6c863          	blt	a3,a4,800008e0 <_vfprintf_r+0x850>
80000394:	00888893          	addi	a7,a7,8
80000398:	004a7a13          	andi	s4,s4,4
8000039c:	000a0663          	beqz	s4,800003a8 <_vfprintf_r+0x318>
800003a0:	415984b3          	sub	s1,s3,s5
800003a4:	54904e63          	bgtz	s1,80000900 <_vfprintf_r+0x870>
800003a8:	0159d463          	bge	s3,s5,800003b0 <_vfprintf_r+0x320>
800003ac:	000a8993          	mv	s3,s5
800003b0:	00c12703          	lw	a4,12(sp)
800003b4:	01370733          	add	a4,a4,s3
800003b8:	00e12623          	sw	a4,12(sp)
800003bc:	4e0798e3          	bnez	a5,800010ac <_vfprintf_r+0x101c>
800003c0:	01012783          	lw	a5,16(sp)
800003c4:	0e012423          	sw	zero,232(sp)
800003c8:	00078863          	beqz	a5,800003d8 <_vfprintf_r+0x348>
800003cc:	01012583          	lw	a1,16(sp)
800003d0:	000d0513          	mv	a0,s10
800003d4:	118030ef          	jal	ra,800034ec <_free_r>
800003d8:	10c10893          	addi	a7,sp,268
800003dc:	00040b13          	mv	s6,s0
800003e0:	000b4783          	lbu	a5,0(s6)
800003e4:	dc079ee3          	bnez	a5,800001c0 <_vfprintf_r+0x130>
800003e8:	0ec12783          	lw	a5,236(sp)
800003ec:	00078463          	beqz	a5,800003f4 <_vfprintf_r+0x364>
800003f0:	3250106f          	j	80001f14 <_vfprintf_r+0x1e84>
800003f4:	00cc5783          	lhu	a5,12(s8)
800003f8:	0407f793          	andi	a5,a5,64
800003fc:	00078463          	beqz	a5,80000404 <_vfprintf_r+0x374>
80000400:	2300206f          	j	80002630 <_vfprintf_r+0x25a0>
80000404:	1ec12083          	lw	ra,492(sp)
80000408:	1e812403          	lw	s0,488(sp)
8000040c:	00c12503          	lw	a0,12(sp)
80000410:	1e412483          	lw	s1,484(sp)
80000414:	1e012903          	lw	s2,480(sp)
80000418:	1dc12983          	lw	s3,476(sp)
8000041c:	1d812a03          	lw	s4,472(sp)
80000420:	1d412a83          	lw	s5,468(sp)
80000424:	1d012b03          	lw	s6,464(sp)
80000428:	1cc12b83          	lw	s7,460(sp)
8000042c:	1c812c03          	lw	s8,456(sp)
80000430:	1c412c83          	lw	s9,452(sp)
80000434:	1c012d03          	lw	s10,448(sp)
80000438:	1bc12d83          	lw	s11,444(sp)
8000043c:	1f010113          	addi	sp,sp,496
80000440:	00008067          	ret
80000444:	000c0593          	mv	a1,s8
80000448:	000d0513          	mv	a0,s10
8000044c:	7b0020ef          	jal	ra,80002bfc <__swsetup_r>
80000450:	00050463          	beqz	a0,80000458 <_vfprintf_r+0x3c8>
80000454:	1dc0206f          	j	80002630 <_vfprintf_r+0x25a0>
80000458:	00cc5703          	lhu	a4,12(s8)
8000045c:	00a00693          	li	a3,10
80000460:	01a77713          	andi	a4,a4,26
80000464:	d0d714e3          	bne	a4,a3,8000016c <_vfprintf_r+0xdc>
80000468:	00ec1703          	lh	a4,14(s8)
8000046c:	d00740e3          	bltz	a4,8000016c <_vfprintf_r+0xdc>
80000470:	01412683          	lw	a3,20(sp)
80000474:	00090613          	mv	a2,s2
80000478:	000c0593          	mv	a1,s8
8000047c:	000d0513          	mv	a0,s10
80000480:	6bc020ef          	jal	ra,80002b3c <__sbprintf>
80000484:	00a12623          	sw	a0,12(sp)
80000488:	f7dff06f          	j	80000404 <_vfprintf_r+0x374>
8000048c:	000d0513          	mv	a0,s10
80000490:	044060ef          	jal	ra,800064d4 <_localeconv_r>
80000494:	00452783          	lw	a5,4(a0)
80000498:	00078513          	mv	a0,a5
8000049c:	04f12623          	sw	a5,76(sp)
800004a0:	390080ef          	jal	ra,80008830 <strlen>
800004a4:	00050793          	mv	a5,a0
800004a8:	000d0513          	mv	a0,s10
800004ac:	00078493          	mv	s1,a5
800004b0:	04f12423          	sw	a5,72(sp)
800004b4:	020060ef          	jal	ra,800064d4 <_localeconv_r>
800004b8:	00852783          	lw	a5,8(a0)
800004bc:	02f12e23          	sw	a5,60(sp)
800004c0:	00048463          	beqz	s1,800004c8 <_vfprintf_r+0x438>
800004c4:	12c0106f          	j	800015f0 <_vfprintf_r+0x1560>
800004c8:	00044483          	lbu	s1,0(s0)
800004cc:	d7dff06f          	j	80000248 <_vfprintf_r+0x1b8>
800004d0:	00044483          	lbu	s1,0(s0)
800004d4:	020a6a13          	ori	s4,s4,32
800004d8:	d71ff06f          	j	80000248 <_vfprintf_r+0x1b8>
800004dc:	416404b3          	sub	s1,s0,s6
800004e0:	d16410e3          	bne	s0,s6,800001e0 <_vfprintf_r+0x150>
800004e4:	00044783          	lbu	a5,0(s0)
800004e8:	d35ff06f          	j	8000021c <_vfprintf_r+0x18c>
800004ec:	0e410613          	addi	a2,sp,228
800004f0:	000c0593          	mv	a1,s8
800004f4:	000d0513          	mv	a0,s10
800004f8:	7710a0ef          	jal	ra,8000b468 <__sprint_r>
800004fc:	ee051ce3          	bnez	a0,800003f4 <_vfprintf_r+0x364>
80000500:	10c10893          	addi	a7,sp,268
80000504:	d09ff06f          	j	8000020c <_vfprintf_r+0x17c>
80000508:	008a7793          	andi	a5,s4,8
8000050c:	000c8893          	mv	a7,s9
80000510:	00078463          	beqz	a5,80000518 <_vfprintf_r+0x488>
80000514:	12c0106f          	j	80001640 <_vfprintf_r+0x15b0>
80000518:	01412783          	lw	a5,20(sp)
8000051c:	0b010513          	addi	a0,sp,176
80000520:	01912823          	sw	s9,16(sp)
80000524:	00778793          	addi	a5,a5,7
80000528:	ff87f793          	andi	a5,a5,-8
8000052c:	0007a583          	lw	a1,0(a5)
80000530:	0047a603          	lw	a2,4(a5)
80000534:	00878793          	addi	a5,a5,8
80000538:	00f12a23          	sw	a5,20(sp)
8000053c:	340130ef          	jal	ra,8001387c <__extenddftf2>
80000540:	0b012783          	lw	a5,176(sp)
80000544:	01012883          	lw	a7,16(sp)
80000548:	0ef12823          	sw	a5,240(sp)
8000054c:	0b412783          	lw	a5,180(sp)
80000550:	0ef12a23          	sw	a5,244(sp)
80000554:	0b812783          	lw	a5,184(sp)
80000558:	0ef12c23          	sw	a5,248(sp)
8000055c:	0bc12783          	lw	a5,188(sp)
80000560:	0ef12e23          	sw	a5,252(sp)
80000564:	0f010513          	addi	a0,sp,240
80000568:	01112823          	sw	a7,16(sp)
8000056c:	6fd050ef          	jal	ra,80006468 <_ldcheck>
80000570:	0ca12623          	sw	a0,204(sp)
80000574:	00200793          	li	a5,2
80000578:	01012883          	lw	a7,16(sp)
8000057c:	00f51463          	bne	a0,a5,80000584 <_vfprintf_r+0x4f4>
80000580:	4fc0106f          	j	80001a7c <_vfprintf_r+0x19ec>
80000584:	00100793          	li	a5,1
80000588:	00f51463          	bne	a0,a5,80000590 <_vfprintf_r+0x500>
8000058c:	6440106f          	j	80001bd0 <_vfprintf_r+0x1b40>
80000590:	06100793          	li	a5,97
80000594:	00f49463          	bne	s1,a5,8000059c <_vfprintf_r+0x50c>
80000598:	1c40206f          	j	8000275c <_vfprintf_r+0x26cc>
8000059c:	04100793          	li	a5,65
800005a0:	00f49463          	bne	s1,a5,800005a8 <_vfprintf_r+0x518>
800005a4:	1910106f          	j	80001f34 <_vfprintf_r+0x1ea4>
800005a8:	fdf4fb93          	andi	s7,s1,-33
800005ac:	fff00793          	li	a5,-1
800005b0:	05712223          	sw	s7,68(sp)
800005b4:	00fd9463          	bne	s11,a5,800005bc <_vfprintf_r+0x52c>
800005b8:	2800206f          	j	80002838 <_vfprintf_r+0x27a8>
800005bc:	04700793          	li	a5,71
800005c0:	00fb9463          	bne	s7,a5,800005c8 <_vfprintf_r+0x538>
800005c4:	1e00206f          	j	800027a4 <_vfprintf_r+0x2714>
800005c8:	0fc12303          	lw	t1,252(sp)
800005cc:	03412423          	sw	s4,40(sp)
800005d0:	0f012e03          	lw	t3,240(sp)
800005d4:	0f412e83          	lw	t4,244(sp)
800005d8:	0f812f03          	lw	t5,248(sp)
800005dc:	100a6793          	ori	a5,s4,256
800005e0:	00035463          	bgez	t1,800005e8 <_vfprintf_r+0x558>
800005e4:	3e00206f          	j	800029c4 <_vfprintf_r+0x2934>
800005e8:	04012c23          	sw	zero,88(sp)
800005ec:	00078a13          	mv	s4,a5
800005f0:	00012823          	sw	zero,16(sp)
800005f4:	04600793          	li	a5,70
800005f8:	00fb9463          	bne	s7,a5,80000600 <_vfprintf_r+0x570>
800005fc:	6990106f          	j	80002494 <_vfprintf_r+0x2404>
80000600:	04500793          	li	a5,69
80000604:	05112823          	sw	a7,80(sp)
80000608:	00fb8463          	beq	s7,a5,80000610 <_vfprintf_r+0x580>
8000060c:	6090106f          	j	80002414 <_vfprintf_r+0x2384>
80000610:	001d8913          	addi	s2,s11,1
80000614:	0b010a93          	addi	s5,sp,176
80000618:	00090693          	mv	a3,s2
8000061c:	0dc10813          	addi	a6,sp,220
80000620:	0d010793          	addi	a5,sp,208
80000624:	0cc10713          	addi	a4,sp,204
80000628:	00200613          	li	a2,2
8000062c:	000a8593          	mv	a1,s5
80000630:	000d0513          	mv	a0,s10
80000634:	0bc12823          	sw	t3,176(sp)
80000638:	05c12023          	sw	t3,64(sp)
8000063c:	0bd12a23          	sw	t4,180(sp)
80000640:	03d12223          	sw	t4,36(sp)
80000644:	0be12c23          	sw	t5,184(sp)
80000648:	03e12023          	sw	t5,32(sp)
8000064c:	0a612e23          	sw	t1,188(sp)
80000650:	00612e23          	sw	t1,28(sp)
80000654:	37d040ef          	jal	ra,800051d0 <_ldtoa_r>
80000658:	01c12303          	lw	t1,28(sp)
8000065c:	02012f03          	lw	t5,32(sp)
80000660:	02412e83          	lw	t4,36(sp)
80000664:	04012e03          	lw	t3,64(sp)
80000668:	05012883          	lw	a7,80(sp)
8000066c:	00050b13          	mv	s6,a0
80000670:	01250933          	add	s2,a0,s2
80000674:	0a010c93          	addi	s9,sp,160
80000678:	000c8593          	mv	a1,s9
8000067c:	000a8513          	mv	a0,s5
80000680:	01112e23          	sw	a7,28(sp)
80000684:	0bc12823          	sw	t3,176(sp)
80000688:	0bd12a23          	sw	t4,180(sp)
8000068c:	0be12c23          	sw	t5,184(sp)
80000690:	0a612e23          	sw	t1,188(sp)
80000694:	0a012023          	sw	zero,160(sp)
80000698:	0a012223          	sw	zero,164(sp)
8000069c:	0a012423          	sw	zero,168(sp)
800006a0:	0a012623          	sw	zero,172(sp)
800006a4:	700100ef          	jal	ra,80010da4 <__eqtf2>
800006a8:	01c12883          	lw	a7,28(sp)
800006ac:	00090713          	mv	a4,s2
800006b0:	02050263          	beqz	a0,800006d4 <_vfprintf_r+0x644>
800006b4:	0dc12703          	lw	a4,220(sp)
800006b8:	01277e63          	bgeu	a4,s2,800006d4 <_vfprintf_r+0x644>
800006bc:	03000693          	li	a3,48
800006c0:	00170793          	addi	a5,a4,1
800006c4:	0cf12e23          	sw	a5,220(sp)
800006c8:	00d70023          	sb	a3,0(a4)
800006cc:	0dc12703          	lw	a4,220(sp)
800006d0:	ff2768e3          	bltu	a4,s2,800006c0 <_vfprintf_r+0x630>
800006d4:	416707b3          	sub	a5,a4,s6
800006d8:	02f12023          	sw	a5,32(sp)
800006dc:	0cc12703          	lw	a4,204(sp)
800006e0:	04700793          	li	a5,71
800006e4:	00e12e23          	sw	a4,28(sp)
800006e8:	04412703          	lw	a4,68(sp)
800006ec:	00f71463          	bne	a4,a5,800006f4 <_vfprintf_r+0x664>
800006f0:	43d0106f          	j	8000232c <_vfprintf_r+0x229c>
800006f4:	04412703          	lw	a4,68(sp)
800006f8:	04600793          	li	a5,70
800006fc:	00f71463          	bne	a4,a5,80000704 <_vfprintf_r+0x674>
80000700:	67d0106f          	j	8000257c <_vfprintf_r+0x24ec>
80000704:	01c12783          	lw	a5,28(sp)
80000708:	04412703          	lw	a4,68(sp)
8000070c:	04100593          	li	a1,65
80000710:	fff78793          	addi	a5,a5,-1
80000714:	0cf12623          	sw	a5,204(sp)
80000718:	0ff4f693          	andi	a3,s1,255
8000071c:	00000613          	li	a2,0
80000720:	00b71863          	bne	a4,a1,80000730 <_vfprintf_r+0x6a0>
80000724:	00f68693          	addi	a3,a3,15
80000728:	0ff6f693          	andi	a3,a3,255
8000072c:	00100613          	li	a2,1
80000730:	0cd10a23          	sb	a3,212(sp)
80000734:	02b00693          	li	a3,43
80000738:	0007da63          	bgez	a5,8000074c <_vfprintf_r+0x6bc>
8000073c:	01c12703          	lw	a4,28(sp)
80000740:	00100793          	li	a5,1
80000744:	02d00693          	li	a3,45
80000748:	40e787b3          	sub	a5,a5,a4
8000074c:	0cd10aa3          	sb	a3,213(sp)
80000750:	00900693          	li	a3,9
80000754:	00f6c463          	blt	a3,a5,8000075c <_vfprintf_r+0x6cc>
80000758:	28c0206f          	j	800029e4 <_vfprintf_r+0x2954>
8000075c:	0e310813          	addi	a6,sp,227
80000760:	00080513          	mv	a0,a6
80000764:	00a00613          	li	a2,10
80000768:	06300e13          	li	t3,99
8000076c:	02c7e733          	rem	a4,a5,a2
80000770:	00050593          	mv	a1,a0
80000774:	00078693          	mv	a3,a5
80000778:	fff50513          	addi	a0,a0,-1
8000077c:	03070713          	addi	a4,a4,48
80000780:	fee58fa3          	sb	a4,-1(a1)
80000784:	02c7c7b3          	div	a5,a5,a2
80000788:	fede42e3          	blt	t3,a3,8000076c <_vfprintf_r+0x6dc>
8000078c:	03078793          	addi	a5,a5,48
80000790:	0ff7f613          	andi	a2,a5,255
80000794:	fec50fa3          	sb	a2,-1(a0)
80000798:	ffe58793          	addi	a5,a1,-2
8000079c:	0107e463          	bltu	a5,a6,800007a4 <_vfprintf_r+0x714>
800007a0:	3740206f          	j	80002b14 <_vfprintf_r+0x2a84>
800007a4:	0d610693          	addi	a3,sp,214
800007a8:	0080006f          	j	800007b0 <_vfprintf_r+0x720>
800007ac:	0007c603          	lbu	a2,0(a5)
800007b0:	00c68023          	sb	a2,0(a3)
800007b4:	00178793          	addi	a5,a5,1
800007b8:	00168693          	addi	a3,a3,1
800007bc:	ff0798e3          	bne	a5,a6,800007ac <_vfprintf_r+0x71c>
800007c0:	0e510793          	addi	a5,sp,229
800007c4:	40b787b3          	sub	a5,a5,a1
800007c8:	0d610713          	addi	a4,sp,214
800007cc:	00f707b3          	add	a5,a4,a5
800007d0:	0d410693          	addi	a3,sp,212
800007d4:	40d787b3          	sub	a5,a5,a3
800007d8:	02f12c23          	sw	a5,56(sp)
800007dc:	02012703          	lw	a4,32(sp)
800007e0:	03812683          	lw	a3,56(sp)
800007e4:	00100793          	li	a5,1
800007e8:	00d70cb3          	add	s9,a4,a3
800007ec:	00e7c463          	blt	a5,a4,800007f4 <_vfprintf_r+0x764>
800007f0:	2940206f          	j	80002a84 <_vfprintf_r+0x29f4>
800007f4:	02c12783          	lw	a5,44(sp)
800007f8:	00fc8cb3          	add	s9,s9,a5
800007fc:	02812783          	lw	a5,40(sp)
80000800:	fffcca93          	not	s5,s9
80000804:	41fada93          	srai	s5,s5,0x1f
80000808:	bff7fa13          	andi	s4,a5,-1025
8000080c:	100a6a13          	ori	s4,s4,256
80000810:	015cfab3          	and	s5,s9,s5
80000814:	02012423          	sw	zero,40(sp)
80000818:	02012223          	sw	zero,36(sp)
8000081c:	00012e23          	sw	zero,28(sp)
80000820:	05812783          	lw	a5,88(sp)
80000824:	00079463          	bnez	a5,8000082c <_vfprintf_r+0x79c>
80000828:	3790106f          	j	800023a0 <_vfprintf_r+0x2310>
8000082c:	02d00793          	li	a5,45
80000830:	0cf103a3          	sb	a5,199(sp)
80000834:	00000d93          	li	s11,0
80000838:	001a8a93          	addi	s5,s5,1
8000083c:	a8dff06f          	j	800002c8 <_vfprintf_r+0x238>
80000840:	0e410613          	addi	a2,sp,228
80000844:	000c0593          	mv	a1,s8
80000848:	000d0513          	mv	a0,s10
8000084c:	41d0a0ef          	jal	ra,8000b468 <__sprint_r>
80000850:	060518e3          	bnez	a0,800010c0 <_vfprintf_r+0x1030>
80000854:	0ec12783          	lw	a5,236(sp)
80000858:	10c10893          	addi	a7,sp,268
8000085c:	ac5ff06f          	j	80000320 <_vfprintf_r+0x290>
80000860:	03012683          	lw	a3,48(sp)
80000864:	02c12703          	lw	a4,44(sp)
80000868:	00700613          	li	a2,7
8000086c:	00d8a023          	sw	a3,0(a7)
80000870:	0e812683          	lw	a3,232(sp)
80000874:	00f707b3          	add	a5,a4,a5
80000878:	00e8a223          	sw	a4,4(a7)
8000087c:	00168693          	addi	a3,a3,1
80000880:	0ef12623          	sw	a5,236(sp)
80000884:	0ed12423          	sw	a3,232(sp)
80000888:	00888893          	addi	a7,a7,8
8000088c:	02d65463          	bge	a2,a3,800008b4 <_vfprintf_r+0x824>
80000890:	0e410613          	addi	a2,sp,228
80000894:	000c0593          	mv	a1,s8
80000898:	000d0513          	mv	a0,s10
8000089c:	3cd0a0ef          	jal	ra,8000b468 <__sprint_r>
800008a0:	020510e3          	bnez	a0,800010c0 <_vfprintf_r+0x1030>
800008a4:	0cc12583          	lw	a1,204(sp)
800008a8:	0ec12783          	lw	a5,236(sp)
800008ac:	0e812683          	lw	a3,232(sp)
800008b0:	10c10893          	addi	a7,sp,268
800008b4:	0005d463          	bgez	a1,800008bc <_vfprintf_r+0x82c>
800008b8:	5850106f          	j	8000263c <_vfprintf_r+0x25ac>
800008bc:	02012703          	lw	a4,32(sp)
800008c0:	00168693          	addi	a3,a3,1
800008c4:	0168a023          	sw	s6,0(a7)
800008c8:	00f707b3          	add	a5,a4,a5
800008cc:	00e8a223          	sw	a4,4(a7)
800008d0:	0ef12623          	sw	a5,236(sp)
800008d4:	0ed12423          	sw	a3,232(sp)
800008d8:	00700713          	li	a4,7
800008dc:	aad75ce3          	bge	a4,a3,80000394 <_vfprintf_r+0x304>
800008e0:	0e410613          	addi	a2,sp,228
800008e4:	000c0593          	mv	a1,s8
800008e8:	000d0513          	mv	a0,s10
800008ec:	37d0a0ef          	jal	ra,8000b468 <__sprint_r>
800008f0:	7c051863          	bnez	a0,800010c0 <_vfprintf_r+0x1030>
800008f4:	0ec12783          	lw	a5,236(sp)
800008f8:	10c10893          	addi	a7,sp,268
800008fc:	a9dff06f          	j	80000398 <_vfprintf_r+0x308>
80000900:	01000693          	li	a3,16
80000904:	0e812703          	lw	a4,232(sp)
80000908:	0096c463          	blt	a3,s1,80000910 <_vfprintf_r+0x880>
8000090c:	5190106f          	j	80002624 <_vfprintf_r+0x2594>
80000910:	800146b7          	lui	a3,0x80014
80000914:	0b468e93          	addi	t4,a3,180 # 800140b4 <heap_end.1814+0xffffe6d0>
80000918:	01000913          	li	s2,16
8000091c:	00700a13          	li	s4,7
80000920:	000e8b13          	mv	s6,t4
80000924:	00c0006f          	j	80000930 <_vfprintf_r+0x8a0>
80000928:	ff048493          	addi	s1,s1,-16
8000092c:	04995663          	bge	s2,s1,80000978 <_vfprintf_r+0x8e8>
80000930:	01078793          	addi	a5,a5,16
80000934:	00170713          	addi	a4,a4,1
80000938:	0168a023          	sw	s6,0(a7)
8000093c:	0128a223          	sw	s2,4(a7)
80000940:	0ef12623          	sw	a5,236(sp)
80000944:	0ee12423          	sw	a4,232(sp)
80000948:	00888893          	addi	a7,a7,8
8000094c:	fcea5ee3          	bge	s4,a4,80000928 <_vfprintf_r+0x898>
80000950:	0e410613          	addi	a2,sp,228
80000954:	000c0593          	mv	a1,s8
80000958:	000d0513          	mv	a0,s10
8000095c:	30d0a0ef          	jal	ra,8000b468 <__sprint_r>
80000960:	76051063          	bnez	a0,800010c0 <_vfprintf_r+0x1030>
80000964:	ff048493          	addi	s1,s1,-16
80000968:	0ec12783          	lw	a5,236(sp)
8000096c:	0e812703          	lw	a4,232(sp)
80000970:	10c10893          	addi	a7,sp,268
80000974:	fa994ee3          	blt	s2,s1,80000930 <_vfprintf_r+0x8a0>
80000978:	000b0e93          	mv	t4,s6
8000097c:	009787b3          	add	a5,a5,s1
80000980:	00170713          	addi	a4,a4,1
80000984:	01d8a023          	sw	t4,0(a7)
80000988:	0098a223          	sw	s1,4(a7)
8000098c:	0ef12623          	sw	a5,236(sp)
80000990:	0ee12423          	sw	a4,232(sp)
80000994:	00700693          	li	a3,7
80000998:	a0e6d8e3          	bge	a3,a4,800003a8 <_vfprintf_r+0x318>
8000099c:	0e410613          	addi	a2,sp,228
800009a0:	000c0593          	mv	a1,s8
800009a4:	000d0513          	mv	a0,s10
800009a8:	2c10a0ef          	jal	ra,8000b468 <__sprint_r>
800009ac:	70051a63          	bnez	a0,800010c0 <_vfprintf_r+0x1030>
800009b0:	0ec12783          	lw	a5,236(sp)
800009b4:	9f5ff06f          	j	800003a8 <_vfprintf_r+0x318>
800009b8:	000d0513          	mv	a0,s10
800009bc:	1a9020ef          	jal	ra,80003364 <__sinit>
800009c0:	f4cff06f          	j	8000010c <_vfprintf_r+0x7c>
800009c4:	01412703          	lw	a4,20(sp)
800009c8:	000c8893          	mv	a7,s9
800009cc:	0c0103a3          	sb	zero,199(sp)
800009d0:	00072783          	lw	a5,0(a4)
800009d4:	00470713          	addi	a4,a4,4
800009d8:	00e12a23          	sw	a4,20(sp)
800009dc:	14f10623          	sb	a5,332(sp)
800009e0:	00100a93          	li	s5,1
800009e4:	00100c93          	li	s9,1
800009e8:	14c10b13          	addi	s6,sp,332
800009ec:	8c9ff06f          	j	800002b4 <_vfprintf_r+0x224>
800009f0:	01412783          	lw	a5,20(sp)
800009f4:	0c0103a3          	sb	zero,199(sp)
800009f8:	000c8893          	mv	a7,s9
800009fc:	0007ab03          	lw	s6,0(a5)
80000a00:	00478913          	addi	s2,a5,4
80000a04:	5a0b0ee3          	beqz	s6,800017c0 <_vfprintf_r+0x1730>
80000a08:	fff00793          	li	a5,-1
80000a0c:	00fd9463          	bne	s11,a5,80000a14 <_vfprintf_r+0x984>
80000a10:	1000106f          	j	80001b10 <_vfprintf_r+0x1a80>
80000a14:	000d8613          	mv	a2,s11
80000a18:	00000593          	li	a1,0
80000a1c:	000b0513          	mv	a0,s6
80000a20:	01912a23          	sw	s9,20(sp)
80000a24:	584060ef          	jal	ra,80006fa8 <memchr>
80000a28:	00a12823          	sw	a0,16(sp)
80000a2c:	01412883          	lw	a7,20(sp)
80000a30:	00051463          	bnez	a0,80000a38 <_vfprintf_r+0x9a8>
80000a34:	31d0106f          	j	80002550 <_vfprintf_r+0x24c0>
80000a38:	01012783          	lw	a5,16(sp)
80000a3c:	01212a23          	sw	s2,20(sp)
80000a40:	00012823          	sw	zero,16(sp)
80000a44:	41678cb3          	sub	s9,a5,s6
80000a48:	0c714783          	lbu	a5,199(sp)
80000a4c:	fffcca93          	not	s5,s9
80000a50:	41fada93          	srai	s5,s5,0x1f
80000a54:	02012423          	sw	zero,40(sp)
80000a58:	02012223          	sw	zero,36(sp)
80000a5c:	00012e23          	sw	zero,28(sp)
80000a60:	015cfab3          	and	s5,s9,s5
80000a64:	00000d93          	li	s11,0
80000a68:	860780e3          	beqz	a5,800002c8 <_vfprintf_r+0x238>
80000a6c:	001a8a93          	addi	s5,s5,1
80000a70:	859ff06f          	j	800002c8 <_vfprintf_r+0x238>
80000a74:	00044483          	lbu	s1,0(s0)
80000a78:	004a6a13          	ori	s4,s4,4
80000a7c:	fccff06f          	j	80000248 <_vfprintf_r+0x1b8>
80000a80:	01412683          	lw	a3,20(sp)
80000a84:	020a7793          	andi	a5,s4,32
80000a88:	000c8893          	mv	a7,s9
80000a8c:	0006a703          	lw	a4,0(a3)
80000a90:	00468693          	addi	a3,a3,4
80000a94:	00d12a23          	sw	a3,20(sp)
80000a98:	36079ee3          	bnez	a5,80001614 <_vfprintf_r+0x1584>
80000a9c:	010a7793          	andi	a5,s4,16
80000aa0:	00078463          	beqz	a5,80000aa8 <_vfprintf_r+0xa18>
80000aa4:	05c0106f          	j	80001b00 <_vfprintf_r+0x1a70>
80000aa8:	040a7793          	andi	a5,s4,64
80000aac:	00078463          	beqz	a5,80000ab4 <_vfprintf_r+0xa24>
80000ab0:	3fc0106f          	j	80001eac <_vfprintf_r+0x1e1c>
80000ab4:	200a7a13          	andi	s4,s4,512
80000ab8:	000a1463          	bnez	s4,80000ac0 <_vfprintf_r+0xa30>
80000abc:	0440106f          	j	80001b00 <_vfprintf_r+0x1a70>
80000ac0:	00c12783          	lw	a5,12(sp)
80000ac4:	00040b13          	mv	s6,s0
80000ac8:	00f70023          	sb	a5,0(a4)
80000acc:	915ff06f          	j	800003e0 <_vfprintf_r+0x350>
80000ad0:	00044483          	lbu	s1,0(s0)
80000ad4:	06c00793          	li	a5,108
80000ad8:	4cf484e3          	beq	s1,a5,800017a0 <_vfprintf_r+0x1710>
80000adc:	010a6a13          	ori	s4,s4,16
80000ae0:	f68ff06f          	j	80000248 <_vfprintf_r+0x1b8>
80000ae4:	01412703          	lw	a4,20(sp)
80000ae8:	ffff87b7          	lui	a5,0xffff8
80000aec:	8307c793          	xori	a5,a5,-2000
80000af0:	0cf11423          	sh	a5,200(sp)
80000af4:	00470793          	addi	a5,a4,4
80000af8:	00f12a23          	sw	a5,20(sp)
80000afc:	00072903          	lw	s2,0(a4)
80000b00:	800147b7          	lui	a5,0x80014
80000b04:	e3478793          	addi	a5,a5,-460 # 80013e34 <heap_end.1814+0xffffe450>
80000b08:	000c8893          	mv	a7,s9
80000b0c:	02f12a23          	sw	a5,52(sp)
80000b10:	00000c93          	li	s9,0
80000b14:	002a6b93          	ori	s7,s4,2
80000b18:	00200793          	li	a5,2
80000b1c:	07800493          	li	s1,120
80000b20:	0c0103a3          	sb	zero,199(sp)
80000b24:	fff00713          	li	a4,-1
80000b28:	20ed8663          	beq	s11,a4,80000d34 <_vfprintf_r+0xca4>
80000b2c:	01996733          	or	a4,s2,s9
80000b30:	f7fbfa13          	andi	s4,s7,-129
80000b34:	1e071e63          	bnez	a4,80000d30 <_vfprintf_r+0xca0>
80000b38:	260d9463          	bnez	s11,80000da0 <_vfprintf_r+0xd10>
80000b3c:	1c079063          	bnez	a5,80000cfc <_vfprintf_r+0xc6c>
80000b40:	001bfc93          	andi	s9,s7,1
80000b44:	1b010b13          	addi	s6,sp,432
80000b48:	280c9ce3          	bnez	s9,800015e0 <_vfprintf_r+0x1550>
80000b4c:	000c8a93          	mv	s5,s9
80000b50:	01bcd463          	bge	s9,s11,80000b58 <_vfprintf_r+0xac8>
80000b54:	000d8a93          	mv	s5,s11
80000b58:	0c714783          	lbu	a5,199(sp)
80000b5c:	00012823          	sw	zero,16(sp)
80000b60:	02012423          	sw	zero,40(sp)
80000b64:	02012223          	sw	zero,36(sp)
80000b68:	00012e23          	sw	zero,28(sp)
80000b6c:	f00790e3          	bnez	a5,80000a6c <_vfprintf_r+0x9dc>
80000b70:	f58ff06f          	j	800002c8 <_vfprintf_r+0x238>
80000b74:	00044483          	lbu	s1,0(s0)
80000b78:	06800793          	li	a5,104
80000b7c:	42f48ae3          	beq	s1,a5,800017b0 <_vfprintf_r+0x1720>
80000b80:	040a6a13          	ori	s4,s4,64
80000b84:	ec4ff06f          	j	80000248 <_vfprintf_r+0x1b8>
80000b88:	02b00793          	li	a5,43
80000b8c:	00044483          	lbu	s1,0(s0)
80000b90:	0cf103a3          	sb	a5,199(sp)
80000b94:	eb4ff06f          	j	80000248 <_vfprintf_r+0x1b8>
80000b98:	00044483          	lbu	s1,0(s0)
80000b9c:	080a6a13          	ori	s4,s4,128
80000ba0:	ea8ff06f          	j	80000248 <_vfprintf_r+0x1b8>
80000ba4:	00044483          	lbu	s1,0(s0)
80000ba8:	00140713          	addi	a4,s0,1
80000bac:	01749463          	bne	s1,s7,80000bb4 <_vfprintf_r+0xb24>
80000bb0:	7250106f          	j	80002ad4 <_vfprintf_r+0x2a44>
80000bb4:	fd048693          	addi	a3,s1,-48
80000bb8:	00070413          	mv	s0,a4
80000bbc:	00000d93          	li	s11,0
80000bc0:	e8dae663          	bltu	s5,a3,8000024c <_vfprintf_r+0x1bc>
80000bc4:	00044483          	lbu	s1,0(s0)
80000bc8:	002d9793          	slli	a5,s11,0x2
80000bcc:	01b787b3          	add	a5,a5,s11
80000bd0:	00179793          	slli	a5,a5,0x1
80000bd4:	00d78db3          	add	s11,a5,a3
80000bd8:	fd048693          	addi	a3,s1,-48
80000bdc:	00140413          	addi	s0,s0,1
80000be0:	fedaf2e3          	bgeu	s5,a3,80000bc4 <_vfprintf_r+0xb34>
80000be4:	e68ff06f          	j	8000024c <_vfprintf_r+0x1bc>
80000be8:	01412783          	lw	a5,20(sp)
80000bec:	00044483          	lbu	s1,0(s0)
80000bf0:	0007a983          	lw	s3,0(a5)
80000bf4:	00478793          	addi	a5,a5,4
80000bf8:	00f12a23          	sw	a5,20(sp)
80000bfc:	e409d663          	bgez	s3,80000248 <_vfprintf_r+0x1b8>
80000c00:	413009b3          	neg	s3,s3
80000c04:	004a6a13          	ori	s4,s4,4
80000c08:	e40ff06f          	j	80000248 <_vfprintf_r+0x1b8>
80000c0c:	00044483          	lbu	s1,0(s0)
80000c10:	001a6a13          	ori	s4,s4,1
80000c14:	e34ff06f          	j	80000248 <_vfprintf_r+0x1b8>
80000c18:	0c714783          	lbu	a5,199(sp)
80000c1c:	00044483          	lbu	s1,0(s0)
80000c20:	e2079463          	bnez	a5,80000248 <_vfprintf_r+0x1b8>
80000c24:	02000793          	li	a5,32
80000c28:	0cf103a3          	sb	a5,199(sp)
80000c2c:	e1cff06f          	j	80000248 <_vfprintf_r+0x1b8>
80000c30:	000c8893          	mv	a7,s9
80000c34:	010a6a13          	ori	s4,s4,16
80000c38:	020a7793          	andi	a5,s4,32
80000c3c:	0c078ee3          	beqz	a5,80001518 <_vfprintf_r+0x1488>
80000c40:	01412783          	lw	a5,20(sp)
80000c44:	00778b13          	addi	s6,a5,7
80000c48:	ff8b7b13          	andi	s6,s6,-8
80000c4c:	000b2903          	lw	s2,0(s6)
80000c50:	004b2c83          	lw	s9,4(s6)
80000c54:	008b0793          	addi	a5,s6,8
80000c58:	00f12a23          	sw	a5,20(sp)
80000c5c:	bffa7b93          	andi	s7,s4,-1025
80000c60:	00000793          	li	a5,0
80000c64:	ebdff06f          	j	80000b20 <_vfprintf_r+0xa90>
80000c68:	000c8893          	mv	a7,s9
80000c6c:	010a6b93          	ori	s7,s4,16
80000c70:	020bf793          	andi	a5,s7,32
80000c74:	0c0788e3          	beqz	a5,80001544 <_vfprintf_r+0x14b4>
80000c78:	01412783          	lw	a5,20(sp)
80000c7c:	00778b13          	addi	s6,a5,7
80000c80:	ff8b7b13          	andi	s6,s6,-8
80000c84:	008b0793          	addi	a5,s6,8
80000c88:	00f12a23          	sw	a5,20(sp)
80000c8c:	000b2903          	lw	s2,0(s6)
80000c90:	004b2c83          	lw	s9,4(s6)
80000c94:	00100793          	li	a5,1
80000c98:	e89ff06f          	j	80000b20 <_vfprintf_r+0xa90>
80000c9c:	00044483          	lbu	s1,0(s0)
80000ca0:	008a6a13          	ori	s4,s4,8
80000ca4:	da4ff06f          	j	80000248 <_vfprintf_r+0x1b8>
80000ca8:	000c8893          	mv	a7,s9
80000cac:	010a6a13          	ori	s4,s4,16
80000cb0:	020a7793          	andi	a5,s4,32
80000cb4:	0c0780e3          	beqz	a5,80001574 <_vfprintf_r+0x14e4>
80000cb8:	01412783          	lw	a5,20(sp)
80000cbc:	00778b13          	addi	s6,a5,7
80000cc0:	ff8b7b13          	andi	s6,s6,-8
80000cc4:	004b2783          	lw	a5,4(s6)
80000cc8:	000b2903          	lw	s2,0(s6)
80000ccc:	008b0713          	addi	a4,s6,8
80000cd0:	00e12a23          	sw	a4,20(sp)
80000cd4:	00078c93          	mv	s9,a5
80000cd8:	0c07c6e3          	bltz	a5,800015a4 <_vfprintf_r+0x1514>
80000cdc:	fff00793          	li	a5,-1
80000ce0:	000a0b93          	mv	s7,s4
80000ce4:	02fd8463          	beq	s11,a5,80000d0c <_vfprintf_r+0xc7c>
80000ce8:	019967b3          	or	a5,s2,s9
80000cec:	f7fa7b93          	andi	s7,s4,-129
80000cf0:	00079e63          	bnez	a5,80000d0c <_vfprintf_r+0xc7c>
80000cf4:	020d9263          	bnez	s11,80000d18 <_vfprintf_r+0xc88>
80000cf8:	000b8a13          	mv	s4,s7
80000cfc:	00000d93          	li	s11,0
80000d00:	00000c93          	li	s9,0
80000d04:	1b010b13          	addi	s6,sp,432
80000d08:	e45ff06f          	j	80000b4c <_vfprintf_r+0xabc>
80000d0c:	3a0c92e3          	bnez	s9,800018b0 <_vfprintf_r+0x1820>
80000d10:	00900793          	li	a5,9
80000d14:	3927eee3          	bltu	a5,s2,800018b0 <_vfprintf_r+0x1820>
80000d18:	03090913          	addi	s2,s2,48
80000d1c:	1b2107a3          	sb	s2,431(sp)
80000d20:	000b8a13          	mv	s4,s7
80000d24:	00100c93          	li	s9,1
80000d28:	1af10b13          	addi	s6,sp,431
80000d2c:	e21ff06f          	j	80000b4c <_vfprintf_r+0xabc>
80000d30:	000a0b93          	mv	s7,s4
80000d34:	00100713          	li	a4,1
80000d38:	fce78ae3          	beq	a5,a4,80000d0c <_vfprintf_r+0xc7c>
80000d3c:	00200713          	li	a4,2
80000d40:	06e78c63          	beq	a5,a4,80000db8 <_vfprintf_r+0xd28>
80000d44:	1b010b13          	addi	s6,sp,432
80000d48:	01dc9713          	slli	a4,s9,0x1d
80000d4c:	00797793          	andi	a5,s2,7
80000d50:	00395913          	srli	s2,s2,0x3
80000d54:	03078793          	addi	a5,a5,48
80000d58:	01276933          	or	s2,a4,s2
80000d5c:	003cdc93          	srli	s9,s9,0x3
80000d60:	fefb0fa3          	sb	a5,-1(s6)
80000d64:	01996733          	or	a4,s2,s9
80000d68:	000b0613          	mv	a2,s6
80000d6c:	fffb0b13          	addi	s6,s6,-1
80000d70:	fc071ce3          	bnez	a4,80000d48 <_vfprintf_r+0xcb8>
80000d74:	001bf693          	andi	a3,s7,1
80000d78:	06068a63          	beqz	a3,80000dec <_vfprintf_r+0xd5c>
80000d7c:	03000693          	li	a3,48
80000d80:	06d78663          	beq	a5,a3,80000dec <_vfprintf_r+0xd5c>
80000d84:	ffe60613          	addi	a2,a2,-2
80000d88:	1b010793          	addi	a5,sp,432
80000d8c:	fedb0fa3          	sb	a3,-1(s6)
80000d90:	40c78cb3          	sub	s9,a5,a2
80000d94:	000b8a13          	mv	s4,s7
80000d98:	00060b13          	mv	s6,a2
80000d9c:	db1ff06f          	j	80000b4c <_vfprintf_r+0xabc>
80000da0:	00100713          	li	a4,1
80000da4:	00e79463          	bne	a5,a4,80000dac <_vfprintf_r+0xd1c>
80000da8:	14d0106f          	j	800026f4 <_vfprintf_r+0x2664>
80000dac:	00200713          	li	a4,2
80000db0:	000a0b93          	mv	s7,s4
80000db4:	f8e798e3          	bne	a5,a4,80000d44 <_vfprintf_r+0xcb4>
80000db8:	03412683          	lw	a3,52(sp)
80000dbc:	1b010b13          	addi	s6,sp,432
80000dc0:	00f97793          	andi	a5,s2,15
80000dc4:	00f687b3          	add	a5,a3,a5
80000dc8:	0007c703          	lbu	a4,0(a5)
80000dcc:	00495913          	srli	s2,s2,0x4
80000dd0:	01cc9793          	slli	a5,s9,0x1c
80000dd4:	0127e933          	or	s2,a5,s2
80000dd8:	004cdc93          	srli	s9,s9,0x4
80000ddc:	feeb0fa3          	sb	a4,-1(s6)
80000de0:	019967b3          	or	a5,s2,s9
80000de4:	fffb0b13          	addi	s6,s6,-1
80000de8:	fc079ce3          	bnez	a5,80000dc0 <_vfprintf_r+0xd30>
80000dec:	1b010793          	addi	a5,sp,432
80000df0:	41678cb3          	sub	s9,a5,s6
80000df4:	000b8a13          	mv	s4,s7
80000df8:	d55ff06f          	j	80000b4c <_vfprintf_r+0xabc>
80000dfc:	06500693          	li	a3,101
80000e00:	2c96dc63          	bge	a3,s1,800010d8 <_vfprintf_r+0x1048>
80000e04:	0f012683          	lw	a3,240(sp)
80000e08:	0a010593          	addi	a1,sp,160
80000e0c:	0b010513          	addi	a0,sp,176
80000e10:	0ad12823          	sw	a3,176(sp)
80000e14:	0f412683          	lw	a3,244(sp)
80000e18:	05112223          	sw	a7,68(sp)
80000e1c:	04f12023          	sw	a5,64(sp)
80000e20:	0ad12a23          	sw	a3,180(sp)
80000e24:	0f812683          	lw	a3,248(sp)
80000e28:	0a012023          	sw	zero,160(sp)
80000e2c:	0a012223          	sw	zero,164(sp)
80000e30:	0ad12c23          	sw	a3,184(sp)
80000e34:	0fc12683          	lw	a3,252(sp)
80000e38:	0a012423          	sw	zero,168(sp)
80000e3c:	0a012623          	sw	zero,172(sp)
80000e40:	0ad12e23          	sw	a3,188(sp)
80000e44:	7610f0ef          	jal	ra,80010da4 <__eqtf2>
80000e48:	04012783          	lw	a5,64(sp)
80000e4c:	04412883          	lw	a7,68(sp)
80000e50:	4a051863          	bnez	a0,80001300 <_vfprintf_r+0x1270>
80000e54:	0e812703          	lw	a4,232(sp)
80000e58:	800146b7          	lui	a3,0x80014
80000e5c:	e6468693          	addi	a3,a3,-412 # 80013e64 <heap_end.1814+0xffffe480>
80000e60:	00d8a023          	sw	a3,0(a7)
80000e64:	00178793          	addi	a5,a5,1
80000e68:	00100693          	li	a3,1
80000e6c:	00170713          	addi	a4,a4,1
80000e70:	00d8a223          	sw	a3,4(a7)
80000e74:	0ef12623          	sw	a5,236(sp)
80000e78:	0ee12423          	sw	a4,232(sp)
80000e7c:	00700693          	li	a3,7
80000e80:	00888893          	addi	a7,a7,8
80000e84:	3ae6c6e3          	blt	a3,a4,80001a30 <_vfprintf_r+0x19a0>
80000e88:	0cc12703          	lw	a4,204(sp)
80000e8c:	02012683          	lw	a3,32(sp)
80000e90:	72d75c63          	bge	a4,a3,800015c8 <_vfprintf_r+0x1538>
80000e94:	03012703          	lw	a4,48(sp)
80000e98:	02c12683          	lw	a3,44(sp)
80000e9c:	00888893          	addi	a7,a7,8
80000ea0:	fee8ac23          	sw	a4,-8(a7)
80000ea4:	0e812703          	lw	a4,232(sp)
80000ea8:	00d787b3          	add	a5,a5,a3
80000eac:	fed8ae23          	sw	a3,-4(a7)
80000eb0:	00170713          	addi	a4,a4,1
80000eb4:	0ef12623          	sw	a5,236(sp)
80000eb8:	0ee12423          	sw	a4,232(sp)
80000ebc:	00700693          	li	a3,7
80000ec0:	0ce6c0e3          	blt	a3,a4,80001780 <_vfprintf_r+0x16f0>
80000ec4:	02012703          	lw	a4,32(sp)
80000ec8:	fff70493          	addi	s1,a4,-1
80000ecc:	cc905663          	blez	s1,80000398 <_vfprintf_r+0x308>
80000ed0:	01000693          	li	a3,16
80000ed4:	0e812703          	lw	a4,232(sp)
80000ed8:	3696dce3          	bge	a3,s1,80001a50 <_vfprintf_r+0x19c0>
80000edc:	01000913          	li	s2,16
80000ee0:	00700c93          	li	s9,7
80000ee4:	00c0006f          	j	80000ef0 <_vfprintf_r+0xe60>
80000ee8:	ff048493          	addi	s1,s1,-16
80000eec:	369952e3          	bge	s2,s1,80001a50 <_vfprintf_r+0x19c0>
80000ef0:	00812683          	lw	a3,8(sp)
80000ef4:	01078793          	addi	a5,a5,16
80000ef8:	00170713          	addi	a4,a4,1
80000efc:	00d8a023          	sw	a3,0(a7)
80000f00:	0128a223          	sw	s2,4(a7)
80000f04:	0ef12623          	sw	a5,236(sp)
80000f08:	0ee12423          	sw	a4,232(sp)
80000f0c:	00888893          	addi	a7,a7,8
80000f10:	fcecdce3          	bge	s9,a4,80000ee8 <_vfprintf_r+0xe58>
80000f14:	0e410613          	addi	a2,sp,228
80000f18:	000c0593          	mv	a1,s8
80000f1c:	000d0513          	mv	a0,s10
80000f20:	5480a0ef          	jal	ra,8000b468 <__sprint_r>
80000f24:	18051e63          	bnez	a0,800010c0 <_vfprintf_r+0x1030>
80000f28:	0ec12783          	lw	a5,236(sp)
80000f2c:	0e812703          	lw	a4,232(sp)
80000f30:	10c10893          	addi	a7,sp,268
80000f34:	fb5ff06f          	j	80000ee8 <_vfprintf_r+0xe58>
80000f38:	41598933          	sub	s2,s3,s5
80000f3c:	c3205263          	blez	s2,80000360 <_vfprintf_r+0x2d0>
80000f40:	01000613          	li	a2,16
80000f44:	0e812683          	lw	a3,232(sp)
80000f48:	07265463          	bge	a2,s2,80000fb0 <_vfprintf_r+0xf20>
80000f4c:	01000e13          	li	t3,16
80000f50:	00700b93          	li	s7,7
80000f54:	00c0006f          	j	80000f60 <_vfprintf_r+0xed0>
80000f58:	ff090913          	addi	s2,s2,-16
80000f5c:	052e5a63          	bge	t3,s2,80000fb0 <_vfprintf_r+0xf20>
80000f60:	00812703          	lw	a4,8(sp)
80000f64:	01078793          	addi	a5,a5,16
80000f68:	00168693          	addi	a3,a3,1
80000f6c:	00e8a023          	sw	a4,0(a7)
80000f70:	01c8a223          	sw	t3,4(a7)
80000f74:	0ef12623          	sw	a5,236(sp)
80000f78:	0ed12423          	sw	a3,232(sp)
80000f7c:	00888893          	addi	a7,a7,8
80000f80:	fcdbdce3          	bge	s7,a3,80000f58 <_vfprintf_r+0xec8>
80000f84:	0e410613          	addi	a2,sp,228
80000f88:	000c0593          	mv	a1,s8
80000f8c:	000d0513          	mv	a0,s10
80000f90:	4d80a0ef          	jal	ra,8000b468 <__sprint_r>
80000f94:	12051663          	bnez	a0,800010c0 <_vfprintf_r+0x1030>
80000f98:	01000e13          	li	t3,16
80000f9c:	ff090913          	addi	s2,s2,-16
80000fa0:	0ec12783          	lw	a5,236(sp)
80000fa4:	0e812683          	lw	a3,232(sp)
80000fa8:	10c10893          	addi	a7,sp,268
80000fac:	fb2e4ae3          	blt	t3,s2,80000f60 <_vfprintf_r+0xed0>
80000fb0:	00812703          	lw	a4,8(sp)
80000fb4:	012787b3          	add	a5,a5,s2
80000fb8:	00168693          	addi	a3,a3,1
80000fbc:	00e8a023          	sw	a4,0(a7)
80000fc0:	0128a223          	sw	s2,4(a7)
80000fc4:	0ef12623          	sw	a5,236(sp)
80000fc8:	0ed12423          	sw	a3,232(sp)
80000fcc:	00700613          	li	a2,7
80000fd0:	00888893          	addi	a7,a7,8
80000fd4:	b8d65663          	bge	a2,a3,80000360 <_vfprintf_r+0x2d0>
80000fd8:	0e410613          	addi	a2,sp,228
80000fdc:	000c0593          	mv	a1,s8
80000fe0:	000d0513          	mv	a0,s10
80000fe4:	4840a0ef          	jal	ra,8000b468 <__sprint_r>
80000fe8:	0c051c63          	bnez	a0,800010c0 <_vfprintf_r+0x1030>
80000fec:	0ec12783          	lw	a5,236(sp)
80000ff0:	10c10893          	addi	a7,sp,268
80000ff4:	b6cff06f          	j	80000360 <_vfprintf_r+0x2d0>
80000ff8:	01000613          	li	a2,16
80000ffc:	0e812683          	lw	a3,232(sp)
80001000:	07b65263          	bge	a2,s11,80001064 <_vfprintf_r+0xfd4>
80001004:	01000b93          	li	s7,16
80001008:	00700913          	li	s2,7
8000100c:	00c0006f          	j	80001018 <_vfprintf_r+0xf88>
80001010:	ff0d8d93          	addi	s11,s11,-16
80001014:	05bbd863          	bge	s7,s11,80001064 <_vfprintf_r+0xfd4>
80001018:	00812703          	lw	a4,8(sp)
8000101c:	01078793          	addi	a5,a5,16
80001020:	00168693          	addi	a3,a3,1
80001024:	00e8a023          	sw	a4,0(a7)
80001028:	0178a223          	sw	s7,4(a7)
8000102c:	0ef12623          	sw	a5,236(sp)
80001030:	0ed12423          	sw	a3,232(sp)
80001034:	00888893          	addi	a7,a7,8
80001038:	fcd95ce3          	bge	s2,a3,80001010 <_vfprintf_r+0xf80>
8000103c:	0e410613          	addi	a2,sp,228
80001040:	000c0593          	mv	a1,s8
80001044:	000d0513          	mv	a0,s10
80001048:	4200a0ef          	jal	ra,8000b468 <__sprint_r>
8000104c:	06051a63          	bnez	a0,800010c0 <_vfprintf_r+0x1030>
80001050:	ff0d8d93          	addi	s11,s11,-16
80001054:	0ec12783          	lw	a5,236(sp)
80001058:	0e812683          	lw	a3,232(sp)
8000105c:	10c10893          	addi	a7,sp,268
80001060:	fbbbcce3          	blt	s7,s11,80001018 <_vfprintf_r+0xf88>
80001064:	00812703          	lw	a4,8(sp)
80001068:	01b787b3          	add	a5,a5,s11
8000106c:	00168693          	addi	a3,a3,1
80001070:	00e8a023          	sw	a4,0(a7)
80001074:	01b8a223          	sw	s11,4(a7)
80001078:	0ef12623          	sw	a5,236(sp)
8000107c:	0ed12423          	sw	a3,232(sp)
80001080:	00700613          	li	a2,7
80001084:	00888893          	addi	a7,a7,8
80001088:	aed65063          	bge	a2,a3,80000368 <_vfprintf_r+0x2d8>
8000108c:	0e410613          	addi	a2,sp,228
80001090:	000c0593          	mv	a1,s8
80001094:	000d0513          	mv	a0,s10
80001098:	3d00a0ef          	jal	ra,8000b468 <__sprint_r>
8000109c:	02051263          	bnez	a0,800010c0 <_vfprintf_r+0x1030>
800010a0:	0ec12783          	lw	a5,236(sp)
800010a4:	10c10893          	addi	a7,sp,268
800010a8:	ac0ff06f          	j	80000368 <_vfprintf_r+0x2d8>
800010ac:	0e410613          	addi	a2,sp,228
800010b0:	000c0593          	mv	a1,s8
800010b4:	000d0513          	mv	a0,s10
800010b8:	3b00a0ef          	jal	ra,8000b468 <__sprint_r>
800010bc:	b0050263          	beqz	a0,800003c0 <_vfprintf_r+0x330>
800010c0:	01012b83          	lw	s7,16(sp)
800010c4:	b20b8863          	beqz	s7,800003f4 <_vfprintf_r+0x364>
800010c8:	000b8593          	mv	a1,s7
800010cc:	000d0513          	mv	a0,s10
800010d0:	41c020ef          	jal	ra,800034ec <_free_r>
800010d4:	b20ff06f          	j	800003f4 <_vfprintf_r+0x364>
800010d8:	0e812683          	lw	a3,232(sp)
800010dc:	00178c93          	addi	s9,a5,1
800010e0:	02012783          	lw	a5,32(sp)
800010e4:	00100613          	li	a2,1
800010e8:	0168a023          	sw	s6,0(a7)
800010ec:	00168493          	addi	s1,a3,1
800010f0:	00888913          	addi	s2,a7,8
800010f4:	38f65663          	bge	a2,a5,80001480 <_vfprintf_r+0x13f0>
800010f8:	00100793          	li	a5,1
800010fc:	00f8a223          	sw	a5,4(a7)
80001100:	0f912623          	sw	s9,236(sp)
80001104:	0e912423          	sw	s1,232(sp)
80001108:	00700793          	li	a5,7
8000110c:	7497ce63          	blt	a5,s1,80001868 <_vfprintf_r+0x17d8>
80001110:	02c12783          	lw	a5,44(sp)
80001114:	03012703          	lw	a4,48(sp)
80001118:	00148493          	addi	s1,s1,1
8000111c:	00fc8cb3          	add	s9,s9,a5
80001120:	00f92223          	sw	a5,4(s2)
80001124:	00e92023          	sw	a4,0(s2)
80001128:	0f912623          	sw	s9,236(sp)
8000112c:	0e912423          	sw	s1,232(sp)
80001130:	00700793          	li	a5,7
80001134:	00890913          	addi	s2,s2,8
80001138:	7497ca63          	blt	a5,s1,8000188c <_vfprintf_r+0x17fc>
8000113c:	0f012783          	lw	a5,240(sp)
80001140:	00148613          	addi	a2,s1,1
80001144:	0a010593          	addi	a1,sp,160
80001148:	0af12823          	sw	a5,176(sp)
8000114c:	0f412783          	lw	a5,244(sp)
80001150:	0b010513          	addi	a0,sp,176
80001154:	00c12e23          	sw	a2,28(sp)
80001158:	0af12a23          	sw	a5,180(sp)
8000115c:	0f812783          	lw	a5,248(sp)
80001160:	0a012023          	sw	zero,160(sp)
80001164:	0a012223          	sw	zero,164(sp)
80001168:	0af12c23          	sw	a5,184(sp)
8000116c:	0fc12783          	lw	a5,252(sp)
80001170:	0a012423          	sw	zero,168(sp)
80001174:	0a012623          	sw	zero,172(sp)
80001178:	0af12e23          	sw	a5,188(sp)
8000117c:	4290f0ef          	jal	ra,80010da4 <__eqtf2>
80001180:	01c12603          	lw	a2,28(sp)
80001184:	02012783          	lw	a5,32(sp)
80001188:	00890893          	addi	a7,s2,8
8000118c:	00060693          	mv	a3,a2
80001190:	fff78d93          	addi	s11,a5,-1
80001194:	30050a63          	beqz	a0,800014a8 <_vfprintf_r+0x1418>
80001198:	001b0713          	addi	a4,s6,1
8000119c:	01bc8cb3          	add	s9,s9,s11
800011a0:	00e92023          	sw	a4,0(s2)
800011a4:	01b92223          	sw	s11,4(s2)
800011a8:	0f912623          	sw	s9,236(sp)
800011ac:	0ec12423          	sw	a2,232(sp)
800011b0:	00700793          	li	a5,7
800011b4:	50c7cc63          	blt	a5,a2,800016cc <_vfprintf_r+0x163c>
800011b8:	01090793          	addi	a5,s2,16
800011bc:	00248693          	addi	a3,s1,2
800011c0:	00088913          	mv	s2,a7
800011c4:	00078893          	mv	a7,a5
800011c8:	03812603          	lw	a2,56(sp)
800011cc:	0d410713          	addi	a4,sp,212
800011d0:	00e92023          	sw	a4,0(s2)
800011d4:	019607b3          	add	a5,a2,s9
800011d8:	00c92223          	sw	a2,4(s2)
800011dc:	0ef12623          	sw	a5,236(sp)
800011e0:	0ed12423          	sw	a3,232(sp)
800011e4:	00700713          	li	a4,7
800011e8:	9ad75863          	bge	a4,a3,80000398 <_vfprintf_r+0x308>
800011ec:	ef4ff06f          	j	800008e0 <_vfprintf_r+0x850>
800011f0:	80014737          	lui	a4,0x80014
800011f4:	01000613          	li	a2,16
800011f8:	0e812683          	lw	a3,232(sp)
800011fc:	0b470e93          	addi	t4,a4,180 # 800140b4 <heap_end.1814+0xffffe6d0>
80001200:	09065c63          	bge	a2,a6,80001298 <_vfprintf_r+0x1208>
80001204:	04812023          	sw	s0,64(sp)
80001208:	04912223          	sw	s1,68(sp)
8000120c:	000d0413          	mv	s0,s10
80001210:	000c0493          	mv	s1,s8
80001214:	01000e13          	li	t3,16
80001218:	00700293          	li	t0,7
8000121c:	00080c13          	mv	s8,a6
80001220:	000e8d13          	mv	s10,t4
80001224:	00c0006f          	j	80001230 <_vfprintf_r+0x11a0>
80001228:	ff0c0c13          	addi	s8,s8,-16
8000122c:	058e5a63          	bge	t3,s8,80001280 <_vfprintf_r+0x11f0>
80001230:	01078793          	addi	a5,a5,16
80001234:	00168693          	addi	a3,a3,1
80001238:	01a8a023          	sw	s10,0(a7)
8000123c:	01c8a223          	sw	t3,4(a7)
80001240:	0ef12623          	sw	a5,236(sp)
80001244:	0ed12423          	sw	a3,232(sp)
80001248:	00888893          	addi	a7,a7,8
8000124c:	fcd2dee3          	bge	t0,a3,80001228 <_vfprintf_r+0x1198>
80001250:	0e410613          	addi	a2,sp,228
80001254:	00048593          	mv	a1,s1
80001258:	00040513          	mv	a0,s0
8000125c:	20c0a0ef          	jal	ra,8000b468 <__sprint_r>
80001260:	7a051263          	bnez	a0,80001a04 <_vfprintf_r+0x1974>
80001264:	01000e13          	li	t3,16
80001268:	ff0c0c13          	addi	s8,s8,-16
8000126c:	0ec12783          	lw	a5,236(sp)
80001270:	0e812683          	lw	a3,232(sp)
80001274:	10c10893          	addi	a7,sp,268
80001278:	00700293          	li	t0,7
8000127c:	fb8e4ae3          	blt	t3,s8,80001230 <_vfprintf_r+0x11a0>
80001280:	000c0813          	mv	a6,s8
80001284:	000d0e93          	mv	t4,s10
80001288:	00048c13          	mv	s8,s1
8000128c:	00040d13          	mv	s10,s0
80001290:	04412483          	lw	s1,68(sp)
80001294:	04012403          	lw	s0,64(sp)
80001298:	010787b3          	add	a5,a5,a6
8000129c:	00168693          	addi	a3,a3,1
800012a0:	01d8a023          	sw	t4,0(a7)
800012a4:	0108a223          	sw	a6,4(a7)
800012a8:	0ef12623          	sw	a5,236(sp)
800012ac:	0ed12423          	sw	a3,232(sp)
800012b0:	00700613          	li	a2,7
800012b4:	00888893          	addi	a7,a7,8
800012b8:	00d64463          	blt	a2,a3,800012c0 <_vfprintf_r+0x1230>
800012bc:	82cff06f          	j	800002e8 <_vfprintf_r+0x258>
800012c0:	0e410613          	addi	a2,sp,228
800012c4:	000c0593          	mv	a1,s8
800012c8:	000d0513          	mv	a0,s10
800012cc:	19c0a0ef          	jal	ra,8000b468 <__sprint_r>
800012d0:	de0518e3          	bnez	a0,800010c0 <_vfprintf_r+0x1030>
800012d4:	0ec12783          	lw	a5,236(sp)
800012d8:	10c10893          	addi	a7,sp,268
800012dc:	80cff06f          	j	800002e8 <_vfprintf_r+0x258>
800012e0:	0e410613          	addi	a2,sp,228
800012e4:	000c0593          	mv	a1,s8
800012e8:	000d0513          	mv	a0,s10
800012ec:	17c0a0ef          	jal	ra,8000b468 <__sprint_r>
800012f0:	dc0518e3          	bnez	a0,800010c0 <_vfprintf_r+0x1030>
800012f4:	0ec12783          	lw	a5,236(sp)
800012f8:	10c10893          	addi	a7,sp,268
800012fc:	85cff06f          	j	80000358 <_vfprintf_r+0x2c8>
80001300:	0cc12583          	lw	a1,204(sp)
80001304:	66b05c63          	blez	a1,8000197c <_vfprintf_r+0x18ec>
80001308:	01c12703          	lw	a4,28(sp)
8000130c:	02012683          	lw	a3,32(sp)
80001310:	00070493          	mv	s1,a4
80001314:	38e6c263          	blt	a3,a4,80001698 <_vfprintf_r+0x1608>
80001318:	02905663          	blez	s1,80001344 <_vfprintf_r+0x12b4>
8000131c:	0e812683          	lw	a3,232(sp)
80001320:	009787b3          	add	a5,a5,s1
80001324:	0168a023          	sw	s6,0(a7)
80001328:	00168693          	addi	a3,a3,1
8000132c:	0098a223          	sw	s1,4(a7)
80001330:	0ef12623          	sw	a5,236(sp)
80001334:	0ed12423          	sw	a3,232(sp)
80001338:	00700613          	li	a2,7
8000133c:	00888893          	addi	a7,a7,8
80001340:	32d642e3          	blt	a2,a3,80001e64 <_vfprintf_r+0x1dd4>
80001344:	fff4c693          	not	a3,s1
80001348:	01c12703          	lw	a4,28(sp)
8000134c:	41f6d693          	srai	a3,a3,0x1f
80001350:	00d4f4b3          	and	s1,s1,a3
80001354:	409704b3          	sub	s1,a4,s1
80001358:	48904463          	bgtz	s1,800017e0 <_vfprintf_r+0x1750>
8000135c:	01c12703          	lw	a4,28(sp)
80001360:	400a7693          	andi	a3,s4,1024
80001364:	00eb0db3          	add	s11,s6,a4
80001368:	0c0698e3          	bnez	a3,80001c38 <_vfprintf_r+0x1ba8>
8000136c:	0cc12483          	lw	s1,204(sp)
80001370:	02012703          	lw	a4,32(sp)
80001374:	00e4c663          	blt	s1,a4,80001380 <_vfprintf_r+0x12f0>
80001378:	001a7693          	andi	a3,s4,1
8000137c:	300688e3          	beqz	a3,80001e8c <_vfprintf_r+0x1dfc>
80001380:	03012683          	lw	a3,48(sp)
80001384:	02c12703          	lw	a4,44(sp)
80001388:	00700613          	li	a2,7
8000138c:	00d8a023          	sw	a3,0(a7)
80001390:	0e812683          	lw	a3,232(sp)
80001394:	00e787b3          	add	a5,a5,a4
80001398:	00e8a223          	sw	a4,4(a7)
8000139c:	00168693          	addi	a3,a3,1
800013a0:	0ef12623          	sw	a5,236(sp)
800013a4:	0ed12423          	sw	a3,232(sp)
800013a8:	00888893          	addi	a7,a7,8
800013ac:	00d65463          	bge	a2,a3,800013b4 <_vfprintf_r+0x1324>
800013b0:	1780106f          	j	80002528 <_vfprintf_r+0x2498>
800013b4:	02012683          	lw	a3,32(sp)
800013b8:	00db0733          	add	a4,s6,a3
800013bc:	409684b3          	sub	s1,a3,s1
800013c0:	41b70733          	sub	a4,a4,s11
800013c4:	00048913          	mv	s2,s1
800013c8:	00975463          	bge	a4,s1,800013d0 <_vfprintf_r+0x1340>
800013cc:	00070913          	mv	s2,a4
800013d0:	03205863          	blez	s2,80001400 <_vfprintf_r+0x1370>
800013d4:	0e812703          	lw	a4,232(sp)
800013d8:	012787b3          	add	a5,a5,s2
800013dc:	01b8a023          	sw	s11,0(a7)
800013e0:	00170713          	addi	a4,a4,1
800013e4:	0128a223          	sw	s2,4(a7)
800013e8:	0ef12623          	sw	a5,236(sp)
800013ec:	0ee12423          	sw	a4,232(sp)
800013f0:	00700693          	li	a3,7
800013f4:	00888893          	addi	a7,a7,8
800013f8:	00e6d463          	bge	a3,a4,80001400 <_vfprintf_r+0x1370>
800013fc:	1c80106f          	j	800025c4 <_vfprintf_r+0x2534>
80001400:	fff94713          	not	a4,s2
80001404:	41f75713          	srai	a4,a4,0x1f
80001408:	00e97733          	and	a4,s2,a4
8000140c:	40e484b3          	sub	s1,s1,a4
80001410:	00904463          	bgtz	s1,80001418 <_vfprintf_r+0x1388>
80001414:	f85fe06f          	j	80000398 <_vfprintf_r+0x308>
80001418:	01000693          	li	a3,16
8000141c:	0e812703          	lw	a4,232(sp)
80001420:	6296d863          	bge	a3,s1,80001a50 <_vfprintf_r+0x19c0>
80001424:	01000913          	li	s2,16
80001428:	00700c93          	li	s9,7
8000142c:	00c0006f          	j	80001438 <_vfprintf_r+0x13a8>
80001430:	ff048493          	addi	s1,s1,-16
80001434:	60995e63          	bge	s2,s1,80001a50 <_vfprintf_r+0x19c0>
80001438:	00812683          	lw	a3,8(sp)
8000143c:	01078793          	addi	a5,a5,16
80001440:	00170713          	addi	a4,a4,1
80001444:	00d8a023          	sw	a3,0(a7)
80001448:	0128a223          	sw	s2,4(a7)
8000144c:	0ef12623          	sw	a5,236(sp)
80001450:	0ee12423          	sw	a4,232(sp)
80001454:	00888893          	addi	a7,a7,8
80001458:	fcecdce3          	bge	s9,a4,80001430 <_vfprintf_r+0x13a0>
8000145c:	0e410613          	addi	a2,sp,228
80001460:	000c0593          	mv	a1,s8
80001464:	000d0513          	mv	a0,s10
80001468:	0000a0ef          	jal	ra,8000b468 <__sprint_r>
8000146c:	c4051ae3          	bnez	a0,800010c0 <_vfprintf_r+0x1030>
80001470:	0ec12783          	lw	a5,236(sp)
80001474:	0e812703          	lw	a4,232(sp)
80001478:	10c10893          	addi	a7,sp,268
8000147c:	fb5ff06f          	j	80001430 <_vfprintf_r+0x13a0>
80001480:	001a7793          	andi	a5,s4,1
80001484:	c6079ae3          	bnez	a5,800010f8 <_vfprintf_r+0x1068>
80001488:	00c8a223          	sw	a2,4(a7)
8000148c:	0f912623          	sw	s9,236(sp)
80001490:	0e912423          	sw	s1,232(sp)
80001494:	00700793          	li	a5,7
80001498:	2297ca63          	blt	a5,s1,800016cc <_vfprintf_r+0x163c>
8000149c:	00268693          	addi	a3,a3,2
800014a0:	01088893          	addi	a7,a7,16
800014a4:	d25ff06f          	j	800011c8 <_vfprintf_r+0x1138>
800014a8:	d3b050e3          	blez	s11,800011c8 <_vfprintf_r+0x1138>
800014ac:	01000713          	li	a4,16
800014b0:	01b74463          	blt	a4,s11,800014b8 <_vfprintf_r+0x1428>
800014b4:	6180106f          	j	80002acc <_vfprintf_r+0x2a3c>
800014b8:	00700b13          	li	s6,7
800014bc:	00060493          	mv	s1,a2
800014c0:	0100006f          	j	800014d0 <_vfprintf_r+0x1440>
800014c4:	ff0d8d93          	addi	s11,s11,-16
800014c8:	1db75e63          	bge	a4,s11,800016a4 <_vfprintf_r+0x1614>
800014cc:	00148493          	addi	s1,s1,1
800014d0:	00812783          	lw	a5,8(sp)
800014d4:	010c8c93          	addi	s9,s9,16
800014d8:	00e92223          	sw	a4,4(s2)
800014dc:	00f92023          	sw	a5,0(s2)
800014e0:	0f912623          	sw	s9,236(sp)
800014e4:	0e912423          	sw	s1,232(sp)
800014e8:	00890913          	addi	s2,s2,8
800014ec:	fc9b5ce3          	bge	s6,s1,800014c4 <_vfprintf_r+0x1434>
800014f0:	0e410613          	addi	a2,sp,228
800014f4:	000c0593          	mv	a1,s8
800014f8:	000d0513          	mv	a0,s10
800014fc:	76d090ef          	jal	ra,8000b468 <__sprint_r>
80001500:	bc0510e3          	bnez	a0,800010c0 <_vfprintf_r+0x1030>
80001504:	0ec12c83          	lw	s9,236(sp)
80001508:	0e812483          	lw	s1,232(sp)
8000150c:	10c10913          	addi	s2,sp,268
80001510:	01000713          	li	a4,16
80001514:	fb1ff06f          	j	800014c4 <_vfprintf_r+0x1434>
80001518:	01412683          	lw	a3,20(sp)
8000151c:	010a7793          	andi	a5,s4,16
80001520:	00468713          	addi	a4,a3,4
80001524:	16079263          	bnez	a5,80001688 <_vfprintf_r+0x15f8>
80001528:	040a7793          	andi	a5,s4,64
8000152c:	68078463          	beqz	a5,80001bb4 <_vfprintf_r+0x1b24>
80001530:	01412783          	lw	a5,20(sp)
80001534:	00000c93          	li	s9,0
80001538:	00e12a23          	sw	a4,20(sp)
8000153c:	0007d903          	lhu	s2,0(a5)
80001540:	f1cff06f          	j	80000c5c <_vfprintf_r+0xbcc>
80001544:	01412683          	lw	a3,20(sp)
80001548:	010bf793          	andi	a5,s7,16
8000154c:	00468713          	addi	a4,a3,4
80001550:	0c079e63          	bnez	a5,8000162c <_vfprintf_r+0x159c>
80001554:	040bf793          	andi	a5,s7,64
80001558:	60078e63          	beqz	a5,80001b74 <_vfprintf_r+0x1ae4>
8000155c:	01412783          	lw	a5,20(sp)
80001560:	00000c93          	li	s9,0
80001564:	00e12a23          	sw	a4,20(sp)
80001568:	0007d903          	lhu	s2,0(a5)
8000156c:	00100793          	li	a5,1
80001570:	db0ff06f          	j	80000b20 <_vfprintf_r+0xa90>
80001574:	01412683          	lw	a3,20(sp)
80001578:	010a7793          	andi	a5,s4,16
8000157c:	00468713          	addi	a4,a3,4
80001580:	0e079a63          	bnez	a5,80001674 <_vfprintf_r+0x15e4>
80001584:	040a7793          	andi	a5,s4,64
80001588:	60078663          	beqz	a5,80001b94 <_vfprintf_r+0x1b04>
8000158c:	01412783          	lw	a5,20(sp)
80001590:	00e12a23          	sw	a4,20(sp)
80001594:	00079903          	lh	s2,0(a5)
80001598:	41f95c93          	srai	s9,s2,0x1f
8000159c:	000c8793          	mv	a5,s9
800015a0:	f207de63          	bgez	a5,80000cdc <_vfprintf_r+0xc4c>
800015a4:	012037b3          	snez	a5,s2
800015a8:	41900cb3          	neg	s9,s9
800015ac:	40fc8cb3          	sub	s9,s9,a5
800015b0:	02d00793          	li	a5,45
800015b4:	0cf103a3          	sb	a5,199(sp)
800015b8:	41200933          	neg	s2,s2
800015bc:	000a0b93          	mv	s7,s4
800015c0:	00100793          	li	a5,1
800015c4:	d60ff06f          	j	80000b24 <_vfprintf_r+0xa94>
800015c8:	001a7713          	andi	a4,s4,1
800015cc:	00071463          	bnez	a4,800015d4 <_vfprintf_r+0x1544>
800015d0:	dc9fe06f          	j	80000398 <_vfprintf_r+0x308>
800015d4:	8c1ff06f          	j	80000e94 <_vfprintf_r+0xe04>
800015d8:	000c8893          	mv	a7,s9
800015dc:	ed4ff06f          	j	80000cb0 <_vfprintf_r+0xc20>
800015e0:	03000793          	li	a5,48
800015e4:	1af107a3          	sb	a5,431(sp)
800015e8:	1af10b13          	addi	s6,sp,431
800015ec:	d60ff06f          	j	80000b4c <_vfprintf_r+0xabc>
800015f0:	03c12783          	lw	a5,60(sp)
800015f4:	00044483          	lbu	s1,0(s0)
800015f8:	00079463          	bnez	a5,80001600 <_vfprintf_r+0x1570>
800015fc:	c4dfe06f          	j	80000248 <_vfprintf_r+0x1b8>
80001600:	0007c783          	lbu	a5,0(a5)
80001604:	00079463          	bnez	a5,8000160c <_vfprintf_r+0x157c>
80001608:	c41fe06f          	j	80000248 <_vfprintf_r+0x1b8>
8000160c:	400a6a13          	ori	s4,s4,1024
80001610:	c39fe06f          	j	80000248 <_vfprintf_r+0x1b8>
80001614:	00c12683          	lw	a3,12(sp)
80001618:	00040b13          	mv	s6,s0
8000161c:	41f6d793          	srai	a5,a3,0x1f
80001620:	00d72023          	sw	a3,0(a4)
80001624:	00f72223          	sw	a5,4(a4)
80001628:	db9fe06f          	j	800003e0 <_vfprintf_r+0x350>
8000162c:	0006a903          	lw	s2,0(a3)
80001630:	00000c93          	li	s9,0
80001634:	00e12a23          	sw	a4,20(sp)
80001638:	00100793          	li	a5,1
8000163c:	ce4ff06f          	j	80000b20 <_vfprintf_r+0xa90>
80001640:	01412703          	lw	a4,20(sp)
80001644:	00072783          	lw	a5,0(a4)
80001648:	00470713          	addi	a4,a4,4
8000164c:	00e12a23          	sw	a4,20(sp)
80001650:	0007a583          	lw	a1,0(a5)
80001654:	0047a603          	lw	a2,4(a5)
80001658:	0087a683          	lw	a3,8(a5)
8000165c:	00c7a783          	lw	a5,12(a5)
80001660:	0eb12823          	sw	a1,240(sp)
80001664:	0ec12a23          	sw	a2,244(sp)
80001668:	0ed12c23          	sw	a3,248(sp)
8000166c:	0ef12e23          	sw	a5,252(sp)
80001670:	ef5fe06f          	j	80000564 <_vfprintf_r+0x4d4>
80001674:	0006a903          	lw	s2,0(a3)
80001678:	00e12a23          	sw	a4,20(sp)
8000167c:	41f95c93          	srai	s9,s2,0x1f
80001680:	000c8793          	mv	a5,s9
80001684:	e54ff06f          	j	80000cd8 <_vfprintf_r+0xc48>
80001688:	0006a903          	lw	s2,0(a3)
8000168c:	00000c93          	li	s9,0
80001690:	00e12a23          	sw	a4,20(sp)
80001694:	dc8ff06f          	j	80000c5c <_vfprintf_r+0xbcc>
80001698:	00068493          	mv	s1,a3
8000169c:	c89040e3          	bgtz	s1,8000131c <_vfprintf_r+0x128c>
800016a0:	ca5ff06f          	j	80001344 <_vfprintf_r+0x12b4>
800016a4:	00148693          	addi	a3,s1,1
800016a8:	00890713          	addi	a4,s2,8
800016ac:	00812783          	lw	a5,8(sp)
800016b0:	01bc8cb3          	add	s9,s9,s11
800016b4:	01b92223          	sw	s11,4(s2)
800016b8:	00f92023          	sw	a5,0(s2)
800016bc:	0f912623          	sw	s9,236(sp)
800016c0:	0ed12423          	sw	a3,232(sp)
800016c4:	00700793          	li	a5,7
800016c8:	74d7de63          	bge	a5,a3,80001e24 <_vfprintf_r+0x1d94>
800016cc:	0e410613          	addi	a2,sp,228
800016d0:	000c0593          	mv	a1,s8
800016d4:	000d0513          	mv	a0,s10
800016d8:	591090ef          	jal	ra,8000b468 <__sprint_r>
800016dc:	9e0512e3          	bnez	a0,800010c0 <_vfprintf_r+0x1030>
800016e0:	0e812683          	lw	a3,232(sp)
800016e4:	0ec12c83          	lw	s9,236(sp)
800016e8:	11410893          	addi	a7,sp,276
800016ec:	00168693          	addi	a3,a3,1
800016f0:	10c10913          	addi	s2,sp,268
800016f4:	ad5ff06f          	j	800011c8 <_vfprintf_r+0x1138>
800016f8:	000c8893          	mv	a7,s9
800016fc:	000a0b93          	mv	s7,s4
80001700:	d70ff06f          	j	80000c70 <_vfprintf_r+0xbe0>
80001704:	800147b7          	lui	a5,0x80014
80001708:	e3478793          	addi	a5,a5,-460 # 80013e34 <heap_end.1814+0xffffe450>
8000170c:	000c8893          	mv	a7,s9
80001710:	02f12a23          	sw	a5,52(sp)
80001714:	020a7793          	andi	a5,s4,32
80001718:	12078863          	beqz	a5,80001848 <_vfprintf_r+0x17b8>
8000171c:	01412783          	lw	a5,20(sp)
80001720:	00778b13          	addi	s6,a5,7
80001724:	ff8b7b13          	andi	s6,s6,-8
80001728:	000b2903          	lw	s2,0(s6)
8000172c:	004b2c83          	lw	s9,4(s6)
80001730:	008b0793          	addi	a5,s6,8
80001734:	00f12a23          	sw	a5,20(sp)
80001738:	001a7793          	andi	a5,s4,1
8000173c:	00078e63          	beqz	a5,80001758 <_vfprintf_r+0x16c8>
80001740:	019967b3          	or	a5,s2,s9
80001744:	00078a63          	beqz	a5,80001758 <_vfprintf_r+0x16c8>
80001748:	03000793          	li	a5,48
8000174c:	0cf10423          	sb	a5,200(sp)
80001750:	0c9104a3          	sb	s1,201(sp)
80001754:	002a6a13          	ori	s4,s4,2
80001758:	bffa7b93          	andi	s7,s4,-1025
8000175c:	00200793          	li	a5,2
80001760:	bc0ff06f          	j	80000b20 <_vfprintf_r+0xa90>
80001764:	800147b7          	lui	a5,0x80014
80001768:	e4878793          	addi	a5,a5,-440 # 80013e48 <heap_end.1814+0xffffe464>
8000176c:	000c8893          	mv	a7,s9
80001770:	02f12a23          	sw	a5,52(sp)
80001774:	fa1ff06f          	j	80001714 <_vfprintf_r+0x1684>
80001778:	000c8893          	mv	a7,s9
8000177c:	cbcff06f          	j	80000c38 <_vfprintf_r+0xba8>
80001780:	0e410613          	addi	a2,sp,228
80001784:	000c0593          	mv	a1,s8
80001788:	000d0513          	mv	a0,s10
8000178c:	4dd090ef          	jal	ra,8000b468 <__sprint_r>
80001790:	920518e3          	bnez	a0,800010c0 <_vfprintf_r+0x1030>
80001794:	0ec12783          	lw	a5,236(sp)
80001798:	10c10893          	addi	a7,sp,268
8000179c:	f28ff06f          	j	80000ec4 <_vfprintf_r+0xe34>
800017a0:	00144483          	lbu	s1,1(s0)
800017a4:	020a6a13          	ori	s4,s4,32
800017a8:	00140413          	addi	s0,s0,1
800017ac:	a9dfe06f          	j	80000248 <_vfprintf_r+0x1b8>
800017b0:	00144483          	lbu	s1,1(s0)
800017b4:	200a6a13          	ori	s4,s4,512
800017b8:	00140413          	addi	s0,s0,1
800017bc:	a8dfe06f          	j	80000248 <_vfprintf_r+0x1b8>
800017c0:	00600793          	li	a5,6
800017c4:	000d8c93          	mv	s9,s11
800017c8:	6bb7ee63          	bltu	a5,s11,80001e84 <_vfprintf_r+0x1df4>
800017cc:	80014737          	lui	a4,0x80014
800017d0:	000c8a93          	mv	s5,s9
800017d4:	01212a23          	sw	s2,20(sp)
800017d8:	e5c70b13          	addi	s6,a4,-420 # 80013e5c <heap_end.1814+0xffffe478>
800017dc:	ad9fe06f          	j	800002b4 <_vfprintf_r+0x224>
800017e0:	01000613          	li	a2,16
800017e4:	0e812683          	lw	a3,232(sp)
800017e8:	40965463          	bge	a2,s1,80001bf0 <_vfprintf_r+0x1b60>
800017ec:	01000c93          	li	s9,16
800017f0:	00700d93          	li	s11,7
800017f4:	00c0006f          	j	80001800 <_vfprintf_r+0x1770>
800017f8:	ff048493          	addi	s1,s1,-16
800017fc:	3e9cda63          	bge	s9,s1,80001bf0 <_vfprintf_r+0x1b60>
80001800:	00812703          	lw	a4,8(sp)
80001804:	01078793          	addi	a5,a5,16
80001808:	00168693          	addi	a3,a3,1
8000180c:	00e8a023          	sw	a4,0(a7)
80001810:	0198a223          	sw	s9,4(a7)
80001814:	0ef12623          	sw	a5,236(sp)
80001818:	0ed12423          	sw	a3,232(sp)
8000181c:	00888893          	addi	a7,a7,8
80001820:	fcdddce3          	bge	s11,a3,800017f8 <_vfprintf_r+0x1768>
80001824:	0e410613          	addi	a2,sp,228
80001828:	000c0593          	mv	a1,s8
8000182c:	000d0513          	mv	a0,s10
80001830:	439090ef          	jal	ra,8000b468 <__sprint_r>
80001834:	880516e3          	bnez	a0,800010c0 <_vfprintf_r+0x1030>
80001838:	0ec12783          	lw	a5,236(sp)
8000183c:	0e812683          	lw	a3,232(sp)
80001840:	10c10893          	addi	a7,sp,268
80001844:	fb5ff06f          	j	800017f8 <_vfprintf_r+0x1768>
80001848:	01412683          	lw	a3,20(sp)
8000184c:	010a7793          	andi	a5,s4,16
80001850:	00468713          	addi	a4,a3,4
80001854:	1c078063          	beqz	a5,80001a14 <_vfprintf_r+0x1984>
80001858:	0006a903          	lw	s2,0(a3)
8000185c:	00000c93          	li	s9,0
80001860:	00e12a23          	sw	a4,20(sp)
80001864:	ed5ff06f          	j	80001738 <_vfprintf_r+0x16a8>
80001868:	0e410613          	addi	a2,sp,228
8000186c:	000c0593          	mv	a1,s8
80001870:	000d0513          	mv	a0,s10
80001874:	3f5090ef          	jal	ra,8000b468 <__sprint_r>
80001878:	840514e3          	bnez	a0,800010c0 <_vfprintf_r+0x1030>
8000187c:	0ec12c83          	lw	s9,236(sp)
80001880:	0e812483          	lw	s1,232(sp)
80001884:	10c10913          	addi	s2,sp,268
80001888:	889ff06f          	j	80001110 <_vfprintf_r+0x1080>
8000188c:	0e410613          	addi	a2,sp,228
80001890:	000c0593          	mv	a1,s8
80001894:	000d0513          	mv	a0,s10
80001898:	3d1090ef          	jal	ra,8000b468 <__sprint_r>
8000189c:	820512e3          	bnez	a0,800010c0 <_vfprintf_r+0x1030>
800018a0:	0ec12c83          	lw	s9,236(sp)
800018a4:	0e812483          	lw	s1,232(sp)
800018a8:	10c10913          	addi	s2,sp,268
800018ac:	891ff06f          	j	8000113c <_vfprintf_r+0x10ac>
800018b0:	1b010b13          	addi	s6,sp,432
800018b4:	00000793          	li	a5,0
800018b8:	00812823          	sw	s0,16(sp)
800018bc:	00912e23          	sw	s1,28(sp)
800018c0:	000b0413          	mv	s0,s6
800018c4:	03312223          	sw	s3,36(sp)
800018c8:	000c0b13          	mv	s6,s8
800018cc:	00090493          	mv	s1,s2
800018d0:	000c8993          	mv	s3,s9
800018d4:	400bfa13          	andi	s4,s7,1024
800018d8:	03c12c83          	lw	s9,60(sp)
800018dc:	0ff00a93          	li	s5,255
800018e0:	00088c13          	mv	s8,a7
800018e4:	00078913          	mv	s2,a5
800018e8:	0240006f          	j	8000190c <_vfprintf_r+0x187c>
800018ec:	00a00613          	li	a2,10
800018f0:	00000693          	li	a3,0
800018f4:	00048513          	mv	a0,s1
800018f8:	00098593          	mv	a1,s3
800018fc:	7c10d0ef          	jal	ra,8000f8bc <__udivdi3>
80001900:	2a098ae3          	beqz	s3,800023b4 <_vfprintf_r+0x2324>
80001904:	00050493          	mv	s1,a0
80001908:	00058993          	mv	s3,a1
8000190c:	00a00613          	li	a2,10
80001910:	00000693          	li	a3,0
80001914:	00048513          	mv	a0,s1
80001918:	00098593          	mv	a1,s3
8000191c:	3d40e0ef          	jal	ra,8000fcf0 <__umoddi3>
80001920:	03050513          	addi	a0,a0,48
80001924:	fea40fa3          	sb	a0,-1(s0)
80001928:	00190913          	addi	s2,s2,1
8000192c:	fff40413          	addi	s0,s0,-1
80001930:	fa0a0ee3          	beqz	s4,800018ec <_vfprintf_r+0x185c>
80001934:	000cc683          	lbu	a3,0(s9)
80001938:	fad91ae3          	bne	s2,a3,800018ec <_vfprintf_r+0x185c>
8000193c:	fb5908e3          	beq	s2,s5,800018ec <_vfprintf_r+0x185c>
80001940:	4a099263          	bnez	s3,80001de4 <_vfprintf_r+0x1d54>
80001944:	00900793          	li	a5,9
80001948:	4897ee63          	bltu	a5,s1,80001de4 <_vfprintf_r+0x1d54>
8000194c:	000c0893          	mv	a7,s8
80001950:	1b010793          	addi	a5,sp,432
80001954:	000b0c13          	mv	s8,s6
80001958:	00040b13          	mv	s6,s0
8000195c:	03912e23          	sw	s9,60(sp)
80001960:	01c12483          	lw	s1,28(sp)
80001964:	02412983          	lw	s3,36(sp)
80001968:	01012403          	lw	s0,16(sp)
8000196c:	03212023          	sw	s2,32(sp)
80001970:	41678cb3          	sub	s9,a5,s6
80001974:	000b8a13          	mv	s4,s7
80001978:	9d4ff06f          	j	80000b4c <_vfprintf_r+0xabc>
8000197c:	0e812683          	lw	a3,232(sp)
80001980:	80014637          	lui	a2,0x80014
80001984:	e6460613          	addi	a2,a2,-412 # 80013e64 <heap_end.1814+0xffffe480>
80001988:	00c8a023          	sw	a2,0(a7)
8000198c:	00178793          	addi	a5,a5,1
80001990:	00100613          	li	a2,1
80001994:	00168693          	addi	a3,a3,1
80001998:	00c8a223          	sw	a2,4(a7)
8000199c:	0ef12623          	sw	a5,236(sp)
800019a0:	0ed12423          	sw	a3,232(sp)
800019a4:	00700613          	li	a2,7
800019a8:	00888893          	addi	a7,a7,8
800019ac:	48d64463          	blt	a2,a3,80001e34 <_vfprintf_r+0x1da4>
800019b0:	00058463          	beqz	a1,800019b8 <_vfprintf_r+0x1928>
800019b4:	eadfe06f          	j	80000860 <_vfprintf_r+0x7d0>
800019b8:	02012703          	lw	a4,32(sp)
800019bc:	001a7693          	andi	a3,s4,1
800019c0:	00e6e6b3          	or	a3,a3,a4
800019c4:	00069463          	bnez	a3,800019cc <_vfprintf_r+0x193c>
800019c8:	9d1fe06f          	j	80000398 <_vfprintf_r+0x308>
800019cc:	03012683          	lw	a3,48(sp)
800019d0:	02c12703          	lw	a4,44(sp)
800019d4:	00700613          	li	a2,7
800019d8:	00d8a023          	sw	a3,0(a7)
800019dc:	0e812683          	lw	a3,232(sp)
800019e0:	00f707b3          	add	a5,a4,a5
800019e4:	00e8a223          	sw	a4,4(a7)
800019e8:	00168693          	addi	a3,a3,1
800019ec:	0ef12623          	sw	a5,236(sp)
800019f0:	0ed12423          	sw	a3,232(sp)
800019f4:	00d65463          	bge	a2,a3,800019fc <_vfprintf_r+0x196c>
800019f8:	e99fe06f          	j	80000890 <_vfprintf_r+0x800>
800019fc:	00888893          	addi	a7,a7,8
80001a00:	ebdfe06f          	j	800008bc <_vfprintf_r+0x82c>
80001a04:	01012b83          	lw	s7,16(sp)
80001a08:	00040d13          	mv	s10,s0
80001a0c:	00048c13          	mv	s8,s1
80001a10:	eb4ff06f          	j	800010c4 <_vfprintf_r+0x1034>
80001a14:	040a7793          	andi	a5,s4,64
80001a18:	14078063          	beqz	a5,80001b58 <_vfprintf_r+0x1ac8>
80001a1c:	01412783          	lw	a5,20(sp)
80001a20:	00000c93          	li	s9,0
80001a24:	00e12a23          	sw	a4,20(sp)
80001a28:	0007d903          	lhu	s2,0(a5)
80001a2c:	d0dff06f          	j	80001738 <_vfprintf_r+0x16a8>
80001a30:	0e410613          	addi	a2,sp,228
80001a34:	000c0593          	mv	a1,s8
80001a38:	000d0513          	mv	a0,s10
80001a3c:	22d090ef          	jal	ra,8000b468 <__sprint_r>
80001a40:	e8051063          	bnez	a0,800010c0 <_vfprintf_r+0x1030>
80001a44:	0ec12783          	lw	a5,236(sp)
80001a48:	10c10893          	addi	a7,sp,268
80001a4c:	c3cff06f          	j	80000e88 <_vfprintf_r+0xdf8>
80001a50:	00812683          	lw	a3,8(sp)
80001a54:	009787b3          	add	a5,a5,s1
80001a58:	0098a223          	sw	s1,4(a7)
80001a5c:	00d8a023          	sw	a3,0(a7)
80001a60:	00170713          	addi	a4,a4,1
80001a64:	0ef12623          	sw	a5,236(sp)
80001a68:	0ee12423          	sw	a4,232(sp)
80001a6c:	00700693          	li	a3,7
80001a70:	00e6c463          	blt	a3,a4,80001a78 <_vfprintf_r+0x19e8>
80001a74:	921fe06f          	j	80000394 <_vfprintf_r+0x304>
80001a78:	e69fe06f          	j	800008e0 <_vfprintf_r+0x850>
80001a7c:	0f012783          	lw	a5,240(sp)
80001a80:	0a010593          	addi	a1,sp,160
80001a84:	0b010513          	addi	a0,sp,176
80001a88:	0af12823          	sw	a5,176(sp)
80001a8c:	0f412783          	lw	a5,244(sp)
80001a90:	0a012023          	sw	zero,160(sp)
80001a94:	0a012223          	sw	zero,164(sp)
80001a98:	0af12a23          	sw	a5,180(sp)
80001a9c:	0f812783          	lw	a5,248(sp)
80001aa0:	0a012423          	sw	zero,168(sp)
80001aa4:	0a012623          	sw	zero,172(sp)
80001aa8:	0af12c23          	sw	a5,184(sp)
80001aac:	0fc12783          	lw	a5,252(sp)
80001ab0:	0af12e23          	sw	a5,188(sp)
80001ab4:	5000f0ef          	jal	ra,80010fb4 <__letf2>
80001ab8:	01012883          	lw	a7,16(sp)
80001abc:	260540e3          	bltz	a0,8000251c <_vfprintf_r+0x248c>
80001ac0:	0c714783          	lbu	a5,199(sp)
80001ac4:	04700713          	li	a4,71
80001ac8:	38975863          	bge	a4,s1,80001e58 <_vfprintf_r+0x1dc8>
80001acc:	80014737          	lui	a4,0x80014
80001ad0:	e2870b13          	addi	s6,a4,-472 # 80013e28 <heap_end.1814+0xffffe444>
80001ad4:	00012823          	sw	zero,16(sp)
80001ad8:	02012423          	sw	zero,40(sp)
80001adc:	02012223          	sw	zero,36(sp)
80001ae0:	00012e23          	sw	zero,28(sp)
80001ae4:	f7fa7a13          	andi	s4,s4,-129
80001ae8:	00300a93          	li	s5,3
80001aec:	00300c93          	li	s9,3
80001af0:	00000d93          	li	s11,0
80001af4:	00078463          	beqz	a5,80001afc <_vfprintf_r+0x1a6c>
80001af8:	f75fe06f          	j	80000a6c <_vfprintf_r+0x9dc>
80001afc:	fccfe06f          	j	800002c8 <_vfprintf_r+0x238>
80001b00:	00c12783          	lw	a5,12(sp)
80001b04:	00040b13          	mv	s6,s0
80001b08:	00f72023          	sw	a5,0(a4)
80001b0c:	8d5fe06f          	j	800003e0 <_vfprintf_r+0x350>
80001b10:	000b0513          	mv	a0,s6
80001b14:	05912023          	sw	s9,64(sp)
80001b18:	519060ef          	jal	ra,80008830 <strlen>
80001b1c:	0c714783          	lbu	a5,199(sp)
80001b20:	fff54a93          	not	s5,a0
80001b24:	41fada93          	srai	s5,s5,0x1f
80001b28:	01212a23          	sw	s2,20(sp)
80001b2c:	00012823          	sw	zero,16(sp)
80001b30:	02012423          	sw	zero,40(sp)
80001b34:	02012223          	sw	zero,36(sp)
80001b38:	00012e23          	sw	zero,28(sp)
80001b3c:	04012883          	lw	a7,64(sp)
80001b40:	00050c93          	mv	s9,a0
80001b44:	01557ab3          	and	s5,a0,s5
80001b48:	00000d93          	li	s11,0
80001b4c:	00078463          	beqz	a5,80001b54 <_vfprintf_r+0x1ac4>
80001b50:	f1dfe06f          	j	80000a6c <_vfprintf_r+0x9dc>
80001b54:	f74fe06f          	j	800002c8 <_vfprintf_r+0x238>
80001b58:	200a7793          	andi	a5,s4,512
80001b5c:	3a078263          	beqz	a5,80001f00 <_vfprintf_r+0x1e70>
80001b60:	01412783          	lw	a5,20(sp)
80001b64:	00000c93          	li	s9,0
80001b68:	00e12a23          	sw	a4,20(sp)
80001b6c:	0007c903          	lbu	s2,0(a5)
80001b70:	bc9ff06f          	j	80001738 <_vfprintf_r+0x16a8>
80001b74:	200bf793          	andi	a5,s7,512
80001b78:	36078863          	beqz	a5,80001ee8 <_vfprintf_r+0x1e58>
80001b7c:	01412783          	lw	a5,20(sp)
80001b80:	00000c93          	li	s9,0
80001b84:	00e12a23          	sw	a4,20(sp)
80001b88:	0007c903          	lbu	s2,0(a5)
80001b8c:	00100793          	li	a5,1
80001b90:	f91fe06f          	j	80000b20 <_vfprintf_r+0xa90>
80001b94:	200a7793          	andi	a5,s4,512
80001b98:	32078c63          	beqz	a5,80001ed0 <_vfprintf_r+0x1e40>
80001b9c:	01412783          	lw	a5,20(sp)
80001ba0:	00e12a23          	sw	a4,20(sp)
80001ba4:	00078903          	lb	s2,0(a5)
80001ba8:	41f95c93          	srai	s9,s2,0x1f
80001bac:	000c8793          	mv	a5,s9
80001bb0:	928ff06f          	j	80000cd8 <_vfprintf_r+0xc48>
80001bb4:	200a7793          	andi	a5,s4,512
80001bb8:	30078263          	beqz	a5,80001ebc <_vfprintf_r+0x1e2c>
80001bbc:	01412783          	lw	a5,20(sp)
80001bc0:	00000c93          	li	s9,0
80001bc4:	00e12a23          	sw	a4,20(sp)
80001bc8:	0007c903          	lbu	s2,0(a5)
80001bcc:	890ff06f          	j	80000c5c <_vfprintf_r+0xbcc>
80001bd0:	0fc12783          	lw	a5,252(sp)
80001bd4:	3407ca63          	bltz	a5,80001f28 <_vfprintf_r+0x1e98>
80001bd8:	0c714783          	lbu	a5,199(sp)
80001bdc:	04700713          	li	a4,71
80001be0:	1c975ce3          	bge	a4,s1,800025b8 <_vfprintf_r+0x2528>
80001be4:	80014737          	lui	a4,0x80014
80001be8:	e3070b13          	addi	s6,a4,-464 # 80013e30 <heap_end.1814+0xffffe44c>
80001bec:	ee9ff06f          	j	80001ad4 <_vfprintf_r+0x1a44>
80001bf0:	00812703          	lw	a4,8(sp)
80001bf4:	009787b3          	add	a5,a5,s1
80001bf8:	00168693          	addi	a3,a3,1
80001bfc:	00e8a023          	sw	a4,0(a7)
80001c00:	0098a223          	sw	s1,4(a7)
80001c04:	0ef12623          	sw	a5,236(sp)
80001c08:	0ed12423          	sw	a3,232(sp)
80001c0c:	00700613          	li	a2,7
80001c10:	00888893          	addi	a7,a7,8
80001c14:	f4d65463          	bge	a2,a3,8000135c <_vfprintf_r+0x12cc>
80001c18:	0e410613          	addi	a2,sp,228
80001c1c:	000c0593          	mv	a1,s8
80001c20:	000d0513          	mv	a0,s10
80001c24:	045090ef          	jal	ra,8000b468 <__sprint_r>
80001c28:	c8051c63          	bnez	a0,800010c0 <_vfprintf_r+0x1030>
80001c2c:	0ec12783          	lw	a5,236(sp)
80001c30:	10c10893          	addi	a7,sp,268
80001c34:	f28ff06f          	j	8000135c <_vfprintf_r+0x12cc>
80001c38:	02012703          	lw	a4,32(sp)
80001c3c:	02412c83          	lw	s9,36(sp)
80001c40:	01412e23          	sw	s4,28(sp)
80001c44:	04812023          	sw	s0,64(sp)
80001c48:	05312223          	sw	s3,68(sp)
80001c4c:	03512223          	sw	s5,36(sp)
80001c50:	02812983          	lw	s3,40(sp)
80001c54:	03612423          	sw	s6,40(sp)
80001c58:	00eb0bb3          	add	s7,s6,a4
80001c5c:	03c12403          	lw	s0,60(sp)
80001c60:	04812a03          	lw	s4,72(sp)
80001c64:	04c12a83          	lw	s5,76(sp)
80001c68:	00700493          	li	s1,7
80001c6c:	01000913          	li	s2,16
80001c70:	000c0b13          	mv	s6,s8
80001c74:	080c8863          	beqz	s9,80001d04 <_vfprintf_r+0x1c74>
80001c78:	08099863          	bnez	s3,80001d08 <_vfprintf_r+0x1c78>
80001c7c:	fff40413          	addi	s0,s0,-1
80001c80:	fffc8c93          	addi	s9,s9,-1
80001c84:	0e812703          	lw	a4,232(sp)
80001c88:	014787b3          	add	a5,a5,s4
80001c8c:	0158a023          	sw	s5,0(a7)
80001c90:	00170713          	addi	a4,a4,1
80001c94:	0148a223          	sw	s4,4(a7)
80001c98:	0ef12623          	sw	a5,236(sp)
80001c9c:	0ee12423          	sw	a4,232(sp)
80001ca0:	00888893          	addi	a7,a7,8
80001ca4:	0ee4ce63          	blt	s1,a4,80001da0 <_vfprintf_r+0x1d10>
80001ca8:	00044683          	lbu	a3,0(s0)
80001cac:	41bb8633          	sub	a2,s7,s11
80001cb0:	00068c13          	mv	s8,a3
80001cb4:	00d65463          	bge	a2,a3,80001cbc <_vfprintf_r+0x1c2c>
80001cb8:	00060c13          	mv	s8,a2
80001cbc:	03805663          	blez	s8,80001ce8 <_vfprintf_r+0x1c58>
80001cc0:	0e812683          	lw	a3,232(sp)
80001cc4:	018787b3          	add	a5,a5,s8
80001cc8:	01b8a023          	sw	s11,0(a7)
80001ccc:	00168693          	addi	a3,a3,1
80001cd0:	0188a223          	sw	s8,4(a7)
80001cd4:	0ef12623          	sw	a5,236(sp)
80001cd8:	0ed12423          	sw	a3,232(sp)
80001cdc:	0ed4c263          	blt	s1,a3,80001dc0 <_vfprintf_r+0x1d30>
80001ce0:	00044683          	lbu	a3,0(s0)
80001ce4:	00888893          	addi	a7,a7,8
80001ce8:	fffc4613          	not	a2,s8
80001cec:	41f65613          	srai	a2,a2,0x1f
80001cf0:	00cc7733          	and	a4,s8,a2
80001cf4:	40e68c33          	sub	s8,a3,a4
80001cf8:	01804c63          	bgtz	s8,80001d10 <_vfprintf_r+0x1c80>
80001cfc:	00dd8db3          	add	s11,s11,a3
80001d00:	f60c9ce3          	bnez	s9,80001c78 <_vfprintf_r+0x1be8>
80001d04:	5e098a63          	beqz	s3,800022f8 <_vfprintf_r+0x2268>
80001d08:	fff98993          	addi	s3,s3,-1
80001d0c:	f79ff06f          	j	80001c84 <_vfprintf_r+0x1bf4>
80001d10:	0e812683          	lw	a3,232(sp)
80001d14:	01894863          	blt	s2,s8,80001d24 <_vfprintf_r+0x1c94>
80001d18:	0580006f          	j	80001d70 <_vfprintf_r+0x1ce0>
80001d1c:	ff0c0c13          	addi	s8,s8,-16
80001d20:	05895863          	bge	s2,s8,80001d70 <_vfprintf_r+0x1ce0>
80001d24:	00812703          	lw	a4,8(sp)
80001d28:	01078793          	addi	a5,a5,16
80001d2c:	00168693          	addi	a3,a3,1
80001d30:	00e8a023          	sw	a4,0(a7)
80001d34:	0128a223          	sw	s2,4(a7)
80001d38:	0ef12623          	sw	a5,236(sp)
80001d3c:	0ed12423          	sw	a3,232(sp)
80001d40:	00888893          	addi	a7,a7,8
80001d44:	fcd4dce3          	bge	s1,a3,80001d1c <_vfprintf_r+0x1c8c>
80001d48:	0e410613          	addi	a2,sp,228
80001d4c:	000b0593          	mv	a1,s6
80001d50:	000d0513          	mv	a0,s10
80001d54:	714090ef          	jal	ra,8000b468 <__sprint_r>
80001d58:	66051463          	bnez	a0,800023c0 <_vfprintf_r+0x2330>
80001d5c:	ff0c0c13          	addi	s8,s8,-16
80001d60:	0ec12783          	lw	a5,236(sp)
80001d64:	0e812683          	lw	a3,232(sp)
80001d68:	10c10893          	addi	a7,sp,268
80001d6c:	fb894ce3          	blt	s2,s8,80001d24 <_vfprintf_r+0x1c94>
80001d70:	00812703          	lw	a4,8(sp)
80001d74:	018787b3          	add	a5,a5,s8
80001d78:	00168693          	addi	a3,a3,1
80001d7c:	00e8a023          	sw	a4,0(a7)
80001d80:	0188a223          	sw	s8,4(a7)
80001d84:	0ef12623          	sw	a5,236(sp)
80001d88:	0ed12423          	sw	a3,232(sp)
80001d8c:	66d4c063          	blt	s1,a3,800023ec <_vfprintf_r+0x235c>
80001d90:	00044683          	lbu	a3,0(s0)
80001d94:	00888893          	addi	a7,a7,8
80001d98:	00dd8db3          	add	s11,s11,a3
80001d9c:	f65ff06f          	j	80001d00 <_vfprintf_r+0x1c70>
80001da0:	0e410613          	addi	a2,sp,228
80001da4:	000b0593          	mv	a1,s6
80001da8:	000d0513          	mv	a0,s10
80001dac:	6bc090ef          	jal	ra,8000b468 <__sprint_r>
80001db0:	60051863          	bnez	a0,800023c0 <_vfprintf_r+0x2330>
80001db4:	0ec12783          	lw	a5,236(sp)
80001db8:	10c10893          	addi	a7,sp,268
80001dbc:	eedff06f          	j	80001ca8 <_vfprintf_r+0x1c18>
80001dc0:	0e410613          	addi	a2,sp,228
80001dc4:	000b0593          	mv	a1,s6
80001dc8:	000d0513          	mv	a0,s10
80001dcc:	69c090ef          	jal	ra,8000b468 <__sprint_r>
80001dd0:	5e051863          	bnez	a0,800023c0 <_vfprintf_r+0x2330>
80001dd4:	00044683          	lbu	a3,0(s0)
80001dd8:	0ec12783          	lw	a5,236(sp)
80001ddc:	10c10893          	addi	a7,sp,268
80001de0:	f09ff06f          	j	80001ce8 <_vfprintf_r+0x1c58>
80001de4:	04812783          	lw	a5,72(sp)
80001de8:	04c12583          	lw	a1,76(sp)
80001dec:	00000913          	li	s2,0
80001df0:	40f40433          	sub	s0,s0,a5
80001df4:	00078613          	mv	a2,a5
80001df8:	00040513          	mv	a0,s0
80001dfc:	2c1060ef          	jal	ra,800088bc <strncpy>
80001e00:	001cc583          	lbu	a1,1(s9)
80001e04:	00a00613          	li	a2,10
80001e08:	00000693          	li	a3,0
80001e0c:	00b03833          	snez	a6,a1
80001e10:	00048513          	mv	a0,s1
80001e14:	00098593          	mv	a1,s3
80001e18:	010c8cb3          	add	s9,s9,a6
80001e1c:	2a10d0ef          	jal	ra,8000f8bc <__udivdi3>
80001e20:	ae5ff06f          	j	80001904 <_vfprintf_r+0x1874>
80001e24:	00168693          	addi	a3,a3,1
80001e28:	00870893          	addi	a7,a4,8
80001e2c:	00070913          	mv	s2,a4
80001e30:	b98ff06f          	j	800011c8 <_vfprintf_r+0x1138>
80001e34:	0e410613          	addi	a2,sp,228
80001e38:	000c0593          	mv	a1,s8
80001e3c:	000d0513          	mv	a0,s10
80001e40:	628090ef          	jal	ra,8000b468 <__sprint_r>
80001e44:	a6051e63          	bnez	a0,800010c0 <_vfprintf_r+0x1030>
80001e48:	0cc12583          	lw	a1,204(sp)
80001e4c:	0ec12783          	lw	a5,236(sp)
80001e50:	10c10893          	addi	a7,sp,268
80001e54:	b5dff06f          	j	800019b0 <_vfprintf_r+0x1920>
80001e58:	80014737          	lui	a4,0x80014
80001e5c:	e2470b13          	addi	s6,a4,-476 # 80013e24 <heap_end.1814+0xffffe440>
80001e60:	c75ff06f          	j	80001ad4 <_vfprintf_r+0x1a44>
80001e64:	0e410613          	addi	a2,sp,228
80001e68:	000c0593          	mv	a1,s8
80001e6c:	000d0513          	mv	a0,s10
80001e70:	5f8090ef          	jal	ra,8000b468 <__sprint_r>
80001e74:	a4051663          	bnez	a0,800010c0 <_vfprintf_r+0x1030>
80001e78:	0ec12783          	lw	a5,236(sp)
80001e7c:	10c10893          	addi	a7,sp,268
80001e80:	cc4ff06f          	j	80001344 <_vfprintf_r+0x12b4>
80001e84:	00600c93          	li	s9,6
80001e88:	945ff06f          	j	800017cc <_vfprintf_r+0x173c>
80001e8c:	02012683          	lw	a3,32(sp)
80001e90:	00db0733          	add	a4,s6,a3
80001e94:	409684b3          	sub	s1,a3,s1
80001e98:	41b70833          	sub	a6,a4,s11
80001e9c:	00048913          	mv	s2,s1
80001ea0:	d6985063          	bge	a6,s1,80001400 <_vfprintf_r+0x1370>
80001ea4:	00080913          	mv	s2,a6
80001ea8:	d58ff06f          	j	80001400 <_vfprintf_r+0x1370>
80001eac:	00c12783          	lw	a5,12(sp)
80001eb0:	00040b13          	mv	s6,s0
80001eb4:	00f71023          	sh	a5,0(a4)
80001eb8:	d28fe06f          	j	800003e0 <_vfprintf_r+0x350>
80001ebc:	01412783          	lw	a5,20(sp)
80001ec0:	00000c93          	li	s9,0
80001ec4:	00e12a23          	sw	a4,20(sp)
80001ec8:	0007a903          	lw	s2,0(a5)
80001ecc:	d91fe06f          	j	80000c5c <_vfprintf_r+0xbcc>
80001ed0:	01412783          	lw	a5,20(sp)
80001ed4:	00e12a23          	sw	a4,20(sp)
80001ed8:	0007a903          	lw	s2,0(a5)
80001edc:	41f95c93          	srai	s9,s2,0x1f
80001ee0:	000c8793          	mv	a5,s9
80001ee4:	df5fe06f          	j	80000cd8 <_vfprintf_r+0xc48>
80001ee8:	01412783          	lw	a5,20(sp)
80001eec:	00000c93          	li	s9,0
80001ef0:	00e12a23          	sw	a4,20(sp)
80001ef4:	0007a903          	lw	s2,0(a5)
80001ef8:	00100793          	li	a5,1
80001efc:	c25fe06f          	j	80000b20 <_vfprintf_r+0xa90>
80001f00:	01412783          	lw	a5,20(sp)
80001f04:	00000c93          	li	s9,0
80001f08:	00e12a23          	sw	a4,20(sp)
80001f0c:	0007a903          	lw	s2,0(a5)
80001f10:	829ff06f          	j	80001738 <_vfprintf_r+0x16a8>
80001f14:	0e410613          	addi	a2,sp,228
80001f18:	000c0593          	mv	a1,s8
80001f1c:	000d0513          	mv	a0,s10
80001f20:	548090ef          	jal	ra,8000b468 <__sprint_r>
80001f24:	cd0fe06f          	j	800003f4 <_vfprintf_r+0x364>
80001f28:	02d00793          	li	a5,45
80001f2c:	0cf103a3          	sb	a5,199(sp)
80001f30:	cadff06f          	j	80001bdc <_vfprintf_r+0x1b4c>
80001f34:	03000793          	li	a5,48
80001f38:	0cf10423          	sb	a5,200(sp)
80001f3c:	05800793          	li	a5,88
80001f40:	002a6713          	ori	a4,s4,2
80001f44:	0cf104a3          	sb	a5,201(sp)
80001f48:	02e12423          	sw	a4,40(sp)
80001f4c:	06300793          	li	a5,99
80001f50:	00012823          	sw	zero,16(sp)
80001f54:	14c10b13          	addi	s6,sp,332
80001f58:	03b7c4e3          	blt	a5,s11,80002780 <_vfprintf_r+0x26f0>
80001f5c:	0fc12303          	lw	t1,252(sp)
80001f60:	fdf4fb93          	andi	s7,s1,-33
80001f64:	05712223          	sw	s7,68(sp)
80001f68:	04012c23          	sw	zero,88(sp)
80001f6c:	0f012e03          	lw	t3,240(sp)
80001f70:	0f412e83          	lw	t4,244(sp)
80001f74:	0f812f03          	lw	t5,248(sp)
80001f78:	102a6a13          	ori	s4,s4,258
80001f7c:	44034e63          	bltz	t1,800023d8 <_vfprintf_r+0x2348>
80001f80:	06100793          	li	a5,97
80001f84:	0af48ee3          	beq	s1,a5,80002840 <_vfprintf_r+0x27b0>
80001f88:	04100793          	li	a5,65
80001f8c:	00f48463          	beq	s1,a5,80001f94 <_vfprintf_r+0x1f04>
80001f90:	e64fe06f          	j	800005f4 <_vfprintf_r+0x564>
80001f94:	0b010a93          	addi	s5,sp,176
80001f98:	000a8513          	mv	a0,s5
80001f9c:	05112a23          	sw	a7,84(sp)
80001fa0:	0bc12823          	sw	t3,176(sp)
80001fa4:	0bd12a23          	sw	t4,180(sp)
80001fa8:	0be12c23          	sw	t5,184(sp)
80001fac:	0a612e23          	sw	t1,188(sp)
80001fb0:	2c1110ef          	jal	ra,80013a70 <__trunctfdf2>
80001fb4:	0cc10613          	addi	a2,sp,204
80001fb8:	35c060ef          	jal	ra,80008314 <frexp>
80001fbc:	00058613          	mv	a2,a1
80001fc0:	00050593          	mv	a1,a0
80001fc4:	000a8513          	mv	a0,s5
80001fc8:	0b5110ef          	jal	ra,8001387c <__extenddftf2>
80001fcc:	0b012783          	lw	a5,176(sp)
80001fd0:	0a010c93          	addi	s9,sp,160
80001fd4:	09010913          	addi	s2,sp,144
80001fd8:	08f12823          	sw	a5,144(sp)
80001fdc:	0b412783          	lw	a5,180(sp)
80001fe0:	08010613          	addi	a2,sp,128
80001fe4:	00090593          	mv	a1,s2
80001fe8:	08f12a23          	sw	a5,148(sp)
80001fec:	0b812783          	lw	a5,184(sp)
80001ff0:	000c8513          	mv	a0,s9
80001ff4:	04c12023          	sw	a2,64(sp)
80001ff8:	08f12c23          	sw	a5,152(sp)
80001ffc:	0bc12783          	lw	a5,188(sp)
80002000:	08012023          	sw	zero,128(sp)
80002004:	08012223          	sw	zero,132(sp)
80002008:	08f12e23          	sw	a5,156(sp)
8000200c:	3ffc07b7          	lui	a5,0x3ffc0
80002010:	08f12623          	sw	a5,140(sp)
80002014:	08012423          	sw	zero,136(sp)
80002018:	0e00f0ef          	jal	ra,800110f8 <__multf3>
8000201c:	0a012803          	lw	a6,160(sp)
80002020:	0a412e03          	lw	t3,164(sp)
80002024:	0a812e83          	lw	t4,168(sp)
80002028:	0ac12f03          	lw	t5,172(sp)
8000202c:	000c8593          	mv	a1,s9
80002030:	000a8513          	mv	a0,s5
80002034:	0b012823          	sw	a6,176(sp)
80002038:	05012823          	sw	a6,80(sp)
8000203c:	0bc12a23          	sw	t3,180(sp)
80002040:	03c12223          	sw	t3,36(sp)
80002044:	0bd12c23          	sw	t4,184(sp)
80002048:	03d12023          	sw	t4,32(sp)
8000204c:	0be12e23          	sw	t5,188(sp)
80002050:	01e12e23          	sw	t5,28(sp)
80002054:	0a012023          	sw	zero,160(sp)
80002058:	0a012223          	sw	zero,164(sp)
8000205c:	0a012423          	sw	zero,168(sp)
80002060:	0a012623          	sw	zero,172(sp)
80002064:	5410e0ef          	jal	ra,80010da4 <__eqtf2>
80002068:	01c12f03          	lw	t5,28(sp)
8000206c:	02012e83          	lw	t4,32(sp)
80002070:	02412e03          	lw	t3,36(sp)
80002074:	05012803          	lw	a6,80(sp)
80002078:	05412883          	lw	a7,84(sp)
8000207c:	00051663          	bnez	a0,80002088 <_vfprintf_r+0x1ff8>
80002080:	00100793          	li	a5,1
80002084:	0cf12623          	sw	a5,204(sp)
80002088:	800147b7          	lui	a5,0x80014
8000208c:	e4878793          	addi	a5,a5,-440 # 80013e48 <heap_end.1814+0xffffe464>
80002090:	02f12223          	sw	a5,36(sp)
80002094:	fffd8693          	addi	a3,s11,-1
80002098:	05412e23          	sw	s4,92(sp)
8000209c:	06912223          	sw	s1,100(sp)
800020a0:	07b12623          	sw	s11,108(sp)
800020a4:	07a12a23          	sw	s10,116(sp)
800020a8:	07812c23          	sw	s8,120(sp)
800020ac:	06812023          	sw	s0,96(sp)
800020b0:	07312423          	sw	s3,104(sp)
800020b4:	07112823          	sw	a7,112(sp)
800020b8:	000b0c13          	mv	s8,s6
800020bc:	00068b93          	mv	s7,a3
800020c0:	07612e23          	sw	s6,124(sp)
800020c4:	00080d13          	mv	s10,a6
800020c8:	000e0d93          	mv	s11,t3
800020cc:	000e8493          	mv	s1,t4
800020d0:	000f0a13          	mv	s4,t5
800020d4:	0480006f          	j	8000211c <_vfprintf_r+0x208c>
800020d8:	000c8593          	mv	a1,s9
800020dc:	000a8513          	mv	a0,s5
800020e0:	02c12023          	sw	a2,32(sp)
800020e4:	01f12e23          	sw	t6,28(sp)
800020e8:	0bf12c23          	sw	t6,184(sp)
800020ec:	0ac12e23          	sw	a2,188(sp)
800020f0:	0b612823          	sw	s6,176(sp)
800020f4:	0b312a23          	sw	s3,180(sp)
800020f8:	0a012023          	sw	zero,160(sp)
800020fc:	0a012223          	sw	zero,164(sp)
80002100:	0a012423          	sw	zero,168(sp)
80002104:	0a012623          	sw	zero,172(sp)
80002108:	49d0e0ef          	jal	ra,80010da4 <__eqtf2>
8000210c:	01c12f83          	lw	t6,28(sp)
80002110:	02012603          	lw	a2,32(sp)
80002114:	fffb8b93          	addi	s7,s7,-1
80002118:	0e050263          	beqz	a0,800021fc <_vfprintf_r+0x216c>
8000211c:	400307b7          	lui	a5,0x40030
80002120:	00090613          	mv	a2,s2
80002124:	000c8593          	mv	a1,s9
80002128:	000a8513          	mv	a0,s5
8000212c:	08f12e23          	sw	a5,156(sp)
80002130:	0ba12023          	sw	s10,160(sp)
80002134:	0bb12223          	sw	s11,164(sp)
80002138:	0a912423          	sw	s1,168(sp)
8000213c:	0b412623          	sw	s4,172(sp)
80002140:	08012823          	sw	zero,144(sp)
80002144:	08012a23          	sw	zero,148(sp)
80002148:	08012c23          	sw	zero,152(sp)
8000214c:	7ad0e0ef          	jal	ra,800110f8 <__multf3>
80002150:	000a8513          	mv	a0,s5
80002154:	4c4110ef          	jal	ra,80013618 <__fixtfsi>
80002158:	00050593          	mv	a1,a0
8000215c:	00050413          	mv	s0,a0
80002160:	000a8513          	mv	a0,s5
80002164:	0b012983          	lw	s3,176(sp)
80002168:	0b412483          	lw	s1,180(sp)
8000216c:	0b812b03          	lw	s6,184(sp)
80002170:	0bc12a03          	lw	s4,188(sp)
80002174:	5b8110ef          	jal	ra,8001372c <__floatsitf>
80002178:	0b012703          	lw	a4,176(sp)
8000217c:	04012603          	lw	a2,64(sp)
80002180:	00090593          	mv	a1,s2
80002184:	08e12023          	sw	a4,128(sp)
80002188:	0b412703          	lw	a4,180(sp)
8000218c:	000c8513          	mv	a0,s9
80002190:	09312823          	sw	s3,144(sp)
80002194:	08e12223          	sw	a4,132(sp)
80002198:	0b812703          	lw	a4,184(sp)
8000219c:	08912a23          	sw	s1,148(sp)
800021a0:	09612c23          	sw	s6,152(sp)
800021a4:	08e12423          	sw	a4,136(sp)
800021a8:	0bc12703          	lw	a4,188(sp)
800021ac:	09412e23          	sw	s4,156(sp)
800021b0:	08e12623          	sw	a4,140(sp)
800021b4:	73d0f0ef          	jal	ra,800120f0 <__subtf3>
800021b8:	02412783          	lw	a5,36(sp)
800021bc:	0a012b03          	lw	s6,160(sp)
800021c0:	0a412983          	lw	s3,164(sp)
800021c4:	00878733          	add	a4,a5,s0
800021c8:	00074703          	lbu	a4,0(a4)
800021cc:	0a812f83          	lw	t6,168(sp)
800021d0:	0ac12603          	lw	a2,172(sp)
800021d4:	05812a23          	sw	s8,84(sp)
800021d8:	00ec0023          	sb	a4,0(s8)
800021dc:	05712823          	sw	s7,80(sp)
800021e0:	fff00793          	li	a5,-1
800021e4:	001c0c13          	addi	s8,s8,1
800021e8:	000b0d13          	mv	s10,s6
800021ec:	00098d93          	mv	s11,s3
800021f0:	000f8493          	mv	s1,t6
800021f4:	00060a13          	mv	s4,a2
800021f8:	eefb90e3          	bne	s7,a5,800020d8 <_vfprintf_r+0x2048>
800021fc:	07012883          	lw	a7,112(sp)
80002200:	000b0393          	mv	t2,s6
80002204:	00098293          	mv	t0,s3
80002208:	3ffe0937          	lui	s2,0x3ffe0
8000220c:	000c8593          	mv	a1,s9
80002210:	000a8513          	mv	a0,s5
80002214:	03112023          	sw	a7,32(sp)
80002218:	00812e23          	sw	s0,28(sp)
8000221c:	05c12a03          	lw	s4,92(sp)
80002220:	06412483          	lw	s1,100(sp)
80002224:	06012403          	lw	s0,96(sp)
80002228:	0a712823          	sw	t2,176(sp)
8000222c:	06712223          	sw	t2,100(sp)
80002230:	0a512a23          	sw	t0,180(sp)
80002234:	06512023          	sw	t0,96(sp)
80002238:	0bf12c23          	sw	t6,184(sp)
8000223c:	05f12e23          	sw	t6,92(sp)
80002240:	0ac12e23          	sw	a2,188(sp)
80002244:	04c12023          	sw	a2,64(sp)
80002248:	0a012023          	sw	zero,160(sp)
8000224c:	0a012223          	sw	zero,164(sp)
80002250:	0a012423          	sw	zero,168(sp)
80002254:	0b212623          	sw	s2,172(sp)
80002258:	4190e0ef          	jal	ra,80010e70 <__getf2>
8000225c:	000c0b93          	mv	s7,s8
80002260:	06c12d83          	lw	s11,108(sp)
80002264:	07412d03          	lw	s10,116(sp)
80002268:	07812c03          	lw	s8,120(sp)
8000226c:	07c12b03          	lw	s6,124(sp)
80002270:	06812983          	lw	s3,104(sp)
80002274:	02012883          	lw	a7,32(sp)
80002278:	48a04263          	bgtz	a0,800026fc <_vfprintf_r+0x266c>
8000227c:	06412383          	lw	t2,100(sp)
80002280:	06012283          	lw	t0,96(sp)
80002284:	05c12f83          	lw	t6,92(sp)
80002288:	04012603          	lw	a2,64(sp)
8000228c:	000c8593          	mv	a1,s9
80002290:	000a8513          	mv	a0,s5
80002294:	0a712823          	sw	t2,176(sp)
80002298:	0a512a23          	sw	t0,180(sp)
8000229c:	0bf12c23          	sw	t6,184(sp)
800022a0:	0ac12e23          	sw	a2,188(sp)
800022a4:	0a012023          	sw	zero,160(sp)
800022a8:	0a012223          	sw	zero,164(sp)
800022ac:	0a012423          	sw	zero,168(sp)
800022b0:	0b212623          	sw	s2,172(sp)
800022b4:	2f10e0ef          	jal	ra,80010da4 <__eqtf2>
800022b8:	02012883          	lw	a7,32(sp)
800022bc:	00051863          	bnez	a0,800022cc <_vfprintf_r+0x223c>
800022c0:	01c12783          	lw	a5,28(sp)
800022c4:	0017fc93          	andi	s9,a5,1
800022c8:	420c9a63          	bnez	s9,800026fc <_vfprintf_r+0x266c>
800022cc:	05012783          	lw	a5,80(sp)
800022d0:	03000613          	li	a2,48
800022d4:	00178693          	addi	a3,a5,1 # 40030001 <_printf_r-0x3ffcffff>
800022d8:	00db86b3          	add	a3,s7,a3
800022dc:	0007c863          	bltz	a5,800022ec <_vfprintf_r+0x225c>
800022e0:	001b8b93          	addi	s7,s7,1
800022e4:	fecb8fa3          	sb	a2,-1(s7)
800022e8:	ff769ce3          	bne	a3,s7,800022e0 <_vfprintf_r+0x2250>
800022ec:	416b87b3          	sub	a5,s7,s6
800022f0:	02f12023          	sw	a5,32(sp)
800022f4:	be8fe06f          	j	800006dc <_vfprintf_r+0x64c>
800022f8:	02012703          	lw	a4,32(sp)
800022fc:	000b0c13          	mv	s8,s6
80002300:	02812b03          	lw	s6,40(sp)
80002304:	02812e23          	sw	s0,60(sp)
80002308:	01c12a03          	lw	s4,28(sp)
8000230c:	00eb06b3          	add	a3,s6,a4
80002310:	04012403          	lw	s0,64(sp)
80002314:	04412983          	lw	s3,68(sp)
80002318:	02412a83          	lw	s5,36(sp)
8000231c:	01b6e463          	bltu	a3,s11,80002324 <_vfprintf_r+0x2294>
80002320:	84cff06f          	j	8000136c <_vfprintf_r+0x12dc>
80002324:	00068d93          	mv	s11,a3
80002328:	844ff06f          	j	8000136c <_vfprintf_r+0x12dc>
8000232c:	01c12703          	lw	a4,28(sp)
80002330:	ffd00793          	li	a5,-3
80002334:	00f74463          	blt	a4,a5,8000233c <_vfprintf_r+0x22ac>
80002338:	00edda63          	bge	s11,a4,8000234c <_vfprintf_r+0x22bc>
8000233c:	ffe48493          	addi	s1,s1,-2
80002340:	fdf4f793          	andi	a5,s1,-33
80002344:	04f12223          	sw	a5,68(sp)
80002348:	bbcfe06f          	j	80000704 <_vfprintf_r+0x674>
8000234c:	02012783          	lw	a5,32(sp)
80002350:	01c12703          	lw	a4,28(sp)
80002354:	2af74063          	blt	a4,a5,800025f4 <_vfprintf_r+0x2564>
80002358:	02812783          	lw	a5,40(sp)
8000235c:	00070c93          	mv	s9,a4
80002360:	0017f793          	andi	a5,a5,1
80002364:	00078663          	beqz	a5,80002370 <_vfprintf_r+0x22e0>
80002368:	02c12783          	lw	a5,44(sp)
8000236c:	00f70cb3          	add	s9,a4,a5
80002370:	02812783          	lw	a5,40(sp)
80002374:	4007f793          	andi	a5,a5,1024
80002378:	00078663          	beqz	a5,80002384 <_vfprintf_r+0x22f4>
8000237c:	01c12783          	lw	a5,28(sp)
80002380:	5cf04263          	bgtz	a5,80002944 <_vfprintf_r+0x28b4>
80002384:	fffcca93          	not	s5,s9
80002388:	41fada93          	srai	s5,s5,0x1f
8000238c:	015cfab3          	and	s5,s9,s5
80002390:	06700493          	li	s1,103
80002394:	02012423          	sw	zero,40(sp)
80002398:	02012223          	sw	zero,36(sp)
8000239c:	c84fe06f          	j	80000820 <_vfprintf_r+0x790>
800023a0:	0c714783          	lbu	a5,199(sp)
800023a4:	00000d93          	li	s11,0
800023a8:	00078463          	beqz	a5,800023b0 <_vfprintf_r+0x2320>
800023ac:	ec0fe06f          	j	80000a6c <_vfprintf_r+0x9dc>
800023b0:	f19fd06f          	j	800002c8 <_vfprintf_r+0x238>
800023b4:	00900793          	li	a5,9
800023b8:	d497e663          	bltu	a5,s1,80001904 <_vfprintf_r+0x1874>
800023bc:	d90ff06f          	j	8000194c <_vfprintf_r+0x18bc>
800023c0:	01012b83          	lw	s7,16(sp)
800023c4:	000b0c13          	mv	s8,s6
800023c8:	cfdfe06f          	j	800010c4 <_vfprintf_r+0x1034>
800023cc:	03412423          	sw	s4,40(sp)
800023d0:	00012823          	sw	zero,16(sp)
800023d4:	00090a13          	mv	s4,s2
800023d8:	800007b7          	lui	a5,0x80000
800023dc:	0067c333          	xor	t1,a5,t1
800023e0:	02d00793          	li	a5,45
800023e4:	04f12c23          	sw	a5,88(sp)
800023e8:	b99ff06f          	j	80001f80 <_vfprintf_r+0x1ef0>
800023ec:	0e410613          	addi	a2,sp,228
800023f0:	000b0593          	mv	a1,s6
800023f4:	000d0513          	mv	a0,s10
800023f8:	070090ef          	jal	ra,8000b468 <__sprint_r>
800023fc:	fc0512e3          	bnez	a0,800023c0 <_vfprintf_r+0x2330>
80002400:	00044683          	lbu	a3,0(s0)
80002404:	0ec12783          	lw	a5,236(sp)
80002408:	10c10893          	addi	a7,sp,268
8000240c:	00dd8db3          	add	s11,s11,a3
80002410:	8f1ff06f          	j	80001d00 <_vfprintf_r+0x1c70>
80002414:	0b010a93          	addi	s5,sp,176
80002418:	0d010793          	addi	a5,sp,208
8000241c:	0dc10813          	addi	a6,sp,220
80002420:	0cc10713          	addi	a4,sp,204
80002424:	000d8693          	mv	a3,s11
80002428:	00200613          	li	a2,2
8000242c:	000a8593          	mv	a1,s5
80002430:	000d0513          	mv	a0,s10
80002434:	0bc12823          	sw	t3,176(sp)
80002438:	05c12023          	sw	t3,64(sp)
8000243c:	0bd12a23          	sw	t4,180(sp)
80002440:	03d12223          	sw	t4,36(sp)
80002444:	0be12c23          	sw	t5,184(sp)
80002448:	03e12023          	sw	t5,32(sp)
8000244c:	0a612e23          	sw	t1,188(sp)
80002450:	00612e23          	sw	t1,28(sp)
80002454:	57d020ef          	jal	ra,800051d0 <_ldtoa_r>
80002458:	04700793          	li	a5,71
8000245c:	01c12303          	lw	t1,28(sp)
80002460:	02012f03          	lw	t5,32(sp)
80002464:	02412e83          	lw	t4,36(sp)
80002468:	04012e03          	lw	t3,64(sp)
8000246c:	05012883          	lw	a7,80(sp)
80002470:	00050b13          	mv	s6,a0
80002474:	08fb9063          	bne	s7,a5,800024f4 <_vfprintf_r+0x2464>
80002478:	02812783          	lw	a5,40(sp)
8000247c:	0017f793          	andi	a5,a5,1
80002480:	2e079663          	bnez	a5,8000276c <_vfprintf_r+0x26dc>
80002484:	04700793          	li	a5,71
80002488:	0dc12703          	lw	a4,220(sp)
8000248c:	04f12223          	sw	a5,68(sp)
80002490:	a44fe06f          	j	800006d4 <_vfprintf_r+0x644>
80002494:	0b010a93          	addi	s5,sp,176
80002498:	0dc10813          	addi	a6,sp,220
8000249c:	0d010793          	addi	a5,sp,208
800024a0:	0cc10713          	addi	a4,sp,204
800024a4:	000d8693          	mv	a3,s11
800024a8:	00300613          	li	a2,3
800024ac:	000a8593          	mv	a1,s5
800024b0:	000d0513          	mv	a0,s10
800024b4:	05112823          	sw	a7,80(sp)
800024b8:	0bc12823          	sw	t3,176(sp)
800024bc:	05c12023          	sw	t3,64(sp)
800024c0:	0bd12a23          	sw	t4,180(sp)
800024c4:	03d12223          	sw	t4,36(sp)
800024c8:	0be12c23          	sw	t5,184(sp)
800024cc:	03e12023          	sw	t5,32(sp)
800024d0:	0a612e23          	sw	t1,188(sp)
800024d4:	00612e23          	sw	t1,28(sp)
800024d8:	4f9020ef          	jal	ra,800051d0 <_ldtoa_r>
800024dc:	01c12303          	lw	t1,28(sp)
800024e0:	02012f03          	lw	t5,32(sp)
800024e4:	02412e83          	lw	t4,36(sp)
800024e8:	04012e03          	lw	t3,64(sp)
800024ec:	05012883          	lw	a7,80(sp)
800024f0:	00050b13          	mv	s6,a0
800024f4:	04600793          	li	a5,70
800024f8:	01bb0933          	add	s2,s6,s11
800024fc:	26fb9e63          	bne	s7,a5,80002778 <_vfprintf_r+0x26e8>
80002500:	000b4683          	lbu	a3,0(s6)
80002504:	03000793          	li	a5,48
80002508:	50f68663          	beq	a3,a5,80002a14 <_vfprintf_r+0x2984>
8000250c:	0a010c93          	addi	s9,sp,160
80002510:	0cc12783          	lw	a5,204(sp)
80002514:	00f90933          	add	s2,s2,a5
80002518:	960fe06f          	j	80000678 <_vfprintf_r+0x5e8>
8000251c:	02d00793          	li	a5,45
80002520:	0cf103a3          	sb	a5,199(sp)
80002524:	da0ff06f          	j	80001ac4 <_vfprintf_r+0x1a34>
80002528:	0e410613          	addi	a2,sp,228
8000252c:	000c0593          	mv	a1,s8
80002530:	000d0513          	mv	a0,s10
80002534:	735080ef          	jal	ra,8000b468 <__sprint_r>
80002538:	00050463          	beqz	a0,80002540 <_vfprintf_r+0x24b0>
8000253c:	b85fe06f          	j	800010c0 <_vfprintf_r+0x1030>
80002540:	0cc12483          	lw	s1,204(sp)
80002544:	0ec12783          	lw	a5,236(sp)
80002548:	10c10893          	addi	a7,sp,268
8000254c:	e69fe06f          	j	800013b4 <_vfprintf_r+0x1324>
80002550:	0c714783          	lbu	a5,199(sp)
80002554:	01212a23          	sw	s2,20(sp)
80002558:	02012423          	sw	zero,40(sp)
8000255c:	02012223          	sw	zero,36(sp)
80002560:	00012e23          	sw	zero,28(sp)
80002564:	000d8a93          	mv	s5,s11
80002568:	000d8c93          	mv	s9,s11
8000256c:	00000d93          	li	s11,0
80002570:	00078463          	beqz	a5,80002578 <_vfprintf_r+0x24e8>
80002574:	cf8fe06f          	j	80000a6c <_vfprintf_r+0x9dc>
80002578:	d51fd06f          	j	800002c8 <_vfprintf_r+0x238>
8000257c:	02812783          	lw	a5,40(sp)
80002580:	01c12703          	lw	a4,28(sp)
80002584:	0017f793          	andi	a5,a5,1
80002588:	01b7e7b3          	or	a5,a5,s11
8000258c:	50e05663          	blez	a4,80002a98 <_vfprintf_r+0x2a08>
80002590:	44079063          	bnez	a5,800029d0 <_vfprintf_r+0x2940>
80002594:	01c12c83          	lw	s9,28(sp)
80002598:	06600493          	li	s1,102
8000259c:	02812783          	lw	a5,40(sp)
800025a0:	4007f793          	andi	a5,a5,1024
800025a4:	3a079263          	bnez	a5,80002948 <_vfprintf_r+0x28b8>
800025a8:	fffcca93          	not	s5,s9
800025ac:	41fada93          	srai	s5,s5,0x1f
800025b0:	015cfab3          	and	s5,s9,s5
800025b4:	de1ff06f          	j	80002394 <_vfprintf_r+0x2304>
800025b8:	80014737          	lui	a4,0x80014
800025bc:	e2c70b13          	addi	s6,a4,-468 # 80013e2c <heap_end.1814+0xffffe448>
800025c0:	d14ff06f          	j	80001ad4 <_vfprintf_r+0x1a44>
800025c4:	0e410613          	addi	a2,sp,228
800025c8:	000c0593          	mv	a1,s8
800025cc:	000d0513          	mv	a0,s10
800025d0:	699080ef          	jal	ra,8000b468 <__sprint_r>
800025d4:	00050463          	beqz	a0,800025dc <_vfprintf_r+0x254c>
800025d8:	ae9fe06f          	j	800010c0 <_vfprintf_r+0x1030>
800025dc:	0cc12483          	lw	s1,204(sp)
800025e0:	02012703          	lw	a4,32(sp)
800025e4:	0ec12783          	lw	a5,236(sp)
800025e8:	10c10893          	addi	a7,sp,268
800025ec:	409704b3          	sub	s1,a4,s1
800025f0:	e11fe06f          	j	80001400 <_vfprintf_r+0x1370>
800025f4:	02012783          	lw	a5,32(sp)
800025f8:	02c12703          	lw	a4,44(sp)
800025fc:	06700493          	li	s1,103
80002600:	00e78cb3          	add	s9,a5,a4
80002604:	01c12783          	lw	a5,28(sp)
80002608:	f8f04ae3          	bgtz	a5,8000259c <_vfprintf_r+0x250c>
8000260c:	40fc8cb3          	sub	s9,s9,a5
80002610:	001c8c93          	addi	s9,s9,1
80002614:	fffcca93          	not	s5,s9
80002618:	41fada93          	srai	s5,s5,0x1f
8000261c:	015cfab3          	and	s5,s9,s5
80002620:	d75ff06f          	j	80002394 <_vfprintf_r+0x2304>
80002624:	800146b7          	lui	a3,0x80014
80002628:	0b468e93          	addi	t4,a3,180 # 800140b4 <heap_end.1814+0xffffe6d0>
8000262c:	b50fe06f          	j	8000097c <_vfprintf_r+0x8ec>
80002630:	fff00793          	li	a5,-1
80002634:	00f12623          	sw	a5,12(sp)
80002638:	dcdfd06f          	j	80000404 <_vfprintf_r+0x374>
8000263c:	ff000613          	li	a2,-16
80002640:	40b004b3          	neg	s1,a1
80002644:	06c5d263          	bge	a1,a2,800026a8 <_vfprintf_r+0x2618>
80002648:	01000913          	li	s2,16
8000264c:	00700c93          	li	s9,7
80002650:	00c0006f          	j	8000265c <_vfprintf_r+0x25cc>
80002654:	ff048493          	addi	s1,s1,-16
80002658:	04995863          	bge	s2,s1,800026a8 <_vfprintf_r+0x2618>
8000265c:	00812703          	lw	a4,8(sp)
80002660:	01078793          	addi	a5,a5,16 # 80000010 <heap_end.1814+0xfffea62c>
80002664:	00168693          	addi	a3,a3,1
80002668:	00e8a023          	sw	a4,0(a7)
8000266c:	0128a223          	sw	s2,4(a7)
80002670:	0ef12623          	sw	a5,236(sp)
80002674:	0ed12423          	sw	a3,232(sp)
80002678:	00888893          	addi	a7,a7,8
8000267c:	fcdcdce3          	bge	s9,a3,80002654 <_vfprintf_r+0x25c4>
80002680:	0e410613          	addi	a2,sp,228
80002684:	000c0593          	mv	a1,s8
80002688:	000d0513          	mv	a0,s10
8000268c:	5dd080ef          	jal	ra,8000b468 <__sprint_r>
80002690:	00050463          	beqz	a0,80002698 <_vfprintf_r+0x2608>
80002694:	a2dfe06f          	j	800010c0 <_vfprintf_r+0x1030>
80002698:	0ec12783          	lw	a5,236(sp)
8000269c:	0e812683          	lw	a3,232(sp)
800026a0:	10c10893          	addi	a7,sp,268
800026a4:	fb1ff06f          	j	80002654 <_vfprintf_r+0x25c4>
800026a8:	00812703          	lw	a4,8(sp)
800026ac:	009787b3          	add	a5,a5,s1
800026b0:	00168693          	addi	a3,a3,1
800026b4:	00e8a023          	sw	a4,0(a7)
800026b8:	0098a223          	sw	s1,4(a7)
800026bc:	0ef12623          	sw	a5,236(sp)
800026c0:	0ed12423          	sw	a3,232(sp)
800026c4:	00700613          	li	a2,7
800026c8:	b2d65a63          	bge	a2,a3,800019fc <_vfprintf_r+0x196c>
800026cc:	0e410613          	addi	a2,sp,228
800026d0:	000c0593          	mv	a1,s8
800026d4:	000d0513          	mv	a0,s10
800026d8:	591080ef          	jal	ra,8000b468 <__sprint_r>
800026dc:	00050463          	beqz	a0,800026e4 <_vfprintf_r+0x2654>
800026e0:	9e1fe06f          	j	800010c0 <_vfprintf_r+0x1030>
800026e4:	0ec12783          	lw	a5,236(sp)
800026e8:	0e812683          	lw	a3,232(sp)
800026ec:	10c10893          	addi	a7,sp,268
800026f0:	9ccfe06f          	j	800008bc <_vfprintf_r+0x82c>
800026f4:	000a0b93          	mv	s7,s4
800026f8:	e20fe06f          	j	80000d18 <_vfprintf_r+0xc88>
800026fc:	05412783          	lw	a5,84(sp)
80002700:	000b8693          	mv	a3,s7
80002704:	0cf12e23          	sw	a5,220(sp)
80002708:	02412783          	lw	a5,36(sp)
8000270c:	fffbc603          	lbu	a2,-1(s7)
80002710:	00f7c583          	lbu	a1,15(a5)
80002714:	02b61063          	bne	a2,a1,80002734 <_vfprintf_r+0x26a4>
80002718:	03000513          	li	a0,48
8000271c:	fea68fa3          	sb	a0,-1(a3)
80002720:	0dc12683          	lw	a3,220(sp)
80002724:	fff68793          	addi	a5,a3,-1
80002728:	0cf12e23          	sw	a5,220(sp)
8000272c:	fff6c603          	lbu	a2,-1(a3)
80002730:	fec586e3          	beq	a1,a2,8000271c <_vfprintf_r+0x268c>
80002734:	00160593          	addi	a1,a2,1
80002738:	03900513          	li	a0,57
8000273c:	0ff5f593          	andi	a1,a1,255
80002740:	00a60663          	beq	a2,a0,8000274c <_vfprintf_r+0x26bc>
80002744:	feb68fa3          	sb	a1,-1(a3)
80002748:	ba5ff06f          	j	800022ec <_vfprintf_r+0x225c>
8000274c:	02412783          	lw	a5,36(sp)
80002750:	00a7c583          	lbu	a1,10(a5)
80002754:	feb68fa3          	sb	a1,-1(a3)
80002758:	b95ff06f          	j	800022ec <_vfprintf_r+0x225c>
8000275c:	03000793          	li	a5,48
80002760:	0cf10423          	sb	a5,200(sp)
80002764:	07800793          	li	a5,120
80002768:	fd8ff06f          	j	80001f40 <_vfprintf_r+0x1eb0>
8000276c:	04700793          	li	a5,71
80002770:	01bb0933          	add	s2,s6,s11
80002774:	04f12223          	sw	a5,68(sp)
80002778:	0a010c93          	addi	s9,sp,160
8000277c:	efdfd06f          	j	80000678 <_vfprintf_r+0x5e8>
80002780:	001d8593          	addi	a1,s11,1
80002784:	000d0513          	mv	a0,s10
80002788:	01112823          	sw	a7,16(sp)
8000278c:	7f1030ef          	jal	ra,8000677c <_malloc_r>
80002790:	01012883          	lw	a7,16(sp)
80002794:	00050b13          	mv	s6,a0
80002798:	36050063          	beqz	a0,80002af8 <_vfprintf_r+0x2a68>
8000279c:	00a12823          	sw	a0,16(sp)
800027a0:	fbcff06f          	j	80001f5c <_vfprintf_r+0x1ecc>
800027a4:	000d9463          	bnez	s11,800027ac <_vfprintf_r+0x271c>
800027a8:	00100d93          	li	s11,1
800027ac:	0fc12303          	lw	t1,252(sp)
800027b0:	0f012e03          	lw	t3,240(sp)
800027b4:	0f412e83          	lw	t4,244(sp)
800027b8:	0f812f03          	lw	t5,248(sp)
800027bc:	100a6913          	ori	s2,s4,256
800027c0:	c00346e3          	bltz	t1,800023cc <_vfprintf_r+0x233c>
800027c4:	0b010a93          	addi	s5,sp,176
800027c8:	0dc10813          	addi	a6,sp,220
800027cc:	0d010793          	addi	a5,sp,208
800027d0:	0cc10713          	addi	a4,sp,204
800027d4:	000d8693          	mv	a3,s11
800027d8:	00200613          	li	a2,2
800027dc:	000a8593          	mv	a1,s5
800027e0:	000d0513          	mv	a0,s10
800027e4:	05112223          	sw	a7,68(sp)
800027e8:	0bc12823          	sw	t3,176(sp)
800027ec:	05c12023          	sw	t3,64(sp)
800027f0:	0bd12a23          	sw	t4,180(sp)
800027f4:	03d12223          	sw	t4,36(sp)
800027f8:	0be12c23          	sw	t5,184(sp)
800027fc:	03e12023          	sw	t5,32(sp)
80002800:	0a612e23          	sw	t1,188(sp)
80002804:	00612e23          	sw	t1,28(sp)
80002808:	1c9020ef          	jal	ra,800051d0 <_ldtoa_r>
8000280c:	01c12303          	lw	t1,28(sp)
80002810:	03412423          	sw	s4,40(sp)
80002814:	02012f03          	lw	t5,32(sp)
80002818:	02412e83          	lw	t4,36(sp)
8000281c:	04012e03          	lw	t3,64(sp)
80002820:	04412883          	lw	a7,68(sp)
80002824:	00050b13          	mv	s6,a0
80002828:	00090a13          	mv	s4,s2
8000282c:	04012c23          	sw	zero,88(sp)
80002830:	00012823          	sw	zero,16(sp)
80002834:	c45ff06f          	j	80002478 <_vfprintf_r+0x23e8>
80002838:	00600d93          	li	s11,6
8000283c:	d8dfd06f          	j	800005c8 <_vfprintf_r+0x538>
80002840:	0b010a93          	addi	s5,sp,176
80002844:	000a8513          	mv	a0,s5
80002848:	05112a23          	sw	a7,84(sp)
8000284c:	0bc12823          	sw	t3,176(sp)
80002850:	0bd12a23          	sw	t4,180(sp)
80002854:	0be12c23          	sw	t5,184(sp)
80002858:	0a612e23          	sw	t1,188(sp)
8000285c:	214110ef          	jal	ra,80013a70 <__trunctfdf2>
80002860:	0cc10613          	addi	a2,sp,204
80002864:	2b1050ef          	jal	ra,80008314 <frexp>
80002868:	00058613          	mv	a2,a1
8000286c:	00050593          	mv	a1,a0
80002870:	000a8513          	mv	a0,s5
80002874:	008110ef          	jal	ra,8001387c <__extenddftf2>
80002878:	0b012783          	lw	a5,176(sp)
8000287c:	0a010c93          	addi	s9,sp,160
80002880:	09010913          	addi	s2,sp,144
80002884:	08f12823          	sw	a5,144(sp)
80002888:	0b412783          	lw	a5,180(sp)
8000288c:	08010613          	addi	a2,sp,128
80002890:	00090593          	mv	a1,s2
80002894:	08f12a23          	sw	a5,148(sp)
80002898:	0b812783          	lw	a5,184(sp)
8000289c:	000c8513          	mv	a0,s9
800028a0:	04c12023          	sw	a2,64(sp)
800028a4:	08f12c23          	sw	a5,152(sp)
800028a8:	0bc12783          	lw	a5,188(sp)
800028ac:	08012023          	sw	zero,128(sp)
800028b0:	08012223          	sw	zero,132(sp)
800028b4:	08f12e23          	sw	a5,156(sp)
800028b8:	3ffc07b7          	lui	a5,0x3ffc0
800028bc:	08f12623          	sw	a5,140(sp)
800028c0:	08012423          	sw	zero,136(sp)
800028c4:	0350e0ef          	jal	ra,800110f8 <__multf3>
800028c8:	0a012803          	lw	a6,160(sp)
800028cc:	0a412e03          	lw	t3,164(sp)
800028d0:	0a812e83          	lw	t4,168(sp)
800028d4:	0ac12f03          	lw	t5,172(sp)
800028d8:	000c8593          	mv	a1,s9
800028dc:	000a8513          	mv	a0,s5
800028e0:	0b012823          	sw	a6,176(sp)
800028e4:	05012823          	sw	a6,80(sp)
800028e8:	0bc12a23          	sw	t3,180(sp)
800028ec:	03c12223          	sw	t3,36(sp)
800028f0:	0bd12c23          	sw	t4,184(sp)
800028f4:	03d12023          	sw	t4,32(sp)
800028f8:	0be12e23          	sw	t5,188(sp)
800028fc:	01e12e23          	sw	t5,28(sp)
80002900:	0a012023          	sw	zero,160(sp)
80002904:	0a012223          	sw	zero,164(sp)
80002908:	0a012423          	sw	zero,168(sp)
8000290c:	0a012623          	sw	zero,172(sp)
80002910:	4940e0ef          	jal	ra,80010da4 <__eqtf2>
80002914:	01c12f03          	lw	t5,28(sp)
80002918:	02012e83          	lw	t4,32(sp)
8000291c:	02412e03          	lw	t3,36(sp)
80002920:	05012803          	lw	a6,80(sp)
80002924:	05412883          	lw	a7,84(sp)
80002928:	00051663          	bnez	a0,80002934 <_vfprintf_r+0x28a4>
8000292c:	00100793          	li	a5,1
80002930:	0cf12623          	sw	a5,204(sp)
80002934:	800147b7          	lui	a5,0x80014
80002938:	e3478793          	addi	a5,a5,-460 # 80013e34 <heap_end.1814+0xffffe450>
8000293c:	02f12223          	sw	a5,36(sp)
80002940:	f54ff06f          	j	80002094 <_vfprintf_r+0x2004>
80002944:	06700493          	li	s1,103
80002948:	03c12603          	lw	a2,60(sp)
8000294c:	0ff00693          	li	a3,255
80002950:	00064783          	lbu	a5,0(a2)
80002954:	1ad78a63          	beq	a5,a3,80002b08 <_vfprintf_r+0x2a78>
80002958:	01c12703          	lw	a4,28(sp)
8000295c:	00000513          	li	a0,0
80002960:	00000593          	li	a1,0
80002964:	00e7de63          	bge	a5,a4,80002980 <_vfprintf_r+0x28f0>
80002968:	40f70733          	sub	a4,a4,a5
8000296c:	00164783          	lbu	a5,1(a2)
80002970:	04078463          	beqz	a5,800029b8 <_vfprintf_r+0x2928>
80002974:	00158593          	addi	a1,a1,1
80002978:	00160613          	addi	a2,a2,1
8000297c:	fed794e3          	bne	a5,a3,80002964 <_vfprintf_r+0x28d4>
80002980:	02c12e23          	sw	a2,60(sp)
80002984:	00e12e23          	sw	a4,28(sp)
80002988:	02b12223          	sw	a1,36(sp)
8000298c:	02a12423          	sw	a0,40(sp)
80002990:	02812703          	lw	a4,40(sp)
80002994:	02412783          	lw	a5,36(sp)
80002998:	00e787b3          	add	a5,a5,a4
8000299c:	04812703          	lw	a4,72(sp)
800029a0:	02e787b3          	mul	a5,a5,a4
800029a4:	01978cb3          	add	s9,a5,s9
800029a8:	fffcca93          	not	s5,s9
800029ac:	41fada93          	srai	s5,s5,0x1f
800029b0:	015cfab3          	and	s5,s9,s5
800029b4:	e6dfd06f          	j	80000820 <_vfprintf_r+0x790>
800029b8:	00064783          	lbu	a5,0(a2)
800029bc:	00150513          	addi	a0,a0,1
800029c0:	fbdff06f          	j	8000297c <_vfprintf_r+0x28ec>
800029c4:	00012823          	sw	zero,16(sp)
800029c8:	00078a13          	mv	s4,a5
800029cc:	a0dff06f          	j	800023d8 <_vfprintf_r+0x2348>
800029d0:	02c12783          	lw	a5,44(sp)
800029d4:	06600493          	li	s1,102
800029d8:	00f70cb3          	add	s9,a4,a5
800029dc:	01bc8cb3          	add	s9,s9,s11
800029e0:	bbdff06f          	j	8000259c <_vfprintf_r+0x250c>
800029e4:	0d610693          	addi	a3,sp,214
800029e8:	00061863          	bnez	a2,800029f8 <_vfprintf_r+0x2968>
800029ec:	03000693          	li	a3,48
800029f0:	0cd10b23          	sb	a3,214(sp)
800029f4:	0d710693          	addi	a3,sp,215
800029f8:	1b010713          	addi	a4,sp,432
800029fc:	03078793          	addi	a5,a5,48
80002a00:	40e68633          	sub	a2,a3,a4
80002a04:	00f68023          	sb	a5,0(a3)
80002a08:	0dd60793          	addi	a5,a2,221
80002a0c:	02f12c23          	sw	a5,56(sp)
80002a10:	dcdfd06f          	j	800007dc <_vfprintf_r+0x74c>
80002a14:	0a010c93          	addi	s9,sp,160
80002a18:	000c8593          	mv	a1,s9
80002a1c:	000a8513          	mv	a0,s5
80002a20:	05112823          	sw	a7,80(sp)
80002a24:	0bc12823          	sw	t3,176(sp)
80002a28:	05c12023          	sw	t3,64(sp)
80002a2c:	0bd12a23          	sw	t4,180(sp)
80002a30:	03d12223          	sw	t4,36(sp)
80002a34:	0be12c23          	sw	t5,184(sp)
80002a38:	03e12023          	sw	t5,32(sp)
80002a3c:	0a612e23          	sw	t1,188(sp)
80002a40:	00612e23          	sw	t1,28(sp)
80002a44:	0a012023          	sw	zero,160(sp)
80002a48:	0a012223          	sw	zero,164(sp)
80002a4c:	0a012423          	sw	zero,168(sp)
80002a50:	0a012623          	sw	zero,172(sp)
80002a54:	3500e0ef          	jal	ra,80010da4 <__eqtf2>
80002a58:	01c12303          	lw	t1,28(sp)
80002a5c:	02012f03          	lw	t5,32(sp)
80002a60:	02412e83          	lw	t4,36(sp)
80002a64:	04012e03          	lw	t3,64(sp)
80002a68:	05012883          	lw	a7,80(sp)
80002a6c:	aa0502e3          	beqz	a0,80002510 <_vfprintf_r+0x2480>
80002a70:	00100793          	li	a5,1
80002a74:	41b787b3          	sub	a5,a5,s11
80002a78:	0cf12623          	sw	a5,204(sp)
80002a7c:	00f90933          	add	s2,s2,a5
80002a80:	bf9fd06f          	j	80000678 <_vfprintf_r+0x5e8>
80002a84:	02812783          	lw	a5,40(sp)
80002a88:	0017f793          	andi	a5,a5,1
80002a8c:	00079463          	bnez	a5,80002a94 <_vfprintf_r+0x2a04>
80002a90:	d6dfd06f          	j	800007fc <_vfprintf_r+0x76c>
80002a94:	d61fd06f          	j	800007f4 <_vfprintf_r+0x764>
80002a98:	00079a63          	bnez	a5,80002aac <_vfprintf_r+0x2a1c>
80002a9c:	00100a93          	li	s5,1
80002aa0:	06600493          	li	s1,102
80002aa4:	00100c93          	li	s9,1
80002aa8:	8edff06f          	j	80002394 <_vfprintf_r+0x2304>
80002aac:	02c12783          	lw	a5,44(sp)
80002ab0:	06600493          	li	s1,102
80002ab4:	00178c93          	addi	s9,a5,1
80002ab8:	01bc8cb3          	add	s9,s9,s11
80002abc:	fffcca93          	not	s5,s9
80002ac0:	41fada93          	srai	s5,s5,0x1f
80002ac4:	015cfab3          	and	s5,s9,s5
80002ac8:	8cdff06f          	j	80002394 <_vfprintf_r+0x2304>
80002acc:	00088713          	mv	a4,a7
80002ad0:	bddfe06f          	j	800016ac <_vfprintf_r+0x161c>
80002ad4:	01412783          	lw	a5,20(sp)
80002ad8:	0007ad83          	lw	s11,0(a5)
80002adc:	00478793          	addi	a5,a5,4
80002ae0:	000dd463          	bgez	s11,80002ae8 <_vfprintf_r+0x2a58>
80002ae4:	fff00d93          	li	s11,-1
80002ae8:	00144483          	lbu	s1,1(s0)
80002aec:	00f12a23          	sw	a5,20(sp)
80002af0:	00070413          	mv	s0,a4
80002af4:	f54fd06f          	j	80000248 <_vfprintf_r+0x1b8>
80002af8:	00cc5783          	lhu	a5,12(s8)
80002afc:	0407e793          	ori	a5,a5,64
80002b00:	00fc1623          	sh	a5,12(s8)
80002b04:	8f1fd06f          	j	800003f4 <_vfprintf_r+0x364>
80002b08:	02012423          	sw	zero,40(sp)
80002b0c:	02012223          	sw	zero,36(sp)
80002b10:	e81ff06f          	j	80002990 <_vfprintf_r+0x2900>
80002b14:	00200793          	li	a5,2
80002b18:	02f12c23          	sw	a5,56(sp)
80002b1c:	cc1fd06f          	j	800007dc <_vfprintf_r+0x74c>

80002b20 <vfprintf>:
80002b20:	80016737          	lui	a4,0x80016
80002b24:	00050793          	mv	a5,a0
80002b28:	99c72503          	lw	a0,-1636(a4) # 8001599c <heap_end.1814+0xffffffb8>
80002b2c:	00060693          	mv	a3,a2
80002b30:	00058613          	mv	a2,a1
80002b34:	00078593          	mv	a1,a5
80002b38:	d58fd06f          	j	80000090 <_vfprintf_r>

80002b3c <__sbprintf>:
80002b3c:	00c5d783          	lhu	a5,12(a1)
80002b40:	0645ae03          	lw	t3,100(a1)
80002b44:	00e5d303          	lhu	t1,14(a1)
80002b48:	01c5a883          	lw	a7,28(a1)
80002b4c:	0245a803          	lw	a6,36(a1)
80002b50:	b8010113          	addi	sp,sp,-1152
80002b54:	ffd7f793          	andi	a5,a5,-3
80002b58:	40000713          	li	a4,1024
80002b5c:	46812c23          	sw	s0,1144(sp)
80002b60:	00f11a23          	sh	a5,20(sp)
80002b64:	00058413          	mv	s0,a1
80002b68:	07010793          	addi	a5,sp,112
80002b6c:	00810593          	addi	a1,sp,8
80002b70:	46912a23          	sw	s1,1140(sp)
80002b74:	47212823          	sw	s2,1136(sp)
80002b78:	46112e23          	sw	ra,1148(sp)
80002b7c:	00050913          	mv	s2,a0
80002b80:	07c12623          	sw	t3,108(sp)
80002b84:	00611b23          	sh	t1,22(sp)
80002b88:	03112223          	sw	a7,36(sp)
80002b8c:	03012623          	sw	a6,44(sp)
80002b90:	00f12423          	sw	a5,8(sp)
80002b94:	00f12c23          	sw	a5,24(sp)
80002b98:	00e12823          	sw	a4,16(sp)
80002b9c:	00e12e23          	sw	a4,28(sp)
80002ba0:	02012023          	sw	zero,32(sp)
80002ba4:	cecfd0ef          	jal	ra,80000090 <_vfprintf_r>
80002ba8:	00050493          	mv	s1,a0
80002bac:	02055c63          	bgez	a0,80002be4 <__sbprintf+0xa8>
80002bb0:	01415783          	lhu	a5,20(sp)
80002bb4:	0407f793          	andi	a5,a5,64
80002bb8:	00078863          	beqz	a5,80002bc8 <__sbprintf+0x8c>
80002bbc:	00c45783          	lhu	a5,12(s0)
80002bc0:	0407e793          	ori	a5,a5,64
80002bc4:	00f41623          	sh	a5,12(s0)
80002bc8:	47c12083          	lw	ra,1148(sp)
80002bcc:	47812403          	lw	s0,1144(sp)
80002bd0:	47012903          	lw	s2,1136(sp)
80002bd4:	00048513          	mv	a0,s1
80002bd8:	47412483          	lw	s1,1140(sp)
80002bdc:	48010113          	addi	sp,sp,1152
80002be0:	00008067          	ret
80002be4:	00810593          	addi	a1,sp,8
80002be8:	00090513          	mv	a0,s2
80002bec:	3cc000ef          	jal	ra,80002fb8 <_fflush_r>
80002bf0:	fc0500e3          	beqz	a0,80002bb0 <__sbprintf+0x74>
80002bf4:	fff00493          	li	s1,-1
80002bf8:	fb9ff06f          	j	80002bb0 <__sbprintf+0x74>

80002bfc <__swsetup_r>:
80002bfc:	800167b7          	lui	a5,0x80016
80002c00:	99c7a783          	lw	a5,-1636(a5) # 8001599c <heap_end.1814+0xffffffb8>
80002c04:	ff010113          	addi	sp,sp,-16
80002c08:	00812423          	sw	s0,8(sp)
80002c0c:	00912223          	sw	s1,4(sp)
80002c10:	00112623          	sw	ra,12(sp)
80002c14:	00050493          	mv	s1,a0
80002c18:	00058413          	mv	s0,a1
80002c1c:	00078663          	beqz	a5,80002c28 <__swsetup_r+0x2c>
80002c20:	0387a703          	lw	a4,56(a5)
80002c24:	0e070063          	beqz	a4,80002d04 <__swsetup_r+0x108>
80002c28:	00c41703          	lh	a4,12(s0)
80002c2c:	01071793          	slli	a5,a4,0x10
80002c30:	00877693          	andi	a3,a4,8
80002c34:	0107d793          	srli	a5,a5,0x10
80002c38:	04068063          	beqz	a3,80002c78 <__swsetup_r+0x7c>
80002c3c:	01042683          	lw	a3,16(s0)
80002c40:	06068063          	beqz	a3,80002ca0 <__swsetup_r+0xa4>
80002c44:	0017f613          	andi	a2,a5,1
80002c48:	08060463          	beqz	a2,80002cd0 <__swsetup_r+0xd4>
80002c4c:	01442603          	lw	a2,20(s0)
80002c50:	00042423          	sw	zero,8(s0)
80002c54:	00000513          	li	a0,0
80002c58:	40c00633          	neg	a2,a2
80002c5c:	00c42c23          	sw	a2,24(s0)
80002c60:	08068663          	beqz	a3,80002cec <__swsetup_r+0xf0>
80002c64:	00c12083          	lw	ra,12(sp)
80002c68:	00812403          	lw	s0,8(sp)
80002c6c:	00412483          	lw	s1,4(sp)
80002c70:	01010113          	addi	sp,sp,16
80002c74:	00008067          	ret
80002c78:	0107f693          	andi	a3,a5,16
80002c7c:	0c068463          	beqz	a3,80002d44 <__swsetup_r+0x148>
80002c80:	0047f793          	andi	a5,a5,4
80002c84:	08079663          	bnez	a5,80002d10 <__swsetup_r+0x114>
80002c88:	01042683          	lw	a3,16(s0)
80002c8c:	00876713          	ori	a4,a4,8
80002c90:	01071793          	slli	a5,a4,0x10
80002c94:	00e41623          	sh	a4,12(s0)
80002c98:	0107d793          	srli	a5,a5,0x10
80002c9c:	fa0694e3          	bnez	a3,80002c44 <__swsetup_r+0x48>
80002ca0:	2807f613          	andi	a2,a5,640
80002ca4:	20000593          	li	a1,512
80002ca8:	f8b60ee3          	beq	a2,a1,80002c44 <__swsetup_r+0x48>
80002cac:	00040593          	mv	a1,s0
80002cb0:	00048513          	mv	a0,s1
80002cb4:	1a9030ef          	jal	ra,8000665c <__smakebuf_r>
80002cb8:	00c41703          	lh	a4,12(s0)
80002cbc:	01042683          	lw	a3,16(s0)
80002cc0:	01071793          	slli	a5,a4,0x10
80002cc4:	0107d793          	srli	a5,a5,0x10
80002cc8:	0017f613          	andi	a2,a5,1
80002ccc:	f80610e3          	bnez	a2,80002c4c <__swsetup_r+0x50>
80002cd0:	0027f613          	andi	a2,a5,2
80002cd4:	00000593          	li	a1,0
80002cd8:	00061463          	bnez	a2,80002ce0 <__swsetup_r+0xe4>
80002cdc:	01442583          	lw	a1,20(s0)
80002ce0:	00b42423          	sw	a1,8(s0)
80002ce4:	00000513          	li	a0,0
80002ce8:	f6069ee3          	bnez	a3,80002c64 <__swsetup_r+0x68>
80002cec:	0807f793          	andi	a5,a5,128
80002cf0:	f6078ae3          	beqz	a5,80002c64 <__swsetup_r+0x68>
80002cf4:	04076713          	ori	a4,a4,64
80002cf8:	00e41623          	sh	a4,12(s0)
80002cfc:	fff00513          	li	a0,-1
80002d00:	f65ff06f          	j	80002c64 <__swsetup_r+0x68>
80002d04:	00078513          	mv	a0,a5
80002d08:	65c000ef          	jal	ra,80003364 <__sinit>
80002d0c:	f1dff06f          	j	80002c28 <__swsetup_r+0x2c>
80002d10:	03042583          	lw	a1,48(s0)
80002d14:	00058e63          	beqz	a1,80002d30 <__swsetup_r+0x134>
80002d18:	04040793          	addi	a5,s0,64
80002d1c:	00f58863          	beq	a1,a5,80002d2c <__swsetup_r+0x130>
80002d20:	00048513          	mv	a0,s1
80002d24:	7c8000ef          	jal	ra,800034ec <_free_r>
80002d28:	00c41703          	lh	a4,12(s0)
80002d2c:	02042823          	sw	zero,48(s0)
80002d30:	01042683          	lw	a3,16(s0)
80002d34:	fdb77713          	andi	a4,a4,-37
80002d38:	00042223          	sw	zero,4(s0)
80002d3c:	00d42023          	sw	a3,0(s0)
80002d40:	f4dff06f          	j	80002c8c <__swsetup_r+0x90>
80002d44:	00900793          	li	a5,9
80002d48:	00f4a023          	sw	a5,0(s1)
80002d4c:	04076713          	ori	a4,a4,64
80002d50:	00e41623          	sh	a4,12(s0)
80002d54:	fff00513          	li	a0,-1
80002d58:	f0dff06f          	j	80002c64 <__swsetup_r+0x68>

80002d5c <__sflush_r>:
80002d5c:	00c59783          	lh	a5,12(a1)
80002d60:	fe010113          	addi	sp,sp,-32
80002d64:	00812c23          	sw	s0,24(sp)
80002d68:	01312623          	sw	s3,12(sp)
80002d6c:	00112e23          	sw	ra,28(sp)
80002d70:	00912a23          	sw	s1,20(sp)
80002d74:	01212823          	sw	s2,16(sp)
80002d78:	0087f693          	andi	a3,a5,8
80002d7c:	00058413          	mv	s0,a1
80002d80:	00050993          	mv	s3,a0
80002d84:	10069a63          	bnez	a3,80002e98 <__sflush_r+0x13c>
80002d88:	00001737          	lui	a4,0x1
80002d8c:	80070713          	addi	a4,a4,-2048 # 800 <_printf_r-0x7ffff800>
80002d90:	0045a683          	lw	a3,4(a1)
80002d94:	00e7e7b3          	or	a5,a5,a4
80002d98:	00f59623          	sh	a5,12(a1)
80002d9c:	18d05463          	blez	a3,80002f24 <__sflush_r+0x1c8>
80002da0:	02842703          	lw	a4,40(s0)
80002da4:	0c070a63          	beqz	a4,80002e78 <__sflush_r+0x11c>
80002da8:	0009a483          	lw	s1,0(s3)
80002dac:	01079693          	slli	a3,a5,0x10
80002db0:	0009a023          	sw	zero,0(s3)
80002db4:	01379613          	slli	a2,a5,0x13
80002db8:	01c42583          	lw	a1,28(s0)
80002dbc:	0106d693          	srli	a3,a3,0x10
80002dc0:	16064863          	bltz	a2,80002f30 <__sflush_r+0x1d4>
80002dc4:	00100693          	li	a3,1
80002dc8:	00000613          	li	a2,0
80002dcc:	00098513          	mv	a0,s3
80002dd0:	000700e7          	jalr	a4
80002dd4:	fff00793          	li	a5,-1
80002dd8:	18f50c63          	beq	a0,a5,80002f70 <__sflush_r+0x214>
80002ddc:	00c45683          	lhu	a3,12(s0)
80002de0:	02842703          	lw	a4,40(s0)
80002de4:	01c42583          	lw	a1,28(s0)
80002de8:	0046f693          	andi	a3,a3,4
80002dec:	00068e63          	beqz	a3,80002e08 <__sflush_r+0xac>
80002df0:	00442683          	lw	a3,4(s0)
80002df4:	03042783          	lw	a5,48(s0)
80002df8:	40d50533          	sub	a0,a0,a3
80002dfc:	00078663          	beqz	a5,80002e08 <__sflush_r+0xac>
80002e00:	03c42783          	lw	a5,60(s0)
80002e04:	40f50533          	sub	a0,a0,a5
80002e08:	00050613          	mv	a2,a0
80002e0c:	00000693          	li	a3,0
80002e10:	00098513          	mv	a0,s3
80002e14:	000700e7          	jalr	a4
80002e18:	fff00793          	li	a5,-1
80002e1c:	10f51e63          	bne	a0,a5,80002f38 <__sflush_r+0x1dc>
80002e20:	0009a703          	lw	a4,0(s3)
80002e24:	00c41783          	lh	a5,12(s0)
80002e28:	16070863          	beqz	a4,80002f98 <__sflush_r+0x23c>
80002e2c:	01d00693          	li	a3,29
80002e30:	00d70663          	beq	a4,a3,80002e3c <__sflush_r+0xe0>
80002e34:	01600693          	li	a3,22
80002e38:	0cd71463          	bne	a4,a3,80002f00 <__sflush_r+0x1a4>
80002e3c:	01042683          	lw	a3,16(s0)
80002e40:	fffff737          	lui	a4,0xfffff
80002e44:	7ff70713          	addi	a4,a4,2047 # fffff7ff <heap_end.1814+0x7ffe9e1b>
80002e48:	00e7f7b3          	and	a5,a5,a4
80002e4c:	00f41623          	sh	a5,12(s0)
80002e50:	00042223          	sw	zero,4(s0)
80002e54:	00d42023          	sw	a3,0(s0)
80002e58:	03042583          	lw	a1,48(s0)
80002e5c:	0099a023          	sw	s1,0(s3)
80002e60:	00058c63          	beqz	a1,80002e78 <__sflush_r+0x11c>
80002e64:	04040793          	addi	a5,s0,64
80002e68:	00f58663          	beq	a1,a5,80002e74 <__sflush_r+0x118>
80002e6c:	00098513          	mv	a0,s3
80002e70:	67c000ef          	jal	ra,800034ec <_free_r>
80002e74:	02042823          	sw	zero,48(s0)
80002e78:	00000513          	li	a0,0
80002e7c:	01c12083          	lw	ra,28(sp)
80002e80:	01812403          	lw	s0,24(sp)
80002e84:	01412483          	lw	s1,20(sp)
80002e88:	01012903          	lw	s2,16(sp)
80002e8c:	00c12983          	lw	s3,12(sp)
80002e90:	02010113          	addi	sp,sp,32
80002e94:	00008067          	ret
80002e98:	0105a903          	lw	s2,16(a1)
80002e9c:	fc090ee3          	beqz	s2,80002e78 <__sflush_r+0x11c>
80002ea0:	0005a483          	lw	s1,0(a1)
80002ea4:	01079713          	slli	a4,a5,0x10
80002ea8:	01075713          	srli	a4,a4,0x10
80002eac:	00377713          	andi	a4,a4,3
80002eb0:	0125a023          	sw	s2,0(a1)
80002eb4:	412484b3          	sub	s1,s1,s2
80002eb8:	00000793          	li	a5,0
80002ebc:	00071463          	bnez	a4,80002ec4 <__sflush_r+0x168>
80002ec0:	0145a783          	lw	a5,20(a1)
80002ec4:	00f42423          	sw	a5,8(s0)
80002ec8:	00904863          	bgtz	s1,80002ed8 <__sflush_r+0x17c>
80002ecc:	fadff06f          	j	80002e78 <__sflush_r+0x11c>
80002ed0:	00a90933          	add	s2,s2,a0
80002ed4:	fa9052e3          	blez	s1,80002e78 <__sflush_r+0x11c>
80002ed8:	02442783          	lw	a5,36(s0)
80002edc:	01c42583          	lw	a1,28(s0)
80002ee0:	00048693          	mv	a3,s1
80002ee4:	00090613          	mv	a2,s2
80002ee8:	00098513          	mv	a0,s3
80002eec:	000780e7          	jalr	a5
80002ef0:	40a484b3          	sub	s1,s1,a0
80002ef4:	fca04ee3          	bgtz	a0,80002ed0 <__sflush_r+0x174>
80002ef8:	00c45783          	lhu	a5,12(s0)
80002efc:	fff00513          	li	a0,-1
80002f00:	0407e793          	ori	a5,a5,64
80002f04:	01c12083          	lw	ra,28(sp)
80002f08:	00f41623          	sh	a5,12(s0)
80002f0c:	01812403          	lw	s0,24(sp)
80002f10:	01412483          	lw	s1,20(sp)
80002f14:	01012903          	lw	s2,16(sp)
80002f18:	00c12983          	lw	s3,12(sp)
80002f1c:	02010113          	addi	sp,sp,32
80002f20:	00008067          	ret
80002f24:	03c5a703          	lw	a4,60(a1)
80002f28:	e6e04ce3          	bgtz	a4,80002da0 <__sflush_r+0x44>
80002f2c:	f4dff06f          	j	80002e78 <__sflush_r+0x11c>
80002f30:	05042503          	lw	a0,80(s0)
80002f34:	eb5ff06f          	j	80002de8 <__sflush_r+0x8c>
80002f38:	00c45783          	lhu	a5,12(s0)
80002f3c:	fffff737          	lui	a4,0xfffff
80002f40:	7ff70713          	addi	a4,a4,2047 # fffff7ff <heap_end.1814+0x7ffe9e1b>
80002f44:	00e7f7b3          	and	a5,a5,a4
80002f48:	01042683          	lw	a3,16(s0)
80002f4c:	01079793          	slli	a5,a5,0x10
80002f50:	4107d793          	srai	a5,a5,0x10
80002f54:	00f41623          	sh	a5,12(s0)
80002f58:	00042223          	sw	zero,4(s0)
80002f5c:	00d42023          	sw	a3,0(s0)
80002f60:	01379713          	slli	a4,a5,0x13
80002f64:	ee075ae3          	bgez	a4,80002e58 <__sflush_r+0xfc>
80002f68:	04a42823          	sw	a0,80(s0)
80002f6c:	eedff06f          	j	80002e58 <__sflush_r+0xfc>
80002f70:	0009a783          	lw	a5,0(s3)
80002f74:	e60784e3          	beqz	a5,80002ddc <__sflush_r+0x80>
80002f78:	01d00713          	li	a4,29
80002f7c:	02e78863          	beq	a5,a4,80002fac <__sflush_r+0x250>
80002f80:	01600713          	li	a4,22
80002f84:	02e78463          	beq	a5,a4,80002fac <__sflush_r+0x250>
80002f88:	00c45783          	lhu	a5,12(s0)
80002f8c:	0407e793          	ori	a5,a5,64
80002f90:	00f41623          	sh	a5,12(s0)
80002f94:	ee9ff06f          	j	80002e7c <__sflush_r+0x120>
80002f98:	fffff737          	lui	a4,0xfffff
80002f9c:	7ff70713          	addi	a4,a4,2047 # fffff7ff <heap_end.1814+0x7ffe9e1b>
80002fa0:	01042683          	lw	a3,16(s0)
80002fa4:	00e7f7b3          	and	a5,a5,a4
80002fa8:	fadff06f          	j	80002f54 <__sflush_r+0x1f8>
80002fac:	0099a023          	sw	s1,0(s3)
80002fb0:	00000513          	li	a0,0
80002fb4:	ec9ff06f          	j	80002e7c <__sflush_r+0x120>

80002fb8 <_fflush_r>:
80002fb8:	fe010113          	addi	sp,sp,-32
80002fbc:	00812c23          	sw	s0,24(sp)
80002fc0:	00112e23          	sw	ra,28(sp)
80002fc4:	00050413          	mv	s0,a0
80002fc8:	00050663          	beqz	a0,80002fd4 <_fflush_r+0x1c>
80002fcc:	03852783          	lw	a5,56(a0)
80002fd0:	02078063          	beqz	a5,80002ff0 <_fflush_r+0x38>
80002fd4:	00c59783          	lh	a5,12(a1)
80002fd8:	02079663          	bnez	a5,80003004 <_fflush_r+0x4c>
80002fdc:	01c12083          	lw	ra,28(sp)
80002fe0:	01812403          	lw	s0,24(sp)
80002fe4:	00000513          	li	a0,0
80002fe8:	02010113          	addi	sp,sp,32
80002fec:	00008067          	ret
80002ff0:	00b12623          	sw	a1,12(sp)
80002ff4:	370000ef          	jal	ra,80003364 <__sinit>
80002ff8:	00c12583          	lw	a1,12(sp)
80002ffc:	00c59783          	lh	a5,12(a1)
80003000:	fc078ee3          	beqz	a5,80002fdc <_fflush_r+0x24>
80003004:	00040513          	mv	a0,s0
80003008:	01812403          	lw	s0,24(sp)
8000300c:	01c12083          	lw	ra,28(sp)
80003010:	02010113          	addi	sp,sp,32
80003014:	d49ff06f          	j	80002d5c <__sflush_r>

80003018 <fflush>:
80003018:	00050593          	mv	a1,a0
8000301c:	00050863          	beqz	a0,8000302c <fflush+0x14>
80003020:	800167b7          	lui	a5,0x80016
80003024:	99c7a503          	lw	a0,-1636(a5) # 8001599c <heap_end.1814+0xffffffb8>
80003028:	f91ff06f          	j	80002fb8 <_fflush_r>
8000302c:	800157b7          	lui	a5,0x80015
80003030:	bac7a503          	lw	a0,-1108(a5) # 80014bac <heap_end.1814+0xfffff1c8>
80003034:	800035b7          	lui	a1,0x80003
80003038:	fb858593          	addi	a1,a1,-72 # 80002fb8 <heap_end.1814+0xfffed5d4>
8000303c:	0690006f          	j	800038a4 <_fwalk_reent>

80003040 <__fp_lock>:
80003040:	00000513          	li	a0,0
80003044:	00008067          	ret

80003048 <_cleanup_r>:
80003048:	8000d5b7          	lui	a1,0x8000d
8000304c:	9c458593          	addi	a1,a1,-1596 # 8000c9c4 <heap_end.1814+0xffff6fe0>
80003050:	0550006f          	j	800038a4 <_fwalk_reent>

80003054 <__sinit.part.0>:
80003054:	fe010113          	addi	sp,sp,-32
80003058:	800037b7          	lui	a5,0x80003
8000305c:	00112e23          	sw	ra,28(sp)
80003060:	00812c23          	sw	s0,24(sp)
80003064:	00912a23          	sw	s1,20(sp)
80003068:	01212823          	sw	s2,16(sp)
8000306c:	01312623          	sw	s3,12(sp)
80003070:	01412423          	sw	s4,8(sp)
80003074:	01512223          	sw	s5,4(sp)
80003078:	01612023          	sw	s6,0(sp)
8000307c:	00452403          	lw	s0,4(a0)
80003080:	04878793          	addi	a5,a5,72 # 80003048 <heap_end.1814+0xfffed664>
80003084:	02f52e23          	sw	a5,60(a0)
80003088:	2ec50713          	addi	a4,a0,748
8000308c:	00300793          	li	a5,3
80003090:	2ee52423          	sw	a4,744(a0)
80003094:	2ef52223          	sw	a5,740(a0)
80003098:	2e052023          	sw	zero,736(a0)
8000309c:	00400793          	li	a5,4
800030a0:	00050913          	mv	s2,a0
800030a4:	00f42623          	sw	a5,12(s0)
800030a8:	00800613          	li	a2,8
800030ac:	00000593          	li	a1,0
800030b0:	06042223          	sw	zero,100(s0)
800030b4:	00042023          	sw	zero,0(s0)
800030b8:	00042223          	sw	zero,4(s0)
800030bc:	00042423          	sw	zero,8(s0)
800030c0:	00042823          	sw	zero,16(s0)
800030c4:	00042a23          	sw	zero,20(s0)
800030c8:	00042c23          	sw	zero,24(s0)
800030cc:	05c40513          	addi	a0,s0,92
800030d0:	7ad030ef          	jal	ra,8000707c <memset>
800030d4:	80008b37          	lui	s6,0x80008
800030d8:	00892483          	lw	s1,8(s2) # 3ffe0008 <_printf_r-0x4001fff8>
800030dc:	80008ab7          	lui	s5,0x80008
800030e0:	80008a37          	lui	s4,0x80008
800030e4:	800089b7          	lui	s3,0x80008
800030e8:	4a8b0b13          	addi	s6,s6,1192 # 800084a8 <heap_end.1814+0xffff2ac4>
800030ec:	50ca8a93          	addi	s5,s5,1292 # 8000850c <heap_end.1814+0xffff2b28>
800030f0:	594a0a13          	addi	s4,s4,1428 # 80008594 <heap_end.1814+0xffff2bb0>
800030f4:	5fc98993          	addi	s3,s3,1532 # 800085fc <heap_end.1814+0xffff2c18>
800030f8:	000107b7          	lui	a5,0x10
800030fc:	03642023          	sw	s6,32(s0)
80003100:	03542223          	sw	s5,36(s0)
80003104:	03442423          	sw	s4,40(s0)
80003108:	03342623          	sw	s3,44(s0)
8000310c:	00842e23          	sw	s0,28(s0)
80003110:	00978793          	addi	a5,a5,9 # 10009 <_printf_r-0x7ffefff7>
80003114:	00f4a623          	sw	a5,12(s1)
80003118:	00800613          	li	a2,8
8000311c:	00000593          	li	a1,0
80003120:	0604a223          	sw	zero,100(s1)
80003124:	0004a023          	sw	zero,0(s1)
80003128:	0004a223          	sw	zero,4(s1)
8000312c:	0004a423          	sw	zero,8(s1)
80003130:	0004a823          	sw	zero,16(s1)
80003134:	0004aa23          	sw	zero,20(s1)
80003138:	0004ac23          	sw	zero,24(s1)
8000313c:	05c48513          	addi	a0,s1,92
80003140:	73d030ef          	jal	ra,8000707c <memset>
80003144:	00c92403          	lw	s0,12(s2)
80003148:	000207b7          	lui	a5,0x20
8000314c:	0364a023          	sw	s6,32(s1)
80003150:	0354a223          	sw	s5,36(s1)
80003154:	0344a423          	sw	s4,40(s1)
80003158:	0334a623          	sw	s3,44(s1)
8000315c:	0094ae23          	sw	s1,28(s1)
80003160:	01278793          	addi	a5,a5,18 # 20012 <_printf_r-0x7ffdffee>
80003164:	00f42623          	sw	a5,12(s0)
80003168:	06042223          	sw	zero,100(s0)
8000316c:	00042023          	sw	zero,0(s0)
80003170:	00042223          	sw	zero,4(s0)
80003174:	00042423          	sw	zero,8(s0)
80003178:	00042823          	sw	zero,16(s0)
8000317c:	00042a23          	sw	zero,20(s0)
80003180:	00042c23          	sw	zero,24(s0)
80003184:	05c40513          	addi	a0,s0,92
80003188:	00800613          	li	a2,8
8000318c:	00000593          	li	a1,0
80003190:	6ed030ef          	jal	ra,8000707c <memset>
80003194:	01c12083          	lw	ra,28(sp)
80003198:	03642023          	sw	s6,32(s0)
8000319c:	03542223          	sw	s5,36(s0)
800031a0:	03442423          	sw	s4,40(s0)
800031a4:	03342623          	sw	s3,44(s0)
800031a8:	00842e23          	sw	s0,28(s0)
800031ac:	01812403          	lw	s0,24(sp)
800031b0:	00100793          	li	a5,1
800031b4:	02f92c23          	sw	a5,56(s2)
800031b8:	01412483          	lw	s1,20(sp)
800031bc:	01012903          	lw	s2,16(sp)
800031c0:	00c12983          	lw	s3,12(sp)
800031c4:	00812a03          	lw	s4,8(sp)
800031c8:	00412a83          	lw	s5,4(sp)
800031cc:	00012b03          	lw	s6,0(sp)
800031d0:	02010113          	addi	sp,sp,32
800031d4:	00008067          	ret

800031d8 <__fp_unlock>:
800031d8:	00000513          	li	a0,0
800031dc:	00008067          	ret

800031e0 <__sfmoreglue>:
800031e0:	ff010113          	addi	sp,sp,-16
800031e4:	00912223          	sw	s1,4(sp)
800031e8:	06800613          	li	a2,104
800031ec:	fff58493          	addi	s1,a1,-1
800031f0:	02c484b3          	mul	s1,s1,a2
800031f4:	01212023          	sw	s2,0(sp)
800031f8:	00058913          	mv	s2,a1
800031fc:	00812423          	sw	s0,8(sp)
80003200:	00112623          	sw	ra,12(sp)
80003204:	07448593          	addi	a1,s1,116
80003208:	574030ef          	jal	ra,8000677c <_malloc_r>
8000320c:	00050413          	mv	s0,a0
80003210:	02050063          	beqz	a0,80003230 <__sfmoreglue+0x50>
80003214:	00c50513          	addi	a0,a0,12
80003218:	00042023          	sw	zero,0(s0)
8000321c:	01242223          	sw	s2,4(s0)
80003220:	00a42423          	sw	a0,8(s0)
80003224:	06848613          	addi	a2,s1,104
80003228:	00000593          	li	a1,0
8000322c:	651030ef          	jal	ra,8000707c <memset>
80003230:	00c12083          	lw	ra,12(sp)
80003234:	00040513          	mv	a0,s0
80003238:	00812403          	lw	s0,8(sp)
8000323c:	00412483          	lw	s1,4(sp)
80003240:	00012903          	lw	s2,0(sp)
80003244:	01010113          	addi	sp,sp,16
80003248:	00008067          	ret

8000324c <__sfp>:
8000324c:	fe010113          	addi	sp,sp,-32
80003250:	800157b7          	lui	a5,0x80015
80003254:	01212823          	sw	s2,16(sp)
80003258:	bac7a903          	lw	s2,-1108(a5) # 80014bac <heap_end.1814+0xfffff1c8>
8000325c:	01312623          	sw	s3,12(sp)
80003260:	00112e23          	sw	ra,28(sp)
80003264:	03892783          	lw	a5,56(s2)
80003268:	00812c23          	sw	s0,24(sp)
8000326c:	00912a23          	sw	s1,20(sp)
80003270:	00050993          	mv	s3,a0
80003274:	0a078663          	beqz	a5,80003320 <__sfp+0xd4>
80003278:	2e090913          	addi	s2,s2,736
8000327c:	fff00493          	li	s1,-1
80003280:	00492783          	lw	a5,4(s2)
80003284:	00892403          	lw	s0,8(s2)
80003288:	fff78793          	addi	a5,a5,-1
8000328c:	0007d863          	bgez	a5,8000329c <__sfp+0x50>
80003290:	0800006f          	j	80003310 <__sfp+0xc4>
80003294:	06840413          	addi	s0,s0,104
80003298:	06978c63          	beq	a5,s1,80003310 <__sfp+0xc4>
8000329c:	00c41703          	lh	a4,12(s0)
800032a0:	fff78793          	addi	a5,a5,-1
800032a4:	fe0718e3          	bnez	a4,80003294 <__sfp+0x48>
800032a8:	ffff07b7          	lui	a5,0xffff0
800032ac:	00178793          	addi	a5,a5,1 # ffff0001 <heap_end.1814+0x7ffda61d>
800032b0:	06042223          	sw	zero,100(s0)
800032b4:	00042023          	sw	zero,0(s0)
800032b8:	00042223          	sw	zero,4(s0)
800032bc:	00042423          	sw	zero,8(s0)
800032c0:	00f42623          	sw	a5,12(s0)
800032c4:	00042823          	sw	zero,16(s0)
800032c8:	00042a23          	sw	zero,20(s0)
800032cc:	00042c23          	sw	zero,24(s0)
800032d0:	00800613          	li	a2,8
800032d4:	00000593          	li	a1,0
800032d8:	05c40513          	addi	a0,s0,92
800032dc:	5a1030ef          	jal	ra,8000707c <memset>
800032e0:	02042823          	sw	zero,48(s0)
800032e4:	02042a23          	sw	zero,52(s0)
800032e8:	04042223          	sw	zero,68(s0)
800032ec:	04042423          	sw	zero,72(s0)
800032f0:	01c12083          	lw	ra,28(sp)
800032f4:	00040513          	mv	a0,s0
800032f8:	01812403          	lw	s0,24(sp)
800032fc:	01412483          	lw	s1,20(sp)
80003300:	01012903          	lw	s2,16(sp)
80003304:	00c12983          	lw	s3,12(sp)
80003308:	02010113          	addi	sp,sp,32
8000330c:	00008067          	ret
80003310:	00092403          	lw	s0,0(s2)
80003314:	00040c63          	beqz	s0,8000332c <__sfp+0xe0>
80003318:	00040913          	mv	s2,s0
8000331c:	f65ff06f          	j	80003280 <__sfp+0x34>
80003320:	00090513          	mv	a0,s2
80003324:	d31ff0ef          	jal	ra,80003054 <__sinit.part.0>
80003328:	f51ff06f          	j	80003278 <__sfp+0x2c>
8000332c:	00400593          	li	a1,4
80003330:	00098513          	mv	a0,s3
80003334:	eadff0ef          	jal	ra,800031e0 <__sfmoreglue>
80003338:	00a92023          	sw	a0,0(s2)
8000333c:	00050413          	mv	s0,a0
80003340:	fc051ce3          	bnez	a0,80003318 <__sfp+0xcc>
80003344:	00c00793          	li	a5,12
80003348:	00f9a023          	sw	a5,0(s3)
8000334c:	fa5ff06f          	j	800032f0 <__sfp+0xa4>

80003350 <_cleanup>:
80003350:	800157b7          	lui	a5,0x80015
80003354:	bac7a503          	lw	a0,-1108(a5) # 80014bac <heap_end.1814+0xfffff1c8>
80003358:	8000d5b7          	lui	a1,0x8000d
8000335c:	9c458593          	addi	a1,a1,-1596 # 8000c9c4 <heap_end.1814+0xffff6fe0>
80003360:	5440006f          	j	800038a4 <_fwalk_reent>

80003364 <__sinit>:
80003364:	03852783          	lw	a5,56(a0)
80003368:	00078463          	beqz	a5,80003370 <__sinit+0xc>
8000336c:	00008067          	ret
80003370:	ce5ff06f          	j	80003054 <__sinit.part.0>

80003374 <__sfp_lock_acquire>:
80003374:	00008067          	ret

80003378 <__sfp_lock_release>:
80003378:	00008067          	ret

8000337c <__sinit_lock_acquire>:
8000337c:	00008067          	ret

80003380 <__sinit_lock_release>:
80003380:	00008067          	ret

80003384 <__fp_lock_all>:
80003384:	800167b7          	lui	a5,0x80016
80003388:	99c7a503          	lw	a0,-1636(a5) # 8001599c <heap_end.1814+0xffffffb8>
8000338c:	800035b7          	lui	a1,0x80003
80003390:	04058593          	addi	a1,a1,64 # 80003040 <heap_end.1814+0xfffed65c>
80003394:	46c0006f          	j	80003800 <_fwalk>

80003398 <__fp_unlock_all>:
80003398:	800167b7          	lui	a5,0x80016
8000339c:	99c7a503          	lw	a0,-1636(a5) # 8001599c <heap_end.1814+0xffffffb8>
800033a0:	800035b7          	lui	a1,0x80003
800033a4:	1d858593          	addi	a1,a1,472 # 800031d8 <heap_end.1814+0xfffed7f4>
800033a8:	4580006f          	j	80003800 <_fwalk>

800033ac <_malloc_trim_r>:
800033ac:	fe010113          	addi	sp,sp,-32
800033b0:	01312623          	sw	s3,12(sp)
800033b4:	800159b7          	lui	s3,0x80015
800033b8:	00812c23          	sw	s0,24(sp)
800033bc:	00912a23          	sw	s1,20(sp)
800033c0:	01212823          	sw	s2,16(sp)
800033c4:	01412423          	sw	s4,8(sp)
800033c8:	00112e23          	sw	ra,28(sp)
800033cc:	00058a13          	mv	s4,a1
800033d0:	00050913          	mv	s2,a0
800033d4:	59498993          	addi	s3,s3,1428 # 80015594 <heap_end.1814+0xfffffbb0>
800033d8:	581030ef          	jal	ra,80007158 <__malloc_lock>
800033dc:	0089a703          	lw	a4,8(s3)
800033e0:	000017b7          	lui	a5,0x1
800033e4:	fef78413          	addi	s0,a5,-17 # fef <_printf_r-0x7ffff011>
800033e8:	00472483          	lw	s1,4(a4)
800033ec:	41440433          	sub	s0,s0,s4
800033f0:	ffc4f493          	andi	s1,s1,-4
800033f4:	00940433          	add	s0,s0,s1
800033f8:	00c45413          	srli	s0,s0,0xc
800033fc:	fff40413          	addi	s0,s0,-1
80003400:	00c41413          	slli	s0,s0,0xc
80003404:	00f44e63          	blt	s0,a5,80003420 <_malloc_trim_r+0x74>
80003408:	00000593          	li	a1,0
8000340c:	00090513          	mv	a0,s2
80003410:	6a5040ef          	jal	ra,800082b4 <_sbrk_r>
80003414:	0089a783          	lw	a5,8(s3)
80003418:	009787b3          	add	a5,a5,s1
8000341c:	02f50863          	beq	a0,a5,8000344c <_malloc_trim_r+0xa0>
80003420:	00090513          	mv	a0,s2
80003424:	539030ef          	jal	ra,8000715c <__malloc_unlock>
80003428:	01c12083          	lw	ra,28(sp)
8000342c:	01812403          	lw	s0,24(sp)
80003430:	01412483          	lw	s1,20(sp)
80003434:	01012903          	lw	s2,16(sp)
80003438:	00c12983          	lw	s3,12(sp)
8000343c:	00812a03          	lw	s4,8(sp)
80003440:	00000513          	li	a0,0
80003444:	02010113          	addi	sp,sp,32
80003448:	00008067          	ret
8000344c:	408005b3          	neg	a1,s0
80003450:	00090513          	mv	a0,s2
80003454:	661040ef          	jal	ra,800082b4 <_sbrk_r>
80003458:	fff00793          	li	a5,-1
8000345c:	04f50a63          	beq	a0,a5,800034b0 <_malloc_trim_r+0x104>
80003460:	800167b7          	lui	a5,0x80016
80003464:	9a878793          	addi	a5,a5,-1624 # 800159a8 <heap_end.1814+0xffffffc4>
80003468:	0007a703          	lw	a4,0(a5)
8000346c:	0089a683          	lw	a3,8(s3)
80003470:	408484b3          	sub	s1,s1,s0
80003474:	0014e493          	ori	s1,s1,1
80003478:	40870433          	sub	s0,a4,s0
8000347c:	00090513          	mv	a0,s2
80003480:	0096a223          	sw	s1,4(a3)
80003484:	0087a023          	sw	s0,0(a5)
80003488:	4d5030ef          	jal	ra,8000715c <__malloc_unlock>
8000348c:	01c12083          	lw	ra,28(sp)
80003490:	01812403          	lw	s0,24(sp)
80003494:	01412483          	lw	s1,20(sp)
80003498:	01012903          	lw	s2,16(sp)
8000349c:	00c12983          	lw	s3,12(sp)
800034a0:	00812a03          	lw	s4,8(sp)
800034a4:	00100513          	li	a0,1
800034a8:	02010113          	addi	sp,sp,32
800034ac:	00008067          	ret
800034b0:	00000593          	li	a1,0
800034b4:	00090513          	mv	a0,s2
800034b8:	5fd040ef          	jal	ra,800082b4 <_sbrk_r>
800034bc:	0089a703          	lw	a4,8(s3)
800034c0:	00f00693          	li	a3,15
800034c4:	40e507b3          	sub	a5,a0,a4
800034c8:	f4f6dce3          	bge	a3,a5,80003420 <_malloc_trim_r+0x74>
800034cc:	800166b7          	lui	a3,0x80016
800034d0:	9a06a683          	lw	a3,-1632(a3) # 800159a0 <heap_end.1814+0xffffffbc>
800034d4:	0017e793          	ori	a5,a5,1
800034d8:	00f72223          	sw	a5,4(a4)
800034dc:	40d50533          	sub	a0,a0,a3
800034e0:	800166b7          	lui	a3,0x80016
800034e4:	9aa6a423          	sw	a0,-1624(a3) # 800159a8 <heap_end.1814+0xffffffc4>
800034e8:	f39ff06f          	j	80003420 <_malloc_trim_r+0x74>

800034ec <_free_r>:
800034ec:	12058a63          	beqz	a1,80003620 <_free_r+0x134>
800034f0:	ff010113          	addi	sp,sp,-16
800034f4:	00812423          	sw	s0,8(sp)
800034f8:	00912223          	sw	s1,4(sp)
800034fc:	00058413          	mv	s0,a1
80003500:	00050493          	mv	s1,a0
80003504:	00112623          	sw	ra,12(sp)
80003508:	451030ef          	jal	ra,80007158 <__malloc_lock>
8000350c:	ffc42803          	lw	a6,-4(s0)
80003510:	ff840713          	addi	a4,s0,-8
80003514:	800155b7          	lui	a1,0x80015
80003518:	ffe87793          	andi	a5,a6,-2
8000351c:	00f70633          	add	a2,a4,a5
80003520:	59458593          	addi	a1,a1,1428 # 80015594 <heap_end.1814+0xfffffbb0>
80003524:	00462683          	lw	a3,4(a2)
80003528:	0085a503          	lw	a0,8(a1)
8000352c:	ffc6f693          	andi	a3,a3,-4
80003530:	1ac50a63          	beq	a0,a2,800036e4 <_free_r+0x1f8>
80003534:	00d62223          	sw	a3,4(a2)
80003538:	00187813          	andi	a6,a6,1
8000353c:	00d60533          	add	a0,a2,a3
80003540:	0a081063          	bnez	a6,800035e0 <_free_r+0xf4>
80003544:	ff842303          	lw	t1,-8(s0)
80003548:	00452803          	lw	a6,4(a0)
8000354c:	80015537          	lui	a0,0x80015
80003550:	40670733          	sub	a4,a4,t1
80003554:	00872883          	lw	a7,8(a4)
80003558:	59c50513          	addi	a0,a0,1436 # 8001559c <heap_end.1814+0xfffffbb8>
8000355c:	006787b3          	add	a5,a5,t1
80003560:	00187813          	andi	a6,a6,1
80003564:	14a88063          	beq	a7,a0,800036a4 <_free_r+0x1b8>
80003568:	00c72303          	lw	t1,12(a4)
8000356c:	0068a623          	sw	t1,12(a7)
80003570:	01132423          	sw	a7,8(t1)
80003574:	1e080463          	beqz	a6,8000375c <_free_r+0x270>
80003578:	0017e693          	ori	a3,a5,1
8000357c:	00d72223          	sw	a3,4(a4)
80003580:	00f62023          	sw	a5,0(a2)
80003584:	1ff00693          	li	a3,511
80003588:	0af6e863          	bltu	a3,a5,80003638 <_free_r+0x14c>
8000358c:	ff87f693          	andi	a3,a5,-8
80003590:	00868693          	addi	a3,a3,8
80003594:	0045a503          	lw	a0,4(a1)
80003598:	00d586b3          	add	a3,a1,a3
8000359c:	0006a603          	lw	a2,0(a3)
800035a0:	0057d813          	srli	a6,a5,0x5
800035a4:	00100793          	li	a5,1
800035a8:	010797b3          	sll	a5,a5,a6
800035ac:	00a7e7b3          	or	a5,a5,a0
800035b0:	ff868513          	addi	a0,a3,-8
800035b4:	00a72623          	sw	a0,12(a4)
800035b8:	00c72423          	sw	a2,8(a4)
800035bc:	00f5a223          	sw	a5,4(a1)
800035c0:	00e6a023          	sw	a4,0(a3)
800035c4:	00e62623          	sw	a4,12(a2)
800035c8:	00812403          	lw	s0,8(sp)
800035cc:	00c12083          	lw	ra,12(sp)
800035d0:	00048513          	mv	a0,s1
800035d4:	00412483          	lw	s1,4(sp)
800035d8:	01010113          	addi	sp,sp,16
800035dc:	3810306f          	j	8000715c <__malloc_unlock>
800035e0:	00452503          	lw	a0,4(a0)
800035e4:	00157513          	andi	a0,a0,1
800035e8:	02051e63          	bnez	a0,80003624 <_free_r+0x138>
800035ec:	80015537          	lui	a0,0x80015
800035f0:	00d787b3          	add	a5,a5,a3
800035f4:	59c50513          	addi	a0,a0,1436 # 8001559c <heap_end.1814+0xfffffbb8>
800035f8:	00862683          	lw	a3,8(a2)
800035fc:	0017e893          	ori	a7,a5,1
80003600:	00f70833          	add	a6,a4,a5
80003604:	16a68863          	beq	a3,a0,80003774 <_free_r+0x288>
80003608:	00c62603          	lw	a2,12(a2)
8000360c:	00c6a623          	sw	a2,12(a3)
80003610:	00d62423          	sw	a3,8(a2)
80003614:	01172223          	sw	a7,4(a4)
80003618:	00f82023          	sw	a5,0(a6)
8000361c:	f69ff06f          	j	80003584 <_free_r+0x98>
80003620:	00008067          	ret
80003624:	0017e693          	ori	a3,a5,1
80003628:	fed42e23          	sw	a3,-4(s0)
8000362c:	00f62023          	sw	a5,0(a2)
80003630:	1ff00693          	li	a3,511
80003634:	f4f6fce3          	bgeu	a3,a5,8000358c <_free_r+0xa0>
80003638:	0097d693          	srli	a3,a5,0x9
8000363c:	00400613          	li	a2,4
80003640:	0ed66c63          	bltu	a2,a3,80003738 <_free_r+0x24c>
80003644:	0067d693          	srli	a3,a5,0x6
80003648:	03968813          	addi	a6,a3,57
8000364c:	03868613          	addi	a2,a3,56
80003650:	00381813          	slli	a6,a6,0x3
80003654:	01058833          	add	a6,a1,a6
80003658:	00082683          	lw	a3,0(a6)
8000365c:	ff880813          	addi	a6,a6,-8
80003660:	12d80863          	beq	a6,a3,80003790 <_free_r+0x2a4>
80003664:	0046a603          	lw	a2,4(a3)
80003668:	ffc67613          	andi	a2,a2,-4
8000366c:	00c7f663          	bgeu	a5,a2,80003678 <_free_r+0x18c>
80003670:	0086a683          	lw	a3,8(a3)
80003674:	fed818e3          	bne	a6,a3,80003664 <_free_r+0x178>
80003678:	00c6a803          	lw	a6,12(a3)
8000367c:	01072623          	sw	a6,12(a4)
80003680:	00d72423          	sw	a3,8(a4)
80003684:	00812403          	lw	s0,8(sp)
80003688:	00c12083          	lw	ra,12(sp)
8000368c:	00e82423          	sw	a4,8(a6)
80003690:	00048513          	mv	a0,s1
80003694:	00412483          	lw	s1,4(sp)
80003698:	00e6a623          	sw	a4,12(a3)
8000369c:	01010113          	addi	sp,sp,16
800036a0:	2bd0306f          	j	8000715c <__malloc_unlock>
800036a4:	14081663          	bnez	a6,800037f0 <_free_r+0x304>
800036a8:	00c62583          	lw	a1,12(a2)
800036ac:	00862603          	lw	a2,8(a2)
800036b0:	00f687b3          	add	a5,a3,a5
800036b4:	00812403          	lw	s0,8(sp)
800036b8:	00b62623          	sw	a1,12(a2)
800036bc:	00c5a423          	sw	a2,8(a1)
800036c0:	0017e693          	ori	a3,a5,1
800036c4:	00c12083          	lw	ra,12(sp)
800036c8:	00d72223          	sw	a3,4(a4)
800036cc:	00048513          	mv	a0,s1
800036d0:	00f70733          	add	a4,a4,a5
800036d4:	00412483          	lw	s1,4(sp)
800036d8:	00f72023          	sw	a5,0(a4)
800036dc:	01010113          	addi	sp,sp,16
800036e0:	27d0306f          	j	8000715c <__malloc_unlock>
800036e4:	00187813          	andi	a6,a6,1
800036e8:	00d787b3          	add	a5,a5,a3
800036ec:	02081063          	bnez	a6,8000370c <_free_r+0x220>
800036f0:	ff842503          	lw	a0,-8(s0)
800036f4:	40a70733          	sub	a4,a4,a0
800036f8:	00c72683          	lw	a3,12(a4)
800036fc:	00872603          	lw	a2,8(a4)
80003700:	00a787b3          	add	a5,a5,a0
80003704:	00d62623          	sw	a3,12(a2)
80003708:	00c6a423          	sw	a2,8(a3)
8000370c:	800166b7          	lui	a3,0x80016
80003710:	0017e613          	ori	a2,a5,1
80003714:	9a46a683          	lw	a3,-1628(a3) # 800159a4 <heap_end.1814+0xffffffc0>
80003718:	00c72223          	sw	a2,4(a4)
8000371c:	00e5a423          	sw	a4,8(a1)
80003720:	ead7e4e3          	bltu	a5,a3,800035c8 <_free_r+0xdc>
80003724:	800167b7          	lui	a5,0x80016
80003728:	9e07a583          	lw	a1,-1568(a5) # 800159e0 <heap_end.1814+0xfffffffc>
8000372c:	00048513          	mv	a0,s1
80003730:	c7dff0ef          	jal	ra,800033ac <_malloc_trim_r>
80003734:	e95ff06f          	j	800035c8 <_free_r+0xdc>
80003738:	01400613          	li	a2,20
8000373c:	02d67463          	bgeu	a2,a3,80003764 <_free_r+0x278>
80003740:	05400613          	li	a2,84
80003744:	06d66463          	bltu	a2,a3,800037ac <_free_r+0x2c0>
80003748:	00c7d693          	srli	a3,a5,0xc
8000374c:	06f68813          	addi	a6,a3,111
80003750:	06e68613          	addi	a2,a3,110
80003754:	00381813          	slli	a6,a6,0x3
80003758:	efdff06f          	j	80003654 <_free_r+0x168>
8000375c:	00d787b3          	add	a5,a5,a3
80003760:	e99ff06f          	j	800035f8 <_free_r+0x10c>
80003764:	05c68813          	addi	a6,a3,92
80003768:	05b68613          	addi	a2,a3,91
8000376c:	00381813          	slli	a6,a6,0x3
80003770:	ee5ff06f          	j	80003654 <_free_r+0x168>
80003774:	00e5aa23          	sw	a4,20(a1)
80003778:	00e5a823          	sw	a4,16(a1)
8000377c:	00a72623          	sw	a0,12(a4)
80003780:	00a72423          	sw	a0,8(a4)
80003784:	01172223          	sw	a7,4(a4)
80003788:	00f82023          	sw	a5,0(a6)
8000378c:	e3dff06f          	j	800035c8 <_free_r+0xdc>
80003790:	0045a503          	lw	a0,4(a1)
80003794:	40265613          	srai	a2,a2,0x2
80003798:	00100793          	li	a5,1
8000379c:	00c79633          	sll	a2,a5,a2
800037a0:	00a66633          	or	a2,a2,a0
800037a4:	00c5a223          	sw	a2,4(a1)
800037a8:	ed5ff06f          	j	8000367c <_free_r+0x190>
800037ac:	15400613          	li	a2,340
800037b0:	00d66c63          	bltu	a2,a3,800037c8 <_free_r+0x2dc>
800037b4:	00f7d693          	srli	a3,a5,0xf
800037b8:	07868813          	addi	a6,a3,120
800037bc:	07768613          	addi	a2,a3,119
800037c0:	00381813          	slli	a6,a6,0x3
800037c4:	e91ff06f          	j	80003654 <_free_r+0x168>
800037c8:	55400613          	li	a2,1364
800037cc:	00d66c63          	bltu	a2,a3,800037e4 <_free_r+0x2f8>
800037d0:	0127d693          	srli	a3,a5,0x12
800037d4:	07d68813          	addi	a6,a3,125
800037d8:	07c68613          	addi	a2,a3,124
800037dc:	00381813          	slli	a6,a6,0x3
800037e0:	e75ff06f          	j	80003654 <_free_r+0x168>
800037e4:	3f800813          	li	a6,1016
800037e8:	07e00613          	li	a2,126
800037ec:	e69ff06f          	j	80003654 <_free_r+0x168>
800037f0:	0017e693          	ori	a3,a5,1
800037f4:	00d72223          	sw	a3,4(a4)
800037f8:	00f62023          	sw	a5,0(a2)
800037fc:	dcdff06f          	j	800035c8 <_free_r+0xdc>

80003800 <_fwalk>:
80003800:	fe010113          	addi	sp,sp,-32
80003804:	01212823          	sw	s2,16(sp)
80003808:	01312623          	sw	s3,12(sp)
8000380c:	01412423          	sw	s4,8(sp)
80003810:	01512223          	sw	s5,4(sp)
80003814:	01612023          	sw	s6,0(sp)
80003818:	00112e23          	sw	ra,28(sp)
8000381c:	00812c23          	sw	s0,24(sp)
80003820:	00912a23          	sw	s1,20(sp)
80003824:	00058b13          	mv	s6,a1
80003828:	2e050a93          	addi	s5,a0,736
8000382c:	00000a13          	li	s4,0
80003830:	00100993          	li	s3,1
80003834:	fff00913          	li	s2,-1
80003838:	004aa483          	lw	s1,4(s5)
8000383c:	008aa403          	lw	s0,8(s5)
80003840:	fff48493          	addi	s1,s1,-1
80003844:	0204c663          	bltz	s1,80003870 <_fwalk+0x70>
80003848:	00c45783          	lhu	a5,12(s0)
8000384c:	fff48493          	addi	s1,s1,-1
80003850:	00f9fc63          	bgeu	s3,a5,80003868 <_fwalk+0x68>
80003854:	00e41783          	lh	a5,14(s0)
80003858:	00040513          	mv	a0,s0
8000385c:	01278663          	beq	a5,s2,80003868 <_fwalk+0x68>
80003860:	000b00e7          	jalr	s6
80003864:	00aa6a33          	or	s4,s4,a0
80003868:	06840413          	addi	s0,s0,104
8000386c:	fd249ee3          	bne	s1,s2,80003848 <_fwalk+0x48>
80003870:	000aaa83          	lw	s5,0(s5)
80003874:	fc0a92e3          	bnez	s5,80003838 <_fwalk+0x38>
80003878:	01c12083          	lw	ra,28(sp)
8000387c:	01812403          	lw	s0,24(sp)
80003880:	01412483          	lw	s1,20(sp)
80003884:	01012903          	lw	s2,16(sp)
80003888:	00c12983          	lw	s3,12(sp)
8000388c:	00412a83          	lw	s5,4(sp)
80003890:	00012b03          	lw	s6,0(sp)
80003894:	000a0513          	mv	a0,s4
80003898:	00812a03          	lw	s4,8(sp)
8000389c:	02010113          	addi	sp,sp,32
800038a0:	00008067          	ret

800038a4 <_fwalk_reent>:
800038a4:	fd010113          	addi	sp,sp,-48
800038a8:	03212023          	sw	s2,32(sp)
800038ac:	01312e23          	sw	s3,28(sp)
800038b0:	01412c23          	sw	s4,24(sp)
800038b4:	01512a23          	sw	s5,20(sp)
800038b8:	01612823          	sw	s6,16(sp)
800038bc:	01712623          	sw	s7,12(sp)
800038c0:	02112623          	sw	ra,44(sp)
800038c4:	02812423          	sw	s0,40(sp)
800038c8:	02912223          	sw	s1,36(sp)
800038cc:	00050a93          	mv	s5,a0
800038d0:	00058b93          	mv	s7,a1
800038d4:	2e050b13          	addi	s6,a0,736
800038d8:	00000a13          	li	s4,0
800038dc:	00100993          	li	s3,1
800038e0:	fff00913          	li	s2,-1
800038e4:	004b2483          	lw	s1,4(s6)
800038e8:	008b2403          	lw	s0,8(s6)
800038ec:	fff48493          	addi	s1,s1,-1
800038f0:	0204c863          	bltz	s1,80003920 <_fwalk_reent+0x7c>
800038f4:	00c45783          	lhu	a5,12(s0)
800038f8:	fff48493          	addi	s1,s1,-1
800038fc:	00f9fe63          	bgeu	s3,a5,80003918 <_fwalk_reent+0x74>
80003900:	00e41783          	lh	a5,14(s0)
80003904:	00040593          	mv	a1,s0
80003908:	000a8513          	mv	a0,s5
8000390c:	01278663          	beq	a5,s2,80003918 <_fwalk_reent+0x74>
80003910:	000b80e7          	jalr	s7
80003914:	00aa6a33          	or	s4,s4,a0
80003918:	06840413          	addi	s0,s0,104
8000391c:	fd249ce3          	bne	s1,s2,800038f4 <_fwalk_reent+0x50>
80003920:	000b2b03          	lw	s6,0(s6)
80003924:	fc0b10e3          	bnez	s6,800038e4 <_fwalk_reent+0x40>
80003928:	02c12083          	lw	ra,44(sp)
8000392c:	02812403          	lw	s0,40(sp)
80003930:	02412483          	lw	s1,36(sp)
80003934:	02012903          	lw	s2,32(sp)
80003938:	01c12983          	lw	s3,28(sp)
8000393c:	01412a83          	lw	s5,20(sp)
80003940:	01012b03          	lw	s6,16(sp)
80003944:	00c12b83          	lw	s7,12(sp)
80003948:	000a0513          	mv	a0,s4
8000394c:	01812a03          	lw	s4,24(sp)
80003950:	03010113          	addi	sp,sp,48
80003954:	00008067          	ret

80003958 <eshdn1>:
80003958:	00450693          	addi	a3,a0,4
8000395c:	00000793          	li	a5,0
80003960:	01a50513          	addi	a0,a0,26
80003964:	ffff8837          	lui	a6,0xffff8
80003968:	01c0006f          	j	80003984 <eshdn1+0x2c>
8000396c:	00179793          	slli	a5,a5,0x1
80003970:	00e69023          	sh	a4,0(a3)
80003974:	01079793          	slli	a5,a5,0x10
80003978:	00268693          	addi	a3,a3,2
8000397c:	0107d793          	srli	a5,a5,0x10
80003980:	02d50e63          	beq	a0,a3,800039bc <eshdn1+0x64>
80003984:	0006d703          	lhu	a4,0(a3)
80003988:	00177613          	andi	a2,a4,1
8000398c:	00060463          	beqz	a2,80003994 <eshdn1+0x3c>
80003990:	0017e793          	ori	a5,a5,1
80003994:	00175713          	srli	a4,a4,0x1
80003998:	0027f613          	andi	a2,a5,2
8000399c:	010765b3          	or	a1,a4,a6
800039a0:	fc0606e3          	beqz	a2,8000396c <eshdn1+0x14>
800039a4:	00179793          	slli	a5,a5,0x1
800039a8:	00b69023          	sh	a1,0(a3)
800039ac:	01079793          	slli	a5,a5,0x10
800039b0:	00268693          	addi	a3,a3,2
800039b4:	0107d793          	srli	a5,a5,0x10
800039b8:	fcd516e3          	bne	a0,a3,80003984 <eshdn1+0x2c>
800039bc:	00008067          	ret

800039c0 <eshup1>:
800039c0:	01850693          	addi	a3,a0,24
800039c4:	00000713          	li	a4,0
800039c8:	00250513          	addi	a0,a0,2
800039cc:	01c0006f          	j	800039e8 <eshup1+0x28>
800039d0:	00171713          	slli	a4,a4,0x1
800039d4:	00f69023          	sh	a5,0(a3)
800039d8:	01071713          	slli	a4,a4,0x10
800039dc:	ffe68693          	addi	a3,a3,-2
800039e0:	01075713          	srli	a4,a4,0x10
800039e4:	04d50463          	beq	a0,a3,80003a2c <eshup1+0x6c>
800039e8:	0006d783          	lhu	a5,0(a3)
800039ec:	01079613          	slli	a2,a5,0x10
800039f0:	41065613          	srai	a2,a2,0x10
800039f4:	00179793          	slli	a5,a5,0x1
800039f8:	00065463          	bgez	a2,80003a00 <eshup1+0x40>
800039fc:	00176713          	ori	a4,a4,1
80003a00:	01079793          	slli	a5,a5,0x10
80003a04:	0107d793          	srli	a5,a5,0x10
80003a08:	00277613          	andi	a2,a4,2
80003a0c:	0017e593          	ori	a1,a5,1
80003a10:	fc0600e3          	beqz	a2,800039d0 <eshup1+0x10>
80003a14:	00171713          	slli	a4,a4,0x1
80003a18:	00b69023          	sh	a1,0(a3)
80003a1c:	01071713          	slli	a4,a4,0x10
80003a20:	ffe68693          	addi	a3,a3,-2
80003a24:	01075713          	srli	a4,a4,0x10
80003a28:	fcd510e3          	bne	a0,a3,800039e8 <eshup1+0x28>
80003a2c:	00008067          	ret

80003a30 <m16m>:
80003a30:	fe010113          	addi	sp,sp,-32
80003a34:	00010e37          	lui	t3,0x10
80003a38:	00011d23          	sh	zero,26(sp)
80003a3c:	00011e23          	sh	zero,28(sp)
80003a40:	01858593          	addi	a1,a1,24
80003a44:	01c10793          	addi	a5,sp,28
80003a48:	00810813          	addi	a6,sp,8
80003a4c:	fffe0e13          	addi	t3,t3,-1 # ffff <_printf_r-0x7fff0001>
80003a50:	0005d703          	lhu	a4,0(a1)
80003a54:	ffe78793          	addi	a5,a5,-2
80003a58:	ffe58593          	addi	a1,a1,-2
80003a5c:	02071863          	bnez	a4,80003a8c <m16m+0x5c>
80003a60:	fe079f23          	sh	zero,-2(a5)
80003a64:	ff0796e3          	bne	a5,a6,80003a50 <m16m+0x20>
80003a68:	00460613          	addi	a2,a2,4
80003a6c:	01e10693          	addi	a3,sp,30
80003a70:	0007d703          	lhu	a4,0(a5)
80003a74:	00278793          	addi	a5,a5,2
80003a78:	00260613          	addi	a2,a2,2
80003a7c:	fee61f23          	sh	a4,-2(a2)
80003a80:	fed798e3          	bne	a5,a3,80003a70 <m16m+0x40>
80003a84:	02010113          	addi	sp,sp,32
80003a88:	00008067          	ret
80003a8c:	02a70733          	mul	a4,a4,a0
80003a90:	0027d883          	lhu	a7,2(a5)
80003a94:	0007d303          	lhu	t1,0(a5)
80003a98:	01c776b3          	and	a3,a4,t3
80003a9c:	011686b3          	add	a3,a3,a7
80003aa0:	01075713          	srli	a4,a4,0x10
80003aa4:	0106d893          	srli	a7,a3,0x10
80003aa8:	00670733          	add	a4,a4,t1
80003aac:	01170733          	add	a4,a4,a7
80003ab0:	01075893          	srli	a7,a4,0x10
80003ab4:	00d79123          	sh	a3,2(a5)
80003ab8:	00e79023          	sh	a4,0(a5)
80003abc:	ff179f23          	sh	a7,-2(a5)
80003ac0:	f90798e3          	bne	a5,a6,80003a50 <m16m+0x20>
80003ac4:	fa5ff06f          	j	80003a68 <m16m+0x38>

80003ac8 <eisnan.part.0>:
80003ac8:	01250713          	addi	a4,a0,18
80003acc:	00055783          	lhu	a5,0(a0)
80003ad0:	00250513          	addi	a0,a0,2
80003ad4:	00079863          	bnez	a5,80003ae4 <eisnan.part.0+0x1c>
80003ad8:	fee51ae3          	bne	a0,a4,80003acc <eisnan.part.0+0x4>
80003adc:	00000513          	li	a0,0
80003ae0:	00008067          	ret
80003ae4:	00100513          	li	a0,1
80003ae8:	00008067          	ret

80003aec <eneg>:
80003aec:	ff010113          	addi	sp,sp,-16
80003af0:	00912223          	sw	s1,4(sp)
80003af4:	01255483          	lhu	s1,18(a0)
80003af8:	00812423          	sw	s0,8(sp)
80003afc:	00112623          	sw	ra,12(sp)
80003b00:	fff4c793          	not	a5,s1
80003b04:	01179713          	slli	a4,a5,0x11
80003b08:	00050413          	mv	s0,a0
80003b0c:	00071663          	bnez	a4,80003b18 <eneg+0x2c>
80003b10:	fb9ff0ef          	jal	ra,80003ac8 <eisnan.part.0>
80003b14:	00051863          	bnez	a0,80003b24 <eneg+0x38>
80003b18:	ffff87b7          	lui	a5,0xffff8
80003b1c:	00f4c4b3          	xor	s1,s1,a5
80003b20:	00941923          	sh	s1,18(s0)
80003b24:	00c12083          	lw	ra,12(sp)
80003b28:	00812403          	lw	s0,8(sp)
80003b2c:	00412483          	lw	s1,4(sp)
80003b30:	01010113          	addi	sp,sp,16
80003b34:	00008067          	ret

80003b38 <eisneg>:
80003b38:	ff010113          	addi	sp,sp,-16
80003b3c:	00812423          	sw	s0,8(sp)
80003b40:	01255403          	lhu	s0,18(a0)
80003b44:	00112623          	sw	ra,12(sp)
80003b48:	fff44793          	not	a5,s0
80003b4c:	01179713          	slli	a4,a5,0x11
80003b50:	00071a63          	bnez	a4,80003b64 <eisneg+0x2c>
80003b54:	f75ff0ef          	jal	ra,80003ac8 <eisnan.part.0>
80003b58:	00050793          	mv	a5,a0
80003b5c:	00000513          	li	a0,0
80003b60:	00079463          	bnez	a5,80003b68 <eisneg+0x30>
80003b64:	00f45513          	srli	a0,s0,0xf
80003b68:	00c12083          	lw	ra,12(sp)
80003b6c:	00812403          	lw	s0,8(sp)
80003b70:	01010113          	addi	sp,sp,16
80003b74:	00008067          	ret

80003b78 <emovi>:
80003b78:	01255783          	lhu	a5,18(a0)
80003b7c:	fd010113          	addi	sp,sp,-48
80003b80:	02812423          	sw	s0,40(sp)
80003b84:	00f7d793          	srli	a5,a5,0xf
80003b88:	02912223          	sw	s1,36(sp)
80003b8c:	02112623          	sw	ra,44(sp)
80003b90:	03212023          	sw	s2,32(sp)
80003b94:	01312e23          	sw	s3,28(sp)
80003b98:	40f007b3          	neg	a5,a5
80003b9c:	00f59023          	sh	a5,0(a1)
80003ba0:	01255783          	lhu	a5,18(a0)
80003ba4:	00008737          	lui	a4,0x8
80003ba8:	fff70713          	addi	a4,a4,-1 # 7fff <_printf_r-0x7fff8001>
80003bac:	00f777b3          	and	a5,a4,a5
80003bb0:	00f59123          	sh	a5,2(a1)
80003bb4:	00050493          	mv	s1,a0
80003bb8:	01050413          	addi	s0,a0,16
80003bbc:	04e78263          	beq	a5,a4,80003c00 <emovi+0x88>
80003bc0:	00658793          	addi	a5,a1,6
80003bc4:	00059223          	sh	zero,4(a1)
80003bc8:	ffe50513          	addi	a0,a0,-2
80003bcc:	00045703          	lhu	a4,0(s0)
80003bd0:	ffe40413          	addi	s0,s0,-2
80003bd4:	00278793          	addi	a5,a5,2 # ffff8002 <heap_end.1814+0x7ffe261e>
80003bd8:	fee79f23          	sh	a4,-2(a5)
80003bdc:	fe8518e3          	bne	a0,s0,80003bcc <emovi+0x54>
80003be0:	00059c23          	sh	zero,24(a1)
80003be4:	02c12083          	lw	ra,44(sp)
80003be8:	02812403          	lw	s0,40(sp)
80003bec:	02412483          	lw	s1,36(sp)
80003bf0:	02012903          	lw	s2,32(sp)
80003bf4:	01c12983          	lw	s3,28(sp)
80003bf8:	03010113          	addi	sp,sp,48
80003bfc:	00008067          	ret
80003c00:	01255703          	lhu	a4,18(a0)
80003c04:	00458913          	addi	s2,a1,4
80003c08:	00e7f733          	and	a4,a5,a4
80003c0c:	02f71c63          	bne	a4,a5,80003c44 <emovi+0xcc>
80003c10:	00b12623          	sw	a1,12(sp)
80003c14:	eb5ff0ef          	jal	ra,80003ac8 <eisnan.part.0>
80003c18:	00c12583          	lw	a1,12(sp)
80003c1c:	02050463          	beqz	a0,80003c44 <emovi+0xcc>
80003c20:	00658793          	addi	a5,a1,6
80003c24:	00059223          	sh	zero,4(a1)
80003c28:	ffc48513          	addi	a0,s1,-4
80003c2c:	00045703          	lhu	a4,0(s0)
80003c30:	ffe40413          	addi	s0,s0,-2
80003c34:	00278793          	addi	a5,a5,2
80003c38:	fee79f23          	sh	a4,-2(a5)
80003c3c:	fe8518e3          	bne	a0,s0,80003c2c <emovi+0xb4>
80003c40:	fa5ff06f          	j	80003be4 <emovi+0x6c>
80003c44:	01a58993          	addi	s3,a1,26
80003c48:	00290913          	addi	s2,s2,2
80003c4c:	fe091f23          	sh	zero,-2(s2)
80003c50:	ff299ce3          	bne	s3,s2,80003c48 <emovi+0xd0>
80003c54:	02c12083          	lw	ra,44(sp)
80003c58:	02812403          	lw	s0,40(sp)
80003c5c:	02412483          	lw	s1,36(sp)
80003c60:	02012903          	lw	s2,32(sp)
80003c64:	01c12983          	lw	s3,28(sp)
80003c68:	03010113          	addi	sp,sp,48
80003c6c:	00008067          	ret

80003c70 <ecmp>:
80003c70:	01255783          	lhu	a5,18(a0)
80003c74:	fb010113          	addi	sp,sp,-80
80003c78:	04812423          	sw	s0,72(sp)
80003c7c:	fff7c793          	not	a5,a5
80003c80:	04912223          	sw	s1,68(sp)
80003c84:	04112623          	sw	ra,76(sp)
80003c88:	01179713          	slli	a4,a5,0x11
80003c8c:	00050493          	mv	s1,a0
80003c90:	00058413          	mv	s0,a1
80003c94:	00071663          	bnez	a4,80003ca0 <ecmp+0x30>
80003c98:	e31ff0ef          	jal	ra,80003ac8 <eisnan.part.0>
80003c9c:	08051263          	bnez	a0,80003d20 <ecmp+0xb0>
80003ca0:	01245783          	lhu	a5,18(s0)
80003ca4:	fff7c793          	not	a5,a5
80003ca8:	01179713          	slli	a4,a5,0x11
80003cac:	06070463          	beqz	a4,80003d14 <ecmp+0xa4>
80003cb0:	00810593          	addi	a1,sp,8
80003cb4:	00048513          	mv	a0,s1
80003cb8:	ec1ff0ef          	jal	ra,80003b78 <emovi>
80003cbc:	02410593          	addi	a1,sp,36
80003cc0:	00040513          	mv	a0,s0
80003cc4:	eb5ff0ef          	jal	ra,80003b78 <emovi>
80003cc8:	00815583          	lhu	a1,8(sp)
80003ccc:	02415503          	lhu	a0,36(sp)
80003cd0:	04b50c63          	beq	a0,a1,80003d28 <ecmp+0xb8>
80003cd4:	00a10793          	addi	a5,sp,10
80003cd8:	02610713          	addi	a4,sp,38
80003cdc:	02010613          	addi	a2,sp,32
80003ce0:	0007d683          	lhu	a3,0(a5)
80003ce4:	00278793          	addi	a5,a5,2
80003ce8:	08069a63          	bnez	a3,80003d7c <ecmp+0x10c>
80003cec:	00075683          	lhu	a3,0(a4)
80003cf0:	00270713          	addi	a4,a4,2
80003cf4:	08069463          	bnez	a3,80003d7c <ecmp+0x10c>
80003cf8:	fec794e3          	bne	a5,a2,80003ce0 <ecmp+0x70>
80003cfc:	00000513          	li	a0,0
80003d00:	04c12083          	lw	ra,76(sp)
80003d04:	04812403          	lw	s0,72(sp)
80003d08:	04412483          	lw	s1,68(sp)
80003d0c:	05010113          	addi	sp,sp,80
80003d10:	00008067          	ret
80003d14:	00040513          	mv	a0,s0
80003d18:	db1ff0ef          	jal	ra,80003ac8 <eisnan.part.0>
80003d1c:	f8050ae3          	beqz	a0,80003cb0 <ecmp+0x40>
80003d20:	ffe00513          	li	a0,-2
80003d24:	fddff06f          	j	80003d00 <ecmp+0x90>
80003d28:	00153513          	seqz	a0,a0
80003d2c:	00a15603          	lhu	a2,10(sp)
80003d30:	02615683          	lhu	a3,38(sp)
80003d34:	40a00533          	neg	a0,a0
80003d38:	00a10713          	addi	a4,sp,10
80003d3c:	02610793          	addi	a5,sp,38
80003d40:	00257513          	andi	a0,a0,2
80003d44:	fff50513          	addi	a0,a0,-1
80003d48:	03c10593          	addi	a1,sp,60
80003d4c:	00278793          	addi	a5,a5,2
80003d50:	00270713          	addi	a4,a4,2
80003d54:	00d61e63          	bne	a2,a3,80003d70 <ecmp+0x100>
80003d58:	fab782e3          	beq	a5,a1,80003cfc <ecmp+0x8c>
80003d5c:	00075603          	lhu	a2,0(a4)
80003d60:	0007d683          	lhu	a3,0(a5)
80003d64:	00270713          	addi	a4,a4,2
80003d68:	00278793          	addi	a5,a5,2
80003d6c:	fed606e3          	beq	a2,a3,80003d58 <ecmp+0xe8>
80003d70:	f8c6e8e3          	bltu	a3,a2,80003d00 <ecmp+0x90>
80003d74:	40a00533          	neg	a0,a0
80003d78:	f89ff06f          	j	80003d00 <ecmp+0x90>
80003d7c:	00100513          	li	a0,1
80003d80:	f80580e3          	beqz	a1,80003d00 <ecmp+0x90>
80003d84:	fff00513          	li	a0,-1
80003d88:	f79ff06f          	j	80003d00 <ecmp+0x90>

80003d8c <eisinf.part.0>:
80003d8c:	ff010113          	addi	sp,sp,-16
80003d90:	00112623          	sw	ra,12(sp)
80003d94:	d35ff0ef          	jal	ra,80003ac8 <eisnan.part.0>
80003d98:	00c12083          	lw	ra,12(sp)
80003d9c:	00153513          	seqz	a0,a0
80003da0:	01010113          	addi	sp,sp,16
80003da4:	00008067          	ret

80003da8 <eshift.part.0>:
80003da8:	fe010113          	addi	sp,sp,-32
80003dac:	00812c23          	sw	s0,24(sp)
80003db0:	00912a23          	sw	s1,20(sp)
80003db4:	00112e23          	sw	ra,28(sp)
80003db8:	01212823          	sw	s2,16(sp)
80003dbc:	01312623          	sw	s3,12(sp)
80003dc0:	00058493          	mv	s1,a1
80003dc4:	00050413          	mv	s0,a0
80003dc8:	0a05c463          	bltz	a1,80003e70 <eshift.part.0+0xc8>
80003dcc:	00f00793          	li	a5,15
80003dd0:	00058613          	mv	a2,a1
80003dd4:	00450513          	addi	a0,a0,4
80003dd8:	01840693          	addi	a3,s0,24
80003ddc:	00f00593          	li	a1,15
80003de0:	0297d463          	bge	a5,s1,80003e08 <eshift.part.0+0x60>
80003de4:	00050793          	mv	a5,a0
80003de8:	0027d703          	lhu	a4,2(a5)
80003dec:	00278793          	addi	a5,a5,2
80003df0:	fee79f23          	sh	a4,-2(a5)
80003df4:	fed79ae3          	bne	a5,a3,80003de8 <eshift.part.0+0x40>
80003df8:	00041c23          	sh	zero,24(s0)
80003dfc:	ff060613          	addi	a2,a2,-16
80003e00:	fec5c2e3          	blt	a1,a2,80003de4 <eshift.part.0+0x3c>
80003e04:	00f4f493          	andi	s1,s1,15
80003e08:	00700793          	li	a5,7
80003e0c:	0297d863          	bge	a5,s1,80003e3c <eshift.part.0+0x94>
80003e10:	01840713          	addi	a4,s0,24
80003e14:	00240593          	addi	a1,s0,2
80003e18:	00000793          	li	a5,0
80003e1c:	00075683          	lhu	a3,0(a4)
80003e20:	ffe70713          	addi	a4,a4,-2
80003e24:	00869613          	slli	a2,a3,0x8
80003e28:	00c7e7b3          	or	a5,a5,a2
80003e2c:	00f71123          	sh	a5,2(a4)
80003e30:	0086d793          	srli	a5,a3,0x8
80003e34:	feb714e3          	bne	a4,a1,80003e1c <eshift.part.0+0x74>
80003e38:	ff848493          	addi	s1,s1,-8
80003e3c:	00048a63          	beqz	s1,80003e50 <eshift.part.0+0xa8>
80003e40:	fff48493          	addi	s1,s1,-1
80003e44:	00040513          	mv	a0,s0
80003e48:	b79ff0ef          	jal	ra,800039c0 <eshup1>
80003e4c:	fe049ae3          	bnez	s1,80003e40 <eshift.part.0+0x98>
80003e50:	00000513          	li	a0,0
80003e54:	01c12083          	lw	ra,28(sp)
80003e58:	01812403          	lw	s0,24(sp)
80003e5c:	01412483          	lw	s1,20(sp)
80003e60:	01012903          	lw	s2,16(sp)
80003e64:	00c12983          	lw	s3,12(sp)
80003e68:	02010113          	addi	sp,sp,32
80003e6c:	00008067          	ret
80003e70:	ff100793          	li	a5,-15
80003e74:	40b00933          	neg	s2,a1
80003e78:	12f5dc63          	bge	a1,a5,80003fb0 <eshift.part.0+0x208>
80003e7c:	01850593          	addi	a1,a0,24
80003e80:	00000993          	li	s3,0
80003e84:	00450693          	addi	a3,a0,4
80003e88:	00f00613          	li	a2,15
80003e8c:	01845703          	lhu	a4,24(s0)
80003e90:	00058793          	mv	a5,a1
80003e94:	00e9e9b3          	or	s3,s3,a4
80003e98:	ffe7d703          	lhu	a4,-2(a5)
80003e9c:	ffe78793          	addi	a5,a5,-2
80003ea0:	00e79123          	sh	a4,2(a5)
80003ea4:	fed79ae3          	bne	a5,a3,80003e98 <eshift.part.0+0xf0>
80003ea8:	00041223          	sh	zero,4(s0)
80003eac:	ff090913          	addi	s2,s2,-16
80003eb0:	fd264ee3          	blt	a2,s2,80003e8c <eshift.part.0+0xe4>
80003eb4:	ff000793          	li	a5,-16
80003eb8:	ff100713          	li	a4,-15
80003ebc:	409787b3          	sub	a5,a5,s1
80003ec0:	00000913          	li	s2,0
80003ec4:	0ae4c463          	blt	s1,a4,80003f6c <eshift.part.0+0x1c4>
80003ec8:	00f90933          	add	s2,s2,a5
80003ecc:	00700793          	li	a5,7
80003ed0:	0527d663          	bge	a5,s2,80003f1c <eshift.part.0+0x174>
80003ed4:	01099993          	slli	s3,s3,0x10
80003ed8:	4109d993          	srai	s3,s3,0x10
80003edc:	01844783          	lbu	a5,24(s0)
80003ee0:	01a40593          	addi	a1,s0,26
80003ee4:	00f9e9b3          	or	s3,s3,a5
80003ee8:	01099993          	slli	s3,s3,0x10
80003eec:	0109d993          	srli	s3,s3,0x10
80003ef0:	00000793          	li	a5,0
80003ef4:	0006d603          	lhu	a2,0(a3)
80003ef8:	00268693          	addi	a3,a3,2
80003efc:	00865713          	srli	a4,a2,0x8
80003f00:	00e7e733          	or	a4,a5,a4
80003f04:	00861793          	slli	a5,a2,0x8
80003f08:	01079793          	slli	a5,a5,0x10
80003f0c:	fee69f23          	sh	a4,-2(a3)
80003f10:	0107d793          	srli	a5,a5,0x10
80003f14:	feb690e3          	bne	a3,a1,80003ef4 <eshift.part.0+0x14c>
80003f18:	ff890913          	addi	s2,s2,-8
80003f1c:	06090c63          	beqz	s2,80003f94 <eshift.part.0+0x1ec>
80003f20:	01845783          	lhu	a5,24(s0)
80003f24:	fff90913          	addi	s2,s2,-1
80003f28:	00040513          	mv	a0,s0
80003f2c:	0017f793          	andi	a5,a5,1
80003f30:	0137e9b3          	or	s3,a5,s3
80003f34:	a25ff0ef          	jal	ra,80003958 <eshdn1>
80003f38:	fe0914e3          	bnez	s2,80003f20 <eshift.part.0+0x178>
80003f3c:	01099793          	slli	a5,s3,0x10
80003f40:	4107d793          	srai	a5,a5,0x10
80003f44:	04079063          	bnez	a5,80003f84 <eshift.part.0+0x1dc>
80003f48:	01099513          	slli	a0,s3,0x10
80003f4c:	01055513          	srli	a0,a0,0x10
80003f50:	01c12083          	lw	ra,28(sp)
80003f54:	01812403          	lw	s0,24(sp)
80003f58:	01412483          	lw	s1,20(sp)
80003f5c:	01012903          	lw	s2,16(sp)
80003f60:	00c12983          	lw	s3,12(sp)
80003f64:	02010113          	addi	sp,sp,32
80003f68:	00008067          	ret
80003f6c:	ff07f913          	andi	s2,a5,-16
80003f70:	41200933          	neg	s2,s2
80003f74:	00f90933          	add	s2,s2,a5
80003f78:	00700793          	li	a5,7
80003f7c:	fb27d0e3          	bge	a5,s2,80003f1c <eshift.part.0+0x174>
80003f80:	f55ff06f          	j	80003ed4 <eshift.part.0+0x12c>
80003f84:	00100993          	li	s3,1
80003f88:	01099513          	slli	a0,s3,0x10
80003f8c:	01055513          	srli	a0,a0,0x10
80003f90:	fc1ff06f          	j	80003f50 <eshift.part.0+0x1a8>
80003f94:	00098513          	mv	a0,s3
80003f98:	00099863          	bnez	s3,80003fa8 <eshift.part.0+0x200>
80003f9c:	01051513          	slli	a0,a0,0x10
80003fa0:	01055513          	srli	a0,a0,0x10
80003fa4:	eb1ff06f          	j	80003e54 <eshift.part.0+0xac>
80003fa8:	00100513          	li	a0,1
80003fac:	ff1ff06f          	j	80003f9c <eshift.part.0+0x1f4>
80003fb0:	ff900793          	li	a5,-7
80003fb4:	00000993          	li	s3,0
80003fb8:	f6f5d4e3          	bge	a1,a5,80003f20 <eshift.part.0+0x178>
80003fbc:	00440693          	addi	a3,s0,4
80003fc0:	f1dff06f          	j	80003edc <eshift.part.0+0x134>

80003fc4 <enormlz>:
80003fc4:	00455783          	lhu	a5,4(a0)
80003fc8:	ff010113          	addi	sp,sp,-16
80003fcc:	00912223          	sw	s1,4(sp)
80003fd0:	00112623          	sw	ra,12(sp)
80003fd4:	00812423          	sw	s0,8(sp)
80003fd8:	01212023          	sw	s2,0(sp)
80003fdc:	00050493          	mv	s1,a0
80003fe0:	0c079c63          	bnez	a5,800040b8 <enormlz+0xf4>
80003fe4:	00655703          	lhu	a4,6(a0)
80003fe8:	00000413          	li	s0,0
80003fec:	01071793          	slli	a5,a4,0x10
80003ff0:	4107d793          	srai	a5,a5,0x10
80003ff4:	0a07c463          	bltz	a5,8000409c <enormlz+0xd8>
80003ff8:	01a50693          	addi	a3,a0,26
80003ffc:	0a000613          	li	a2,160
80004000:	02071863          	bnez	a4,80004030 <enormlz+0x6c>
80004004:	00648793          	addi	a5,s1,6
80004008:	0080006f          	j	80004010 <enormlz+0x4c>
8000400c:	0007d703          	lhu	a4,0(a5)
80004010:	00278793          	addi	a5,a5,2
80004014:	fee79e23          	sh	a4,-4(a5)
80004018:	fef69ae3          	bne	a3,a5,8000400c <enormlz+0x48>
8000401c:	00049c23          	sh	zero,24(s1)
80004020:	01040413          	addi	s0,s0,16
80004024:	06c40c63          	beq	s0,a2,8000409c <enormlz+0xd8>
80004028:	0064d703          	lhu	a4,6(s1)
8000402c:	fc070ce3          	beqz	a4,80004004 <enormlz+0x40>
80004030:	f0077793          	andi	a5,a4,-256
80004034:	04079063          	bnez	a5,80004074 <enormlz+0xb0>
80004038:	01848513          	addi	a0,s1,24
8000403c:	00248593          	addi	a1,s1,2
80004040:	00000793          	li	a5,0
80004044:	00050713          	mv	a4,a0
80004048:	00075683          	lhu	a3,0(a4)
8000404c:	ffe70713          	addi	a4,a4,-2
80004050:	00869613          	slli	a2,a3,0x8
80004054:	00c7e7b3          	or	a5,a5,a2
80004058:	00f71123          	sh	a5,2(a4)
8000405c:	0086d793          	srli	a5,a3,0x8
80004060:	fee594e3          	bne	a1,a4,80004048 <enormlz+0x84>
80004064:	0064d703          	lhu	a4,6(s1)
80004068:	00840413          	addi	s0,s0,8
8000406c:	f0077793          	andi	a5,a4,-256
80004070:	fc0788e3          	beqz	a5,80004040 <enormlz+0x7c>
80004074:	0a000913          	li	s2,160
80004078:	0140006f          	j	8000408c <enormlz+0xc8>
8000407c:	00140413          	addi	s0,s0,1
80004080:	941ff0ef          	jal	ra,800039c0 <eshup1>
80004084:	00894c63          	blt	s2,s0,8000409c <enormlz+0xd8>
80004088:	0064d703          	lhu	a4,6(s1)
8000408c:	01071713          	slli	a4,a4,0x10
80004090:	41075713          	srai	a4,a4,0x10
80004094:	00048513          	mv	a0,s1
80004098:	fe0752e3          	bgez	a4,8000407c <enormlz+0xb8>
8000409c:	00c12083          	lw	ra,12(sp)
800040a0:	00040513          	mv	a0,s0
800040a4:	00812403          	lw	s0,8(sp)
800040a8:	00412483          	lw	s1,4(sp)
800040ac:	00012903          	lw	s2,0(sp)
800040b0:	01010113          	addi	sp,sp,16
800040b4:	00008067          	ret
800040b8:	f007f713          	andi	a4,a5,-256
800040bc:	00000413          	li	s0,0
800040c0:	04071063          	bnez	a4,80004100 <enormlz+0x13c>
800040c4:	f6f00913          	li	s2,-145
800040c8:	0140006f          	j	800040dc <enormlz+0x118>
800040cc:	fff40413          	addi	s0,s0,-1
800040d0:	889ff0ef          	jal	ra,80003958 <eshdn1>
800040d4:	fd2404e3          	beq	s0,s2,8000409c <enormlz+0xd8>
800040d8:	0044d783          	lhu	a5,4(s1)
800040dc:	00048513          	mv	a0,s1
800040e0:	fe0796e3          	bnez	a5,800040cc <enormlz+0x108>
800040e4:	00c12083          	lw	ra,12(sp)
800040e8:	00040513          	mv	a0,s0
800040ec:	00812403          	lw	s0,8(sp)
800040f0:	00412483          	lw	s1,4(sp)
800040f4:	00012903          	lw	s2,0(sp)
800040f8:	01010113          	addi	sp,sp,16
800040fc:	00008067          	ret
80004100:	00450693          	addi	a3,a0,4
80004104:	01a50593          	addi	a1,a0,26
80004108:	00000713          	li	a4,0
8000410c:	0080006f          	j	80004114 <enormlz+0x150>
80004110:	0006d783          	lhu	a5,0(a3)
80004114:	0087d613          	srli	a2,a5,0x8
80004118:	00c76733          	or	a4,a4,a2
8000411c:	00879793          	slli	a5,a5,0x8
80004120:	00e69023          	sh	a4,0(a3)
80004124:	01079713          	slli	a4,a5,0x10
80004128:	00268693          	addi	a3,a3,2
8000412c:	01075713          	srli	a4,a4,0x10
80004130:	feb690e3          	bne	a3,a1,80004110 <enormlz+0x14c>
80004134:	0044d783          	lhu	a5,4(s1)
80004138:	ff800413          	li	s0,-8
8000413c:	f89ff06f          	j	800040c4 <enormlz+0x100>

80004140 <emdnorm>:
80004140:	fe010113          	addi	sp,sp,-32
80004144:	00812c23          	sw	s0,24(sp)
80004148:	00912a23          	sw	s1,20(sp)
8000414c:	01212823          	sw	s2,16(sp)
80004150:	01312623          	sw	s3,12(sp)
80004154:	01412423          	sw	s4,8(sp)
80004158:	01512223          	sw	s5,4(sp)
8000415c:	00068913          	mv	s2,a3
80004160:	00078493          	mv	s1,a5
80004164:	00112e23          	sw	ra,28(sp)
80004168:	00050413          	mv	s0,a0
8000416c:	00058993          	mv	s3,a1
80004170:	00060a13          	mv	s4,a2
80004174:	00070a93          	mv	s5,a4
80004178:	e4dff0ef          	jal	ra,80003fc4 <enormlz>
8000417c:	09000793          	li	a5,144
80004180:	40a90933          	sub	s2,s2,a0
80004184:	16a7dc63          	bge	a5,a0,800042fc <emdnorm+0x1bc>
80004188:	000087b7          	lui	a5,0x8
8000418c:	ffe78793          	addi	a5,a5,-2 # 7ffe <_printf_r-0x7fff8002>
80004190:	1f27da63          	bge	a5,s2,80004384 <emdnorm+0x244>
80004194:	1c0a8463          	beqz	s5,8000435c <emdnorm+0x21c>
80004198:	0044a503          	lw	a0,4(s1)
8000419c:	0004a783          	lw	a5,0(s1)
800041a0:	06f50a63          	beq	a0,a5,80004214 <emdnorm+0xd4>
800041a4:	01a48713          	addi	a4,s1,26
800041a8:	03448793          	addi	a5,s1,52
800041ac:	00270713          	addi	a4,a4,2
800041b0:	fe071f23          	sh	zero,-2(a4)
800041b4:	fef71ce3          	bne	a4,a5,800041ac <emdnorm+0x6c>
800041b8:	03800793          	li	a5,56
800041bc:	32f50c63          	beq	a0,a5,800044f4 <emdnorm+0x3b4>
800041c0:	16a7d063          	bge	a5,a0,80004320 <emdnorm+0x1e0>
800041c4:	04000793          	li	a5,64
800041c8:	2ef50c63          	beq	a0,a5,800044c0 <emdnorm+0x380>
800041cc:	07100793          	li	a5,113
800041d0:	34f51863          	bne	a0,a5,80004520 <emdnorm+0x3e0>
800041d4:	400087b7          	lui	a5,0x40008
800041d8:	fff78793          	addi	a5,a5,-1 # 40007fff <_printf_r-0x3fff8001>
800041dc:	00a00713          	li	a4,10
800041e0:	00f4aa23          	sw	a5,20(s1)
800041e4:	ffff87b7          	lui	a5,0xffff8
800041e8:	00e4a423          	sw	a4,8(s1)
800041ec:	00f49c23          	sh	a5,24(s1)
800041f0:	00e4a623          	sw	a4,12(s1)
800041f4:	00a00793          	li	a5,10
800041f8:	00008737          	lui	a4,0x8
800041fc:	00878793          	addi	a5,a5,8 # ffff8008 <heap_end.1814+0x7ffe2624>
80004200:	00179793          	slli	a5,a5,0x1
80004204:	00f487b3          	add	a5,s1,a5
80004208:	00e79523          	sh	a4,10(a5)
8000420c:	00a4a023          	sw	a0,0(s1)
80004210:	1b205863          	blez	s2,800043c0 <emdnorm+0x280>
80004214:	0084a583          	lw	a1,8(s1)
80004218:	0144d783          	lhu	a5,20(s1)
8000421c:	08f00813          	li	a6,143
80004220:	00159613          	slli	a2,a1,0x1
80004224:	00c40633          	add	a2,s0,a2
80004228:	00065703          	lhu	a4,0(a2)
8000422c:	00f776b3          	and	a3,a4,a5
80004230:	02a84a63          	blt	a6,a0,80004264 <emdnorm+0x124>
80004234:	00b00813          	li	a6,11
80004238:	02b84663          	blt	a6,a1,80004264 <emdnorm+0x124>
8000423c:	00060793          	mv	a5,a2
80004240:	01840593          	addi	a1,s0,24
80004244:	0027d703          	lhu	a4,2(a5)
80004248:	00070463          	beqz	a4,80004250 <emdnorm+0x110>
8000424c:	0016e693          	ori	a3,a3,1
80004250:	00079123          	sh	zero,2(a5)
80004254:	00278793          	addi	a5,a5,2
80004258:	fef596e3          	bne	a1,a5,80004244 <emdnorm+0x104>
8000425c:	00065703          	lhu	a4,0(a2)
80004260:	0144d783          	lhu	a5,20(s1)
80004264:	fff7c793          	not	a5,a5
80004268:	00e7f7b3          	and	a5,a5,a4
8000426c:	00f61023          	sh	a5,0(a2)
80004270:	0164d783          	lhu	a5,22(s1)
80004274:	00d7f733          	and	a4,a5,a3
80004278:	04070063          	beqz	a4,800042b8 <emdnorm+0x178>
8000427c:	1ad78463          	beq	a5,a3,80004424 <emdnorm+0x2e4>
80004280:	03248613          	addi	a2,s1,50
80004284:	01840693          	addi	a3,s0,24
80004288:	01c48493          	addi	s1,s1,28
8000428c:	00000713          	li	a4,0
80004290:	00065783          	lhu	a5,0(a2)
80004294:	0006d583          	lhu	a1,0(a3)
80004298:	ffe68693          	addi	a3,a3,-2
8000429c:	ffe60613          	addi	a2,a2,-2
800042a0:	00b787b3          	add	a5,a5,a1
800042a4:	00e787b3          	add	a5,a5,a4
800042a8:	0107d713          	srli	a4,a5,0x10
800042ac:	00f69123          	sh	a5,2(a3)
800042b0:	00177713          	andi	a4,a4,1
800042b4:	fc961ee3          	bne	a2,s1,80004290 <emdnorm+0x150>
800042b8:	19205863          	blez	s2,80004448 <emdnorm+0x308>
800042bc:	00445783          	lhu	a5,4(s0)
800042c0:	12079e63          	bnez	a5,800043fc <emdnorm+0x2bc>
800042c4:	000087b7          	lui	a5,0x8
800042c8:	00041c23          	sh	zero,24(s0)
800042cc:	ffe78793          	addi	a5,a5,-2 # 7ffe <_printf_r-0x7fff8002>
800042d0:	0927c863          	blt	a5,s2,80004360 <emdnorm+0x220>
800042d4:	01241123          	sh	s2,2(s0)
800042d8:	01c12083          	lw	ra,28(sp)
800042dc:	01812403          	lw	s0,24(sp)
800042e0:	01412483          	lw	s1,20(sp)
800042e4:	01012903          	lw	s2,16(sp)
800042e8:	00c12983          	lw	s3,12(sp)
800042ec:	00812a03          	lw	s4,8(sp)
800042f0:	00412a83          	lw	s5,4(sp)
800042f4:	02010113          	addi	sp,sp,32
800042f8:	00008067          	ret
800042fc:	0e095463          	bgez	s2,800043e4 <emdnorm+0x2a4>
80004300:	f7000793          	li	a5,-144
80004304:	08f95c63          	bge	s2,a5,8000439c <emdnorm+0x25c>
80004308:	00240793          	addi	a5,s0,2
8000430c:	01a40413          	addi	s0,s0,26
80004310:	00278793          	addi	a5,a5,2
80004314:	fe079f23          	sh	zero,-2(a5)
80004318:	fe879ce3          	bne	a5,s0,80004310 <emdnorm+0x1d0>
8000431c:	fbdff06f          	j	800042d8 <emdnorm+0x198>
80004320:	01800793          	li	a5,24
80004324:	16f50863          	beq	a0,a5,80004494 <emdnorm+0x354>
80004328:	03500793          	li	a5,53
8000432c:	1ef51a63          	bne	a0,a5,80004520 <emdnorm+0x3e0>
80004330:	00001737          	lui	a4,0x1
80004334:	040007b7          	lui	a5,0x4000
80004338:	00600693          	li	a3,6
8000433c:	7ff78793          	addi	a5,a5,2047 # 40007ff <_printf_r-0x7bfff801>
80004340:	80070713          	addi	a4,a4,-2048 # 800 <_printf_r-0x7ffff800>
80004344:	00f4aa23          	sw	a5,20(s1)
80004348:	00d4a423          	sw	a3,8(s1)
8000434c:	00e49c23          	sh	a4,24(s1)
80004350:	00d4a623          	sw	a3,12(s1)
80004354:	00600793          	li	a5,6
80004358:	ea5ff06f          	j	800041fc <emdnorm+0xbc>
8000435c:	00041c23          	sh	zero,24(s0)
80004360:	ffff87b7          	lui	a5,0xffff8
80004364:	fff7c793          	not	a5,a5
80004368:	00f41123          	sh	a5,2(s0)
8000436c:	00440793          	addi	a5,s0,4
80004370:	01840413          	addi	s0,s0,24
80004374:	00079023          	sh	zero,0(a5) # ffff8000 <heap_end.1814+0x7ffe261c>
80004378:	00278793          	addi	a5,a5,2
8000437c:	fef41ce3          	bne	s0,a5,80004374 <emdnorm+0x234>
80004380:	f59ff06f          	j	800042d8 <emdnorm+0x198>
80004384:	00240793          	addi	a5,s0,2
80004388:	01a40413          	addi	s0,s0,26
8000438c:	00278793          	addi	a5,a5,2
80004390:	fe079f23          	sh	zero,-2(a5)
80004394:	fe879ce3          	bne	a5,s0,8000438c <emdnorm+0x24c>
80004398:	f41ff06f          	j	800042d8 <emdnorm+0x198>
8000439c:	00090593          	mv	a1,s2
800043a0:	00040513          	mv	a0,s0
800043a4:	a05ff0ef          	jal	ra,80003da8 <eshift.part.0>
800043a8:	00050463          	beqz	a0,800043b0 <emdnorm+0x270>
800043ac:	00100993          	li	s3,1
800043b0:	0c0a8c63          	beqz	s5,80004488 <emdnorm+0x348>
800043b4:	0044a503          	lw	a0,4(s1)
800043b8:	0004a783          	lw	a5,0(s1)
800043bc:	def514e3          	bne	a0,a5,800041a4 <emdnorm+0x64>
800043c0:	09000793          	li	a5,144
800043c4:	0af50463          	beq	a0,a5,8000446c <emdnorm+0x32c>
800043c8:	01845783          	lhu	a5,24(s0)
800043cc:	00040513          	mv	a0,s0
800043d0:	0017f793          	andi	a5,a5,1
800043d4:	00f9e9b3          	or	s3,s3,a5
800043d8:	d80ff0ef          	jal	ra,80003958 <eshdn1>
800043dc:	0044a503          	lw	a0,4(s1)
800043e0:	e35ff06f          	j	80004214 <emdnorm+0xd4>
800043e4:	ee0a80e3          	beqz	s5,800042c4 <emdnorm+0x184>
800043e8:	0044a503          	lw	a0,4(s1)
800043ec:	0004a783          	lw	a5,0(s1)
800043f0:	daf51ae3          	bne	a0,a5,800041a4 <emdnorm+0x64>
800043f4:	e32040e3          	bgtz	s2,80004214 <emdnorm+0xd4>
800043f8:	fc9ff06f          	j	800043c0 <emdnorm+0x280>
800043fc:	00040513          	mv	a0,s0
80004400:	d58ff0ef          	jal	ra,80003958 <eshdn1>
80004404:	000087b7          	lui	a5,0x8
80004408:	00190913          	addi	s2,s2,1
8000440c:	00041c23          	sh	zero,24(s0)
80004410:	ffe78793          	addi	a5,a5,-2 # 7ffe <_printf_r-0x7fff8002>
80004414:	f527c6e3          	blt	a5,s2,80004360 <emdnorm+0x220>
80004418:	ea095ee3          	bgez	s2,800042d4 <emdnorm+0x194>
8000441c:	00041123          	sh	zero,2(s0)
80004420:	eb9ff06f          	j	800042d8 <emdnorm+0x198>
80004424:	0c099463          	bnez	s3,800044ec <emdnorm+0x3ac>
80004428:	00c4a783          	lw	a5,12(s1)
8000442c:	0184d703          	lhu	a4,24(s1)
80004430:	00179793          	slli	a5,a5,0x1
80004434:	00f407b3          	add	a5,s0,a5
80004438:	0007d783          	lhu	a5,0(a5)
8000443c:	00e7f7b3          	and	a5,a5,a4
80004440:	e40790e3          	bnez	a5,80004280 <emdnorm+0x140>
80004444:	e7204ce3          	bgtz	s2,800042bc <emdnorm+0x17c>
80004448:	09000793          	li	a5,144
8000444c:	00f50663          	beq	a0,a5,80004458 <emdnorm+0x318>
80004450:	00040513          	mv	a0,s0
80004454:	d6cff0ef          	jal	ra,800039c0 <eshup1>
80004458:	00445783          	lhu	a5,4(s0)
8000445c:	fa0790e3          	bnez	a5,800043fc <emdnorm+0x2bc>
80004460:	00041c23          	sh	zero,24(s0)
80004464:	fa094ce3          	bltz	s2,8000441c <emdnorm+0x2dc>
80004468:	e6dff06f          	j	800042d4 <emdnorm+0x194>
8000446c:	0084a603          	lw	a2,8(s1)
80004470:	0144d783          	lhu	a5,20(s1)
80004474:	00161613          	slli	a2,a2,0x1
80004478:	00c40633          	add	a2,s0,a2
8000447c:	00065703          	lhu	a4,0(a2)
80004480:	00e7f6b3          	and	a3,a5,a4
80004484:	de1ff06f          	j	80004264 <emdnorm+0x124>
80004488:	00041c23          	sh	zero,24(s0)
8000448c:	00041123          	sh	zero,2(s0)
80004490:	e49ff06f          	j	800042d8 <emdnorm+0x198>
80004494:	008007b7          	lui	a5,0x800
80004498:	0ff78793          	addi	a5,a5,255 # 8000ff <_printf_r-0x7f7fff01>
8000449c:	00400713          	li	a4,4
800044a0:	00f4aa23          	sw	a5,20(s1)
800044a4:	10000793          	li	a5,256
800044a8:	00e4a423          	sw	a4,8(s1)
800044ac:	00f49c23          	sh	a5,24(s1)
800044b0:	00e4a623          	sw	a4,12(s1)
800044b4:	00400793          	li	a5,4
800044b8:	10000713          	li	a4,256
800044bc:	d41ff06f          	j	800041fc <emdnorm+0xbc>
800044c0:	00700793          	li	a5,7
800044c4:	00f4a423          	sw	a5,8(s1)
800044c8:	800107b7          	lui	a5,0x80010
800044cc:	fff78793          	addi	a5,a5,-1 # 8000ffff <heap_end.1814+0xffffa61b>
800044d0:	00f4aa23          	sw	a5,20(s1)
800044d4:	00100793          	li	a5,1
800044d8:	00f49c23          	sh	a5,24(s1)
800044dc:	00600793          	li	a5,6
800044e0:	00f4a623          	sw	a5,12(s1)
800044e4:	00100713          	li	a4,1
800044e8:	d15ff06f          	j	800041fc <emdnorm+0xbc>
800044ec:	d80a0ae3          	beqz	s4,80004280 <emdnorm+0x140>
800044f0:	dc9ff06f          	j	800042b8 <emdnorm+0x178>
800044f4:	008007b7          	lui	a5,0x800
800044f8:	0ff78793          	addi	a5,a5,255 # 8000ff <_printf_r-0x7f7fff01>
800044fc:	00600713          	li	a4,6
80004500:	00f4aa23          	sw	a5,20(s1)
80004504:	10000793          	li	a5,256
80004508:	00e4a423          	sw	a4,8(s1)
8000450c:	00f49c23          	sh	a5,24(s1)
80004510:	00e4a623          	sw	a4,12(s1)
80004514:	00600793          	li	a5,6
80004518:	10000713          	li	a4,256
8000451c:	ce1ff06f          	j	800041fc <emdnorm+0xbc>
80004520:	00c00793          	li	a5,12
80004524:	00f4a423          	sw	a5,8(s1)
80004528:	800107b7          	lui	a5,0x80010
8000452c:	fff78793          	addi	a5,a5,-1 # 8000ffff <heap_end.1814+0xffffa61b>
80004530:	00f4aa23          	sw	a5,20(s1)
80004534:	00100793          	li	a5,1
80004538:	00f49c23          	sh	a5,24(s1)
8000453c:	00b00793          	li	a5,11
80004540:	00f4a623          	sw	a5,12(s1)
80004544:	00100713          	li	a4,1
80004548:	cb5ff06f          	j	800041fc <emdnorm+0xbc>

8000454c <eiremain>:
8000454c:	fd010113          	addi	sp,sp,-48
80004550:	02912223          	sw	s1,36(sp)
80004554:	01312e23          	sw	s3,28(sp)
80004558:	00058493          	mv	s1,a1
8000455c:	00255983          	lhu	s3,2(a0)
80004560:	02112623          	sw	ra,44(sp)
80004564:	02812423          	sw	s0,40(sp)
80004568:	03212023          	sw	s2,32(sp)
8000456c:	01412c23          	sw	s4,24(sp)
80004570:	00060913          	mv	s2,a2
80004574:	01512a23          	sw	s5,20(sp)
80004578:	01612823          	sw	s6,16(sp)
8000457c:	01712623          	sw	s7,12(sp)
80004580:	01812423          	sw	s8,8(sp)
80004584:	01912223          	sw	s9,4(sp)
80004588:	01a12023          	sw	s10,0(sp)
8000458c:	00050a13          	mv	s4,a0
80004590:	a35ff0ef          	jal	ra,80003fc4 <enormlz>
80004594:	0024d403          	lhu	s0,2(s1)
80004598:	00050793          	mv	a5,a0
8000459c:	00048513          	mv	a0,s1
800045a0:	40f989b3          	sub	s3,s3,a5
800045a4:	03490a93          	addi	s5,s2,52
800045a8:	a1dff0ef          	jal	ra,80003fc4 <enormlz>
800045ac:	40a40433          	sub	s0,s0,a0
800045b0:	04e90713          	addi	a4,s2,78
800045b4:	000a8793          	mv	a5,s5
800045b8:	00278793          	addi	a5,a5,2
800045bc:	fe079f23          	sh	zero,-2(a5)
800045c0:	fee79ce3          	bne	a5,a4,800045b8 <eiremain+0x6c>
800045c4:	09344a63          	blt	s0,s3,80004658 <eiremain+0x10c>
800045c8:	004a0b93          	addi	s7,s4,4
800045cc:	00448b13          	addi	s6,s1,4
800045d0:	fff98993          	addi	s3,s3,-1
800045d4:	01aa0c93          	addi	s9,s4,26
800045d8:	00248c13          	addi	s8,s1,2
800045dc:	000b0713          	mv	a4,s6
800045e0:	000b8793          	mv	a5,s7
800045e4:	0007d603          	lhu	a2,0(a5)
800045e8:	00075683          	lhu	a3,0(a4)
800045ec:	00278793          	addi	a5,a5,2
800045f0:	00270713          	addi	a4,a4,2
800045f4:	0ad61a63          	bne	a2,a3,800046a8 <eiremain+0x15c>
800045f8:	ff9796e3          	bne	a5,s9,800045e4 <eiremain+0x98>
800045fc:	018a0613          	addi	a2,s4,24
80004600:	01848713          	addi	a4,s1,24
80004604:	00000693          	li	a3,0
80004608:	00075783          	lhu	a5,0(a4)
8000460c:	00065583          	lhu	a1,0(a2)
80004610:	ffe70713          	addi	a4,a4,-2
80004614:	40d787b3          	sub	a5,a5,a3
80004618:	40b787b3          	sub	a5,a5,a1
8000461c:	0107d693          	srli	a3,a5,0x10
80004620:	00f71123          	sh	a5,2(a4)
80004624:	0016f693          	andi	a3,a3,1
80004628:	ffe60613          	addi	a2,a2,-2
8000462c:	fcec1ee3          	bne	s8,a4,80004608 <eiremain+0xbc>
80004630:	00100d13          	li	s10,1
80004634:	000a8513          	mv	a0,s5
80004638:	b88ff0ef          	jal	ra,800039c0 <eshup1>
8000463c:	04c95783          	lhu	a5,76(s2)
80004640:	fff40413          	addi	s0,s0,-1
80004644:	00048513          	mv	a0,s1
80004648:	00fd6d33          	or	s10,s10,a5
8000464c:	05a91623          	sh	s10,76(s2)
80004650:	b70ff0ef          	jal	ra,800039c0 <eshup1>
80004654:	f93414e3          	bne	s0,s3,800045dc <eiremain+0x90>
80004658:	00040693          	mv	a3,s0
8000465c:	02812403          	lw	s0,40(sp)
80004660:	02c12083          	lw	ra,44(sp)
80004664:	01c12983          	lw	s3,28(sp)
80004668:	01812a03          	lw	s4,24(sp)
8000466c:	01412a83          	lw	s5,20(sp)
80004670:	01012b03          	lw	s6,16(sp)
80004674:	00c12b83          	lw	s7,12(sp)
80004678:	00812c03          	lw	s8,8(sp)
8000467c:	00412c83          	lw	s9,4(sp)
80004680:	00012d03          	lw	s10,0(sp)
80004684:	00090793          	mv	a5,s2
80004688:	00048513          	mv	a0,s1
8000468c:	02012903          	lw	s2,32(sp)
80004690:	02412483          	lw	s1,36(sp)
80004694:	00000713          	li	a4,0
80004698:	00000613          	li	a2,0
8000469c:	00000593          	li	a1,0
800046a0:	03010113          	addi	sp,sp,48
800046a4:	a9dff06f          	j	80004140 <emdnorm>
800046a8:	00000d13          	li	s10,0
800046ac:	f8c6e4e3          	bltu	a3,a2,80004634 <eiremain+0xe8>
800046b0:	f4dff06f          	j	800045fc <eiremain+0xb0>

800046b4 <emovo.isra.0>:
800046b4:	00055703          	lhu	a4,0(a0)
800046b8:	00255783          	lhu	a5,2(a0)
800046bc:	00070663          	beqz	a4,800046c8 <emovo.isra.0+0x14>
800046c0:	00008737          	lui	a4,0x8
800046c4:	00e7e7b3          	or	a5,a5,a4
800046c8:	00f59923          	sh	a5,18(a1)
800046cc:	00255703          	lhu	a4,2(a0)
800046d0:	000087b7          	lui	a5,0x8
800046d4:	fff78793          	addi	a5,a5,-1 # 7fff <_printf_r-0x7fff8001>
800046d8:	02f70463          	beq	a4,a5,80004700 <emovo.isra.0+0x4c>
800046dc:	00650793          	addi	a5,a0,6
800046e0:	01058593          	addi	a1,a1,16
800046e4:	01850513          	addi	a0,a0,24
800046e8:	0007d703          	lhu	a4,0(a5)
800046ec:	00278793          	addi	a5,a5,2
800046f0:	ffe58593          	addi	a1,a1,-2
800046f4:	00e59123          	sh	a4,2(a1)
800046f8:	fea798e3          	bne	a5,a0,800046e8 <emovo.isra.0+0x34>
800046fc:	00008067          	ret
80004700:	00650793          	addi	a5,a0,6
80004704:	01a50513          	addi	a0,a0,26
80004708:	0007d703          	lhu	a4,0(a5)
8000470c:	00278793          	addi	a5,a5,2
80004710:	02071a63          	bnez	a4,80004744 <emovo.isra.0+0x90>
80004714:	fea79ae3          	bne	a5,a0,80004708 <emovo.isra.0+0x54>
80004718:	01258713          	addi	a4,a1,18
8000471c:	00058793          	mv	a5,a1
80004720:	00278793          	addi	a5,a5,2
80004724:	fe079f23          	sh	zero,-2(a5)
80004728:	fef71ce3          	bne	a4,a5,80004720 <emovo.isra.0+0x6c>
8000472c:	0125d783          	lhu	a5,18(a1)
80004730:	00008737          	lui	a4,0x8
80004734:	fff70713          	addi	a4,a4,-1 # 7fff <_printf_r-0x7fff8001>
80004738:	00e7e7b3          	or	a5,a5,a4
8000473c:	00f59923          	sh	a5,18(a1)
80004740:	00008067          	ret
80004744:	01058713          	addi	a4,a1,16
80004748:	00058793          	mv	a5,a1
8000474c:	00278793          	addi	a5,a5,2
80004750:	fe079f23          	sh	zero,-2(a5)
80004754:	fef71ce3          	bne	a4,a5,8000474c <emovo.isra.0+0x98>
80004758:	7fffc7b7          	lui	a5,0x7fffc
8000475c:	00f5a823          	sw	a5,16(a1)
80004760:	00008067          	ret

80004764 <emul>:
80004764:	f7010113          	addi	sp,sp,-144
80004768:	07612823          	sw	s6,112(sp)
8000476c:	01255b03          	lhu	s6,18(a0)
80004770:	000087b7          	lui	a5,0x8
80004774:	fff78793          	addi	a5,a5,-1 # 7fff <_printf_r-0x7fff8001>
80004778:	07412c23          	sw	s4,120(sp)
8000477c:	0167fa33          	and	s4,a5,s6
80004780:	010a1a13          	slli	s4,s4,0x10
80004784:	08812423          	sw	s0,136(sp)
80004788:	08912223          	sw	s1,132(sp)
8000478c:	09212023          	sw	s2,128(sp)
80004790:	07312e23          	sw	s3,124(sp)
80004794:	08112623          	sw	ra,140(sp)
80004798:	07512a23          	sw	s5,116(sp)
8000479c:	07712623          	sw	s7,108(sp)
800047a0:	07812423          	sw	s8,104(sp)
800047a4:	07912223          	sw	s9,100(sp)
800047a8:	010a5a13          	srli	s4,s4,0x10
800047ac:	00050493          	mv	s1,a0
800047b0:	00058913          	mv	s2,a1
800047b4:	00060413          	mv	s0,a2
800047b8:	00068993          	mv	s3,a3
800047bc:	10fa1263          	bne	s4,a5,800048c0 <emul+0x15c>
800047c0:	b08ff0ef          	jal	ra,80003ac8 <eisnan.part.0>
800047c4:	28051a63          	bnez	a0,80004a58 <emul+0x2f4>
800047c8:	01295a83          	lhu	s5,18(s2)
800047cc:	015a77b3          	and	a5,s4,s5
800047d0:	2b478263          	beq	a5,s4,80004a74 <emul+0x310>
800047d4:	00048513          	mv	a0,s1
800047d8:	db4ff0ef          	jal	ra,80003d8c <eisinf.part.0>
800047dc:	2e050e63          	beqz	a0,80004ad8 <emul+0x374>
800047e0:	800145b7          	lui	a1,0x80014
800047e4:	0d458593          	addi	a1,a1,212 # 800140d4 <heap_end.1814+0xffffe6f0>
800047e8:	00090513          	mv	a0,s2
800047ec:	c84ff0ef          	jal	ra,80003c70 <ecmp>
800047f0:	36050663          	beqz	a0,80004b5c <emul+0x3f8>
800047f4:	01295a83          	lhu	s5,18(s2)
800047f8:	000087b7          	lui	a5,0x8
800047fc:	fff78793          	addi	a5,a5,-1 # 7fff <_printf_r-0x7fff8001>
80004800:	0157fab3          	and	s5,a5,s5
80004804:	010a9a93          	slli	s5,s5,0x10
80004808:	010ada93          	srli	s5,s5,0x10
8000480c:	2cfa9463          	bne	s5,a5,80004ad4 <emul+0x370>
80004810:	00090513          	mv	a0,s2
80004814:	d78ff0ef          	jal	ra,80003d8c <eisinf.part.0>
80004818:	32051063          	bnez	a0,80004b38 <emul+0x3d4>
8000481c:	0124d783          	lhu	a5,18(s1)
80004820:	00faf7b3          	and	a5,s5,a5
80004824:	0b579863          	bne	a5,s5,800048d4 <emul+0x170>
80004828:	00048513          	mv	a0,s1
8000482c:	d60ff0ef          	jal	ra,80003d8c <eisinf.part.0>
80004830:	00051863          	bnez	a0,80004840 <emul+0xdc>
80004834:	00090513          	mv	a0,s2
80004838:	d54ff0ef          	jal	ra,80003d8c <eisinf.part.0>
8000483c:	08050c63          	beqz	a0,800048d4 <emul+0x170>
80004840:	00048513          	mv	a0,s1
80004844:	af4ff0ef          	jal	ra,80003b38 <eisneg>
80004848:	00050493          	mv	s1,a0
8000484c:	00090513          	mv	a0,s2
80004850:	ae8ff0ef          	jal	ra,80003b38 <eisneg>
80004854:	40a484b3          	sub	s1,s1,a0
80004858:	009034b3          	snez	s1,s1
8000485c:	00f49493          	slli	s1,s1,0xf
80004860:	00941923          	sh	s1,18(s0)
80004864:	01240713          	addi	a4,s0,18
80004868:	00040793          	mv	a5,s0
8000486c:	00278793          	addi	a5,a5,2
80004870:	fe079f23          	sh	zero,-2(a5)
80004874:	fef71ce3          	bne	a4,a5,8000486c <emul+0x108>
80004878:	01245783          	lhu	a5,18(s0)
8000487c:	00008737          	lui	a4,0x8
80004880:	fff70713          	addi	a4,a4,-1 # 7fff <_printf_r-0x7fff8001>
80004884:	00e7e7b3          	or	a5,a5,a4
80004888:	00f41923          	sh	a5,18(s0)
8000488c:	08c12083          	lw	ra,140(sp)
80004890:	08812403          	lw	s0,136(sp)
80004894:	08412483          	lw	s1,132(sp)
80004898:	08012903          	lw	s2,128(sp)
8000489c:	07c12983          	lw	s3,124(sp)
800048a0:	07812a03          	lw	s4,120(sp)
800048a4:	07412a83          	lw	s5,116(sp)
800048a8:	07012b03          	lw	s6,112(sp)
800048ac:	06c12b83          	lw	s7,108(sp)
800048b0:	06812c03          	lw	s8,104(sp)
800048b4:	06412c83          	lw	s9,100(sp)
800048b8:	09010113          	addi	sp,sp,144
800048bc:	00008067          	ret
800048c0:	0125da83          	lhu	s5,18(a1)
800048c4:	0157f733          	and	a4,a5,s5
800048c8:	01071713          	slli	a4,a4,0x10
800048cc:	01075713          	srli	a4,a4,0x10
800048d0:	04f70a63          	beq	a4,a5,80004924 <emul+0x1c0>
800048d4:	00048513          	mv	a0,s1
800048d8:	00c10593          	addi	a1,sp,12
800048dc:	a9cff0ef          	jal	ra,80003b78 <emovi>
800048e0:	00090513          	mv	a0,s2
800048e4:	02810593          	addi	a1,sp,40
800048e8:	a90ff0ef          	jal	ra,80003b78 <emovi>
800048ec:	00e15483          	lhu	s1,14(sp)
800048f0:	02a15903          	lhu	s2,42(sp)
800048f4:	04049c63          	bnez	s1,8000494c <emul+0x1e8>
800048f8:	01010793          	addi	a5,sp,16
800048fc:	02410693          	addi	a3,sp,36
80004900:	20d78863          	beq	a5,a3,80004b10 <emul+0x3ac>
80004904:	0007d703          	lhu	a4,0(a5)
80004908:	00278793          	addi	a5,a5,2
8000490c:	fe070ae3          	beqz	a4,80004900 <emul+0x19c>
80004910:	00c10513          	addi	a0,sp,12
80004914:	eb0ff0ef          	jal	ra,80003fc4 <enormlz>
80004918:	02a15703          	lhu	a4,42(sp)
8000491c:	40a004b3          	neg	s1,a0
80004920:	0300006f          	j	80004950 <emul+0x1ec>
80004924:	00058513          	mv	a0,a1
80004928:	9a0ff0ef          	jal	ra,80003ac8 <eisnan.part.0>
8000492c:	ec0506e3          	beqz	a0,800047f8 <emul+0x94>
80004930:	01490713          	addi	a4,s2,20
80004934:	00095783          	lhu	a5,0(s2)
80004938:	00290913          	addi	s2,s2,2
8000493c:	00240413          	addi	s0,s0,2
80004940:	fef41f23          	sh	a5,-2(s0)
80004944:	fee918e3          	bne	s2,a4,80004934 <emul+0x1d0>
80004948:	f45ff06f          	j	8000488c <emul+0x128>
8000494c:	00090713          	mv	a4,s2
80004950:	00090a93          	mv	s5,s2
80004954:	02c10793          	addi	a5,sp,44
80004958:	04010693          	addi	a3,sp,64
8000495c:	02071263          	bnez	a4,80004980 <emul+0x21c>
80004960:	1cf68263          	beq	a3,a5,80004b24 <emul+0x3c0>
80004964:	0007d703          	lhu	a4,0(a5)
80004968:	00278793          	addi	a5,a5,2
8000496c:	fe070ae3          	beqz	a4,80004960 <emul+0x1fc>
80004970:	02810513          	addi	a0,sp,40
80004974:	e50ff0ef          	jal	ra,80003fc4 <enormlz>
80004978:	02a15703          	lhu	a4,42(sp)
8000497c:	40a90ab3          	sub	s5,s2,a0
80004980:	02815783          	lhu	a5,40(sp)
80004984:	03898c13          	addi	s8,s3,56
80004988:	02e99b23          	sh	a4,54(s3)
8000498c:	02f99a23          	sh	a5,52(s3)
80004990:	04e98713          	addi	a4,s3,78
80004994:	000c0793          	mv	a5,s8
80004998:	00079023          	sh	zero,0(a5)
8000499c:	00278793          	addi	a5,a5,2
800049a0:	fef71ce3          	bne	a4,a5,80004998 <emul+0x234>
800049a4:	04c98a13          	addi	s4,s3,76
800049a8:	00000b93          	li	s7,0
800049ac:	02410913          	addi	s2,sp,36
800049b0:	01010c93          	addi	s9,sp,16
800049b4:	04610b13          	addi	s6,sp,70
800049b8:	00095503          	lhu	a0,0(s2)
800049bc:	ffe90913          	addi	s2,s2,-2
800049c0:	0c051863          	bnez	a0,80004a90 <emul+0x32c>
800049c4:	04c9d703          	lhu	a4,76(s3)
800049c8:	000a0793          	mv	a5,s4
800049cc:	00ebebb3          	or	s7,s7,a4
800049d0:	ffe7d703          	lhu	a4,-2(a5)
800049d4:	ffe78793          	addi	a5,a5,-2
800049d8:	00e79123          	sh	a4,2(a5)
800049dc:	ff879ae3          	bne	a5,s8,800049d0 <emul+0x26c>
800049e0:	02099c23          	sh	zero,56(s3)
800049e4:	fd991ae3          	bne	s2,s9,800049b8 <emul+0x254>
800049e8:	03498713          	addi	a4,s3,52
800049ec:	02810793          	addi	a5,sp,40
800049f0:	04210593          	addi	a1,sp,66
800049f4:	00075603          	lhu	a2,0(a4)
800049f8:	00278793          	addi	a5,a5,2
800049fc:	00270713          	addi	a4,a4,2
80004a00:	fec79f23          	sh	a2,-2(a5)
80004a04:	fef598e3          	bne	a1,a5,800049f4 <emul+0x290>
80004a08:	ffffc6b7          	lui	a3,0xffffc
80004a0c:	015484b3          	add	s1,s1,s5
80004a10:	00268693          	addi	a3,a3,2 # ffffc002 <heap_end.1814+0x7ffe661e>
80004a14:	000b8593          	mv	a1,s7
80004a18:	02810513          	addi	a0,sp,40
80004a1c:	00098793          	mv	a5,s3
80004a20:	04000713          	li	a4,64
80004a24:	00d486b3          	add	a3,s1,a3
80004a28:	00000613          	li	a2,0
80004a2c:	f14ff0ef          	jal	ra,80004140 <emdnorm>
80004a30:	02815703          	lhu	a4,40(sp)
80004a34:	00c15783          	lhu	a5,12(sp)
80004a38:	00040593          	mv	a1,s0
80004a3c:	02810513          	addi	a0,sp,40
80004a40:	40e787b3          	sub	a5,a5,a4
80004a44:	00f037b3          	snez	a5,a5
80004a48:	40f007b3          	neg	a5,a5
80004a4c:	02f11423          	sh	a5,40(sp)
80004a50:	c65ff0ef          	jal	ra,800046b4 <emovo.isra.0>
80004a54:	e39ff06f          	j	8000488c <emul+0x128>
80004a58:	01448713          	addi	a4,s1,20
80004a5c:	0004d783          	lhu	a5,0(s1)
80004a60:	00248493          	addi	s1,s1,2
80004a64:	00240413          	addi	s0,s0,2
80004a68:	fef41f23          	sh	a5,-2(s0)
80004a6c:	fee498e3          	bne	s1,a4,80004a5c <emul+0x2f8>
80004a70:	e1dff06f          	j	8000488c <emul+0x128>
80004a74:	00090513          	mv	a0,s2
80004a78:	850ff0ef          	jal	ra,80003ac8 <eisnan.part.0>
80004a7c:	ea051ae3          	bnez	a0,80004930 <emul+0x1cc>
80004a80:	00048513          	mv	a0,s1
80004a84:	b08ff0ef          	jal	ra,80003d8c <eisinf.part.0>
80004a88:	d60508e3          	beqz	a0,800047f8 <emul+0x94>
80004a8c:	d55ff06f          	j	800047e0 <emul+0x7c>
80004a90:	04410613          	addi	a2,sp,68
80004a94:	02810593          	addi	a1,sp,40
80004a98:	f99fe0ef          	jal	ra,80003a30 <m16m>
80004a9c:	000a0593          	mv	a1,s4
80004aa0:	00000613          	li	a2,0
80004aa4:	05c10713          	addi	a4,sp,92
80004aa8:	0005d803          	lhu	a6,0(a1)
80004aac:	00075783          	lhu	a5,0(a4)
80004ab0:	ffe58593          	addi	a1,a1,-2
80004ab4:	ffe70713          	addi	a4,a4,-2
80004ab8:	010787b3          	add	a5,a5,a6
80004abc:	00c787b3          	add	a5,a5,a2
80004ac0:	0107d613          	srli	a2,a5,0x10
80004ac4:	00f59123          	sh	a5,2(a1)
80004ac8:	00167613          	andi	a2,a2,1
80004acc:	fd671ee3          	bne	a4,s6,80004aa8 <emul+0x344>
80004ad0:	ef5ff06f          	j	800049c4 <emul+0x260>
80004ad4:	0124db03          	lhu	s6,18(s1)
80004ad8:	000087b7          	lui	a5,0x8
80004adc:	fff78793          	addi	a5,a5,-1 # 7fff <_printf_r-0x7fff8001>
80004ae0:	0167fb33          	and	s6,a5,s6
80004ae4:	010b1b13          	slli	s6,s6,0x10
80004ae8:	010b5b13          	srli	s6,s6,0x10
80004aec:	defb14e3          	bne	s6,a5,800048d4 <emul+0x170>
80004af0:	00048513          	mv	a0,s1
80004af4:	a98ff0ef          	jal	ra,80003d8c <eisinf.part.0>
80004af8:	d40514e3          	bnez	a0,80004840 <emul+0xdc>
80004afc:	01295783          	lhu	a5,18(s2)
80004b00:	fff7c793          	not	a5,a5
80004b04:	01179713          	slli	a4,a5,0x11
80004b08:	dc0716e3          	bnez	a4,800048d4 <emul+0x170>
80004b0c:	d29ff06f          	j	80004834 <emul+0xd0>
80004b10:	01440793          	addi	a5,s0,20
80004b14:	00240413          	addi	s0,s0,2
80004b18:	fe041f23          	sh	zero,-2(s0)
80004b1c:	fe879ce3          	bne	a5,s0,80004b14 <emul+0x3b0>
80004b20:	d6dff06f          	j	8000488c <emul+0x128>
80004b24:	01440793          	addi	a5,s0,20
80004b28:	00240413          	addi	s0,s0,2
80004b2c:	fe041f23          	sh	zero,-2(s0)
80004b30:	fef41ce3          	bne	s0,a5,80004b28 <emul+0x3c4>
80004b34:	d59ff06f          	j	8000488c <emul+0x128>
80004b38:	800145b7          	lui	a1,0x80014
80004b3c:	0d458593          	addi	a1,a1,212 # 800140d4 <heap_end.1814+0xffffe6f0>
80004b40:	00048513          	mv	a0,s1
80004b44:	92cff0ef          	jal	ra,80003c70 <ecmp>
80004b48:	00050a63          	beqz	a0,80004b5c <emul+0x3f8>
80004b4c:	0124d783          	lhu	a5,18(s1)
80004b50:	00faf7b3          	and	a5,s5,a5
80004b54:	f9578ee3          	beq	a5,s5,80004af0 <emul+0x38c>
80004b58:	fa5ff06f          	j	80004afc <emul+0x398>
80004b5c:	01040713          	addi	a4,s0,16
80004b60:	00040793          	mv	a5,s0
80004b64:	00278793          	addi	a5,a5,2
80004b68:	fe079f23          	sh	zero,-2(a5)
80004b6c:	fee79ce3          	bne	a5,a4,80004b64 <emul+0x400>
80004b70:	7fffc7b7          	lui	a5,0x7fffc
80004b74:	00f42823          	sw	a5,16(s0)
80004b78:	d15ff06f          	j	8000488c <emul+0x128>

80004b7c <ediv>:
80004b7c:	01255783          	lhu	a5,18(a0)
80004b80:	f5010113          	addi	sp,sp,-176
80004b84:	0a812423          	sw	s0,168(sp)
80004b88:	fff7c793          	not	a5,a5
80004b8c:	0a912223          	sw	s1,164(sp)
80004b90:	0b212023          	sw	s2,160(sp)
80004b94:	09312e23          	sw	s3,156(sp)
80004b98:	0a112623          	sw	ra,172(sp)
80004b9c:	09412c23          	sw	s4,152(sp)
80004ba0:	09512a23          	sw	s5,148(sp)
80004ba4:	09612823          	sw	s6,144(sp)
80004ba8:	09712623          	sw	s7,140(sp)
80004bac:	09812423          	sw	s8,136(sp)
80004bb0:	09912223          	sw	s9,132(sp)
80004bb4:	09a12023          	sw	s10,128(sp)
80004bb8:	07b12e23          	sw	s11,124(sp)
80004bbc:	01179713          	slli	a4,a5,0x11
80004bc0:	00050913          	mv	s2,a0
80004bc4:	00058993          	mv	s3,a1
80004bc8:	00060413          	mv	s0,a2
80004bcc:	00068493          	mv	s1,a3
80004bd0:	00071663          	bnez	a4,80004bdc <ediv+0x60>
80004bd4:	ef5fe0ef          	jal	ra,80003ac8 <eisnan.part.0>
80004bd8:	38051863          	bnez	a0,80004f68 <ediv+0x3ec>
80004bdc:	0129d783          	lhu	a5,18(s3)
80004be0:	fff7c793          	not	a5,a5
80004be4:	01179713          	slli	a4,a5,0x11
80004be8:	08070e63          	beqz	a4,80004c84 <ediv+0x108>
80004bec:	80014a37          	lui	s4,0x80014
80004bf0:	0d4a0593          	addi	a1,s4,212 # 800140d4 <heap_end.1814+0xffffe6f0>
80004bf4:	00090513          	mv	a0,s2
80004bf8:	878ff0ef          	jal	ra,80003c70 <ecmp>
80004bfc:	10050463          	beqz	a0,80004d04 <ediv+0x188>
80004c00:	01295a03          	lhu	s4,18(s2)
80004c04:	0129d703          	lhu	a4,18(s3)
80004c08:	000087b7          	lui	a5,0x8
80004c0c:	fff78793          	addi	a5,a5,-1 # 7fff <_printf_r-0x7fff8001>
80004c10:	0147fa33          	and	s4,a5,s4
80004c14:	00e7fab3          	and	s5,a5,a4
80004c18:	08fa1a63          	bne	s4,a5,80004cac <ediv+0x130>
80004c1c:	00090513          	mv	a0,s2
80004c20:	96cff0ef          	jal	ra,80003d8c <eisinf.part.0>
80004c24:	10050863          	beqz	a0,80004d34 <ediv+0x1b8>
80004c28:	014a9863          	bne	s5,s4,80004c38 <ediv+0xbc>
80004c2c:	00098513          	mv	a0,s3
80004c30:	95cff0ef          	jal	ra,80003d8c <eisinf.part.0>
80004c34:	0e051063          	bnez	a0,80004d14 <ediv+0x198>
80004c38:	01440793          	addi	a5,s0,20
80004c3c:	00240413          	addi	s0,s0,2
80004c40:	fe041f23          	sh	zero,-2(s0)
80004c44:	fef41ce3          	bne	s0,a5,80004c3c <ediv+0xc0>
80004c48:	0ac12083          	lw	ra,172(sp)
80004c4c:	0a812403          	lw	s0,168(sp)
80004c50:	0a412483          	lw	s1,164(sp)
80004c54:	0a012903          	lw	s2,160(sp)
80004c58:	09c12983          	lw	s3,156(sp)
80004c5c:	09812a03          	lw	s4,152(sp)
80004c60:	09412a83          	lw	s5,148(sp)
80004c64:	09012b03          	lw	s6,144(sp)
80004c68:	08c12b83          	lw	s7,140(sp)
80004c6c:	08812c03          	lw	s8,136(sp)
80004c70:	08412c83          	lw	s9,132(sp)
80004c74:	08012d03          	lw	s10,128(sp)
80004c78:	07c12d83          	lw	s11,124(sp)
80004c7c:	0b010113          	addi	sp,sp,176
80004c80:	00008067          	ret
80004c84:	00098513          	mv	a0,s3
80004c88:	e41fe0ef          	jal	ra,80003ac8 <eisnan.part.0>
80004c8c:	f60500e3          	beqz	a0,80004bec <ediv+0x70>
80004c90:	01498713          	addi	a4,s3,20
80004c94:	0009d783          	lhu	a5,0(s3)
80004c98:	00298993          	addi	s3,s3,2
80004c9c:	00240413          	addi	s0,s0,2
80004ca0:	fef41f23          	sh	a5,-2(s0)
80004ca4:	fee998e3          	bne	s3,a4,80004c94 <ediv+0x118>
80004ca8:	fa1ff06f          	j	80004c48 <ediv+0xcc>
80004cac:	08fa8663          	beq	s5,a5,80004d38 <ediv+0x1bc>
80004cb0:	00090513          	mv	a0,s2
80004cb4:	01c10593          	addi	a1,sp,28
80004cb8:	ec1fe0ef          	jal	ra,80003b78 <emovi>
80004cbc:	03810593          	addi	a1,sp,56
80004cc0:	00098513          	mv	a0,s3
80004cc4:	eb5fe0ef          	jal	ra,80003b78 <emovi>
80004cc8:	03a15b83          	lhu	s7,58(sp)
80004ccc:	01e15903          	lhu	s2,30(sp)
80004cd0:	0c0b9263          	bnez	s7,80004d94 <ediv+0x218>
80004cd4:	03c10793          	addi	a5,sp,60
80004cd8:	05010d93          	addi	s11,sp,80
80004cdc:	34fd8e63          	beq	s11,a5,80005038 <ediv+0x4bc>
80004ce0:	0007d703          	lhu	a4,0(a5)
80004ce4:	00278793          	addi	a5,a5,2
80004ce8:	fe070ae3          	beqz	a4,80004cdc <ediv+0x160>
80004cec:	03810513          	addi	a0,sp,56
80004cf0:	ad4ff0ef          	jal	ra,80003fc4 <enormlz>
80004cf4:	40a007b3          	neg	a5,a0
80004cf8:	01e15603          	lhu	a2,30(sp)
80004cfc:	00f12623          	sw	a5,12(sp)
80004d00:	09c0006f          	j	80004d9c <ediv+0x220>
80004d04:	0d4a0593          	addi	a1,s4,212
80004d08:	00098513          	mv	a0,s3
80004d0c:	f65fe0ef          	jal	ra,80003c70 <ecmp>
80004d10:	ee0518e3          	bnez	a0,80004c00 <ediv+0x84>
80004d14:	01040713          	addi	a4,s0,16
80004d18:	00040793          	mv	a5,s0
80004d1c:	00278793          	addi	a5,a5,2
80004d20:	fe079f23          	sh	zero,-2(a5)
80004d24:	fee79ce3          	bne	a5,a4,80004d1c <ediv+0x1a0>
80004d28:	7fffc7b7          	lui	a5,0x7fffc
80004d2c:	00f42823          	sw	a5,16(s0)
80004d30:	f19ff06f          	j	80004c48 <ediv+0xcc>
80004d34:	f74a9ee3          	bne	s5,s4,80004cb0 <ediv+0x134>
80004d38:	00098513          	mv	a0,s3
80004d3c:	850ff0ef          	jal	ra,80003d8c <eisinf.part.0>
80004d40:	f60508e3          	beqz	a0,80004cb0 <ediv+0x134>
80004d44:	00090513          	mv	a0,s2
80004d48:	df1fe0ef          	jal	ra,80003b38 <eisneg>
80004d4c:	00050493          	mv	s1,a0
80004d50:	00098513          	mv	a0,s3
80004d54:	de5fe0ef          	jal	ra,80003b38 <eisneg>
80004d58:	40a487b3          	sub	a5,s1,a0
80004d5c:	00f037b3          	snez	a5,a5
80004d60:	00f79793          	slli	a5,a5,0xf
80004d64:	00f41923          	sh	a5,18(s0)
80004d68:	01240713          	addi	a4,s0,18
80004d6c:	00040793          	mv	a5,s0
80004d70:	00278793          	addi	a5,a5,2 # 7fffc002 <_printf_r-0x3ffe>
80004d74:	fe079f23          	sh	zero,-2(a5)
80004d78:	fee79ce3          	bne	a5,a4,80004d70 <ediv+0x1f4>
80004d7c:	01245783          	lhu	a5,18(s0)
80004d80:	00008737          	lui	a4,0x8
80004d84:	fff70713          	addi	a4,a4,-1 # 7fff <_printf_r-0x7fff8001>
80004d88:	00e7e7b3          	or	a5,a5,a4
80004d8c:	00f41923          	sh	a5,18(s0)
80004d90:	eb9ff06f          	j	80004c48 <ediv+0xcc>
80004d94:	01712623          	sw	s7,12(sp)
80004d98:	00090613          	mv	a2,s2
80004d9c:	01212423          	sw	s2,8(sp)
80004da0:	02010793          	addi	a5,sp,32
80004da4:	03410693          	addi	a3,sp,52
80004da8:	02061263          	bnez	a2,80004dcc <ediv+0x250>
80004dac:	2af68063          	beq	a3,a5,8000504c <ediv+0x4d0>
80004db0:	0007d703          	lhu	a4,0(a5)
80004db4:	00278793          	addi	a5,a5,2
80004db8:	fe070ae3          	beqz	a4,80004dac <ediv+0x230>
80004dbc:	01c10513          	addi	a0,sp,28
80004dc0:	a04ff0ef          	jal	ra,80003fc4 <enormlz>
80004dc4:	40a907b3          	sub	a5,s2,a0
80004dc8:	00f12423          	sw	a5,8(sp)
80004dcc:	03812703          	lw	a4,56(sp)
80004dd0:	03848d13          	addi	s10,s1,56
80004dd4:	000d0793          	mv	a5,s10
80004dd8:	02e4aa23          	sw	a4,52(s1)
80004ddc:	04e48913          	addi	s2,s1,78
80004de0:	00278793          	addi	a5,a5,2
80004de4:	fe079f23          	sh	zero,-2(a5)
80004de8:	fef91ce3          	bne	s2,a5,80004de0 <ediv+0x264>
80004dec:	03810513          	addi	a0,sp,56
80004df0:	b69fe0ef          	jal	ra,80003958 <eshdn1>
80004df4:	02215c03          	lhu	s8,34(sp)
80004df8:	00010a37          	lui	s4,0x10
80004dfc:	05010d93          	addi	s11,sp,80
80004e00:	010c1a93          	slli	s5,s8,0x10
80004e04:	418a8ab3          	sub	s5,s5,s8
80004e08:	03a10b13          	addi	s6,sp,58
80004e0c:	fffa0a13          	addi	s4,s4,-1 # ffff <_printf_r-0x7fff0001>
80004e10:	06e10c93          	addi	s9,sp,110
80004e14:	05610993          	addi	s3,sp,86
80004e18:	03c15783          	lhu	a5,60(sp)
80004e1c:	03e15703          	lhu	a4,62(sp)
80004e20:	000a0b93          	mv	s7,s4
80004e24:	01079793          	slli	a5,a5,0x10
80004e28:	00e787b3          	add	a5,a5,a4
80004e2c:	00fae863          	bltu	s5,a5,80004e3c <ediv+0x2c0>
80004e30:	0387d7b3          	divu	a5,a5,s8
80004e34:	01079b93          	slli	s7,a5,0x10
80004e38:	010bdb93          	srli	s7,s7,0x10
80004e3c:	05410613          	addi	a2,sp,84
80004e40:	01c10593          	addi	a1,sp,28
80004e44:	000b8513          	mv	a0,s7
80004e48:	be9fe0ef          	jal	ra,80003a30 <m16m>
80004e4c:	03c10713          	addi	a4,sp,60
80004e50:	05810793          	addi	a5,sp,88
80004e54:	0007d583          	lhu	a1,0(a5)
80004e58:	00075603          	lhu	a2,0(a4)
80004e5c:	00278793          	addi	a5,a5,2
80004e60:	00270713          	addi	a4,a4,2
80004e64:	12c59063          	bne	a1,a2,80004f84 <ediv+0x408>
80004e68:	ff9796e3          	bne	a5,s9,80004e54 <ediv+0x2d8>
80004e6c:	00000793          	li	a5,0
80004e70:	06c10593          	addi	a1,sp,108
80004e74:	000d8613          	mv	a2,s11
80004e78:	00065703          	lhu	a4,0(a2)
80004e7c:	0005d803          	lhu	a6,0(a1)
80004e80:	ffe60613          	addi	a2,a2,-2
80004e84:	40f70733          	sub	a4,a4,a5
80004e88:	41070733          	sub	a4,a4,a6
80004e8c:	01075793          	srli	a5,a4,0x10
80004e90:	00e61123          	sh	a4,2(a2)
80004e94:	0017f793          	andi	a5,a5,1
80004e98:	ffe58593          	addi	a1,a1,-2
80004e9c:	fd661ee3          	bne	a2,s6,80004e78 <ediv+0x2fc>
80004ea0:	017d1023          	sh	s7,0(s10)
80004ea4:	03c10793          	addi	a5,sp,60
80004ea8:	0027d703          	lhu	a4,2(a5)
80004eac:	00278793          	addi	a5,a5,2
80004eb0:	fee79f23          	sh	a4,-2(a5)
80004eb4:	ffb79ae3          	bne	a5,s11,80004ea8 <ediv+0x32c>
80004eb8:	04011823          	sh	zero,80(sp)
80004ebc:	002d0d13          	addi	s10,s10,2
80004ec0:	f5a91ce3          	bne	s2,s10,80004e18 <ediv+0x29c>
80004ec4:	00000593          	li	a1,0
80004ec8:	03c10793          	addi	a5,sp,60
80004ecc:	05210693          	addi	a3,sp,82
80004ed0:	0007d703          	lhu	a4,0(a5)
80004ed4:	00278793          	addi	a5,a5,2
80004ed8:	00e5e5b3          	or	a1,a1,a4
80004edc:	fed79ae3          	bne	a5,a3,80004ed0 <ediv+0x354>
80004ee0:	01059793          	slli	a5,a1,0x10
80004ee4:	4107d793          	srai	a5,a5,0x10
80004ee8:	00078463          	beqz	a5,80004ef0 <ediv+0x374>
80004eec:	00100593          	li	a1,1
80004ef0:	01059593          	slli	a1,a1,0x10
80004ef4:	0105d593          	srli	a1,a1,0x10
80004ef8:	03448713          	addi	a4,s1,52
80004efc:	03810793          	addi	a5,sp,56
80004f00:	00075603          	lhu	a2,0(a4)
80004f04:	00278793          	addi	a5,a5,2
80004f08:	00270713          	addi	a4,a4,2
80004f0c:	fec79f23          	sh	a2,-2(a5)
80004f10:	fef698e3          	bne	a3,a5,80004f00 <ediv+0x384>
80004f14:	00c12783          	lw	a5,12(sp)
80004f18:	00812703          	lw	a4,8(sp)
80004f1c:	000046b7          	lui	a3,0x4
80004f20:	fff68693          	addi	a3,a3,-1 # 3fff <_printf_r-0x7fffc001>
80004f24:	40e78bb3          	sub	s7,a5,a4
80004f28:	03810513          	addi	a0,sp,56
80004f2c:	00048793          	mv	a5,s1
80004f30:	04000713          	li	a4,64
80004f34:	00db86b3          	add	a3,s7,a3
80004f38:	00000613          	li	a2,0
80004f3c:	a04ff0ef          	jal	ra,80004140 <emdnorm>
80004f40:	03815703          	lhu	a4,56(sp)
80004f44:	01c15783          	lhu	a5,28(sp)
80004f48:	00040593          	mv	a1,s0
80004f4c:	03810513          	addi	a0,sp,56
80004f50:	40e787b3          	sub	a5,a5,a4
80004f54:	00f037b3          	snez	a5,a5
80004f58:	40f007b3          	neg	a5,a5
80004f5c:	02f11c23          	sh	a5,56(sp)
80004f60:	f54ff0ef          	jal	ra,800046b4 <emovo.isra.0>
80004f64:	ce5ff06f          	j	80004c48 <ediv+0xcc>
80004f68:	01490713          	addi	a4,s2,20
80004f6c:	00095783          	lhu	a5,0(s2)
80004f70:	00290913          	addi	s2,s2,2
80004f74:	00240413          	addi	s0,s0,2
80004f78:	fef41f23          	sh	a5,-2(s0)
80004f7c:	fee918e3          	bne	s2,a4,80004f6c <ediv+0x3f0>
80004f80:	cc9ff06f          	j	80004c48 <ediv+0xcc>
80004f84:	eeb674e3          	bgeu	a2,a1,80004e6c <ediv+0x2f0>
80004f88:	fffb8793          	addi	a5,s7,-1
80004f8c:	01079893          	slli	a7,a5,0x10
80004f90:	0108d893          	srli	a7,a7,0x10
80004f94:	00000793          	li	a5,0
80004f98:	03410593          	addi	a1,sp,52
80004f9c:	06c10613          	addi	a2,sp,108
80004fa0:	00065703          	lhu	a4,0(a2)
80004fa4:	0005d803          	lhu	a6,0(a1)
80004fa8:	ffe60613          	addi	a2,a2,-2
80004fac:	40f70733          	sub	a4,a4,a5
80004fb0:	41070733          	sub	a4,a4,a6
80004fb4:	01075793          	srli	a5,a4,0x10
80004fb8:	00e61123          	sh	a4,2(a2)
80004fbc:	0017f793          	andi	a5,a5,1
80004fc0:	ffe58593          	addi	a1,a1,-2
80004fc4:	fd361ee3          	bne	a2,s3,80004fa0 <ediv+0x424>
80004fc8:	03c10713          	addi	a4,sp,60
80004fcc:	05810793          	addi	a5,sp,88
80004fd0:	0007d583          	lhu	a1,0(a5)
80004fd4:	00075603          	lhu	a2,0(a4)
80004fd8:	00278793          	addi	a5,a5,2
80004fdc:	00270713          	addi	a4,a4,2
80004fe0:	00c59863          	bne	a1,a2,80004ff0 <ediv+0x474>
80004fe4:	ff9796e3          	bne	a5,s9,80004fd0 <ediv+0x454>
80004fe8:	00088b93          	mv	s7,a7
80004fec:	e81ff06f          	j	80004e6c <ediv+0x2f0>
80004ff0:	feb67ce3          	bgeu	a2,a1,80004fe8 <ediv+0x46c>
80004ff4:	ffeb8793          	addi	a5,s7,-2
80004ff8:	01079b93          	slli	s7,a5,0x10
80004ffc:	010bdb93          	srli	s7,s7,0x10
80005000:	00000613          	li	a2,0
80005004:	03410593          	addi	a1,sp,52
80005008:	06c10713          	addi	a4,sp,108
8000500c:	00075783          	lhu	a5,0(a4)
80005010:	0005d803          	lhu	a6,0(a1)
80005014:	ffe70713          	addi	a4,a4,-2
80005018:	40c787b3          	sub	a5,a5,a2
8000501c:	410787b3          	sub	a5,a5,a6
80005020:	0107d613          	srli	a2,a5,0x10
80005024:	00f71123          	sh	a5,2(a4)
80005028:	00167613          	andi	a2,a2,1
8000502c:	ffe58593          	addi	a1,a1,-2
80005030:	fd371ee3          	bne	a4,s3,8000500c <ediv+0x490>
80005034:	e39ff06f          	j	80004e6c <ediv+0x2f0>
80005038:	01440793          	addi	a5,s0,20
8000503c:	00240413          	addi	s0,s0,2
80005040:	fe041f23          	sh	zero,-2(s0)
80005044:	fe879ce3          	bne	a5,s0,8000503c <ediv+0x4c0>
80005048:	c01ff06f          	j	80004c48 <ediv+0xcc>
8000504c:	01c15703          	lhu	a4,28(sp)
80005050:	03815783          	lhu	a5,56(sp)
80005054:	00f70463          	beq	a4,a5,8000505c <ediv+0x4e0>
80005058:	00008637          	lui	a2,0x8
8000505c:	00c41923          	sh	a2,18(s0)
80005060:	01240713          	addi	a4,s0,18
80005064:	00040793          	mv	a5,s0
80005068:	00278793          	addi	a5,a5,2
8000506c:	fe079f23          	sh	zero,-2(a5)
80005070:	fef71ce3          	bne	a4,a5,80005068 <ediv+0x4ec>
80005074:	01245783          	lhu	a5,18(s0)
80005078:	00008737          	lui	a4,0x8
8000507c:	fff70713          	addi	a4,a4,-1 # 7fff <_printf_r-0x7fff8001>
80005080:	00e7e7b3          	or	a5,a5,a4
80005084:	00f41923          	sh	a5,18(s0)
80005088:	bc1ff06f          	j	80004c48 <ediv+0xcc>

8000508c <e113toe.isra.0>:
8000508c:	fd010113          	addi	sp,sp,-48
80005090:	02812423          	sw	s0,40(sp)
80005094:	02112623          	sw	ra,44(sp)
80005098:	00058413          	mv	s0,a1
8000509c:	00410793          	addi	a5,sp,4
800050a0:	01e10713          	addi	a4,sp,30
800050a4:	00278793          	addi	a5,a5,2
800050a8:	fe079f23          	sh	zero,-2(a5)
800050ac:	fee79ce3          	bne	a5,a4,800050a4 <e113toe.isra.0+0x18>
800050b0:	00e55603          	lhu	a2,14(a0)
800050b4:	01061793          	slli	a5,a2,0x10
800050b8:	4107d793          	srai	a5,a5,0x10
800050bc:	0607ca63          	bltz	a5,80005130 <e113toe.isra.0+0xa4>
800050c0:	000087b7          	lui	a5,0x8
800050c4:	fff78793          	addi	a5,a5,-1 # 7fff <_printf_r-0x7fff8001>
800050c8:	00011223          	sh	zero,4(sp)
800050cc:	00f67633          	and	a2,a2,a5
800050d0:	06f60c63          	beq	a2,a5,80005148 <e113toe.isra.0+0xbc>
800050d4:	00e50793          	addi	a5,a0,14
800050d8:	00c11323          	sh	a2,6(sp)
800050dc:	00a10713          	addi	a4,sp,10
800050e0:	ffe7d683          	lhu	a3,-2(a5)
800050e4:	ffe78793          	addi	a5,a5,-2
800050e8:	00270713          	addi	a4,a4,2
800050ec:	fed71f23          	sh	a3,-2(a4)
800050f0:	fef518e3          	bne	a0,a5,800050e0 <e113toe.isra.0+0x54>
800050f4:	02061263          	bnez	a2,80005118 <e113toe.isra.0+0x8c>
800050f8:	00011423          	sh	zero,8(sp)
800050fc:	00040593          	mv	a1,s0
80005100:	00410513          	addi	a0,sp,4
80005104:	db0ff0ef          	jal	ra,800046b4 <emovo.isra.0>
80005108:	02c12083          	lw	ra,44(sp)
8000510c:	02812403          	lw	s0,40(sp)
80005110:	03010113          	addi	sp,sp,48
80005114:	00008067          	ret
80005118:	00100793          	li	a5,1
8000511c:	fff00593          	li	a1,-1
80005120:	00410513          	addi	a0,sp,4
80005124:	00f11423          	sh	a5,8(sp)
80005128:	c81fe0ef          	jal	ra,80003da8 <eshift.part.0>
8000512c:	fd1ff06f          	j	800050fc <e113toe.isra.0+0x70>
80005130:	fff00793          	li	a5,-1
80005134:	00f11223          	sh	a5,4(sp)
80005138:	000087b7          	lui	a5,0x8
8000513c:	fff78793          	addi	a5,a5,-1 # 7fff <_printf_r-0x7fff8001>
80005140:	00f67633          	and	a2,a2,a5
80005144:	f8f618e3          	bne	a2,a5,800050d4 <e113toe.isra.0+0x48>
80005148:	00050793          	mv	a5,a0
8000514c:	00e50693          	addi	a3,a0,14
80005150:	0007d703          	lhu	a4,0(a5)
80005154:	00278793          	addi	a5,a5,2
80005158:	04071c63          	bnez	a4,800051b0 <e113toe.isra.0+0x124>
8000515c:	fed79ae3          	bne	a5,a3,80005150 <e113toe.isra.0+0xc4>
80005160:	01440713          	addi	a4,s0,20
80005164:	00040793          	mv	a5,s0
80005168:	00278793          	addi	a5,a5,2
8000516c:	fe079f23          	sh	zero,-2(a5)
80005170:	fef71ce3          	bne	a4,a5,80005168 <e113toe.isra.0+0xdc>
80005174:	01240713          	addi	a4,s0,18
80005178:	00040793          	mv	a5,s0
8000517c:	00278793          	addi	a5,a5,2
80005180:	fe079f23          	sh	zero,-2(a5)
80005184:	fef71ce3          	bne	a4,a5,8000517c <e113toe.isra.0+0xf0>
80005188:	01245783          	lhu	a5,18(s0)
8000518c:	00008737          	lui	a4,0x8
80005190:	fff70713          	addi	a4,a4,-1 # 7fff <_printf_r-0x7fff8001>
80005194:	00e7e7b3          	or	a5,a5,a4
80005198:	00f41923          	sh	a5,18(s0)
8000519c:	00e51783          	lh	a5,14(a0)
800051a0:	f607d4e3          	bgez	a5,80005108 <e113toe.isra.0+0x7c>
800051a4:	00040513          	mv	a0,s0
800051a8:	945fe0ef          	jal	ra,80003aec <eneg>
800051ac:	f5dff06f          	j	80005108 <e113toe.isra.0+0x7c>
800051b0:	01040713          	addi	a4,s0,16
800051b4:	00040793          	mv	a5,s0
800051b8:	00278793          	addi	a5,a5,2
800051bc:	fe079f23          	sh	zero,-2(a5)
800051c0:	fef71ce3          	bne	a4,a5,800051b8 <e113toe.isra.0+0x12c>
800051c4:	7fffc7b7          	lui	a5,0x7fffc
800051c8:	00f42823          	sw	a5,16(s0)
800051cc:	f3dff06f          	j	80005108 <e113toe.isra.0+0x7c>

800051d0 <_ldtoa_r>:
800051d0:	00c5a883          	lw	a7,12(a1)
800051d4:	e1010113          	addi	sp,sp,-496
800051d8:	0005ae83          	lw	t4,0(a1)
800051dc:	0045ae03          	lw	t3,4(a1)
800051e0:	0085a303          	lw	t1,8(a1)
800051e4:	03112e23          	sw	a7,60(sp)
800051e8:	04052583          	lw	a1,64(a0)
800051ec:	fff00893          	li	a7,-1
800051f0:	17112023          	sw	a7,352(sp)
800051f4:	09000893          	li	a7,144
800051f8:	1e812423          	sw	s0,488(sp)
800051fc:	1d412c23          	sw	s4,472(sp)
80005200:	1e112623          	sw	ra,492(sp)
80005204:	1e912223          	sw	s1,484(sp)
80005208:	1f212023          	sw	s2,480(sp)
8000520c:	1d312e23          	sw	s3,476(sp)
80005210:	1d512a23          	sw	s5,468(sp)
80005214:	1d612823          	sw	s6,464(sp)
80005218:	1d712623          	sw	s7,460(sp)
8000521c:	1d812423          	sw	s8,456(sp)
80005220:	1d912223          	sw	s9,452(sp)
80005224:	1da12023          	sw	s10,448(sp)
80005228:	1bb12e23          	sw	s11,444(sp)
8000522c:	03d12823          	sw	t4,48(sp)
80005230:	03c12a23          	sw	t3,52(sp)
80005234:	02612c23          	sw	t1,56(sp)
80005238:	17112223          	sw	a7,356(sp)
8000523c:	00c12023          	sw	a2,0(sp)
80005240:	00d12423          	sw	a3,8(sp)
80005244:	00e12623          	sw	a4,12(sp)
80005248:	01012c23          	sw	a6,24(sp)
8000524c:	00050a13          	mv	s4,a0
80005250:	00078413          	mv	s0,a5
80005254:	02058063          	beqz	a1,80005274 <_ldtoa_r+0xa4>
80005258:	04452703          	lw	a4,68(a0)
8000525c:	00100793          	li	a5,1
80005260:	00e797b3          	sll	a5,a5,a4
80005264:	00e5a223          	sw	a4,4(a1)
80005268:	00f5a423          	sw	a5,8(a1)
8000526c:	79d010ef          	jal	ra,80007208 <_Bfree>
80005270:	040a2023          	sw	zero,64(s4)
80005274:	06010993          	addi	s3,sp,96
80005278:	00098593          	mv	a1,s3
8000527c:	03010513          	addi	a0,sp,48
80005280:	e0dff0ef          	jal	ra,8000508c <e113toe.isra.0>
80005284:	00098513          	mv	a0,s3
80005288:	8b1fe0ef          	jal	ra,80003b38 <eisneg>
8000528c:	00012703          	lw	a4,0(sp)
80005290:	00a03533          	snez	a0,a0
80005294:	00a42023          	sw	a0,0(s0)
80005298:	00300793          	li	a5,3
8000529c:	14f702e3          	beq	a4,a5,80005be0 <_ldtoa_r+0xa10>
800052a0:	01400793          	li	a5,20
800052a4:	00f12223          	sw	a5,4(sp)
800052a8:	5e0718e3          	bnez	a4,80006098 <_ldtoa_r+0xec8>
800052ac:	07215783          	lhu	a5,114(sp)
800052b0:	16412703          	lw	a4,356(sp)
800052b4:	fff7c793          	not	a5,a5
800052b8:	00e12a23          	sw	a4,20(sp)
800052bc:	01179713          	slli	a4,a5,0x11
800052c0:	00071863          	bnez	a4,800052d0 <_ldtoa_r+0x100>
800052c4:	00098513          	mv	a0,s3
800052c8:	801fe0ef          	jal	ra,80003ac8 <eisnan.part.0>
800052cc:	400514e3          	bnez	a0,80005ed4 <_ldtoa_r+0xd04>
800052d0:	09000793          	li	a5,144
800052d4:	16f12223          	sw	a5,356(sp)
800052d8:	07c10713          	addi	a4,sp,124
800052dc:	00098793          	mv	a5,s3
800052e0:	07410613          	addi	a2,sp,116
800052e4:	0007d683          	lhu	a3,0(a5) # 7fffc000 <_printf_r-0x4000>
800052e8:	00278793          	addi	a5,a5,2
800052ec:	00270713          	addi	a4,a4,2
800052f0:	fed71f23          	sh	a3,-2(a4)
800052f4:	fec798e3          	bne	a5,a2,800052e4 <_ldtoa_r+0x114>
800052f8:	08e15603          	lhu	a2,142(sp)
800052fc:	00012823          	sw	zero,16(sp)
80005300:	01061793          	slli	a5,a2,0x10
80005304:	4107d793          	srai	a5,a5,0x10
80005308:	0007de63          	bgez	a5,80005324 <_ldtoa_r+0x154>
8000530c:	01161613          	slli	a2,a2,0x11
80005310:	000107b7          	lui	a5,0x10
80005314:	01165613          	srli	a2,a2,0x11
80005318:	fff78793          	addi	a5,a5,-1 # ffff <_printf_r-0x7fff0001>
8000531c:	08c11723          	sh	a2,142(sp)
80005320:	00f12823          	sw	a5,16(sp)
80005324:	80014b37          	lui	s6,0x80014
80005328:	0d4b0d93          	addi	s11,s6,212 # 800140d4 <heap_end.1814+0xffffe6f0>
8000532c:	014d8c13          	addi	s8,s11,20
80005330:	00000693          	li	a3,0
80005334:	09810793          	addi	a5,sp,152
80005338:	000c0713          	mv	a4,s8
8000533c:	0ac10d13          	addi	s10,sp,172
80005340:	0080006f          	j	80005348 <_ldtoa_r+0x178>
80005344:	00075683          	lhu	a3,0(a4)
80005348:	00278793          	addi	a5,a5,2
8000534c:	fed79f23          	sh	a3,-2(a5)
80005350:	00270713          	addi	a4,a4,2
80005354:	ffa798e3          	bne	a5,s10,80005344 <_ldtoa_r+0x174>
80005358:	14060863          	beqz	a2,800054a8 <_ldtoa_r+0x2d8>
8000535c:	000087b7          	lui	a5,0x8
80005360:	fff78793          	addi	a5,a5,-1 # 7fff <_printf_r-0x7fff8001>
80005364:	56f606e3          	beq	a2,a5,800060d0 <_ldtoa_r+0xf00>
80005368:	08c11783          	lh	a5,140(sp)
8000536c:	5a07d8e3          	bgez	a5,8000611c <_ldtoa_r+0xf4c>
80005370:	07c10593          	addi	a1,sp,124
80005374:	000c0513          	mv	a0,s8
80005378:	8f9fe0ef          	jal	ra,80003c70 <ecmp>
8000537c:	14050263          	beqz	a0,800054c0 <_ldtoa_r+0x2f0>
80005380:	0c054ce3          	bltz	a0,80005c58 <_ldtoa_r+0xa88>
80005384:	08e15783          	lhu	a5,142(sp)
80005388:	62079ce3          	bnez	a5,800061c0 <_ldtoa_r+0xff0>
8000538c:	08c11783          	lh	a5,140(sp)
80005390:	00000493          	li	s1,0
80005394:	16010913          	addi	s2,sp,352
80005398:	0207c463          	bltz	a5,800053c0 <_ldtoa_r+0x1f0>
8000539c:	118d8413          	addi	s0,s11,280
800053a0:	07c10613          	addi	a2,sp,124
800053a4:	00090693          	mv	a3,s2
800053a8:	00060593          	mv	a1,a2
800053ac:	00040513          	mv	a0,s0
800053b0:	bb4ff0ef          	jal	ra,80004764 <emul>
800053b4:	08c11783          	lh	a5,140(sp)
800053b8:	fff48493          	addi	s1,s1,-1
800053bc:	fe07d2e3          	bgez	a5,800053a0 <_ldtoa_r+0x1d0>
800053c0:	0d010413          	addi	s0,sp,208
800053c4:	0e810b93          	addi	s7,sp,232
800053c8:	00040713          	mv	a4,s0
800053cc:	07c10793          	addi	a5,sp,124
800053d0:	09010613          	addi	a2,sp,144
800053d4:	0007d683          	lhu	a3,0(a5)
800053d8:	00278793          	addi	a5,a5,2
800053dc:	00270713          	addi	a4,a4,2
800053e0:	fed71f23          	sh	a3,-2(a4)
800053e4:	fec798e3          	bne	a5,a2,800053d4 <_ldtoa_r+0x204>
800053e8:	00000693          	li	a3,0
800053ec:	09810793          	addi	a5,sp,152
800053f0:	000c0713          	mv	a4,s8
800053f4:	0080006f          	j	800053fc <_ldtoa_r+0x22c>
800053f8:	00075683          	lhu	a3,0(a4)
800053fc:	00278793          	addi	a5,a5,2
80005400:	fed79f23          	sh	a3,-2(a5)
80005404:	00270713          	addi	a4,a4,2
80005408:	ffa798e3          	bne	a5,s10,800053f8 <_ldtoa_r+0x228>
8000540c:	028d8c93          	addi	s9,s11,40
80005410:	12cd8d13          	addi	s10,s11,300
80005414:	fffffab7          	lui	s5,0xfffff
80005418:	118d8d93          	addi	s11,s11,280
8000541c:	00c0006f          	j	80005428 <_ldtoa_r+0x258>
80005420:	014d0d13          	addi	s10,s10,20
80005424:	014c8c93          	addi	s9,s9,20
80005428:	00040593          	mv	a1,s0
8000542c:	000c0513          	mv	a0,s8
80005430:	841fe0ef          	jal	ra,80003c70 <ecmp>
80005434:	00050793          	mv	a5,a0
80005438:	00040593          	mv	a1,s0
8000543c:	000d0513          	mv	a0,s10
80005440:	04f05663          	blez	a5,8000548c <_ldtoa_r+0x2bc>
80005444:	82dfe0ef          	jal	ra,80003c70 <ecmp>
80005448:	00050793          	mv	a5,a0
8000544c:	00090693          	mv	a3,s2
80005450:	00040613          	mv	a2,s0
80005454:	00040593          	mv	a1,s0
80005458:	000c8513          	mv	a0,s9
8000545c:	0207c063          	bltz	a5,8000547c <_ldtoa_r+0x2ac>
80005460:	b04ff0ef          	jal	ra,80004764 <emul>
80005464:	09810613          	addi	a2,sp,152
80005468:	00090693          	mv	a3,s2
8000546c:	00060593          	mv	a1,a2
80005470:	000c8513          	mv	a0,s9
80005474:	af0ff0ef          	jal	ra,80004764 <emul>
80005478:	015484b3          	add	s1,s1,s5
8000547c:	01fad793          	srli	a5,s5,0x1f
80005480:	015787b3          	add	a5,a5,s5
80005484:	4017da93          	srai	s5,a5,0x1
80005488:	f9bc9ce3          	bne	s9,s11,80005420 <_ldtoa_r+0x250>
8000548c:	09810613          	addi	a2,sp,152
80005490:	00090693          	mv	a3,s2
80005494:	000c0593          	mv	a1,s8
80005498:	00060513          	mv	a0,a2
8000549c:	ee0ff0ef          	jal	ra,80004b7c <ediv>
800054a0:	12410a93          	addi	s5,sp,292
800054a4:	0300006f          	j	800054d4 <_ldtoa_r+0x304>
800054a8:	07c10793          	addi	a5,sp,124
800054ac:	08e10693          	addi	a3,sp,142
800054b0:	0007d703          	lhu	a4,0(a5)
800054b4:	00278793          	addi	a5,a5,2
800054b8:	ea071ce3          	bnez	a4,80005370 <_ldtoa_r+0x1a0>
800054bc:	fed79ae3          	bne	a5,a3,800054b0 <_ldtoa_r+0x2e0>
800054c0:	00000493          	li	s1,0
800054c4:	12410a93          	addi	s5,sp,292
800054c8:	16010913          	addi	s2,sp,352
800054cc:	0d010413          	addi	s0,sp,208
800054d0:	0e810b93          	addi	s7,sp,232
800054d4:	00040593          	mv	a1,s0
800054d8:	09810513          	addi	a0,sp,152
800054dc:	e9cfe0ef          	jal	ra,80003b78 <emovi>
800054e0:	09810713          	addi	a4,sp,152
800054e4:	00040793          	mv	a5,s0
800054e8:	0007d683          	lhu	a3,0(a5)
800054ec:	00278793          	addi	a5,a5,2
800054f0:	00270713          	addi	a4,a4,2
800054f4:	fed71f23          	sh	a3,-2(a4)
800054f8:	ff7798e3          	bne	a5,s7,800054e8 <_ldtoa_r+0x318>
800054fc:	00040593          	mv	a1,s0
80005500:	07c10513          	addi	a0,sp,124
80005504:	0a011823          	sh	zero,176(sp)
80005508:	e70fe0ef          	jal	ra,80003b78 <emovi>
8000550c:	07c10793          	addi	a5,sp,124
80005510:	00045703          	lhu	a4,0(s0)
80005514:	00240413          	addi	s0,s0,2
80005518:	00278793          	addi	a5,a5,2
8000551c:	fee79f23          	sh	a4,-2(a5)
80005520:	ff7418e3          	bne	s0,s7,80005510 <_ldtoa_r+0x340>
80005524:	09810513          	addi	a0,sp,152
80005528:	00090613          	mv	a2,s2
8000552c:	07c10593          	addi	a1,sp,124
80005530:	08011a23          	sh	zero,148(sp)
80005534:	818ff0ef          	jal	ra,8000454c <eiremain>
80005538:	1ac15503          	lhu	a0,428(sp)
8000553c:	1c051463          	bnez	a0,80005704 <_ldtoa_r+0x534>
80005540:	09410c93          	addi	s9,sp,148
80005544:	07e10413          	addi	s0,sp,126
80005548:	0b610c13          	addi	s8,sp,182
8000554c:	0d4b0593          	addi	a1,s6,212
80005550:	07c10513          	addi	a0,sp,124
80005554:	f1cfe0ef          	jal	ra,80003c70 <ecmp>
80005558:	1a050663          	beqz	a0,80005704 <_ldtoa_r+0x534>
8000555c:	00000713          	li	a4,0
80005560:	000c8693          	mv	a3,s9
80005564:	01c0006f          	j	80005580 <_ldtoa_r+0x3b0>
80005568:	00171713          	slli	a4,a4,0x1
8000556c:	00f69023          	sh	a5,0(a3)
80005570:	01071713          	slli	a4,a4,0x10
80005574:	ffe68693          	addi	a3,a3,-2
80005578:	01075713          	srli	a4,a4,0x10
8000557c:	04868463          	beq	a3,s0,800055c4 <_ldtoa_r+0x3f4>
80005580:	0006d783          	lhu	a5,0(a3)
80005584:	01079613          	slli	a2,a5,0x10
80005588:	41065613          	srai	a2,a2,0x10
8000558c:	00179793          	slli	a5,a5,0x1
80005590:	00065463          	bgez	a2,80005598 <_ldtoa_r+0x3c8>
80005594:	00176713          	ori	a4,a4,1
80005598:	01079793          	slli	a5,a5,0x10
8000559c:	0107d793          	srli	a5,a5,0x10
800055a0:	00277613          	andi	a2,a4,2
800055a4:	0017e593          	ori	a1,a5,1
800055a8:	fc0600e3          	beqz	a2,80005568 <_ldtoa_r+0x398>
800055ac:	00171713          	slli	a4,a4,0x1
800055b0:	00b69023          	sh	a1,0(a3)
800055b4:	01071713          	slli	a4,a4,0x10
800055b8:	ffe68693          	addi	a3,a3,-2
800055bc:	01075713          	srli	a4,a4,0x10
800055c0:	fc8690e3          	bne	a3,s0,80005580 <_ldtoa_r+0x3b0>
800055c4:	0b410713          	addi	a4,sp,180
800055c8:	07c10793          	addi	a5,sp,124
800055cc:	0007d683          	lhu	a3,0(a5)
800055d0:	00278793          	addi	a5,a5,2
800055d4:	00270713          	addi	a4,a4,2
800055d8:	fed71f23          	sh	a3,-2(a4)
800055dc:	ff9798e3          	bne	a5,s9,800055cc <_ldtoa_r+0x3fc>
800055e0:	0c011623          	sh	zero,204(sp)
800055e4:	00000713          	li	a4,0
800055e8:	0cc10693          	addi	a3,sp,204
800055ec:	01c0006f          	j	80005608 <_ldtoa_r+0x438>
800055f0:	00171713          	slli	a4,a4,0x1
800055f4:	00f69023          	sh	a5,0(a3)
800055f8:	01071713          	slli	a4,a4,0x10
800055fc:	ffe68693          	addi	a3,a3,-2
80005600:	01075713          	srli	a4,a4,0x10
80005604:	05868463          	beq	a3,s8,8000564c <_ldtoa_r+0x47c>
80005608:	0006d783          	lhu	a5,0(a3)
8000560c:	01079613          	slli	a2,a5,0x10
80005610:	41065613          	srai	a2,a2,0x10
80005614:	00179793          	slli	a5,a5,0x1
80005618:	00065463          	bgez	a2,80005620 <_ldtoa_r+0x450>
8000561c:	00176713          	ori	a4,a4,1
80005620:	01079793          	slli	a5,a5,0x10
80005624:	0107d793          	srli	a5,a5,0x10
80005628:	00277613          	andi	a2,a4,2
8000562c:	0017e593          	ori	a1,a5,1
80005630:	fc0600e3          	beqz	a2,800055f0 <_ldtoa_r+0x420>
80005634:	00171713          	slli	a4,a4,0x1
80005638:	00b69023          	sh	a1,0(a3)
8000563c:	01071713          	slli	a4,a4,0x10
80005640:	ffe68693          	addi	a3,a3,-2
80005644:	01075713          	srli	a4,a4,0x10
80005648:	fd8690e3          	bne	a3,s8,80005608 <_ldtoa_r+0x438>
8000564c:	00000713          	li	a4,0
80005650:	0cc10693          	addi	a3,sp,204
80005654:	01c0006f          	j	80005670 <_ldtoa_r+0x4a0>
80005658:	00171713          	slli	a4,a4,0x1
8000565c:	00f69023          	sh	a5,0(a3)
80005660:	01071713          	slli	a4,a4,0x10
80005664:	ffe68693          	addi	a3,a3,-2
80005668:	01075713          	srli	a4,a4,0x10
8000566c:	05868463          	beq	a3,s8,800056b4 <_ldtoa_r+0x4e4>
80005670:	0006d783          	lhu	a5,0(a3)
80005674:	01079613          	slli	a2,a5,0x10
80005678:	41065613          	srai	a2,a2,0x10
8000567c:	00179793          	slli	a5,a5,0x1
80005680:	00065463          	bgez	a2,80005688 <_ldtoa_r+0x4b8>
80005684:	00176713          	ori	a4,a4,1
80005688:	01079793          	slli	a5,a5,0x10
8000568c:	0107d793          	srli	a5,a5,0x10
80005690:	00277613          	andi	a2,a4,2
80005694:	0017e593          	ori	a1,a5,1
80005698:	fc0600e3          	beqz	a2,80005658 <_ldtoa_r+0x488>
8000569c:	00171713          	slli	a4,a4,0x1
800056a0:	00b69023          	sh	a1,0(a3)
800056a4:	01071713          	slli	a4,a4,0x10
800056a8:	ffe68693          	addi	a3,a3,-2
800056ac:	01075713          	srli	a4,a4,0x10
800056b0:	fd8690e3          	bne	a3,s8,80005670 <_ldtoa_r+0x4a0>
800056b4:	00000613          	li	a2,0
800056b8:	000c8693          	mv	a3,s9
800056bc:	0cc10713          	addi	a4,sp,204
800056c0:	0006d583          	lhu	a1,0(a3)
800056c4:	00075783          	lhu	a5,0(a4)
800056c8:	ffe68693          	addi	a3,a3,-2
800056cc:	ffe70713          	addi	a4,a4,-2
800056d0:	00b787b3          	add	a5,a5,a1
800056d4:	00c787b3          	add	a5,a5,a2
800056d8:	0107d613          	srli	a2,a5,0x10
800056dc:	00f69123          	sh	a5,2(a3)
800056e0:	00167613          	andi	a2,a2,1
800056e4:	fd871ee3          	bne	a4,s8,800056c0 <_ldtoa_r+0x4f0>
800056e8:	09810513          	addi	a0,sp,152
800056ec:	00090613          	mv	a2,s2
800056f0:	07c10593          	addi	a1,sp,124
800056f4:	e59fe0ef          	jal	ra,8000454c <eiremain>
800056f8:	1ac15503          	lhu	a0,428(sp)
800056fc:	fff48493          	addi	s1,s1,-1
80005700:	e40506e3          	beqz	a0,8000554c <_ldtoa_r+0x37c>
80005704:	01012783          	lw	a5,16(sp)
80005708:	00012683          	lw	a3,0(sp)
8000570c:	00300713          	li	a4,3
80005710:	00f037b3          	snez	a5,a5
80005714:	40f007b3          	neg	a5,a5
80005718:	00d7f793          	andi	a5,a5,13
8000571c:	02078793          	addi	a5,a5,32
80005720:	12f10223          	sb	a5,292(sp)
80005724:	00412783          	lw	a5,4(sp)
80005728:	00e69463          	bne	a3,a4,80005730 <_ldtoa_r+0x560>
8000572c:	009787b3          	add	a5,a5,s1
80005730:	02a00713          	li	a4,42
80005734:	00078413          	mv	s0,a5
80005738:	00f75463          	bge	a4,a5,80005740 <_ldtoa_r+0x570>
8000573c:	02a00413          	li	s0,42
80005740:	00a00713          	li	a4,10
80005744:	4ee50263          	beq	a0,a4,80005c28 <_ldtoa_r+0xa58>
80005748:	03050513          	addi	a0,a0,48
8000574c:	02e00713          	li	a4,46
80005750:	12a102a3          	sb	a0,293(sp)
80005754:	12e10323          	sb	a4,294(sp)
80005758:	1e07c2e3          	bltz	a5,8000613c <_ldtoa_r+0xf6c>
8000575c:	12710793          	addi	a5,sp,295
80005760:	00f12823          	sw	a5,16(sp)
80005764:	00000c13          	li	s8,0
80005768:	00912e23          	sw	s1,28(sp)
8000576c:	000c0493          	mv	s1,s8
80005770:	00090c13          	mv	s8,s2
80005774:	01012903          	lw	s2,16(sp)
80005778:	0b410c93          	addi	s9,sp,180
8000577c:	09410d93          	addi	s11,sp,148
80005780:	07e10b93          	addi	s7,sp,126
80005784:	0b610d13          	addi	s10,sp,182
80005788:	00000713          	li	a4,0
8000578c:	000d8613          	mv	a2,s11
80005790:	01c0006f          	j	800057ac <_ldtoa_r+0x5dc>
80005794:	00171713          	slli	a4,a4,0x1
80005798:	00f61023          	sh	a5,0(a2) # 8000 <_printf_r-0x7fff8000>
8000579c:	01071713          	slli	a4,a4,0x10
800057a0:	ffe60613          	addi	a2,a2,-2
800057a4:	01075713          	srli	a4,a4,0x10
800057a8:	05760463          	beq	a2,s7,800057f0 <_ldtoa_r+0x620>
800057ac:	00065783          	lhu	a5,0(a2)
800057b0:	01079593          	slli	a1,a5,0x10
800057b4:	4105d593          	srai	a1,a1,0x10
800057b8:	00179793          	slli	a5,a5,0x1
800057bc:	0005d463          	bgez	a1,800057c4 <_ldtoa_r+0x5f4>
800057c0:	00176713          	ori	a4,a4,1
800057c4:	01079793          	slli	a5,a5,0x10
800057c8:	0107d793          	srli	a5,a5,0x10
800057cc:	00277593          	andi	a1,a4,2
800057d0:	0017e513          	ori	a0,a5,1
800057d4:	fc0580e3          	beqz	a1,80005794 <_ldtoa_r+0x5c4>
800057d8:	00171713          	slli	a4,a4,0x1
800057dc:	00a61023          	sh	a0,0(a2)
800057e0:	01071713          	slli	a4,a4,0x10
800057e4:	ffe60613          	addi	a2,a2,-2
800057e8:	01075713          	srli	a4,a4,0x10
800057ec:	fd7610e3          	bne	a2,s7,800057ac <_ldtoa_r+0x5dc>
800057f0:	000c8713          	mv	a4,s9
800057f4:	07c10793          	addi	a5,sp,124
800057f8:	0007d603          	lhu	a2,0(a5)
800057fc:	00278793          	addi	a5,a5,2
80005800:	00270713          	addi	a4,a4,2
80005804:	fec71f23          	sh	a2,-2(a4)
80005808:	ffb798e3          	bne	a5,s11,800057f8 <_ldtoa_r+0x628>
8000580c:	0c011623          	sh	zero,204(sp)
80005810:	00000713          	li	a4,0
80005814:	0cc10613          	addi	a2,sp,204
80005818:	01c0006f          	j	80005834 <_ldtoa_r+0x664>
8000581c:	00171713          	slli	a4,a4,0x1
80005820:	00f61023          	sh	a5,0(a2)
80005824:	01071713          	slli	a4,a4,0x10
80005828:	ffe60613          	addi	a2,a2,-2
8000582c:	01075713          	srli	a4,a4,0x10
80005830:	05a60463          	beq	a2,s10,80005878 <_ldtoa_r+0x6a8>
80005834:	00065783          	lhu	a5,0(a2)
80005838:	01079593          	slli	a1,a5,0x10
8000583c:	4105d593          	srai	a1,a1,0x10
80005840:	00179793          	slli	a5,a5,0x1
80005844:	0005d463          	bgez	a1,8000584c <_ldtoa_r+0x67c>
80005848:	00176713          	ori	a4,a4,1
8000584c:	01079793          	slli	a5,a5,0x10
80005850:	0107d793          	srli	a5,a5,0x10
80005854:	00277593          	andi	a1,a4,2
80005858:	0017e513          	ori	a0,a5,1
8000585c:	fc0580e3          	beqz	a1,8000581c <_ldtoa_r+0x64c>
80005860:	00171713          	slli	a4,a4,0x1
80005864:	00a61023          	sh	a0,0(a2)
80005868:	01071713          	slli	a4,a4,0x10
8000586c:	ffe60613          	addi	a2,a2,-2
80005870:	01075713          	srli	a4,a4,0x10
80005874:	fda610e3          	bne	a2,s10,80005834 <_ldtoa_r+0x664>
80005878:	00000713          	li	a4,0
8000587c:	0cc10613          	addi	a2,sp,204
80005880:	01c0006f          	j	8000589c <_ldtoa_r+0x6cc>
80005884:	00171713          	slli	a4,a4,0x1
80005888:	00f61023          	sh	a5,0(a2)
8000588c:	01071713          	slli	a4,a4,0x10
80005890:	ffe60613          	addi	a2,a2,-2
80005894:	01075713          	srli	a4,a4,0x10
80005898:	05a60463          	beq	a2,s10,800058e0 <_ldtoa_r+0x710>
8000589c:	00065783          	lhu	a5,0(a2)
800058a0:	01079593          	slli	a1,a5,0x10
800058a4:	4105d593          	srai	a1,a1,0x10
800058a8:	00179793          	slli	a5,a5,0x1
800058ac:	0005d463          	bgez	a1,800058b4 <_ldtoa_r+0x6e4>
800058b0:	00176713          	ori	a4,a4,1
800058b4:	01079793          	slli	a5,a5,0x10
800058b8:	0107d793          	srli	a5,a5,0x10
800058bc:	00277593          	andi	a1,a4,2
800058c0:	0017e513          	ori	a0,a5,1
800058c4:	fc0580e3          	beqz	a1,80005884 <_ldtoa_r+0x6b4>
800058c8:	00171713          	slli	a4,a4,0x1
800058cc:	00a61023          	sh	a0,0(a2)
800058d0:	01071713          	slli	a4,a4,0x10
800058d4:	ffe60613          	addi	a2,a2,-2
800058d8:	01075713          	srli	a4,a4,0x10
800058dc:	fda610e3          	bne	a2,s10,8000589c <_ldtoa_r+0x6cc>
800058e0:	00000593          	li	a1,0
800058e4:	000d8613          	mv	a2,s11
800058e8:	0cc10713          	addi	a4,sp,204
800058ec:	00065503          	lhu	a0,0(a2)
800058f0:	00075783          	lhu	a5,0(a4)
800058f4:	ffe60613          	addi	a2,a2,-2
800058f8:	ffe70713          	addi	a4,a4,-2
800058fc:	00a787b3          	add	a5,a5,a0
80005900:	00b787b3          	add	a5,a5,a1
80005904:	0107d593          	srli	a1,a5,0x10
80005908:	00f61123          	sh	a5,2(a2)
8000590c:	0015f593          	andi	a1,a1,1
80005910:	fda71ee3          	bne	a4,s10,800058ec <_ldtoa_r+0x71c>
80005914:	000c0613          	mv	a2,s8
80005918:	07c10593          	addi	a1,sp,124
8000591c:	09810513          	addi	a0,sp,152
80005920:	c2dfe0ef          	jal	ra,8000454c <eiremain>
80005924:	1ac15783          	lhu	a5,428(sp)
80005928:	00990733          	add	a4,s2,s1
8000592c:	00148493          	addi	s1,s1,1
80005930:	03078613          	addi	a2,a5,48
80005934:	00c70023          	sb	a2,0(a4)
80005938:	e49458e3          	bge	s0,s1,80005788 <_ldtoa_r+0x5b8>
8000593c:	fff44513          	not	a0,s0
80005940:	01012703          	lw	a4,16(sp)
80005944:	41f55513          	srai	a0,a0,0x1f
80005948:	00a47533          	and	a0,s0,a0
8000594c:	01c12483          	lw	s1,28(sp)
80005950:	00150913          	addi	s2,a0,1
80005954:	01270933          	add	s2,a4,s2
80005958:	00a70c33          	add	s8,a4,a0
8000595c:	00400713          	li	a4,4
80005960:	04f75e63          	bge	a4,a5,800059bc <_ldtoa_r+0x7ec>
80005964:	00500713          	li	a4,5
80005968:	00e780e3          	beq	a5,a4,80006168 <_ldtoa_r+0xf98>
8000596c:	ffe94783          	lbu	a5,-2(s2)
80005970:	ffe90713          	addi	a4,s2,-2
80005974:	07f7f793          	andi	a5,a5,127
80005978:	78044463          	bltz	s0,80006100 <_ldtoa_r+0xf30>
8000597c:	02e00693          	li	a3,46
80005980:	03800613          	li	a2,56
80005984:	03000593          	li	a1,48
80005988:	00d78e63          	beq	a5,a3,800059a4 <_ldtoa_r+0x7d4>
8000598c:	78f65263          	bge	a2,a5,80006110 <_ldtoa_r+0xf40>
80005990:	fff74783          	lbu	a5,-1(a4)
80005994:	00b70023          	sb	a1,0(a4)
80005998:	fff70713          	addi	a4,a4,-1
8000599c:	07f7f793          	andi	a5,a5,127
800059a0:	fe9ff06f          	j	80005988 <_ldtoa_r+0x7b8>
800059a4:	fff74783          	lbu	a5,-1(a4)
800059a8:	03800693          	li	a3,56
800059ac:	00f6f4e3          	bgeu	a3,a5,800061b4 <_ldtoa_r+0xfe4>
800059b0:	03100793          	li	a5,49
800059b4:	00148493          	addi	s1,s1,1
800059b8:	fef70fa3          	sb	a5,-1(a4)
800059bc:	800145b7          	lui	a1,0x80014
800059c0:	00048613          	mv	a2,s1
800059c4:	e8c58593          	addi	a1,a1,-372 # 80013e8c <heap_end.1814+0xffffe4a8>
800059c8:	000c0513          	mv	a0,s8
800059cc:	261020ef          	jal	ra,8000842c <sprintf>
800059d0:	07215783          	lhu	a5,114(sp)
800059d4:	01412703          	lw	a4,20(sp)
800059d8:	16912823          	sw	s1,368(sp)
800059dc:	fff7c793          	not	a5,a5
800059e0:	16e12223          	sw	a4,356(sp)
800059e4:	01179713          	slli	a4,a5,0x11
800059e8:	00071e63          	bnez	a4,80005a04 <_ldtoa_r+0x834>
800059ec:	00098513          	mv	a0,s3
800059f0:	b9cfe0ef          	jal	ra,80003d8c <eisinf.part.0>
800059f4:	22051063          	bnez	a0,80005c14 <_ldtoa_r+0xa44>
800059f8:	00098513          	mv	a0,s3
800059fc:	8ccfe0ef          	jal	ra,80003ac8 <eisnan.part.0>
80005a00:	20051a63          	bnez	a0,80005c14 <_ldtoa_r+0xa44>
80005a04:	00c12683          	lw	a3,12(sp)
80005a08:	12414703          	lbu	a4,292(sp)
80005a0c:	00148793          	addi	a5,s1,1
80005a10:	00f6a023          	sw	a5,0(a3)
80005a14:	000a8793          	mv	a5,s5
80005a18:	02070a63          	beqz	a4,80005a4c <_ldtoa_r+0x87c>
80005a1c:	02e00693          	li	a3,46
80005a20:	1cd70c63          	beq	a4,a3,80005bf8 <_ldtoa_r+0xa28>
80005a24:	0017c703          	lbu	a4,1(a5)
80005a28:	00178793          	addi	a5,a5,1
80005a2c:	fe071ae3          	bnez	a4,80005a20 <_ldtoa_r+0x850>
80005a30:	04500693          	li	a3,69
80005a34:	00fae663          	bltu	s5,a5,80005a40 <_ldtoa_r+0x870>
80005a38:	0140006f          	j	80005a4c <_ldtoa_r+0x87c>
80005a3c:	01578863          	beq	a5,s5,80005a4c <_ldtoa_r+0x87c>
80005a40:	fff7c703          	lbu	a4,-1(a5)
80005a44:	fff78793          	addi	a5,a5,-1
80005a48:	fed71ae3          	bne	a4,a3,80005a3c <_ldtoa_r+0x86c>
80005a4c:	00078023          	sb	zero,0(a5)
80005a50:	000a8793          	mv	a5,s5
80005a54:	02000693          	li	a3,32
80005a58:	02d00613          	li	a2,45
80005a5c:	0007c703          	lbu	a4,0(a5)
80005a60:	00d70463          	beq	a4,a3,80005a68 <_ldtoa_r+0x898>
80005a64:	00c71663          	bne	a4,a2,80005a70 <_ldtoa_r+0x8a0>
80005a68:	00178793          	addi	a5,a5,1
80005a6c:	ff1ff06f          	j	80005a5c <_ldtoa_r+0x88c>
80005a70:	000a8413          	mv	s0,s5
80005a74:	00c0006f          	j	80005a80 <_ldtoa_r+0x8b0>
80005a78:	0007c703          	lbu	a4,0(a5)
80005a7c:	00068413          	mv	s0,a3
80005a80:	00e40023          	sb	a4,0(s0)
80005a84:	00140693          	addi	a3,s0,1
80005a88:	00178793          	addi	a5,a5,1
80005a8c:	fe0716e3          	bnez	a4,80005a78 <_ldtoa_r+0x8a8>
80005a90:	00012683          	lw	a3,0(sp)
80005a94:	00200793          	li	a5,2
80005a98:	fff44703          	lbu	a4,-1(s0)
80005a9c:	12f68663          	beq	a3,a5,80005bc8 <_ldtoa_r+0x9f8>
80005aa0:	00412783          	lw	a5,4(sp)
80005aa4:	00078693          	mv	a3,a5
80005aa8:	0097d463          	bge	a5,s1,80005ab0 <_ldtoa_r+0x8e0>
80005aac:	00048693          	mv	a3,s1
80005ab0:	03000793          	li	a5,48
80005ab4:	02f71663          	bne	a4,a5,80005ae0 <_ldtoa_r+0x910>
80005ab8:	415407b3          	sub	a5,s0,s5
80005abc:	02f6d263          	bge	a3,a5,80005ae0 <_ldtoa_r+0x910>
80005ac0:	03000613          	li	a2,48
80005ac4:	0080006f          	j	80005acc <_ldtoa_r+0x8fc>
80005ac8:	00e6dc63          	bge	a3,a4,80005ae0 <_ldtoa_r+0x910>
80005acc:	ffe44783          	lbu	a5,-2(s0)
80005ad0:	fe040fa3          	sb	zero,-1(s0)
80005ad4:	fff40413          	addi	s0,s0,-1
80005ad8:	41540733          	sub	a4,s0,s5
80005adc:	fec786e3          	beq	a5,a2,80005ac8 <_ldtoa_r+0x8f8>
80005ae0:	00012703          	lw	a4,0(sp)
80005ae4:	00300793          	li	a5,3
80005ae8:	0af70263          	beq	a4,a5,80005b8c <_ldtoa_r+0x9bc>
80005aec:	00812783          	lw	a5,8(sp)
80005af0:	040a2223          	sw	zero,68(s4)
80005af4:	00978693          	addi	a3,a5,9
80005af8:	01700793          	li	a5,23
80005afc:	0cd7f263          	bgeu	a5,a3,80005bc0 <_ldtoa_r+0x9f0>
80005b00:	00100713          	li	a4,1
80005b04:	00400793          	li	a5,4
80005b08:	00179793          	slli	a5,a5,0x1
80005b0c:	01478613          	addi	a2,a5,20
80005b10:	00070593          	mv	a1,a4
80005b14:	00170713          	addi	a4,a4,1
80005b18:	fec6f8e3          	bgeu	a3,a2,80005b08 <_ldtoa_r+0x938>
80005b1c:	04ba2223          	sw	a1,68(s4)
80005b20:	000a0513          	mv	a0,s4
80005b24:	63c010ef          	jal	ra,80007160 <_Balloc>
80005b28:	04aa2023          	sw	a0,64(s4)
80005b2c:	000a8593          	mv	a1,s5
80005b30:	00050493          	mv	s1,a0
80005b34:	44d020ef          	jal	ra,80008780 <strcpy>
80005b38:	01812783          	lw	a5,24(sp)
80005b3c:	00078863          	beqz	a5,80005b4c <_ldtoa_r+0x97c>
80005b40:	41540433          	sub	s0,s0,s5
80005b44:	00848433          	add	s0,s1,s0
80005b48:	0087a023          	sw	s0,0(a5)
80005b4c:	1ec12083          	lw	ra,492(sp)
80005b50:	1e812403          	lw	s0,488(sp)
80005b54:	1e012903          	lw	s2,480(sp)
80005b58:	1dc12983          	lw	s3,476(sp)
80005b5c:	1d812a03          	lw	s4,472(sp)
80005b60:	1d412a83          	lw	s5,468(sp)
80005b64:	1d012b03          	lw	s6,464(sp)
80005b68:	1cc12b83          	lw	s7,460(sp)
80005b6c:	1c812c03          	lw	s8,456(sp)
80005b70:	1c412c83          	lw	s9,452(sp)
80005b74:	1c012d03          	lw	s10,448(sp)
80005b78:	1bc12d83          	lw	s11,444(sp)
80005b7c:	00048513          	mv	a0,s1
80005b80:	1e412483          	lw	s1,484(sp)
80005b84:	1f010113          	addi	sp,sp,496
80005b88:	00008067          	ret
80005b8c:	00412783          	lw	a5,4(sp)
80005b90:	009784b3          	add	s1,a5,s1
80005b94:	5004c863          	bltz	s1,800060a4 <_ldtoa_r+0xed4>
80005b98:	00c12783          	lw	a5,12(sp)
80005b9c:	00812703          	lw	a4,8(sp)
80005ba0:	0007a783          	lw	a5,0(a5)
80005ba4:	00f707b3          	add	a5,a4,a5
80005ba8:	00f12423          	sw	a5,8(sp)
80005bac:	00812783          	lw	a5,8(sp)
80005bb0:	040a2223          	sw	zero,68(s4)
80005bb4:	00378693          	addi	a3,a5,3
80005bb8:	01700793          	li	a5,23
80005bbc:	f4d7e2e3          	bltu	a5,a3,80005b00 <_ldtoa_r+0x930>
80005bc0:	00000593          	li	a1,0
80005bc4:	f5dff06f          	j	80005b20 <_ldtoa_r+0x950>
80005bc8:	03000793          	li	a5,48
80005bcc:	f2f710e3          	bne	a4,a5,80005aec <_ldtoa_r+0x91c>
80005bd0:	415407b3          	sub	a5,s0,s5
80005bd4:	00100693          	li	a3,1
80005bd8:	eef6c4e3          	blt	a3,a5,80005ac0 <_ldtoa_r+0x8f0>
80005bdc:	f11ff06f          	j	80005aec <_ldtoa_r+0x91c>
80005be0:	00812483          	lw	s1,8(sp)
80005be4:	00912223          	sw	s1,4(sp)
80005be8:	02a00793          	li	a5,42
80005bec:	ec97d063          	bge	a5,s1,800052ac <_ldtoa_r+0xdc>
80005bf0:	00f12223          	sw	a5,4(sp)
80005bf4:	eb8ff06f          	j	800052ac <_ldtoa_r+0xdc>
80005bf8:	0007c703          	lbu	a4,0(a5)
80005bfc:	e2070ae3          	beqz	a4,80005a30 <_ldtoa_r+0x860>
80005c00:	0017c703          	lbu	a4,1(a5)
80005c04:	00178793          	addi	a5,a5,1
80005c08:	fee78fa3          	sb	a4,-1(a5)
80005c0c:	fe071ae3          	bnez	a4,80005c00 <_ldtoa_r+0xa30>
80005c10:	e21ff06f          	j	80005a30 <_ldtoa_r+0x860>
80005c14:	00c12703          	lw	a4,12(sp)
80005c18:	000027b7          	lui	a5,0x2
80005c1c:	70f78793          	addi	a5,a5,1807 # 270f <_printf_r-0x7fffd8f1>
80005c20:	00f72023          	sw	a5,0(a4)
80005c24:	e2dff06f          	j	80005a50 <_ldtoa_r+0x880>
80005c28:	03100713          	li	a4,49
80005c2c:	12e102a3          	sb	a4,293(sp)
80005c30:	02e00713          	li	a4,46
80005c34:	12e10323          	sb	a4,294(sp)
80005c38:	00148493          	addi	s1,s1,1
80005c3c:	2af05c63          	blez	a5,80005ef4 <_ldtoa_r+0xd24>
80005c40:	03000793          	li	a5,48
80005c44:	12f103a3          	sb	a5,295(sp)
80005c48:	12810793          	addi	a5,sp,296
80005c4c:	fff40413          	addi	s0,s0,-1
80005c50:	00f12823          	sw	a5,16(sp)
80005c54:	b11ff06f          	j	80005764 <_ldtoa_r+0x594>
80005c58:	0b410c93          	addi	s9,sp,180
80005c5c:	000c8713          	mv	a4,s9
80005c60:	07c10793          	addi	a5,sp,124
80005c64:	09010613          	addi	a2,sp,144
80005c68:	0007d683          	lhu	a3,0(a5)
80005c6c:	00278793          	addi	a5,a5,2
80005c70:	00270713          	addi	a4,a4,2
80005c74:	fed71f23          	sh	a3,-2(a4)
80005c78:	fec798e3          	bne	a5,a2,80005c68 <_ldtoa_r+0xa98>
80005c7c:	000047b7          	lui	a5,0x4
80005c80:	08e78793          	addi	a5,a5,142 # 408e <_printf_r-0x7fffbf72>
80005c84:	0cf11323          	sh	a5,198(sp)
80005c88:	000087b7          	lui	a5,0x8
80005c8c:	fff78793          	addi	a5,a5,-1 # 7fff <_printf_r-0x7fff8001>
80005c90:	00f12e23          	sw	a5,28(sp)
80005c94:	ffffc7b7          	lui	a5,0xffffc
80005c98:	12410a93          	addi	s5,sp,292
80005c9c:	0d010413          	addi	s0,sp,208
80005ca0:	01000e13          	li	t3,16
80005ca4:	0c8d8313          	addi	t1,s11,200
80005ca8:	00278793          	addi	a5,a5,2 # ffffc002 <heap_end.1814+0x7ffe661e>
80005cac:	03412423          	sw	s4,40(sp)
80005cb0:	03512223          	sw	s5,36(sp)
80005cb4:	00000493          	li	s1,0
80005cb8:	000c8a93          	mv	s5,s9
80005cbc:	16010913          	addi	s2,sp,352
80005cc0:	00040c93          	mv	s9,s0
80005cc4:	0aa10b93          	addi	s7,sp,170
80005cc8:	02f12023          	sw	a5,32(sp)
80005ccc:	000e0a13          	mv	s4,t3
80005cd0:	00030413          	mv	s0,t1
80005cd4:	00090693          	mv	a3,s2
80005cd8:	09810613          	addi	a2,sp,152
80005cdc:	000a8593          	mv	a1,s5
80005ce0:	00040513          	mv	a0,s0
80005ce4:	e99fe0ef          	jal	ra,80004b7c <ediv>
80005ce8:	04c10713          	addi	a4,sp,76
80005cec:	09810793          	addi	a5,sp,152
80005cf0:	0007d683          	lhu	a3,0(a5)
80005cf4:	00278793          	addi	a5,a5,2
80005cf8:	00270713          	addi	a4,a4,2
80005cfc:	fed71f23          	sh	a3,-2(a4)
80005d00:	ffa798e3          	bne	a5,s10,80005cf0 <_ldtoa_r+0xb20>
80005d04:	01c12783          	lw	a5,28(sp)
80005d08:	05e15583          	lhu	a1,94(sp)
80005d0c:	00f5f633          	and	a2,a1,a5
80005d10:	02012783          	lw	a5,32(sp)
80005d14:	00f60533          	add	a0,a2,a5
80005d18:	3aa05063          	blez	a0,800060b8 <_ldtoa_r+0xee8>
80005d1c:	09000613          	li	a2,144
80005d20:	40a60633          	sub	a2,a2,a0
80005d24:	000c8713          	mv	a4,s9
80005d28:	04c10793          	addi	a5,sp,76
80005d2c:	0007d683          	lhu	a3,0(a5)
80005d30:	00278793          	addi	a5,a5,2
80005d34:	00270713          	addi	a4,a4,2
80005d38:	fed71f23          	sh	a3,-2(a4)
80005d3c:	ff3798e3          	bne	a5,s3,80005d2c <_ldtoa_r+0xb5c>
80005d40:	06c05463          	blez	a2,80005da8 <_ldtoa_r+0xbd8>
80005d44:	00f00793          	li	a5,15
80005d48:	000c8713          	mv	a4,s9
80005d4c:	02c7dc63          	bge	a5,a2,80005d84 <_ldtoa_r+0xbb4>
80005d50:	ff060613          	addi	a2,a2,-16
80005d54:	00465693          	srli	a3,a2,0x4
80005d58:	00168713          	addi	a4,a3,1
80005d5c:	00171713          	slli	a4,a4,0x1
80005d60:	00ec8733          	add	a4,s9,a4
80005d64:	000c8793          	mv	a5,s9
80005d68:	00278793          	addi	a5,a5,2
80005d6c:	fe079f23          	sh	zero,-2(a5)
80005d70:	fee79ce3          	bne	a5,a4,80005d68 <_ldtoa_r+0xb98>
80005d74:	08000613          	li	a2,128
80005d78:	40a60633          	sub	a2,a2,a0
80005d7c:	00469693          	slli	a3,a3,0x4
80005d80:	40d60633          	sub	a2,a2,a3
80005d84:	00161613          	slli	a2,a2,0x1
80005d88:	00cd8633          	add	a2,s11,a2
80005d8c:	00075783          	lhu	a5,0(a4)
80005d90:	23065683          	lhu	a3,560(a2)
80005d94:	00d7f7b3          	and	a5,a5,a3
80005d98:	00f71023          	sh	a5,0(a4)
80005d9c:	01059593          	slli	a1,a1,0x10
80005da0:	4105d593          	srai	a1,a1,0x10
80005da4:	1605c063          	bltz	a1,80005f04 <_ldtoa_r+0xd34>
80005da8:	09810793          	addi	a5,sp,152
80005dac:	000c8713          	mv	a4,s9
80005db0:	0007d603          	lhu	a2,0(a5)
80005db4:	00075683          	lhu	a3,0(a4)
80005db8:	00278793          	addi	a5,a5,2
80005dbc:	00270713          	addi	a4,a4,2
80005dc0:	02d61463          	bne	a2,a3,80005de8 <_ldtoa_r+0xc18>
80005dc4:	fefb96e3          	bne	s7,a5,80005db0 <_ldtoa_r+0xbe0>
80005dc8:	000a8713          	mv	a4,s5
80005dcc:	09810793          	addi	a5,sp,152
80005dd0:	0007d683          	lhu	a3,0(a5)
80005dd4:	00278793          	addi	a5,a5,2
80005dd8:	00270713          	addi	a4,a4,2
80005ddc:	fed71f23          	sh	a3,-2(a4)
80005de0:	ffa798e3          	bne	a5,s10,80005dd0 <_ldtoa_r+0xc00>
80005de4:	014484b3          	add	s1,s1,s4
80005de8:	01440413          	addi	s0,s0,20
80005dec:	12cd8793          	addi	a5,s11,300
80005df0:	001a5a13          	srli	s4,s4,0x1
80005df4:	eef410e3          	bne	s0,a5,80005cd4 <_ldtoa_r+0xb04>
80005df8:	0c615783          	lhu	a5,198(sp)
80005dfc:	08e15703          	lhu	a4,142(sp)
80005e00:	000c8413          	mv	s0,s9
80005e04:	02812a03          	lw	s4,40(sp)
80005e08:	00e787b3          	add	a5,a5,a4
80005e0c:	ffffc737          	lui	a4,0xffffc
80005e10:	000a8c93          	mv	s9,s5
80005e14:	f7270713          	addi	a4,a4,-142 # ffffbf72 <heap_end.1814+0x7ffe658e>
80005e18:	02412a83          	lw	s5,36(sp)
80005e1c:	00e787b3          	add	a5,a5,a4
80005e20:	0cf11323          	sh	a5,198(sp)
80005e24:	07c10713          	addi	a4,sp,124
80005e28:	000c8793          	mv	a5,s9
80005e2c:	0c810613          	addi	a2,sp,200
80005e30:	0007d683          	lhu	a3,0(a5)
80005e34:	00278793          	addi	a5,a5,2
80005e38:	00270713          	addi	a4,a4,2
80005e3c:	fed71f23          	sh	a3,-2(a4)
80005e40:	fec798e3          	bne	a5,a2,80005e30 <_ldtoa_r+0xc60>
80005e44:	00000713          	li	a4,0
80005e48:	09810793          	addi	a5,sp,152
80005e4c:	0080006f          	j	80005e54 <_ldtoa_r+0xc84>
80005e50:	000c5703          	lhu	a4,0(s8)
80005e54:	00278793          	addi	a5,a5,2
80005e58:	fee79f23          	sh	a4,-2(a5)
80005e5c:	002c0c13          	addi	s8,s8,2
80005e60:	ffa798e3          	bne	a5,s10,80005e50 <_ldtoa_r+0xc80>
80005e64:	028d8d13          	addi	s10,s11,40
80005e68:	00001c37          	lui	s8,0x1
80005e6c:	118d8d93          	addi	s11,s11,280
80005e70:	0100006f          	j	80005e80 <_ldtoa_r+0xcb0>
80005e74:	001c5c13          	srli	s8,s8,0x1
80005e78:	29bd0063          	beq	s10,s11,800060f8 <_ldtoa_r+0xf28>
80005e7c:	014d0d13          	addi	s10,s10,20
80005e80:	000c8593          	mv	a1,s9
80005e84:	000d8513          	mv	a0,s11
80005e88:	de9fd0ef          	jal	ra,80003c70 <ecmp>
80005e8c:	00050793          	mv	a5,a0
80005e90:	000c8593          	mv	a1,s9
80005e94:	000d0513          	mv	a0,s10
80005e98:	26f04063          	bgtz	a5,800060f8 <_ldtoa_r+0xf28>
80005e9c:	dd5fd0ef          	jal	ra,80003c70 <ecmp>
80005ea0:	fca04ae3          	bgtz	a0,80005e74 <_ldtoa_r+0xca4>
80005ea4:	00090693          	mv	a3,s2
80005ea8:	000c8613          	mv	a2,s9
80005eac:	000c8593          	mv	a1,s9
80005eb0:	000d0513          	mv	a0,s10
80005eb4:	cc9fe0ef          	jal	ra,80004b7c <ediv>
80005eb8:	09810613          	addi	a2,sp,152
80005ebc:	00090693          	mv	a3,s2
80005ec0:	00060593          	mv	a1,a2
80005ec4:	000d0513          	mv	a0,s10
80005ec8:	89dfe0ef          	jal	ra,80004764 <emul>
80005ecc:	018484b3          	add	s1,s1,s8
80005ed0:	fa5ff06f          	j	80005e74 <_ldtoa_r+0xca4>
80005ed4:	12410a93          	addi	s5,sp,292
80005ed8:	800145b7          	lui	a1,0x80014
80005edc:	e6858593          	addi	a1,a1,-408 # 80013e68 <heap_end.1814+0xffffe484>
80005ee0:	000a8513          	mv	a0,s5
80005ee4:	000024b7          	lui	s1,0x2
80005ee8:	544020ef          	jal	ra,8000842c <sprintf>
80005eec:	70f48493          	addi	s1,s1,1807 # 270f <_printf_r-0x7fffd8f1>
80005ef0:	ae1ff06f          	j	800059d0 <_ldtoa_r+0x800>
80005ef4:	12710c13          	addi	s8,sp,295
80005ef8:	ac0792e3          	bnez	a5,800059bc <_ldtoa_r+0x7ec>
80005efc:	01812823          	sw	s8,16(sp)
80005f00:	865ff06f          	j	80005764 <_ldtoa_r+0x594>
80005f04:	04c10793          	addi	a5,sp,76
80005f08:	000c8713          	mv	a4,s9
80005f0c:	00c0006f          	j	80005f18 <_ldtoa_r+0xd48>
80005f10:	05e10693          	addi	a3,sp,94
80005f14:	e8f68ae3          	beq	a3,a5,80005da8 <_ldtoa_r+0xbd8>
80005f18:	0007d603          	lhu	a2,0(a5)
80005f1c:	00075683          	lhu	a3,0(a4)
80005f20:	00278793          	addi	a5,a5,2
80005f24:	00270713          	addi	a4,a4,2
80005f28:	fed604e3          	beq	a2,a3,80005f10 <_ldtoa_r+0xd40>
80005f2c:	0e215783          	lhu	a5,226(sp)
80005f30:	01c12703          	lw	a4,28(sp)
80005f34:	00f777b3          	and	a5,a4,a5
80005f38:	00e79e63          	bne	a5,a4,80005f54 <_ldtoa_r+0xd84>
80005f3c:	000c8513          	mv	a0,s9
80005f40:	b89fd0ef          	jal	ra,80003ac8 <eisnan.part.0>
80005f44:	e60512e3          	bnez	a0,80005da8 <_ldtoa_r+0xbd8>
80005f48:	000c8513          	mv	a0,s9
80005f4c:	e41fd0ef          	jal	ra,80003d8c <eisinf.part.0>
80005f50:	e4051ce3          	bnez	a0,80005da8 <_ldtoa_r+0xbd8>
80005f54:	0ec10593          	addi	a1,sp,236
80005f58:	000c0513          	mv	a0,s8
80005f5c:	c1dfd0ef          	jal	ra,80003b78 <emovi>
80005f60:	10810593          	addi	a1,sp,264
80005f64:	000c8513          	mv	a0,s9
80005f68:	c11fd0ef          	jal	ra,80003b78 <emovi>
80005f6c:	0ec15603          	lhu	a2,236(sp)
80005f70:	10a15503          	lhu	a0,266(sp)
80005f74:	0ee15883          	lhu	a7,238(sp)
80005f78:	fff64613          	not	a2,a2
80005f7c:	01061613          	slli	a2,a2,0x10
80005f80:	01065613          	srli	a2,a2,0x10
80005f84:	0ec11623          	sh	a2,236(sp)
80005f88:	40a885b3          	sub	a1,a7,a0
80005f8c:	00050693          	mv	a3,a0
80005f90:	06b05e63          	blez	a1,8000600c <_ldtoa_r+0xe3c>
80005f94:	02412683          	lw	a3,36(sp)
80005f98:	10810713          	addi	a4,sp,264
80005f9c:	12010793          	addi	a5,sp,288
80005fa0:	00075583          	lhu	a1,0(a4)
80005fa4:	00270713          	addi	a4,a4,2
80005fa8:	00268693          	addi	a3,a3,2
80005fac:	feb69f23          	sh	a1,-2(a3)
80005fb0:	fef718e3          	bne	a4,a5,80005fa0 <_ldtoa_r+0xdd0>
80005fb4:	12011e23          	sh	zero,316(sp)
80005fb8:	10810713          	addi	a4,sp,264
80005fbc:	0ec10693          	addi	a3,sp,236
80005fc0:	0080006f          	j	80005fc8 <_ldtoa_r+0xdf8>
80005fc4:	0006d603          	lhu	a2,0(a3)
80005fc8:	00270713          	addi	a4,a4,2
80005fcc:	fec71f23          	sh	a2,-2(a4)
80005fd0:	00268693          	addi	a3,a3,2
80005fd4:	fef718e3          	bne	a4,a5,80005fc4 <_ldtoa_r+0xdf4>
80005fd8:	02412783          	lw	a5,36(sp)
80005fdc:	12011023          	sh	zero,288(sp)
80005fe0:	0ec10713          	addi	a4,sp,236
80005fe4:	13c10613          	addi	a2,sp,316
80005fe8:	0007d683          	lhu	a3,0(a5)
80005fec:	00278793          	addi	a5,a5,2
80005ff0:	00270713          	addi	a4,a4,2
80005ff4:	fed71f23          	sh	a3,-2(a4)
80005ff8:	fec798e3          	bne	a5,a2,80005fe8 <_ldtoa_r+0xe18>
80005ffc:	10a15683          	lhu	a3,266(sp)
80006000:	411505b3          	sub	a1,a0,a7
80006004:	10011223          	sh	zero,260(sp)
80006008:	00068513          	mv	a0,a3
8000600c:	2c058663          	beqz	a1,800062d8 <_ldtoa_r+0x1108>
80006010:	02d12623          	sw	a3,44(sp)
80006014:	f6f00793          	li	a5,-145
80006018:	06f5c863          	blt	a1,a5,80006088 <_ldtoa_r+0xeb8>
8000601c:	0ec10513          	addi	a0,sp,236
80006020:	d89fd0ef          	jal	ra,80003da8 <eshift.part.0>
80006024:	02c12683          	lw	a3,44(sp)
80006028:	00050593          	mv	a1,a0
8000602c:	12010793          	addi	a5,sp,288
80006030:	10410513          	addi	a0,sp,260
80006034:	0ec15603          	lhu	a2,236(sp)
80006038:	10815703          	lhu	a4,264(sp)
8000603c:	2ee60a63          	beq	a2,a4,80006330 <_ldtoa_r+0x1160>
80006040:	00000713          	li	a4,0
80006044:	00070613          	mv	a2,a4
80006048:	0007d703          	lhu	a4,0(a5)
8000604c:	00055803          	lhu	a6,0(a0)
80006050:	ffe78793          	addi	a5,a5,-2
80006054:	40c70733          	sub	a4,a4,a2
80006058:	41070733          	sub	a4,a4,a6
8000605c:	01075613          	srli	a2,a4,0x10
80006060:	00e79123          	sh	a4,2(a5)
80006064:	10a10713          	addi	a4,sp,266
80006068:	00167613          	andi	a2,a2,1
8000606c:	ffe50513          	addi	a0,a0,-2
80006070:	fce79ce3          	bne	a5,a4,80006048 <_ldtoa_r+0xe78>
80006074:	00100613          	li	a2,1
80006078:	00090793          	mv	a5,s2
8000607c:	04000713          	li	a4,64
80006080:	10810513          	addi	a0,sp,264
80006084:	8bcfe0ef          	jal	ra,80004140 <emdnorm>
80006088:	000c8593          	mv	a1,s9
8000608c:	10810513          	addi	a0,sp,264
80006090:	e24fe0ef          	jal	ra,800046b4 <emovo.isra.0>
80006094:	d15ff06f          	j	80005da8 <_ldtoa_r+0xbd8>
80006098:	00812783          	lw	a5,8(sp)
8000609c:	fff78493          	addi	s1,a5,-1
800060a0:	b45ff06f          	j	80005be4 <_ldtoa_r+0xa14>
800060a4:	00c12783          	lw	a5,12(sp)
800060a8:	12010223          	sb	zero,292(sp)
800060ac:	000a8413          	mv	s0,s5
800060b0:	0007a023          	sw	zero,0(a5)
800060b4:	af9ff06f          	j	80005bac <_ldtoa_r+0x9dc>
800060b8:	000c8793          	mv	a5,s9
800060bc:	0e410713          	addi	a4,sp,228
800060c0:	00278793          	addi	a5,a5,2
800060c4:	fe079f23          	sh	zero,-2(a5)
800060c8:	fee79ce3          	bne	a5,a4,800060c0 <_ldtoa_r+0xef0>
800060cc:	cd1ff06f          	j	80005d9c <_ldtoa_r+0xbcc>
800060d0:	01012783          	lw	a5,16(sp)
800060d4:	12410a93          	addi	s5,sp,292
800060d8:	06078a63          	beqz	a5,8000614c <_ldtoa_r+0xf7c>
800060dc:	800145b7          	lui	a1,0x80014
800060e0:	e7058593          	addi	a1,a1,-400 # 80013e70 <heap_end.1814+0xffffe48c>
800060e4:	000a8513          	mv	a0,s5
800060e8:	000024b7          	lui	s1,0x2
800060ec:	340020ef          	jal	ra,8000842c <sprintf>
800060f0:	70f48493          	addi	s1,s1,1807 # 270f <_printf_r-0x7fffd8f1>
800060f4:	8ddff06f          	j	800059d0 <_ldtoa_r+0x800>
800060f8:	0e810b93          	addi	s7,sp,232
800060fc:	bd8ff06f          	j	800054d4 <_ldtoa_r+0x304>
80006100:	03100793          	li	a5,49
80006104:	fef90f23          	sb	a5,-2(s2)
80006108:	00148493          	addi	s1,s1,1
8000610c:	8b1ff06f          	j	800059bc <_ldtoa_r+0x7ec>
80006110:	00178793          	addi	a5,a5,1
80006114:	00f70023          	sb	a5,0(a4)
80006118:	8a5ff06f          	j	800059bc <_ldtoa_r+0x7ec>
8000611c:	12410a93          	addi	s5,sp,292
80006120:	800145b7          	lui	a1,0x80014
80006124:	e8858593          	addi	a1,a1,-376 # 80013e88 <heap_end.1814+0xffffe4a4>
80006128:	000a8513          	mv	a0,s5
8000612c:	000024b7          	lui	s1,0x2
80006130:	2fc020ef          	jal	ra,8000842c <sprintf>
80006134:	70f48493          	addi	s1,s1,1807 # 270f <_printf_r-0x7fffd8f1>
80006138:	899ff06f          	j	800059d0 <_ldtoa_r+0x800>
8000613c:	1ac15783          	lhu	a5,428(sp)
80006140:	12610c13          	addi	s8,sp,294
80006144:	12710913          	addi	s2,sp,295
80006148:	815ff06f          	j	8000595c <_ldtoa_r+0x78c>
8000614c:	800145b7          	lui	a1,0x80014
80006150:	e7c58593          	addi	a1,a1,-388 # 80013e7c <heap_end.1814+0xffffe498>
80006154:	000a8513          	mv	a0,s5
80006158:	000024b7          	lui	s1,0x2
8000615c:	2d0020ef          	jal	ra,8000842c <sprintf>
80006160:	70f48493          	addi	s1,s1,1807 # 270f <_printf_r-0x7fffd8f1>
80006164:	86dff06f          	j	800059d0 <_ldtoa_r+0x800>
80006168:	09810593          	addi	a1,sp,152
8000616c:	07c10513          	addi	a0,sp,124
80006170:	d44fe0ef          	jal	ra,800046b4 <emovo.isra.0>
80006174:	0d4b0593          	addi	a1,s6,212
80006178:	09810513          	addi	a0,sp,152
8000617c:	af5fd0ef          	jal	ra,80003c70 <ecmp>
80006180:	fe051663          	bnez	a0,8000596c <_ldtoa_r+0x79c>
80006184:	82044ce3          	bltz	s0,800059bc <_ldtoa_r+0x7ec>
80006188:	ffe94783          	lbu	a5,-2(s2)
8000618c:	fd278713          	addi	a4,a5,-46
80006190:	00173713          	seqz	a4,a4
80006194:	fff74713          	not	a4,a4
80006198:	00ec0733          	add	a4,s8,a4
8000619c:	00074703          	lbu	a4,0(a4)
800061a0:	00177713          	andi	a4,a4,1
800061a4:	80070ce3          	beqz	a4,800059bc <_ldtoa_r+0x7ec>
800061a8:	ffe90713          	addi	a4,s2,-2
800061ac:	07f7f793          	andi	a5,a5,127
800061b0:	fccff06f          	j	8000597c <_ldtoa_r+0x7ac>
800061b4:	00178793          	addi	a5,a5,1
800061b8:	fef70fa3          	sb	a5,-1(a4)
800061bc:	801ff06f          	j	800059bc <_ldtoa_r+0x7ec>
800061c0:	0d010413          	addi	s0,sp,208
800061c4:	00040593          	mv	a1,s0
800061c8:	07c10513          	addi	a0,sp,124
800061cc:	00004cb7          	lui	s9,0x4
800061d0:	9a9fd0ef          	jal	ra,80003b78 <emovi>
800061d4:	00000493          	li	s1,0
800061d8:	0e810b93          	addi	s7,sp,232
800061dc:	0cc10913          	addi	s2,sp,204
800061e0:	0d210a93          	addi	s5,sp,210
800061e4:	ffec8c93          	addi	s9,s9,-2 # 3ffe <_printf_r-0x7fffc002>
800061e8:	0e815783          	lhu	a5,232(sp)
800061ec:	0077f793          	andi	a5,a5,7
800061f0:	0c079a63          	bnez	a5,800062c4 <_ldtoa_r+0x10f4>
800061f4:	0b410713          	addi	a4,sp,180
800061f8:	00040793          	mv	a5,s0
800061fc:	0007d683          	lhu	a3,0(a5)
80006200:	00278793          	addi	a5,a5,2
80006204:	00270713          	addi	a4,a4,2
80006208:	fed71f23          	sh	a3,-2(a4)
8000620c:	ff7798e3          	bne	a5,s7,800061fc <_ldtoa_r+0x102c>
80006210:	0b410513          	addi	a0,sp,180
80006214:	0c011623          	sh	zero,204(sp)
80006218:	f40fd0ef          	jal	ra,80003958 <eshdn1>
8000621c:	0b410513          	addi	a0,sp,180
80006220:	f38fd0ef          	jal	ra,80003958 <eshdn1>
80006224:	00000613          	li	a2,0
80006228:	00090693          	mv	a3,s2
8000622c:	000b8713          	mv	a4,s7
80006230:	0006d583          	lhu	a1,0(a3)
80006234:	00075783          	lhu	a5,0(a4)
80006238:	ffe68693          	addi	a3,a3,-2
8000623c:	ffe70713          	addi	a4,a4,-2
80006240:	00b787b3          	add	a5,a5,a1
80006244:	00c787b3          	add	a5,a5,a2
80006248:	0107d613          	srli	a2,a5,0x10
8000624c:	00f69123          	sh	a5,2(a3)
80006250:	00167613          	andi	a2,a2,1
80006254:	fd571ee3          	bne	a4,s5,80006230 <_ldtoa_r+0x1060>
80006258:	0b615783          	lhu	a5,182(sp)
8000625c:	0b815703          	lhu	a4,184(sp)
80006260:	00378793          	addi	a5,a5,3
80006264:	0af11b23          	sh	a5,182(sp)
80006268:	02070063          	beqz	a4,80006288 <_ldtoa_r+0x10b8>
8000626c:	0b410513          	addi	a0,sp,180
80006270:	ee8fd0ef          	jal	ra,80003958 <eshdn1>
80006274:	0b615783          	lhu	a5,182(sp)
80006278:	0b815703          	lhu	a4,184(sp)
8000627c:	00178793          	addi	a5,a5,1
80006280:	0af11b23          	sh	a5,182(sp)
80006284:	fe0714e3          	bnez	a4,8000626c <_ldtoa_r+0x109c>
80006288:	0cc15783          	lhu	a5,204(sp)
8000628c:	02079c63          	bnez	a5,800062c4 <_ldtoa_r+0x10f4>
80006290:	0b615783          	lhu	a5,182(sp)
80006294:	02fce863          	bltu	s9,a5,800062c4 <_ldtoa_r+0x10f4>
80006298:	00040713          	mv	a4,s0
8000629c:	0b410793          	addi	a5,sp,180
800062a0:	0007d683          	lhu	a3,0(a5)
800062a4:	00278793          	addi	a5,a5,2
800062a8:	00270713          	addi	a4,a4,2
800062ac:	fed71f23          	sh	a3,-2(a4)
800062b0:	ff2798e3          	bne	a5,s2,800062a0 <_ldtoa_r+0x10d0>
800062b4:	0e011423          	sh	zero,232(sp)
800062b8:	fff48493          	addi	s1,s1,-1
800062bc:	fd500793          	li	a5,-43
800062c0:	f2f494e3          	bne	s1,a5,800061e8 <_ldtoa_r+0x1018>
800062c4:	07c10593          	addi	a1,sp,124
800062c8:	00040513          	mv	a0,s0
800062cc:	be8fe0ef          	jal	ra,800046b4 <emovo.isra.0>
800062d0:	16010913          	addi	s2,sp,352
800062d4:	8f4ff06f          	j	800053c8 <_ldtoa_r+0x1f8>
800062d8:	10c10713          	addi	a4,sp,268
800062dc:	0f010793          	addi	a5,sp,240
800062e0:	0007d883          	lhu	a7,0(a5)
800062e4:	00075603          	lhu	a2,0(a4)
800062e8:	00278793          	addi	a5,a5,2
800062ec:	00270713          	addi	a4,a4,2
800062f0:	02c89863          	bne	a7,a2,80006320 <_ldtoa_r+0x1150>
800062f4:	10610613          	addi	a2,sp,262
800062f8:	fec794e3          	bne	a5,a2,800062e0 <_ldtoa_r+0x1110>
800062fc:	0ec15703          	lhu	a4,236(sp)
80006300:	10815783          	lhu	a5,264(sp)
80006304:	06f70263          	beq	a4,a5,80006368 <_ldtoa_r+0x1198>
80006308:	000c8793          	mv	a5,s9
8000630c:	0e410713          	addi	a4,sp,228
80006310:	00278793          	addi	a5,a5,2
80006314:	fe079f23          	sh	zero,-2(a5)
80006318:	fee79ce3          	bne	a5,a4,80006310 <_ldtoa_r+0x1140>
8000631c:	a8dff06f          	j	80005da8 <_ldtoa_r+0xbd8>
80006320:	0d166663          	bltu	a2,a7,800063ec <_ldtoa_r+0x121c>
80006324:	12010793          	addi	a5,sp,288
80006328:	10410513          	addi	a0,sp,260
8000632c:	d09ff06f          	j	80006034 <_ldtoa_r+0xe64>
80006330:	00000713          	li	a4,0
80006334:	0ee10313          	addi	t1,sp,238
80006338:	0007d803          	lhu	a6,0(a5)
8000633c:	00055603          	lhu	a2,0(a0)
80006340:	ffe78793          	addi	a5,a5,-2
80006344:	ffe50513          	addi	a0,a0,-2
80006348:	01060633          	add	a2,a2,a6
8000634c:	00e60733          	add	a4,a2,a4
80006350:	01075613          	srli	a2,a4,0x10
80006354:	00e79123          	sh	a4,2(a5)
80006358:	00167713          	andi	a4,a2,1
8000635c:	fc651ee3          	bne	a0,t1,80006338 <_ldtoa_r+0x1168>
80006360:	00000613          	li	a2,0
80006364:	d15ff06f          	j	80006078 <_ldtoa_r+0xea8>
80006368:	00068713          	mv	a4,a3
8000636c:	06069263          	bnez	a3,800063d0 <_ldtoa_r+0x1200>
80006370:	10e11783          	lh	a5,270(sp)
80006374:	0407ce63          	bltz	a5,800063d0 <_ldtoa_r+0x1200>
80006378:	12010693          	addi	a3,sp,288
8000637c:	0200006f          	j	8000639c <_ldtoa_r+0x11cc>
80006380:	00f69023          	sh	a5,0(a3)
80006384:	00171713          	slli	a4,a4,0x1
80006388:	01071713          	slli	a4,a4,0x10
8000638c:	ffe68693          	addi	a3,a3,-2
80006390:	10a10793          	addi	a5,sp,266
80006394:	01075713          	srli	a4,a4,0x10
80006398:	cef688e3          	beq	a3,a5,80006088 <_ldtoa_r+0xeb8>
8000639c:	0006d783          	lhu	a5,0(a3)
800063a0:	01079613          	slli	a2,a5,0x10
800063a4:	41065613          	srai	a2,a2,0x10
800063a8:	00179793          	slli	a5,a5,0x1
800063ac:	00065463          	bgez	a2,800063b4 <_ldtoa_r+0x11e4>
800063b0:	00176713          	ori	a4,a4,1
800063b4:	01079793          	slli	a5,a5,0x10
800063b8:	0107d793          	srli	a5,a5,0x10
800063bc:	00277613          	andi	a2,a4,2
800063c0:	0017e593          	ori	a1,a5,1
800063c4:	fa060ee3          	beqz	a2,80006380 <_ldtoa_r+0x11b0>
800063c8:	00b69023          	sh	a1,0(a3)
800063cc:	fb9ff06f          	j	80006384 <_ldtoa_r+0x11b4>
800063d0:	10c10613          	addi	a2,sp,268
800063d4:	12010793          	addi	a5,sp,288
800063d8:	08071263          	bnez	a4,8000645c <_ldtoa_r+0x128c>
800063dc:	08c78263          	beq	a5,a2,80006460 <_ldtoa_r+0x1290>
800063e0:	00065703          	lhu	a4,0(a2)
800063e4:	00260613          	addi	a2,a2,2
800063e8:	ff1ff06f          	j	800063d8 <_ldtoa_r+0x1208>
800063ec:	02412603          	lw	a2,36(sp)
800063f0:	10810713          	addi	a4,sp,264
800063f4:	12010793          	addi	a5,sp,288
800063f8:	00075503          	lhu	a0,0(a4)
800063fc:	00270713          	addi	a4,a4,2
80006400:	00260613          	addi	a2,a2,2
80006404:	fea61f23          	sh	a0,-2(a2)
80006408:	fef718e3          	bne	a4,a5,800063f8 <_ldtoa_r+0x1228>
8000640c:	12011e23          	sh	zero,316(sp)
80006410:	10810613          	addi	a2,sp,264
80006414:	0ec10713          	addi	a4,sp,236
80006418:	10410513          	addi	a0,sp,260
8000641c:	00075803          	lhu	a6,0(a4)
80006420:	00270713          	addi	a4,a4,2
80006424:	00260613          	addi	a2,a2,2
80006428:	ff061f23          	sh	a6,-2(a2)
8000642c:	fea718e3          	bne	a4,a0,8000641c <_ldtoa_r+0x124c>
80006430:	02412703          	lw	a4,36(sp)
80006434:	12011023          	sh	zero,288(sp)
80006438:	0ec10893          	addi	a7,sp,236
8000643c:	13c10613          	addi	a2,sp,316
80006440:	00075803          	lhu	a6,0(a4)
80006444:	00270713          	addi	a4,a4,2
80006448:	00288893          	addi	a7,a7,2
8000644c:	ff089f23          	sh	a6,-2(a7)
80006450:	fec718e3          	bne	a4,a2,80006440 <_ldtoa_r+0x1270>
80006454:	10011223          	sh	zero,260(sp)
80006458:	bddff06f          	j	80006034 <_ldtoa_r+0xe64>
8000645c:	00168513          	addi	a0,a3,1
80006460:	10a11523          	sh	a0,266(sp)
80006464:	c25ff06f          	j	80006088 <_ldtoa_r+0xeb8>

80006468 <_ldcheck>:
80006468:	00852703          	lw	a4,8(a0)
8000646c:	00c52783          	lw	a5,12(a0)
80006470:	00052603          	lw	a2,0(a0)
80006474:	00452683          	lw	a3,4(a0)
80006478:	fc010113          	addi	sp,sp,-64
8000647c:	00010513          	mv	a0,sp
80006480:	01410593          	addi	a1,sp,20
80006484:	00e12423          	sw	a4,8(sp)
80006488:	00f12623          	sw	a5,12(sp)
8000648c:	02112e23          	sw	ra,60(sp)
80006490:	00c12023          	sw	a2,0(sp)
80006494:	00d12223          	sw	a3,4(sp)
80006498:	bf5fe0ef          	jal	ra,8000508c <e113toe.isra.0>
8000649c:	02615783          	lhu	a5,38(sp)
800064a0:	00000513          	li	a0,0
800064a4:	fff7c793          	not	a5,a5
800064a8:	01179713          	slli	a4,a5,0x11
800064ac:	00071a63          	bnez	a4,800064c0 <_ldcheck+0x58>
800064b0:	01410513          	addi	a0,sp,20
800064b4:	e14fd0ef          	jal	ra,80003ac8 <eisnan.part.0>
800064b8:	00153513          	seqz	a0,a0
800064bc:	00150513          	addi	a0,a0,1
800064c0:	03c12083          	lw	ra,60(sp)
800064c4:	04010113          	addi	sp,sp,64
800064c8:	00008067          	ret

800064cc <__localeconv_l>:
800064cc:	0f050513          	addi	a0,a0,240
800064d0:	00008067          	ret

800064d4 <_localeconv_r>:
800064d4:	80015537          	lui	a0,0x80015
800064d8:	51850513          	addi	a0,a0,1304 # 80015518 <heap_end.1814+0xfffffb34>
800064dc:	00008067          	ret

800064e0 <localeconv>:
800064e0:	80015537          	lui	a0,0x80015
800064e4:	51850513          	addi	a0,a0,1304 # 80015518 <heap_end.1814+0xfffffb34>
800064e8:	00008067          	ret

800064ec <_setlocale_r>:
800064ec:	ff010113          	addi	sp,sp,-16
800064f0:	00112623          	sw	ra,12(sp)
800064f4:	00812423          	sw	s0,8(sp)
800064f8:	00912223          	sw	s1,4(sp)
800064fc:	02060c63          	beqz	a2,80006534 <_setlocale_r+0x48>
80006500:	800145b7          	lui	a1,0x80014
80006504:	e9458593          	addi	a1,a1,-364 # 80013e94 <heap_end.1814+0xffffe4b0>
80006508:	00060513          	mv	a0,a2
8000650c:	00060413          	mv	s0,a2
80006510:	0f4020ef          	jal	ra,80008604 <strcmp>
80006514:	800144b7          	lui	s1,0x80014
80006518:	02051263          	bnez	a0,8000653c <_setlocale_r+0x50>
8000651c:	e9048513          	addi	a0,s1,-368 # 80013e90 <heap_end.1814+0xffffe4ac>
80006520:	00c12083          	lw	ra,12(sp)
80006524:	00812403          	lw	s0,8(sp)
80006528:	00412483          	lw	s1,4(sp)
8000652c:	01010113          	addi	sp,sp,16
80006530:	00008067          	ret
80006534:	800144b7          	lui	s1,0x80014
80006538:	fe5ff06f          	j	8000651c <_setlocale_r+0x30>
8000653c:	e9048593          	addi	a1,s1,-368 # 80013e90 <heap_end.1814+0xffffe4ac>
80006540:	00040513          	mv	a0,s0
80006544:	0c0020ef          	jal	ra,80008604 <strcmp>
80006548:	fc050ae3          	beqz	a0,8000651c <_setlocale_r+0x30>
8000654c:	800145b7          	lui	a1,0x80014
80006550:	f1458593          	addi	a1,a1,-236 # 80013f14 <heap_end.1814+0xffffe530>
80006554:	00040513          	mv	a0,s0
80006558:	0ac020ef          	jal	ra,80008604 <strcmp>
8000655c:	fc0500e3          	beqz	a0,8000651c <_setlocale_r+0x30>
80006560:	00000513          	li	a0,0
80006564:	fbdff06f          	j	80006520 <_setlocale_r+0x34>

80006568 <__locale_mb_cur_max>:
80006568:	800157b7          	lui	a5,0x80015
8000656c:	5507c503          	lbu	a0,1360(a5) # 80015550 <heap_end.1814+0xfffffb6c>
80006570:	00008067          	ret

80006574 <setlocale>:
80006574:	80016737          	lui	a4,0x80016
80006578:	00050793          	mv	a5,a0
8000657c:	99c72503          	lw	a0,-1636(a4) # 8001599c <heap_end.1814+0xffffffb8>
80006580:	00058613          	mv	a2,a1
80006584:	00078593          	mv	a1,a5
80006588:	f65ff06f          	j	800064ec <_setlocale_r>

8000658c <__swhatbuf_r>:
8000658c:	f9010113          	addi	sp,sp,-112
80006590:	06812423          	sw	s0,104(sp)
80006594:	00058413          	mv	s0,a1
80006598:	00e59583          	lh	a1,14(a1)
8000659c:	06912223          	sw	s1,100(sp)
800065a0:	07212023          	sw	s2,96(sp)
800065a4:	06112623          	sw	ra,108(sp)
800065a8:	00060493          	mv	s1,a2
800065ac:	00068913          	mv	s2,a3
800065b0:	0405ca63          	bltz	a1,80006604 <__swhatbuf_r+0x78>
800065b4:	00810613          	addi	a2,sp,8
800065b8:	78c060ef          	jal	ra,8000cd44 <_fstat_r>
800065bc:	04054463          	bltz	a0,80006604 <__swhatbuf_r+0x78>
800065c0:	00c12703          	lw	a4,12(sp)
800065c4:	0000f7b7          	lui	a5,0xf
800065c8:	06c12083          	lw	ra,108(sp)
800065cc:	00e7f7b3          	and	a5,a5,a4
800065d0:	ffffe737          	lui	a4,0xffffe
800065d4:	00e787b3          	add	a5,a5,a4
800065d8:	06812403          	lw	s0,104(sp)
800065dc:	0017b793          	seqz	a5,a5
800065e0:	00f92023          	sw	a5,0(s2)
800065e4:	40000793          	li	a5,1024
800065e8:	00f4a023          	sw	a5,0(s1)
800065ec:	00001537          	lui	a0,0x1
800065f0:	06412483          	lw	s1,100(sp)
800065f4:	06012903          	lw	s2,96(sp)
800065f8:	80050513          	addi	a0,a0,-2048 # 800 <_printf_r-0x7ffff800>
800065fc:	07010113          	addi	sp,sp,112
80006600:	00008067          	ret
80006604:	00c45783          	lhu	a5,12(s0)
80006608:	00092023          	sw	zero,0(s2)
8000660c:	0807f793          	andi	a5,a5,128
80006610:	02078463          	beqz	a5,80006638 <__swhatbuf_r+0xac>
80006614:	06c12083          	lw	ra,108(sp)
80006618:	06812403          	lw	s0,104(sp)
8000661c:	04000793          	li	a5,64
80006620:	00f4a023          	sw	a5,0(s1)
80006624:	06012903          	lw	s2,96(sp)
80006628:	06412483          	lw	s1,100(sp)
8000662c:	00000513          	li	a0,0
80006630:	07010113          	addi	sp,sp,112
80006634:	00008067          	ret
80006638:	06c12083          	lw	ra,108(sp)
8000663c:	06812403          	lw	s0,104(sp)
80006640:	40000793          	li	a5,1024
80006644:	00f4a023          	sw	a5,0(s1)
80006648:	06012903          	lw	s2,96(sp)
8000664c:	06412483          	lw	s1,100(sp)
80006650:	00000513          	li	a0,0
80006654:	07010113          	addi	sp,sp,112
80006658:	00008067          	ret

8000665c <__smakebuf_r>:
8000665c:	00c5d783          	lhu	a5,12(a1)
80006660:	fe010113          	addi	sp,sp,-32
80006664:	00812c23          	sw	s0,24(sp)
80006668:	00112e23          	sw	ra,28(sp)
8000666c:	00912a23          	sw	s1,20(sp)
80006670:	01212823          	sw	s2,16(sp)
80006674:	0027f793          	andi	a5,a5,2
80006678:	00058413          	mv	s0,a1
8000667c:	02078863          	beqz	a5,800066ac <__smakebuf_r+0x50>
80006680:	04358793          	addi	a5,a1,67
80006684:	00f5a023          	sw	a5,0(a1)
80006688:	00f5a823          	sw	a5,16(a1)
8000668c:	00100793          	li	a5,1
80006690:	00f5aa23          	sw	a5,20(a1)
80006694:	01c12083          	lw	ra,28(sp)
80006698:	01812403          	lw	s0,24(sp)
8000669c:	01412483          	lw	s1,20(sp)
800066a0:	01012903          	lw	s2,16(sp)
800066a4:	02010113          	addi	sp,sp,32
800066a8:	00008067          	ret
800066ac:	00c10693          	addi	a3,sp,12
800066b0:	00810613          	addi	a2,sp,8
800066b4:	00050493          	mv	s1,a0
800066b8:	ed5ff0ef          	jal	ra,8000658c <__swhatbuf_r>
800066bc:	00812583          	lw	a1,8(sp)
800066c0:	00050913          	mv	s2,a0
800066c4:	00048513          	mv	a0,s1
800066c8:	0b4000ef          	jal	ra,8000677c <_malloc_r>
800066cc:	00c41783          	lh	a5,12(s0)
800066d0:	04050863          	beqz	a0,80006720 <__smakebuf_r+0xc4>
800066d4:	80003737          	lui	a4,0x80003
800066d8:	04870713          	addi	a4,a4,72 # 80003048 <heap_end.1814+0xfffed664>
800066dc:	02e4ae23          	sw	a4,60(s1)
800066e0:	00812703          	lw	a4,8(sp)
800066e4:	00c12683          	lw	a3,12(sp)
800066e8:	0807e793          	ori	a5,a5,128
800066ec:	00f41623          	sh	a5,12(s0)
800066f0:	00a42023          	sw	a0,0(s0)
800066f4:	00a42823          	sw	a0,16(s0)
800066f8:	00e42a23          	sw	a4,20(s0)
800066fc:	04069863          	bnez	a3,8000674c <__smakebuf_r+0xf0>
80006700:	0127e7b3          	or	a5,a5,s2
80006704:	01c12083          	lw	ra,28(sp)
80006708:	00f41623          	sh	a5,12(s0)
8000670c:	01812403          	lw	s0,24(sp)
80006710:	01412483          	lw	s1,20(sp)
80006714:	01012903          	lw	s2,16(sp)
80006718:	02010113          	addi	sp,sp,32
8000671c:	00008067          	ret
80006720:	2007f713          	andi	a4,a5,512
80006724:	f60718e3          	bnez	a4,80006694 <__smakebuf_r+0x38>
80006728:	ffc7f793          	andi	a5,a5,-4
8000672c:	0027e793          	ori	a5,a5,2
80006730:	04340713          	addi	a4,s0,67
80006734:	00f41623          	sh	a5,12(s0)
80006738:	00100793          	li	a5,1
8000673c:	00e42023          	sw	a4,0(s0)
80006740:	00e42823          	sw	a4,16(s0)
80006744:	00f42a23          	sw	a5,20(s0)
80006748:	f4dff06f          	j	80006694 <__smakebuf_r+0x38>
8000674c:	00e41583          	lh	a1,14(s0)
80006750:	00048513          	mv	a0,s1
80006754:	301060ef          	jal	ra,8000d254 <_isatty_r>
80006758:	00051663          	bnez	a0,80006764 <__smakebuf_r+0x108>
8000675c:	00c41783          	lh	a5,12(s0)
80006760:	fa1ff06f          	j	80006700 <__smakebuf_r+0xa4>
80006764:	00c45703          	lhu	a4,12(s0)
80006768:	ffc77713          	andi	a4,a4,-4
8000676c:	00176713          	ori	a4,a4,1
80006770:	01071793          	slli	a5,a4,0x10
80006774:	4107d793          	srai	a5,a5,0x10
80006778:	f89ff06f          	j	80006700 <__smakebuf_r+0xa4>

8000677c <_malloc_r>:
8000677c:	fd010113          	addi	sp,sp,-48
80006780:	01312e23          	sw	s3,28(sp)
80006784:	02112623          	sw	ra,44(sp)
80006788:	02812423          	sw	s0,40(sp)
8000678c:	02912223          	sw	s1,36(sp)
80006790:	03212023          	sw	s2,32(sp)
80006794:	01412c23          	sw	s4,24(sp)
80006798:	01512a23          	sw	s5,20(sp)
8000679c:	01612823          	sw	s6,16(sp)
800067a0:	01712623          	sw	s7,12(sp)
800067a4:	01812423          	sw	s8,8(sp)
800067a8:	01912223          	sw	s9,4(sp)
800067ac:	00b58793          	addi	a5,a1,11
800067b0:	01600713          	li	a4,22
800067b4:	00050993          	mv	s3,a0
800067b8:	06f76663          	bltu	a4,a5,80006824 <_malloc_r+0xa8>
800067bc:	01000793          	li	a5,16
800067c0:	1eb7e663          	bltu	a5,a1,800069ac <_malloc_r+0x230>
800067c4:	195000ef          	jal	ra,80007158 <__malloc_lock>
800067c8:	01000493          	li	s1,16
800067cc:	00200613          	li	a2,2
800067d0:	01800793          	li	a5,24
800067d4:	80015937          	lui	s2,0x80015
800067d8:	59490913          	addi	s2,s2,1428 # 80015594 <heap_end.1814+0xfffffbb0>
800067dc:	00f907b3          	add	a5,s2,a5
800067e0:	0047a403          	lw	s0,4(a5) # f004 <_printf_r-0x7fff0ffc>
800067e4:	ff878713          	addi	a4,a5,-8
800067e8:	20e40a63          	beq	s0,a4,800069fc <_malloc_r+0x280>
800067ec:	00442783          	lw	a5,4(s0)
800067f0:	00c42683          	lw	a3,12(s0)
800067f4:	00842603          	lw	a2,8(s0)
800067f8:	ffc7f793          	andi	a5,a5,-4
800067fc:	00f407b3          	add	a5,s0,a5
80006800:	0047a703          	lw	a4,4(a5)
80006804:	00d62623          	sw	a3,12(a2)
80006808:	00c6a423          	sw	a2,8(a3)
8000680c:	00176713          	ori	a4,a4,1
80006810:	00098513          	mv	a0,s3
80006814:	00e7a223          	sw	a4,4(a5)
80006818:	145000ef          	jal	ra,8000715c <__malloc_unlock>
8000681c:	00840513          	addi	a0,s0,8
80006820:	1980006f          	j	800069b8 <_malloc_r+0x23c>
80006824:	ff87f493          	andi	s1,a5,-8
80006828:	1807c263          	bltz	a5,800069ac <_malloc_r+0x230>
8000682c:	18b4e063          	bltu	s1,a1,800069ac <_malloc_r+0x230>
80006830:	129000ef          	jal	ra,80007158 <__malloc_lock>
80006834:	1f700793          	li	a5,503
80006838:	4697f663          	bgeu	a5,s1,80006ca4 <_malloc_r+0x528>
8000683c:	0094d793          	srli	a5,s1,0x9
80006840:	1a078663          	beqz	a5,800069ec <_malloc_r+0x270>
80006844:	00400713          	li	a4,4
80006848:	3cf76c63          	bltu	a4,a5,80006c20 <_malloc_r+0x4a4>
8000684c:	0064d793          	srli	a5,s1,0x6
80006850:	03978613          	addi	a2,a5,57
80006854:	03878513          	addi	a0,a5,56
80006858:	00361693          	slli	a3,a2,0x3
8000685c:	80015937          	lui	s2,0x80015
80006860:	59490913          	addi	s2,s2,1428 # 80015594 <heap_end.1814+0xfffffbb0>
80006864:	00d906b3          	add	a3,s2,a3
80006868:	0046a403          	lw	s0,4(a3)
8000686c:	ff868693          	addi	a3,a3,-8
80006870:	02868663          	beq	a3,s0,8000689c <_malloc_r+0x120>
80006874:	00f00593          	li	a1,15
80006878:	0100006f          	j	80006888 <_malloc_r+0x10c>
8000687c:	32075c63          	bgez	a4,80006bb4 <_malloc_r+0x438>
80006880:	00c42403          	lw	s0,12(s0)
80006884:	00868c63          	beq	a3,s0,8000689c <_malloc_r+0x120>
80006888:	00442783          	lw	a5,4(s0)
8000688c:	ffc7f793          	andi	a5,a5,-4
80006890:	40978733          	sub	a4,a5,s1
80006894:	fee5d4e3          	bge	a1,a4,8000687c <_malloc_r+0x100>
80006898:	00050613          	mv	a2,a0
8000689c:	01092403          	lw	s0,16(s2)
800068a0:	00890893          	addi	a7,s2,8
800068a4:	17140863          	beq	s0,a7,80006a14 <_malloc_r+0x298>
800068a8:	00442503          	lw	a0,4(s0)
800068ac:	00f00693          	li	a3,15
800068b0:	ffc57513          	andi	a0,a0,-4
800068b4:	409507b3          	sub	a5,a0,s1
800068b8:	40f6cc63          	blt	a3,a5,80006cd0 <_malloc_r+0x554>
800068bc:	01192a23          	sw	a7,20(s2)
800068c0:	01192823          	sw	a7,16(s2)
800068c4:	3e07d663          	bgez	a5,80006cb0 <_malloc_r+0x534>
800068c8:	1ff00793          	li	a5,511
800068cc:	2ea7ea63          	bltu	a5,a0,80006bc0 <_malloc_r+0x444>
800068d0:	ff857793          	andi	a5,a0,-8
800068d4:	00878793          	addi	a5,a5,8
800068d8:	00492583          	lw	a1,4(s2)
800068dc:	00f907b3          	add	a5,s2,a5
800068e0:	0007a683          	lw	a3,0(a5)
800068e4:	00555513          	srli	a0,a0,0x5
800068e8:	00100713          	li	a4,1
800068ec:	00a71733          	sll	a4,a4,a0
800068f0:	00b76733          	or	a4,a4,a1
800068f4:	ff878593          	addi	a1,a5,-8
800068f8:	00b42623          	sw	a1,12(s0)
800068fc:	00d42423          	sw	a3,8(s0)
80006900:	00e92223          	sw	a4,4(s2)
80006904:	0087a023          	sw	s0,0(a5)
80006908:	0086a623          	sw	s0,12(a3)
8000690c:	40265793          	srai	a5,a2,0x2
80006910:	00100593          	li	a1,1
80006914:	00f595b3          	sll	a1,a1,a5
80006918:	10b76863          	bltu	a4,a1,80006a28 <_malloc_r+0x2ac>
8000691c:	00e5f7b3          	and	a5,a1,a4
80006920:	02079463          	bnez	a5,80006948 <_malloc_r+0x1cc>
80006924:	00159593          	slli	a1,a1,0x1
80006928:	ffc67613          	andi	a2,a2,-4
8000692c:	00e5f7b3          	and	a5,a1,a4
80006930:	00460613          	addi	a2,a2,4
80006934:	00079a63          	bnez	a5,80006948 <_malloc_r+0x1cc>
80006938:	00159593          	slli	a1,a1,0x1
8000693c:	00e5f7b3          	and	a5,a1,a4
80006940:	00460613          	addi	a2,a2,4
80006944:	fe078ae3          	beqz	a5,80006938 <_malloc_r+0x1bc>
80006948:	00f00813          	li	a6,15
8000694c:	00361313          	slli	t1,a2,0x3
80006950:	00690333          	add	t1,s2,t1
80006954:	00030513          	mv	a0,t1
80006958:	00c52783          	lw	a5,12(a0)
8000695c:	00060e13          	mv	t3,a2
80006960:	2ef50263          	beq	a0,a5,80006c44 <_malloc_r+0x4c8>
80006964:	0047a703          	lw	a4,4(a5)
80006968:	00078413          	mv	s0,a5
8000696c:	00c7a783          	lw	a5,12(a5)
80006970:	ffc77713          	andi	a4,a4,-4
80006974:	409706b3          	sub	a3,a4,s1
80006978:	2ed84263          	blt	a6,a3,80006c5c <_malloc_r+0x4e0>
8000697c:	fe06c2e3          	bltz	a3,80006960 <_malloc_r+0x1e4>
80006980:	00e40733          	add	a4,s0,a4
80006984:	00472683          	lw	a3,4(a4)
80006988:	00842603          	lw	a2,8(s0)
8000698c:	00098513          	mv	a0,s3
80006990:	0016e693          	ori	a3,a3,1
80006994:	00d72223          	sw	a3,4(a4)
80006998:	00f62623          	sw	a5,12(a2)
8000699c:	00c7a423          	sw	a2,8(a5)
800069a0:	7bc000ef          	jal	ra,8000715c <__malloc_unlock>
800069a4:	00840513          	addi	a0,s0,8
800069a8:	0100006f          	j	800069b8 <_malloc_r+0x23c>
800069ac:	00c00793          	li	a5,12
800069b0:	00f9a023          	sw	a5,0(s3)
800069b4:	00000513          	li	a0,0
800069b8:	02c12083          	lw	ra,44(sp)
800069bc:	02812403          	lw	s0,40(sp)
800069c0:	02412483          	lw	s1,36(sp)
800069c4:	02012903          	lw	s2,32(sp)
800069c8:	01c12983          	lw	s3,28(sp)
800069cc:	01812a03          	lw	s4,24(sp)
800069d0:	01412a83          	lw	s5,20(sp)
800069d4:	01012b03          	lw	s6,16(sp)
800069d8:	00c12b83          	lw	s7,12(sp)
800069dc:	00812c03          	lw	s8,8(sp)
800069e0:	00412c83          	lw	s9,4(sp)
800069e4:	03010113          	addi	sp,sp,48
800069e8:	00008067          	ret
800069ec:	20000693          	li	a3,512
800069f0:	04000613          	li	a2,64
800069f4:	03f00513          	li	a0,63
800069f8:	e65ff06f          	j	8000685c <_malloc_r+0xe0>
800069fc:	00c7a403          	lw	s0,12(a5)
80006a00:	00260613          	addi	a2,a2,2
80006a04:	de8794e3          	bne	a5,s0,800067ec <_malloc_r+0x70>
80006a08:	01092403          	lw	s0,16(s2)
80006a0c:	00890893          	addi	a7,s2,8
80006a10:	e9141ce3          	bne	s0,a7,800068a8 <_malloc_r+0x12c>
80006a14:	00492703          	lw	a4,4(s2)
80006a18:	40265793          	srai	a5,a2,0x2
80006a1c:	00100593          	li	a1,1
80006a20:	00f595b3          	sll	a1,a1,a5
80006a24:	eeb77ce3          	bgeu	a4,a1,8000691c <_malloc_r+0x1a0>
80006a28:	00892403          	lw	s0,8(s2)
80006a2c:	00442a83          	lw	s5,4(s0)
80006a30:	ffcafb13          	andi	s6,s5,-4
80006a34:	009b6863          	bltu	s6,s1,80006a44 <_malloc_r+0x2c8>
80006a38:	409b07b3          	sub	a5,s6,s1
80006a3c:	00f00713          	li	a4,15
80006a40:	14f74663          	blt	a4,a5,80006b8c <_malloc_r+0x410>
80006a44:	800167b7          	lui	a5,0x80016
80006a48:	80016cb7          	lui	s9,0x80016
80006a4c:	9e07aa83          	lw	s5,-1568(a5) # 800159e0 <heap_end.1814+0xfffffffc>
80006a50:	9a0ca703          	lw	a4,-1632(s9) # 800159a0 <heap_end.1814+0xffffffbc>
80006a54:	fff00793          	li	a5,-1
80006a58:	01640a33          	add	s4,s0,s6
80006a5c:	01548ab3          	add	s5,s1,s5
80006a60:	34f70a63          	beq	a4,a5,80006db4 <_malloc_r+0x638>
80006a64:	000017b7          	lui	a5,0x1
80006a68:	00f78793          	addi	a5,a5,15 # 100f <_printf_r-0x7fffeff1>
80006a6c:	00fa8ab3          	add	s5,s5,a5
80006a70:	fffff7b7          	lui	a5,0xfffff
80006a74:	00fafab3          	and	s5,s5,a5
80006a78:	000a8593          	mv	a1,s5
80006a7c:	00098513          	mv	a0,s3
80006a80:	035010ef          	jal	ra,800082b4 <_sbrk_r>
80006a84:	fff00793          	li	a5,-1
80006a88:	00050b93          	mv	s7,a0
80006a8c:	28f50c63          	beq	a0,a5,80006d24 <_malloc_r+0x5a8>
80006a90:	29456863          	bltu	a0,s4,80006d20 <_malloc_r+0x5a4>
80006a94:	80016c37          	lui	s8,0x80016
80006a98:	9a8c0c13          	addi	s8,s8,-1624 # 800159a8 <heap_end.1814+0xffffffc4>
80006a9c:	000c2583          	lw	a1,0(s8)
80006aa0:	00ba85b3          	add	a1,s5,a1
80006aa4:	00bc2023          	sw	a1,0(s8)
80006aa8:	00058793          	mv	a5,a1
80006aac:	3aaa0463          	beq	s4,a0,80006e54 <_malloc_r+0x6d8>
80006ab0:	9a0ca683          	lw	a3,-1632(s9)
80006ab4:	fff00713          	li	a4,-1
80006ab8:	3ae68c63          	beq	a3,a4,80006e70 <_malloc_r+0x6f4>
80006abc:	414b8a33          	sub	s4,s7,s4
80006ac0:	00fa07b3          	add	a5,s4,a5
80006ac4:	00fc2023          	sw	a5,0(s8)
80006ac8:	007bfc93          	andi	s9,s7,7
80006acc:	300c8663          	beqz	s9,80006dd8 <_malloc_r+0x65c>
80006ad0:	000017b7          	lui	a5,0x1
80006ad4:	419b8bb3          	sub	s7,s7,s9
80006ad8:	00878593          	addi	a1,a5,8 # 1008 <_printf_r-0x7fffeff8>
80006adc:	008b8b93          	addi	s7,s7,8
80006ae0:	419585b3          	sub	a1,a1,s9
80006ae4:	015b8ab3          	add	s5,s7,s5
80006ae8:	fff78793          	addi	a5,a5,-1
80006aec:	415585b3          	sub	a1,a1,s5
80006af0:	00f5fa33          	and	s4,a1,a5
80006af4:	000a0593          	mv	a1,s4
80006af8:	00098513          	mv	a0,s3
80006afc:	7b8010ef          	jal	ra,800082b4 <_sbrk_r>
80006b00:	fff00793          	li	a5,-1
80006b04:	3cf50063          	beq	a0,a5,80006ec4 <_malloc_r+0x748>
80006b08:	41750533          	sub	a0,a0,s7
80006b0c:	01450ab3          	add	s5,a0,s4
80006b10:	000c2583          	lw	a1,0(s8)
80006b14:	01792423          	sw	s7,8(s2)
80006b18:	001aea93          	ori	s5,s5,1
80006b1c:	00ba05b3          	add	a1,s4,a1
80006b20:	00bc2023          	sw	a1,0(s8)
80006b24:	015ba223          	sw	s5,4(s7)
80006b28:	35240863          	beq	s0,s2,80006e78 <_malloc_r+0x6fc>
80006b2c:	00f00693          	li	a3,15
80006b30:	3566f863          	bgeu	a3,s6,80006e80 <_malloc_r+0x704>
80006b34:	00442703          	lw	a4,4(s0)
80006b38:	ff4b0793          	addi	a5,s6,-12
80006b3c:	ff87f793          	andi	a5,a5,-8
80006b40:	00177713          	andi	a4,a4,1
80006b44:	00f76733          	or	a4,a4,a5
80006b48:	00e42223          	sw	a4,4(s0)
80006b4c:	00500613          	li	a2,5
80006b50:	00f40733          	add	a4,s0,a5
80006b54:	00c72223          	sw	a2,4(a4)
80006b58:	00c72423          	sw	a2,8(a4)
80006b5c:	36f6ee63          	bltu	a3,a5,80006ed8 <_malloc_r+0x75c>
80006b60:	004baa83          	lw	s5,4(s7)
80006b64:	000b8413          	mv	s0,s7
80006b68:	800167b7          	lui	a5,0x80016
80006b6c:	9dc7a703          	lw	a4,-1572(a5) # 800159dc <heap_end.1814+0xfffffff8>
80006b70:	00b77463          	bgeu	a4,a1,80006b78 <_malloc_r+0x3fc>
80006b74:	9cb7ae23          	sw	a1,-1572(a5)
80006b78:	800167b7          	lui	a5,0x80016
80006b7c:	9d87a703          	lw	a4,-1576(a5) # 800159d8 <heap_end.1814+0xfffffff4>
80006b80:	1ab77663          	bgeu	a4,a1,80006d2c <_malloc_r+0x5b0>
80006b84:	9cb7ac23          	sw	a1,-1576(a5)
80006b88:	1a40006f          	j	80006d2c <_malloc_r+0x5b0>
80006b8c:	0014e713          	ori	a4,s1,1
80006b90:	00e42223          	sw	a4,4(s0)
80006b94:	009404b3          	add	s1,s0,s1
80006b98:	00992423          	sw	s1,8(s2)
80006b9c:	0017e793          	ori	a5,a5,1
80006ba0:	00098513          	mv	a0,s3
80006ba4:	00f4a223          	sw	a5,4(s1)
80006ba8:	5b4000ef          	jal	ra,8000715c <__malloc_unlock>
80006bac:	00840513          	addi	a0,s0,8
80006bb0:	e09ff06f          	j	800069b8 <_malloc_r+0x23c>
80006bb4:	00c42683          	lw	a3,12(s0)
80006bb8:	00842603          	lw	a2,8(s0)
80006bbc:	c41ff06f          	j	800067fc <_malloc_r+0x80>
80006bc0:	00955793          	srli	a5,a0,0x9
80006bc4:	00400713          	li	a4,4
80006bc8:	14f77263          	bgeu	a4,a5,80006d0c <_malloc_r+0x590>
80006bcc:	01400713          	li	a4,20
80006bd0:	22f76a63          	bltu	a4,a5,80006e04 <_malloc_r+0x688>
80006bd4:	05c78693          	addi	a3,a5,92
80006bd8:	05b78593          	addi	a1,a5,91
80006bdc:	00369693          	slli	a3,a3,0x3
80006be0:	00d906b3          	add	a3,s2,a3
80006be4:	0006a783          	lw	a5,0(a3)
80006be8:	ff868693          	addi	a3,a3,-8
80006bec:	1cf68863          	beq	a3,a5,80006dbc <_malloc_r+0x640>
80006bf0:	0047a703          	lw	a4,4(a5)
80006bf4:	ffc77713          	andi	a4,a4,-4
80006bf8:	00e57663          	bgeu	a0,a4,80006c04 <_malloc_r+0x488>
80006bfc:	0087a783          	lw	a5,8(a5)
80006c00:	fef698e3          	bne	a3,a5,80006bf0 <_malloc_r+0x474>
80006c04:	00c7a683          	lw	a3,12(a5)
80006c08:	00492703          	lw	a4,4(s2)
80006c0c:	00d42623          	sw	a3,12(s0)
80006c10:	00f42423          	sw	a5,8(s0)
80006c14:	0086a423          	sw	s0,8(a3)
80006c18:	0087a623          	sw	s0,12(a5)
80006c1c:	cf1ff06f          	j	8000690c <_malloc_r+0x190>
80006c20:	01400713          	li	a4,20
80006c24:	12f77663          	bgeu	a4,a5,80006d50 <_malloc_r+0x5d4>
80006c28:	05400713          	li	a4,84
80006c2c:	1ef76a63          	bltu	a4,a5,80006e20 <_malloc_r+0x6a4>
80006c30:	00c4d793          	srli	a5,s1,0xc
80006c34:	06f78613          	addi	a2,a5,111
80006c38:	06e78513          	addi	a0,a5,110
80006c3c:	00361693          	slli	a3,a2,0x3
80006c40:	c1dff06f          	j	8000685c <_malloc_r+0xe0>
80006c44:	001e0e13          	addi	t3,t3,1
80006c48:	003e7793          	andi	a5,t3,3
80006c4c:	00850513          	addi	a0,a0,8
80006c50:	10078e63          	beqz	a5,80006d6c <_malloc_r+0x5f0>
80006c54:	00c52783          	lw	a5,12(a0)
80006c58:	d09ff06f          	j	80006960 <_malloc_r+0x1e4>
80006c5c:	00842603          	lw	a2,8(s0)
80006c60:	0014e593          	ori	a1,s1,1
80006c64:	00b42223          	sw	a1,4(s0)
80006c68:	00f62623          	sw	a5,12(a2)
80006c6c:	00c7a423          	sw	a2,8(a5)
80006c70:	009404b3          	add	s1,s0,s1
80006c74:	00992a23          	sw	s1,20(s2)
80006c78:	00992823          	sw	s1,16(s2)
80006c7c:	0016e793          	ori	a5,a3,1
80006c80:	0114a623          	sw	a7,12(s1)
80006c84:	0114a423          	sw	a7,8(s1)
80006c88:	00f4a223          	sw	a5,4(s1)
80006c8c:	00e40733          	add	a4,s0,a4
80006c90:	00098513          	mv	a0,s3
80006c94:	00d72023          	sw	a3,0(a4)
80006c98:	4c4000ef          	jal	ra,8000715c <__malloc_unlock>
80006c9c:	00840513          	addi	a0,s0,8
80006ca0:	d19ff06f          	j	800069b8 <_malloc_r+0x23c>
80006ca4:	0034d613          	srli	a2,s1,0x3
80006ca8:	00848793          	addi	a5,s1,8
80006cac:	b29ff06f          	j	800067d4 <_malloc_r+0x58>
80006cb0:	00a40733          	add	a4,s0,a0
80006cb4:	00472783          	lw	a5,4(a4)
80006cb8:	00098513          	mv	a0,s3
80006cbc:	0017e793          	ori	a5,a5,1
80006cc0:	00f72223          	sw	a5,4(a4)
80006cc4:	498000ef          	jal	ra,8000715c <__malloc_unlock>
80006cc8:	00840513          	addi	a0,s0,8
80006ccc:	cedff06f          	j	800069b8 <_malloc_r+0x23c>
80006cd0:	0014e713          	ori	a4,s1,1
80006cd4:	00e42223          	sw	a4,4(s0)
80006cd8:	009404b3          	add	s1,s0,s1
80006cdc:	00992a23          	sw	s1,20(s2)
80006ce0:	00992823          	sw	s1,16(s2)
80006ce4:	0017e713          	ori	a4,a5,1
80006ce8:	0114a623          	sw	a7,12(s1)
80006cec:	0114a423          	sw	a7,8(s1)
80006cf0:	00e4a223          	sw	a4,4(s1)
80006cf4:	00a40533          	add	a0,s0,a0
80006cf8:	00f52023          	sw	a5,0(a0)
80006cfc:	00098513          	mv	a0,s3
80006d00:	45c000ef          	jal	ra,8000715c <__malloc_unlock>
80006d04:	00840513          	addi	a0,s0,8
80006d08:	cb1ff06f          	j	800069b8 <_malloc_r+0x23c>
80006d0c:	00655793          	srli	a5,a0,0x6
80006d10:	03978693          	addi	a3,a5,57
80006d14:	03878593          	addi	a1,a5,56
80006d18:	00369693          	slli	a3,a3,0x3
80006d1c:	ec5ff06f          	j	80006be0 <_malloc_r+0x464>
80006d20:	11240e63          	beq	s0,s2,80006e3c <_malloc_r+0x6c0>
80006d24:	00892403          	lw	s0,8(s2)
80006d28:	00442a83          	lw	s5,4(s0)
80006d2c:	ffcafa93          	andi	s5,s5,-4
80006d30:	409a87b3          	sub	a5,s5,s1
80006d34:	009ae663          	bltu	s5,s1,80006d40 <_malloc_r+0x5c4>
80006d38:	00f00713          	li	a4,15
80006d3c:	e4f748e3          	blt	a4,a5,80006b8c <_malloc_r+0x410>
80006d40:	00098513          	mv	a0,s3
80006d44:	418000ef          	jal	ra,8000715c <__malloc_unlock>
80006d48:	00000513          	li	a0,0
80006d4c:	c6dff06f          	j	800069b8 <_malloc_r+0x23c>
80006d50:	05c78613          	addi	a2,a5,92
80006d54:	05b78513          	addi	a0,a5,91
80006d58:	00361693          	slli	a3,a2,0x3
80006d5c:	b01ff06f          	j	8000685c <_malloc_r+0xe0>
80006d60:	00832783          	lw	a5,8(t1)
80006d64:	fff60613          	addi	a2,a2,-1
80006d68:	1c679263          	bne	a5,t1,80006f2c <_malloc_r+0x7b0>
80006d6c:	00367793          	andi	a5,a2,3
80006d70:	ff830313          	addi	t1,t1,-8
80006d74:	fe0796e3          	bnez	a5,80006d60 <_malloc_r+0x5e4>
80006d78:	00492703          	lw	a4,4(s2)
80006d7c:	fff5c793          	not	a5,a1
80006d80:	00e7f7b3          	and	a5,a5,a4
80006d84:	00f92223          	sw	a5,4(s2)
80006d88:	00159593          	slli	a1,a1,0x1
80006d8c:	c8b7eee3          	bltu	a5,a1,80006a28 <_malloc_r+0x2ac>
80006d90:	c8058ce3          	beqz	a1,80006a28 <_malloc_r+0x2ac>
80006d94:	00f5f733          	and	a4,a1,a5
80006d98:	00071a63          	bnez	a4,80006dac <_malloc_r+0x630>
80006d9c:	00159593          	slli	a1,a1,0x1
80006da0:	00f5f733          	and	a4,a1,a5
80006da4:	004e0e13          	addi	t3,t3,4
80006da8:	fe070ae3          	beqz	a4,80006d9c <_malloc_r+0x620>
80006dac:	000e0613          	mv	a2,t3
80006db0:	b9dff06f          	j	8000694c <_malloc_r+0x1d0>
80006db4:	010a8a93          	addi	s5,s5,16 # fffff010 <heap_end.1814+0x7ffe962c>
80006db8:	cc1ff06f          	j	80006a78 <_malloc_r+0x2fc>
80006dbc:	00492503          	lw	a0,4(s2)
80006dc0:	4025d593          	srai	a1,a1,0x2
80006dc4:	00100713          	li	a4,1
80006dc8:	00b71733          	sll	a4,a4,a1
80006dcc:	00a76733          	or	a4,a4,a0
80006dd0:	00e92223          	sw	a4,4(s2)
80006dd4:	e39ff06f          	j	80006c0c <_malloc_r+0x490>
80006dd8:	015b85b3          	add	a1,s7,s5
80006ddc:	40b005b3          	neg	a1,a1
80006de0:	01459593          	slli	a1,a1,0x14
80006de4:	0145da13          	srli	s4,a1,0x14
80006de8:	000a0593          	mv	a1,s4
80006dec:	00098513          	mv	a0,s3
80006df0:	4c4010ef          	jal	ra,800082b4 <_sbrk_r>
80006df4:	fff00793          	li	a5,-1
80006df8:	d0f518e3          	bne	a0,a5,80006b08 <_malloc_r+0x38c>
80006dfc:	00000a13          	li	s4,0
80006e00:	d11ff06f          	j	80006b10 <_malloc_r+0x394>
80006e04:	05400713          	li	a4,84
80006e08:	08f76263          	bltu	a4,a5,80006e8c <_malloc_r+0x710>
80006e0c:	00c55793          	srli	a5,a0,0xc
80006e10:	06f78693          	addi	a3,a5,111
80006e14:	06e78593          	addi	a1,a5,110
80006e18:	00369693          	slli	a3,a3,0x3
80006e1c:	dc5ff06f          	j	80006be0 <_malloc_r+0x464>
80006e20:	15400713          	li	a4,340
80006e24:	08f76263          	bltu	a4,a5,80006ea8 <_malloc_r+0x72c>
80006e28:	00f4d793          	srli	a5,s1,0xf
80006e2c:	07878613          	addi	a2,a5,120
80006e30:	07778513          	addi	a0,a5,119
80006e34:	00361693          	slli	a3,a2,0x3
80006e38:	a25ff06f          	j	8000685c <_malloc_r+0xe0>
80006e3c:	80016c37          	lui	s8,0x80016
80006e40:	9a8c0c13          	addi	s8,s8,-1624 # 800159a8 <heap_end.1814+0xffffffc4>
80006e44:	000c2783          	lw	a5,0(s8)
80006e48:	00fa87b3          	add	a5,s5,a5
80006e4c:	00fc2023          	sw	a5,0(s8)
80006e50:	c61ff06f          	j	80006ab0 <_malloc_r+0x334>
80006e54:	014a1713          	slli	a4,s4,0x14
80006e58:	c4071ce3          	bnez	a4,80006ab0 <_malloc_r+0x334>
80006e5c:	00892403          	lw	s0,8(s2)
80006e60:	015b0ab3          	add	s5,s6,s5
80006e64:	001aea93          	ori	s5,s5,1
80006e68:	01542223          	sw	s5,4(s0)
80006e6c:	cfdff06f          	j	80006b68 <_malloc_r+0x3ec>
80006e70:	9b7ca023          	sw	s7,-1632(s9)
80006e74:	c55ff06f          	j	80006ac8 <_malloc_r+0x34c>
80006e78:	000b8413          	mv	s0,s7
80006e7c:	cedff06f          	j	80006b68 <_malloc_r+0x3ec>
80006e80:	00100793          	li	a5,1
80006e84:	00fba223          	sw	a5,4(s7)
80006e88:	eb9ff06f          	j	80006d40 <_malloc_r+0x5c4>
80006e8c:	15400713          	li	a4,340
80006e90:	06f76263          	bltu	a4,a5,80006ef4 <_malloc_r+0x778>
80006e94:	00f55793          	srli	a5,a0,0xf
80006e98:	07878693          	addi	a3,a5,120
80006e9c:	07778593          	addi	a1,a5,119
80006ea0:	00369693          	slli	a3,a3,0x3
80006ea4:	d3dff06f          	j	80006be0 <_malloc_r+0x464>
80006ea8:	55400713          	li	a4,1364
80006eac:	06f76263          	bltu	a4,a5,80006f10 <_malloc_r+0x794>
80006eb0:	0124d793          	srli	a5,s1,0x12
80006eb4:	07d78613          	addi	a2,a5,125
80006eb8:	07c78513          	addi	a0,a5,124
80006ebc:	00361693          	slli	a3,a2,0x3
80006ec0:	99dff06f          	j	8000685c <_malloc_r+0xe0>
80006ec4:	ff8c8c93          	addi	s9,s9,-8
80006ec8:	019a8ab3          	add	s5,s5,s9
80006ecc:	417a8ab3          	sub	s5,s5,s7
80006ed0:	00000a13          	li	s4,0
80006ed4:	c3dff06f          	j	80006b10 <_malloc_r+0x394>
80006ed8:	00840593          	addi	a1,s0,8
80006edc:	00098513          	mv	a0,s3
80006ee0:	e0cfc0ef          	jal	ra,800034ec <_free_r>
80006ee4:	00892403          	lw	s0,8(s2)
80006ee8:	000c2583          	lw	a1,0(s8)
80006eec:	00442a83          	lw	s5,4(s0)
80006ef0:	c79ff06f          	j	80006b68 <_malloc_r+0x3ec>
80006ef4:	55400713          	li	a4,1364
80006ef8:	02f76463          	bltu	a4,a5,80006f20 <_malloc_r+0x7a4>
80006efc:	01255793          	srli	a5,a0,0x12
80006f00:	07d78693          	addi	a3,a5,125
80006f04:	07c78593          	addi	a1,a5,124
80006f08:	00369693          	slli	a3,a3,0x3
80006f0c:	cd5ff06f          	j	80006be0 <_malloc_r+0x464>
80006f10:	3f800693          	li	a3,1016
80006f14:	07f00613          	li	a2,127
80006f18:	07e00513          	li	a0,126
80006f1c:	941ff06f          	j	8000685c <_malloc_r+0xe0>
80006f20:	3f800693          	li	a3,1016
80006f24:	07e00593          	li	a1,126
80006f28:	cb9ff06f          	j	80006be0 <_malloc_r+0x464>
80006f2c:	00492783          	lw	a5,4(s2)
80006f30:	e59ff06f          	j	80006d88 <_malloc_r+0x60c>

80006f34 <_mbtowc_r>:
80006f34:	800157b7          	lui	a5,0x80015
80006f38:	50c7a303          	lw	t1,1292(a5) # 8001550c <heap_end.1814+0xfffffb28>
80006f3c:	00030067          	jr	t1

80006f40 <__ascii_mbtowc>:
80006f40:	02058063          	beqz	a1,80006f60 <__ascii_mbtowc+0x20>
80006f44:	04060263          	beqz	a2,80006f88 <__ascii_mbtowc+0x48>
80006f48:	04068863          	beqz	a3,80006f98 <__ascii_mbtowc+0x58>
80006f4c:	00064783          	lbu	a5,0(a2)
80006f50:	00f5a023          	sw	a5,0(a1)
80006f54:	00064503          	lbu	a0,0(a2)
80006f58:	00a03533          	snez	a0,a0
80006f5c:	00008067          	ret
80006f60:	ff010113          	addi	sp,sp,-16
80006f64:	00c10593          	addi	a1,sp,12
80006f68:	02060463          	beqz	a2,80006f90 <__ascii_mbtowc+0x50>
80006f6c:	02068a63          	beqz	a3,80006fa0 <__ascii_mbtowc+0x60>
80006f70:	00064783          	lbu	a5,0(a2)
80006f74:	00f5a023          	sw	a5,0(a1)
80006f78:	00064503          	lbu	a0,0(a2)
80006f7c:	00a03533          	snez	a0,a0
80006f80:	01010113          	addi	sp,sp,16
80006f84:	00008067          	ret
80006f88:	00000513          	li	a0,0
80006f8c:	00008067          	ret
80006f90:	00000513          	li	a0,0
80006f94:	fedff06f          	j	80006f80 <__ascii_mbtowc+0x40>
80006f98:	ffe00513          	li	a0,-2
80006f9c:	00008067          	ret
80006fa0:	ffe00513          	li	a0,-2
80006fa4:	fddff06f          	j	80006f80 <__ascii_mbtowc+0x40>

80006fa8 <memchr>:
80006fa8:	00357793          	andi	a5,a0,3
80006fac:	0ff5f693          	andi	a3,a1,255
80006fb0:	02078a63          	beqz	a5,80006fe4 <memchr+0x3c>
80006fb4:	fff60793          	addi	a5,a2,-1
80006fb8:	02060e63          	beqz	a2,80006ff4 <memchr+0x4c>
80006fbc:	fff00613          	li	a2,-1
80006fc0:	0180006f          	j	80006fd8 <memchr+0x30>
80006fc4:	00150513          	addi	a0,a0,1
80006fc8:	00357713          	andi	a4,a0,3
80006fcc:	00070e63          	beqz	a4,80006fe8 <memchr+0x40>
80006fd0:	fff78793          	addi	a5,a5,-1
80006fd4:	02c78063          	beq	a5,a2,80006ff4 <memchr+0x4c>
80006fd8:	00054703          	lbu	a4,0(a0)
80006fdc:	fed714e3          	bne	a4,a3,80006fc4 <memchr+0x1c>
80006fe0:	00008067          	ret
80006fe4:	00060793          	mv	a5,a2
80006fe8:	00300713          	li	a4,3
80006fec:	02f76663          	bltu	a4,a5,80007018 <memchr+0x70>
80006ff0:	00079663          	bnez	a5,80006ffc <memchr+0x54>
80006ff4:	00000513          	li	a0,0
80006ff8:	00008067          	ret
80006ffc:	00f507b3          	add	a5,a0,a5
80007000:	00c0006f          	j	8000700c <memchr+0x64>
80007004:	00150513          	addi	a0,a0,1
80007008:	fea786e3          	beq	a5,a0,80006ff4 <memchr+0x4c>
8000700c:	00054703          	lbu	a4,0(a0)
80007010:	fed71ae3          	bne	a4,a3,80007004 <memchr+0x5c>
80007014:	00008067          	ret
80007018:	00010737          	lui	a4,0x10
8000701c:	00859893          	slli	a7,a1,0x8
80007020:	fff70713          	addi	a4,a4,-1 # ffff <_printf_r-0x7fff0001>
80007024:	00e8f8b3          	and	a7,a7,a4
80007028:	0ff5f593          	andi	a1,a1,255
8000702c:	00b8e5b3          	or	a1,a7,a1
80007030:	01059893          	slli	a7,a1,0x10
80007034:	00b8e8b3          	or	a7,a7,a1
80007038:	feff0837          	lui	a6,0xfeff0
8000703c:	808085b7          	lui	a1,0x80808
80007040:	eff80813          	addi	a6,a6,-257 # fefefeff <heap_end.1814+0x7efda51b>
80007044:	08058593          	addi	a1,a1,128 # 80808080 <heap_end.1814+0x7f269c>
80007048:	00300313          	li	t1,3
8000704c:	00052703          	lw	a4,0(a0)
80007050:	00e8c733          	xor	a4,a7,a4
80007054:	01070633          	add	a2,a4,a6
80007058:	fff74713          	not	a4,a4
8000705c:	00e67733          	and	a4,a2,a4
80007060:	00b77733          	and	a4,a4,a1
80007064:	f8071ce3          	bnez	a4,80006ffc <memchr+0x54>
80007068:	ffc78793          	addi	a5,a5,-4
8000706c:	00450513          	addi	a0,a0,4
80007070:	fcf36ee3          	bltu	t1,a5,8000704c <memchr+0xa4>
80007074:	f80794e3          	bnez	a5,80006ffc <memchr+0x54>
80007078:	f7dff06f          	j	80006ff4 <memchr+0x4c>

8000707c <memset>:
8000707c:	00f00313          	li	t1,15
80007080:	00050713          	mv	a4,a0
80007084:	02c37e63          	bgeu	t1,a2,800070c0 <memset+0x44>
80007088:	00f77793          	andi	a5,a4,15
8000708c:	0a079063          	bnez	a5,8000712c <memset+0xb0>
80007090:	08059263          	bnez	a1,80007114 <memset+0x98>
80007094:	ff067693          	andi	a3,a2,-16
80007098:	00f67613          	andi	a2,a2,15
8000709c:	00e686b3          	add	a3,a3,a4
800070a0:	00b72023          	sw	a1,0(a4)
800070a4:	00b72223          	sw	a1,4(a4)
800070a8:	00b72423          	sw	a1,8(a4)
800070ac:	00b72623          	sw	a1,12(a4)
800070b0:	01070713          	addi	a4,a4,16
800070b4:	fed766e3          	bltu	a4,a3,800070a0 <memset+0x24>
800070b8:	00061463          	bnez	a2,800070c0 <memset+0x44>
800070bc:	00008067          	ret
800070c0:	40c306b3          	sub	a3,t1,a2
800070c4:	00269693          	slli	a3,a3,0x2
800070c8:	00000297          	auipc	t0,0x0
800070cc:	005686b3          	add	a3,a3,t0
800070d0:	00c68067          	jr	12(a3)
800070d4:	00b70723          	sb	a1,14(a4)
800070d8:	00b706a3          	sb	a1,13(a4)
800070dc:	00b70623          	sb	a1,12(a4)
800070e0:	00b705a3          	sb	a1,11(a4)
800070e4:	00b70523          	sb	a1,10(a4)
800070e8:	00b704a3          	sb	a1,9(a4)
800070ec:	00b70423          	sb	a1,8(a4)
800070f0:	00b703a3          	sb	a1,7(a4)
800070f4:	00b70323          	sb	a1,6(a4)
800070f8:	00b702a3          	sb	a1,5(a4)
800070fc:	00b70223          	sb	a1,4(a4)
80007100:	00b701a3          	sb	a1,3(a4)
80007104:	00b70123          	sb	a1,2(a4)
80007108:	00b700a3          	sb	a1,1(a4)
8000710c:	00b70023          	sb	a1,0(a4)
80007110:	00008067          	ret
80007114:	0ff5f593          	andi	a1,a1,255
80007118:	00859693          	slli	a3,a1,0x8
8000711c:	00d5e5b3          	or	a1,a1,a3
80007120:	01059693          	slli	a3,a1,0x10
80007124:	00d5e5b3          	or	a1,a1,a3
80007128:	f6dff06f          	j	80007094 <memset+0x18>
8000712c:	00279693          	slli	a3,a5,0x2
80007130:	00000297          	auipc	t0,0x0
80007134:	005686b3          	add	a3,a3,t0
80007138:	00008293          	mv	t0,ra
8000713c:	fa0680e7          	jalr	-96(a3)
80007140:	00028093          	mv	ra,t0
80007144:	ff078793          	addi	a5,a5,-16
80007148:	40f70733          	sub	a4,a4,a5
8000714c:	00f60633          	add	a2,a2,a5
80007150:	f6c378e3          	bgeu	t1,a2,800070c0 <memset+0x44>
80007154:	f3dff06f          	j	80007090 <memset+0x14>

80007158 <__malloc_lock>:
80007158:	00008067          	ret

8000715c <__malloc_unlock>:
8000715c:	00008067          	ret

80007160 <_Balloc>:
80007160:	04c52783          	lw	a5,76(a0)
80007164:	ff010113          	addi	sp,sp,-16
80007168:	00812423          	sw	s0,8(sp)
8000716c:	00912223          	sw	s1,4(sp)
80007170:	00112623          	sw	ra,12(sp)
80007174:	01212023          	sw	s2,0(sp)
80007178:	00050413          	mv	s0,a0
8000717c:	00058493          	mv	s1,a1
80007180:	02078e63          	beqz	a5,800071bc <_Balloc+0x5c>
80007184:	00249513          	slli	a0,s1,0x2
80007188:	00a787b3          	add	a5,a5,a0
8000718c:	0007a503          	lw	a0,0(a5)
80007190:	04050663          	beqz	a0,800071dc <_Balloc+0x7c>
80007194:	00052703          	lw	a4,0(a0)
80007198:	00e7a023          	sw	a4,0(a5)
8000719c:	00052823          	sw	zero,16(a0)
800071a0:	00052623          	sw	zero,12(a0)
800071a4:	00c12083          	lw	ra,12(sp)
800071a8:	00812403          	lw	s0,8(sp)
800071ac:	00412483          	lw	s1,4(sp)
800071b0:	00012903          	lw	s2,0(sp)
800071b4:	01010113          	addi	sp,sp,16
800071b8:	00008067          	ret
800071bc:	02100613          	li	a2,33
800071c0:	00400593          	li	a1,4
800071c4:	6f0050ef          	jal	ra,8000c8b4 <_calloc_r>
800071c8:	04a42623          	sw	a0,76(s0)
800071cc:	00050793          	mv	a5,a0
800071d0:	fa051ae3          	bnez	a0,80007184 <_Balloc+0x24>
800071d4:	00000513          	li	a0,0
800071d8:	fcdff06f          	j	800071a4 <_Balloc+0x44>
800071dc:	00100913          	li	s2,1
800071e0:	00991933          	sll	s2,s2,s1
800071e4:	00590613          	addi	a2,s2,5
800071e8:	00261613          	slli	a2,a2,0x2
800071ec:	00100593          	li	a1,1
800071f0:	00040513          	mv	a0,s0
800071f4:	6c0050ef          	jal	ra,8000c8b4 <_calloc_r>
800071f8:	fc050ee3          	beqz	a0,800071d4 <_Balloc+0x74>
800071fc:	00952223          	sw	s1,4(a0)
80007200:	01252423          	sw	s2,8(a0)
80007204:	f99ff06f          	j	8000719c <_Balloc+0x3c>

80007208 <_Bfree>:
80007208:	02058063          	beqz	a1,80007228 <_Bfree+0x20>
8000720c:	0045a703          	lw	a4,4(a1)
80007210:	04c52783          	lw	a5,76(a0)
80007214:	00271713          	slli	a4,a4,0x2
80007218:	00e787b3          	add	a5,a5,a4
8000721c:	0007a703          	lw	a4,0(a5)
80007220:	00e5a023          	sw	a4,0(a1)
80007224:	00b7a023          	sw	a1,0(a5)
80007228:	00008067          	ret

8000722c <__multadd>:
8000722c:	fe010113          	addi	sp,sp,-32
80007230:	00912a23          	sw	s1,20(sp)
80007234:	0105a483          	lw	s1,16(a1)
80007238:	00010337          	lui	t1,0x10
8000723c:	00812c23          	sw	s0,24(sp)
80007240:	01212823          	sw	s2,16(sp)
80007244:	01312623          	sw	s3,12(sp)
80007248:	00112e23          	sw	ra,28(sp)
8000724c:	01412423          	sw	s4,8(sp)
80007250:	00058913          	mv	s2,a1
80007254:	00050993          	mv	s3,a0
80007258:	00068413          	mv	s0,a3
8000725c:	01458813          	addi	a6,a1,20
80007260:	00000893          	li	a7,0
80007264:	fff30313          	addi	t1,t1,-1 # ffff <_printf_r-0x7fff0001>
80007268:	00082783          	lw	a5,0(a6)
8000726c:	00480813          	addi	a6,a6,4
80007270:	00188893          	addi	a7,a7,1
80007274:	0067f6b3          	and	a3,a5,t1
80007278:	02c686b3          	mul	a3,a3,a2
8000727c:	0107d793          	srli	a5,a5,0x10
80007280:	02c787b3          	mul	a5,a5,a2
80007284:	008686b3          	add	a3,a3,s0
80007288:	0106de13          	srli	t3,a3,0x10
8000728c:	0066f733          	and	a4,a3,t1
80007290:	01c786b3          	add	a3,a5,t3
80007294:	01069793          	slli	a5,a3,0x10
80007298:	00e78733          	add	a4,a5,a4
8000729c:	fee82e23          	sw	a4,-4(a6)
800072a0:	0106d413          	srli	s0,a3,0x10
800072a4:	fc98c2e3          	blt	a7,s1,80007268 <__multadd+0x3c>
800072a8:	02040263          	beqz	s0,800072cc <__multadd+0xa0>
800072ac:	00892783          	lw	a5,8(s2)
800072b0:	04f4d063          	bge	s1,a5,800072f0 <__multadd+0xc4>
800072b4:	00448793          	addi	a5,s1,4
800072b8:	00279793          	slli	a5,a5,0x2
800072bc:	00f907b3          	add	a5,s2,a5
800072c0:	0087a223          	sw	s0,4(a5)
800072c4:	00148493          	addi	s1,s1,1
800072c8:	00992823          	sw	s1,16(s2)
800072cc:	01c12083          	lw	ra,28(sp)
800072d0:	01812403          	lw	s0,24(sp)
800072d4:	01412483          	lw	s1,20(sp)
800072d8:	00c12983          	lw	s3,12(sp)
800072dc:	00812a03          	lw	s4,8(sp)
800072e0:	00090513          	mv	a0,s2
800072e4:	01012903          	lw	s2,16(sp)
800072e8:	02010113          	addi	sp,sp,32
800072ec:	00008067          	ret
800072f0:	00492583          	lw	a1,4(s2)
800072f4:	00098513          	mv	a0,s3
800072f8:	00158593          	addi	a1,a1,1
800072fc:	e65ff0ef          	jal	ra,80007160 <_Balloc>
80007300:	00050a13          	mv	s4,a0
80007304:	04050c63          	beqz	a0,8000735c <__multadd+0x130>
80007308:	01092603          	lw	a2,16(s2)
8000730c:	00c90593          	addi	a1,s2,12
80007310:	00c50513          	addi	a0,a0,12
80007314:	00260613          	addi	a2,a2,2
80007318:	00261613          	slli	a2,a2,0x2
8000731c:	004060ef          	jal	ra,8000d320 <memcpy>
80007320:	00492703          	lw	a4,4(s2)
80007324:	04c9a783          	lw	a5,76(s3)
80007328:	00271713          	slli	a4,a4,0x2
8000732c:	00e787b3          	add	a5,a5,a4
80007330:	0007a703          	lw	a4,0(a5)
80007334:	00e92023          	sw	a4,0(s2)
80007338:	0127a023          	sw	s2,0(a5)
8000733c:	00448793          	addi	a5,s1,4
80007340:	000a0913          	mv	s2,s4
80007344:	00279793          	slli	a5,a5,0x2
80007348:	00f907b3          	add	a5,s2,a5
8000734c:	0087a223          	sw	s0,4(a5)
80007350:	00148493          	addi	s1,s1,1
80007354:	00992823          	sw	s1,16(s2)
80007358:	f75ff06f          	j	800072cc <__multadd+0xa0>
8000735c:	800146b7          	lui	a3,0x80014
80007360:	80014537          	lui	a0,0x80014
80007364:	ea068693          	addi	a3,a3,-352 # 80013ea0 <heap_end.1814+0xffffe4bc>
80007368:	00000613          	li	a2,0
8000736c:	0b500593          	li	a1,181
80007370:	eb450513          	addi	a0,a0,-332 # 80013eb4 <heap_end.1814+0xffffe4d0>
80007374:	4d4050ef          	jal	ra,8000c848 <__assert_func>

80007378 <__s2b>:
80007378:	fe010113          	addi	sp,sp,-32
8000737c:	00812c23          	sw	s0,24(sp)
80007380:	00912a23          	sw	s1,20(sp)
80007384:	01212823          	sw	s2,16(sp)
80007388:	01312623          	sw	s3,12(sp)
8000738c:	01412423          	sw	s4,8(sp)
80007390:	00868813          	addi	a6,a3,8
80007394:	00900793          	li	a5,9
80007398:	00112e23          	sw	ra,28(sp)
8000739c:	01512223          	sw	s5,4(sp)
800073a0:	02f84833          	div	a6,a6,a5
800073a4:	00068993          	mv	s3,a3
800073a8:	00050913          	mv	s2,a0
800073ac:	00058413          	mv	s0,a1
800073b0:	00060a13          	mv	s4,a2
800073b4:	00070493          	mv	s1,a4
800073b8:	0cd7d863          	bge	a5,a3,80007488 <__s2b+0x110>
800073bc:	00100793          	li	a5,1
800073c0:	00000593          	li	a1,0
800073c4:	00179793          	slli	a5,a5,0x1
800073c8:	00158593          	addi	a1,a1,1
800073cc:	ff07cce3          	blt	a5,a6,800073c4 <__s2b+0x4c>
800073d0:	00090513          	mv	a0,s2
800073d4:	d8dff0ef          	jal	ra,80007160 <_Balloc>
800073d8:	00050593          	mv	a1,a0
800073dc:	0a050a63          	beqz	a0,80007490 <__s2b+0x118>
800073e0:	00100793          	li	a5,1
800073e4:	00f52823          	sw	a5,16(a0)
800073e8:	00952a23          	sw	s1,20(a0)
800073ec:	00900793          	li	a5,9
800073f0:	0947d663          	bge	a5,s4,8000747c <__s2b+0x104>
800073f4:	00940a93          	addi	s5,s0,9
800073f8:	000a8493          	mv	s1,s5
800073fc:	01440433          	add	s0,s0,s4
80007400:	0004c683          	lbu	a3,0(s1)
80007404:	00a00613          	li	a2,10
80007408:	00090513          	mv	a0,s2
8000740c:	fd068693          	addi	a3,a3,-48
80007410:	e1dff0ef          	jal	ra,8000722c <__multadd>
80007414:	00148493          	addi	s1,s1,1
80007418:	00050593          	mv	a1,a0
8000741c:	fe8492e3          	bne	s1,s0,80007400 <__s2b+0x88>
80007420:	ff8a0413          	addi	s0,s4,-8
80007424:	008a8433          	add	s0,s5,s0
80007428:	033a5663          	bge	s4,s3,80007454 <__s2b+0xdc>
8000742c:	414989b3          	sub	s3,s3,s4
80007430:	013409b3          	add	s3,s0,s3
80007434:	00044683          	lbu	a3,0(s0)
80007438:	00a00613          	li	a2,10
8000743c:	00090513          	mv	a0,s2
80007440:	fd068693          	addi	a3,a3,-48
80007444:	de9ff0ef          	jal	ra,8000722c <__multadd>
80007448:	00140413          	addi	s0,s0,1
8000744c:	00050593          	mv	a1,a0
80007450:	fe8992e3          	bne	s3,s0,80007434 <__s2b+0xbc>
80007454:	01c12083          	lw	ra,28(sp)
80007458:	01812403          	lw	s0,24(sp)
8000745c:	01412483          	lw	s1,20(sp)
80007460:	01012903          	lw	s2,16(sp)
80007464:	00c12983          	lw	s3,12(sp)
80007468:	00812a03          	lw	s4,8(sp)
8000746c:	00412a83          	lw	s5,4(sp)
80007470:	00058513          	mv	a0,a1
80007474:	02010113          	addi	sp,sp,32
80007478:	00008067          	ret
8000747c:	00a40413          	addi	s0,s0,10
80007480:	00900a13          	li	s4,9
80007484:	fa5ff06f          	j	80007428 <__s2b+0xb0>
80007488:	00000593          	li	a1,0
8000748c:	f45ff06f          	j	800073d0 <__s2b+0x58>
80007490:	800146b7          	lui	a3,0x80014
80007494:	80014537          	lui	a0,0x80014
80007498:	ea068693          	addi	a3,a3,-352 # 80013ea0 <heap_end.1814+0xffffe4bc>
8000749c:	00000613          	li	a2,0
800074a0:	0ce00593          	li	a1,206
800074a4:	eb450513          	addi	a0,a0,-332 # 80013eb4 <heap_end.1814+0xffffe4d0>
800074a8:	3a0050ef          	jal	ra,8000c848 <__assert_func>

800074ac <__hi0bits>:
800074ac:	ffff0737          	lui	a4,0xffff0
800074b0:	00e57733          	and	a4,a0,a4
800074b4:	00050793          	mv	a5,a0
800074b8:	00000513          	li	a0,0
800074bc:	00071663          	bnez	a4,800074c8 <__hi0bits+0x1c>
800074c0:	01079793          	slli	a5,a5,0x10
800074c4:	01000513          	li	a0,16
800074c8:	ff000737          	lui	a4,0xff000
800074cc:	00e7f733          	and	a4,a5,a4
800074d0:	00071663          	bnez	a4,800074dc <__hi0bits+0x30>
800074d4:	00850513          	addi	a0,a0,8
800074d8:	00879793          	slli	a5,a5,0x8
800074dc:	f0000737          	lui	a4,0xf0000
800074e0:	00e7f733          	and	a4,a5,a4
800074e4:	00071663          	bnez	a4,800074f0 <__hi0bits+0x44>
800074e8:	00450513          	addi	a0,a0,4
800074ec:	00479793          	slli	a5,a5,0x4
800074f0:	c0000737          	lui	a4,0xc0000
800074f4:	00e7f733          	and	a4,a5,a4
800074f8:	00071663          	bnez	a4,80007504 <__hi0bits+0x58>
800074fc:	00250513          	addi	a0,a0,2
80007500:	00279793          	slli	a5,a5,0x2
80007504:	0007c863          	bltz	a5,80007514 <__hi0bits+0x68>
80007508:	00179713          	slli	a4,a5,0x1
8000750c:	00150513          	addi	a0,a0,1
80007510:	00075463          	bgez	a4,80007518 <__hi0bits+0x6c>
80007514:	00008067          	ret
80007518:	02000513          	li	a0,32
8000751c:	00008067          	ret

80007520 <__lo0bits>:
80007520:	00052783          	lw	a5,0(a0)
80007524:	00050713          	mv	a4,a0
80007528:	0077f693          	andi	a3,a5,7
8000752c:	02068463          	beqz	a3,80007554 <__lo0bits+0x34>
80007530:	0017f693          	andi	a3,a5,1
80007534:	00000513          	li	a0,0
80007538:	06069e63          	bnez	a3,800075b4 <__lo0bits+0x94>
8000753c:	0027f693          	andi	a3,a5,2
80007540:	08068063          	beqz	a3,800075c0 <__lo0bits+0xa0>
80007544:	0017d793          	srli	a5,a5,0x1
80007548:	00f72023          	sw	a5,0(a4) # c0000000 <heap_end.1814+0x3ffea61c>
8000754c:	00100513          	li	a0,1
80007550:	00008067          	ret
80007554:	01079693          	slli	a3,a5,0x10
80007558:	0106d693          	srli	a3,a3,0x10
8000755c:	00000513          	li	a0,0
80007560:	00069663          	bnez	a3,8000756c <__lo0bits+0x4c>
80007564:	0107d793          	srli	a5,a5,0x10
80007568:	01000513          	li	a0,16
8000756c:	0ff7f693          	andi	a3,a5,255
80007570:	00069663          	bnez	a3,8000757c <__lo0bits+0x5c>
80007574:	00850513          	addi	a0,a0,8
80007578:	0087d793          	srli	a5,a5,0x8
8000757c:	00f7f693          	andi	a3,a5,15
80007580:	00069663          	bnez	a3,8000758c <__lo0bits+0x6c>
80007584:	00450513          	addi	a0,a0,4
80007588:	0047d793          	srli	a5,a5,0x4
8000758c:	0037f693          	andi	a3,a5,3
80007590:	00069663          	bnez	a3,8000759c <__lo0bits+0x7c>
80007594:	00250513          	addi	a0,a0,2
80007598:	0027d793          	srli	a5,a5,0x2
8000759c:	0017f693          	andi	a3,a5,1
800075a0:	00069c63          	bnez	a3,800075b8 <__lo0bits+0x98>
800075a4:	0017d793          	srli	a5,a5,0x1
800075a8:	00150513          	addi	a0,a0,1
800075ac:	00079663          	bnez	a5,800075b8 <__lo0bits+0x98>
800075b0:	02000513          	li	a0,32
800075b4:	00008067          	ret
800075b8:	00f72023          	sw	a5,0(a4)
800075bc:	00008067          	ret
800075c0:	0027d793          	srli	a5,a5,0x2
800075c4:	00f72023          	sw	a5,0(a4)
800075c8:	00200513          	li	a0,2
800075cc:	00008067          	ret

800075d0 <__i2b>:
800075d0:	ff010113          	addi	sp,sp,-16
800075d4:	00812423          	sw	s0,8(sp)
800075d8:	00058413          	mv	s0,a1
800075dc:	00100593          	li	a1,1
800075e0:	00112623          	sw	ra,12(sp)
800075e4:	b7dff0ef          	jal	ra,80007160 <_Balloc>
800075e8:	02050063          	beqz	a0,80007608 <__i2b+0x38>
800075ec:	00c12083          	lw	ra,12(sp)
800075f0:	00852a23          	sw	s0,20(a0)
800075f4:	00812403          	lw	s0,8(sp)
800075f8:	00100713          	li	a4,1
800075fc:	00e52823          	sw	a4,16(a0)
80007600:	01010113          	addi	sp,sp,16
80007604:	00008067          	ret
80007608:	800146b7          	lui	a3,0x80014
8000760c:	80014537          	lui	a0,0x80014
80007610:	ea068693          	addi	a3,a3,-352 # 80013ea0 <heap_end.1814+0xffffe4bc>
80007614:	00000613          	li	a2,0
80007618:	14000593          	li	a1,320
8000761c:	eb450513          	addi	a0,a0,-332 # 80013eb4 <heap_end.1814+0xffffe4d0>
80007620:	228050ef          	jal	ra,8000c848 <__assert_func>

80007624 <__multiply>:
80007624:	fe010113          	addi	sp,sp,-32
80007628:	01212823          	sw	s2,16(sp)
8000762c:	01312623          	sw	s3,12(sp)
80007630:	0105a903          	lw	s2,16(a1)
80007634:	01062983          	lw	s3,16(a2)
80007638:	00912a23          	sw	s1,20(sp)
8000763c:	01412423          	sw	s4,8(sp)
80007640:	00112e23          	sw	ra,28(sp)
80007644:	00812c23          	sw	s0,24(sp)
80007648:	00058a13          	mv	s4,a1
8000764c:	00060493          	mv	s1,a2
80007650:	01394c63          	blt	s2,s3,80007668 <__multiply+0x44>
80007654:	00098713          	mv	a4,s3
80007658:	00058493          	mv	s1,a1
8000765c:	00090993          	mv	s3,s2
80007660:	00060a13          	mv	s4,a2
80007664:	00070913          	mv	s2,a4
80007668:	0084a783          	lw	a5,8(s1)
8000766c:	0044a583          	lw	a1,4(s1)
80007670:	01298433          	add	s0,s3,s2
80007674:	0087a7b3          	slt	a5,a5,s0
80007678:	00f585b3          	add	a1,a1,a5
8000767c:	ae5ff0ef          	jal	ra,80007160 <_Balloc>
80007680:	1a050c63          	beqz	a0,80007838 <__multiply+0x214>
80007684:	01450313          	addi	t1,a0,20
80007688:	00241893          	slli	a7,s0,0x2
8000768c:	011308b3          	add	a7,t1,a7
80007690:	00030793          	mv	a5,t1
80007694:	01137863          	bgeu	t1,a7,800076a4 <__multiply+0x80>
80007698:	0007a023          	sw	zero,0(a5)
8000769c:	00478793          	addi	a5,a5,4
800076a0:	ff17ece3          	bltu	a5,a7,80007698 <__multiply+0x74>
800076a4:	014a0813          	addi	a6,s4,20
800076a8:	00291e13          	slli	t3,s2,0x2
800076ac:	01448e93          	addi	t4,s1,20
800076b0:	00299593          	slli	a1,s3,0x2
800076b4:	01c80e33          	add	t3,a6,t3
800076b8:	00be85b3          	add	a1,t4,a1
800076bc:	0bc87c63          	bgeu	a6,t3,80007774 <__multiply+0x150>
800076c0:	01548793          	addi	a5,s1,21
800076c4:	00400f13          	li	t5,4
800076c8:	14f5fe63          	bgeu	a1,a5,80007824 <__multiply+0x200>
800076cc:	00010637          	lui	a2,0x10
800076d0:	fff60613          	addi	a2,a2,-1 # ffff <_printf_r-0x7fff0001>
800076d4:	0100006f          	j	800076e4 <__multiply+0xc0>
800076d8:	00480813          	addi	a6,a6,4
800076dc:	00430313          	addi	t1,t1,4
800076e0:	09c87a63          	bgeu	a6,t3,80007774 <__multiply+0x150>
800076e4:	00082f83          	lw	t6,0(a6)
800076e8:	00cff4b3          	and	s1,t6,a2
800076ec:	0c049463          	bnez	s1,800077b4 <__multiply+0x190>
800076f0:	010fdf93          	srli	t6,t6,0x10
800076f4:	fe0f82e3          	beqz	t6,800076d8 <__multiply+0xb4>
800076f8:	00032703          	lw	a4,0(t1)
800076fc:	00030293          	mv	t0,t1
80007700:	000e8693          	mv	a3,t4
80007704:	00070493          	mv	s1,a4
80007708:	00000393          	li	t2,0
8000770c:	0006a783          	lw	a5,0(a3)
80007710:	0104d993          	srli	s3,s1,0x10
80007714:	00c77733          	and	a4,a4,a2
80007718:	00c7f7b3          	and	a5,a5,a2
8000771c:	03f787b3          	mul	a5,a5,t6
80007720:	0042a483          	lw	s1,4(t0) # 80007134 <memset+0xb8>
80007724:	00428293          	addi	t0,t0,4
80007728:	00468693          	addi	a3,a3,4
8000772c:	00c4f933          	and	s2,s1,a2
80007730:	013787b3          	add	a5,a5,s3
80007734:	007787b3          	add	a5,a5,t2
80007738:	01079393          	slli	t2,a5,0x10
8000773c:	00e3e733          	or	a4,t2,a4
80007740:	fee2ae23          	sw	a4,-4(t0)
80007744:	ffe6d703          	lhu	a4,-2(a3)
80007748:	0107d793          	srli	a5,a5,0x10
8000774c:	03f70733          	mul	a4,a4,t6
80007750:	01270733          	add	a4,a4,s2
80007754:	00f70733          	add	a4,a4,a5
80007758:	01075393          	srli	t2,a4,0x10
8000775c:	fab6e8e3          	bltu	a3,a1,8000770c <__multiply+0xe8>
80007760:	01e307b3          	add	a5,t1,t5
80007764:	00e7a023          	sw	a4,0(a5)
80007768:	00480813          	addi	a6,a6,4
8000776c:	00430313          	addi	t1,t1,4
80007770:	f7c86ae3          	bltu	a6,t3,800076e4 <__multiply+0xc0>
80007774:	00804863          	bgtz	s0,80007784 <__multiply+0x160>
80007778:	0180006f          	j	80007790 <__multiply+0x16c>
8000777c:	fff40413          	addi	s0,s0,-1
80007780:	00040863          	beqz	s0,80007790 <__multiply+0x16c>
80007784:	ffc8a783          	lw	a5,-4(a7)
80007788:	ffc88893          	addi	a7,a7,-4
8000778c:	fe0788e3          	beqz	a5,8000777c <__multiply+0x158>
80007790:	01c12083          	lw	ra,28(sp)
80007794:	00852823          	sw	s0,16(a0)
80007798:	01812403          	lw	s0,24(sp)
8000779c:	01412483          	lw	s1,20(sp)
800077a0:	01012903          	lw	s2,16(sp)
800077a4:	00c12983          	lw	s3,12(sp)
800077a8:	00812a03          	lw	s4,8(sp)
800077ac:	02010113          	addi	sp,sp,32
800077b0:	00008067          	ret
800077b4:	00030393          	mv	t2,t1
800077b8:	000e8293          	mv	t0,t4
800077bc:	00000913          	li	s2,0
800077c0:	0002a703          	lw	a4,0(t0)
800077c4:	0003af83          	lw	t6,0(t2)
800077c8:	00438393          	addi	t2,t2,4
800077cc:	00c776b3          	and	a3,a4,a2
800077d0:	029686b3          	mul	a3,a3,s1
800077d4:	01075793          	srli	a5,a4,0x10
800077d8:	00cff733          	and	a4,t6,a2
800077dc:	010fdf93          	srli	t6,t6,0x10
800077e0:	00428293          	addi	t0,t0,4
800077e4:	029787b3          	mul	a5,a5,s1
800077e8:	00e686b3          	add	a3,a3,a4
800077ec:	012686b3          	add	a3,a3,s2
800077f0:	0106d713          	srli	a4,a3,0x10
800077f4:	00c6f6b3          	and	a3,a3,a2
800077f8:	01f787b3          	add	a5,a5,t6
800077fc:	00e787b3          	add	a5,a5,a4
80007800:	01079713          	slli	a4,a5,0x10
80007804:	00d766b3          	or	a3,a4,a3
80007808:	fed3ae23          	sw	a3,-4(t2)
8000780c:	0107d913          	srli	s2,a5,0x10
80007810:	fab2e8e3          	bltu	t0,a1,800077c0 <__multiply+0x19c>
80007814:	01e307b3          	add	a5,t1,t5
80007818:	0127a023          	sw	s2,0(a5)
8000781c:	00082f83          	lw	t6,0(a6)
80007820:	ed1ff06f          	j	800076f0 <__multiply+0xcc>
80007824:	40958f33          	sub	t5,a1,s1
80007828:	febf0f13          	addi	t5,t5,-21
8000782c:	ffcf7f13          	andi	t5,t5,-4
80007830:	004f0f13          	addi	t5,t5,4
80007834:	e99ff06f          	j	800076cc <__multiply+0xa8>
80007838:	800146b7          	lui	a3,0x80014
8000783c:	80014537          	lui	a0,0x80014
80007840:	ea068693          	addi	a3,a3,-352 # 80013ea0 <heap_end.1814+0xffffe4bc>
80007844:	00000613          	li	a2,0
80007848:	15d00593          	li	a1,349
8000784c:	eb450513          	addi	a0,a0,-332 # 80013eb4 <heap_end.1814+0xffffe4d0>
80007850:	7f9040ef          	jal	ra,8000c848 <__assert_func>

80007854 <__pow5mult>:
80007854:	fe010113          	addi	sp,sp,-32
80007858:	00812c23          	sw	s0,24(sp)
8000785c:	01312623          	sw	s3,12(sp)
80007860:	01412423          	sw	s4,8(sp)
80007864:	00112e23          	sw	ra,28(sp)
80007868:	00912a23          	sw	s1,20(sp)
8000786c:	01212823          	sw	s2,16(sp)
80007870:	00367793          	andi	a5,a2,3
80007874:	00060413          	mv	s0,a2
80007878:	00050993          	mv	s3,a0
8000787c:	00058a13          	mv	s4,a1
80007880:	0c079463          	bnez	a5,80007948 <__pow5mult+0xf4>
80007884:	40245413          	srai	s0,s0,0x2
80007888:	000a0913          	mv	s2,s4
8000788c:	06040863          	beqz	s0,800078fc <__pow5mult+0xa8>
80007890:	0489a483          	lw	s1,72(s3)
80007894:	0c048e63          	beqz	s1,80007970 <__pow5mult+0x11c>
80007898:	00147793          	andi	a5,s0,1
8000789c:	000a0913          	mv	s2,s4
800078a0:	02079063          	bnez	a5,800078c0 <__pow5mult+0x6c>
800078a4:	40145413          	srai	s0,s0,0x1
800078a8:	04040a63          	beqz	s0,800078fc <__pow5mult+0xa8>
800078ac:	0004a503          	lw	a0,0(s1)
800078b0:	06050863          	beqz	a0,80007920 <__pow5mult+0xcc>
800078b4:	00050493          	mv	s1,a0
800078b8:	00147793          	andi	a5,s0,1
800078bc:	fe0784e3          	beqz	a5,800078a4 <__pow5mult+0x50>
800078c0:	00048613          	mv	a2,s1
800078c4:	00090593          	mv	a1,s2
800078c8:	00098513          	mv	a0,s3
800078cc:	d59ff0ef          	jal	ra,80007624 <__multiply>
800078d0:	06090863          	beqz	s2,80007940 <__pow5mult+0xec>
800078d4:	00492703          	lw	a4,4(s2)
800078d8:	04c9a783          	lw	a5,76(s3)
800078dc:	40145413          	srai	s0,s0,0x1
800078e0:	00271713          	slli	a4,a4,0x2
800078e4:	00e787b3          	add	a5,a5,a4
800078e8:	0007a703          	lw	a4,0(a5)
800078ec:	00e92023          	sw	a4,0(s2)
800078f0:	0127a023          	sw	s2,0(a5)
800078f4:	00050913          	mv	s2,a0
800078f8:	fa041ae3          	bnez	s0,800078ac <__pow5mult+0x58>
800078fc:	01c12083          	lw	ra,28(sp)
80007900:	01812403          	lw	s0,24(sp)
80007904:	01412483          	lw	s1,20(sp)
80007908:	00c12983          	lw	s3,12(sp)
8000790c:	00812a03          	lw	s4,8(sp)
80007910:	00090513          	mv	a0,s2
80007914:	01012903          	lw	s2,16(sp)
80007918:	02010113          	addi	sp,sp,32
8000791c:	00008067          	ret
80007920:	00048613          	mv	a2,s1
80007924:	00048593          	mv	a1,s1
80007928:	00098513          	mv	a0,s3
8000792c:	cf9ff0ef          	jal	ra,80007624 <__multiply>
80007930:	00a4a023          	sw	a0,0(s1)
80007934:	00052023          	sw	zero,0(a0)
80007938:	00050493          	mv	s1,a0
8000793c:	f7dff06f          	j	800078b8 <__pow5mult+0x64>
80007940:	00050913          	mv	s2,a0
80007944:	f61ff06f          	j	800078a4 <__pow5mult+0x50>
80007948:	fff78793          	addi	a5,a5,-1
8000794c:	80014737          	lui	a4,0x80014
80007950:	32870713          	addi	a4,a4,808 # 80014328 <heap_end.1814+0xffffe944>
80007954:	00279793          	slli	a5,a5,0x2
80007958:	00f707b3          	add	a5,a4,a5
8000795c:	0007a603          	lw	a2,0(a5)
80007960:	00000693          	li	a3,0
80007964:	8c9ff0ef          	jal	ra,8000722c <__multadd>
80007968:	00050a13          	mv	s4,a0
8000796c:	f19ff06f          	j	80007884 <__pow5mult+0x30>
80007970:	27100593          	li	a1,625
80007974:	00098513          	mv	a0,s3
80007978:	c59ff0ef          	jal	ra,800075d0 <__i2b>
8000797c:	04a9a423          	sw	a0,72(s3)
80007980:	00050493          	mv	s1,a0
80007984:	00052023          	sw	zero,0(a0)
80007988:	f11ff06f          	j	80007898 <__pow5mult+0x44>

8000798c <__lshift>:
8000798c:	fe010113          	addi	sp,sp,-32
80007990:	01412423          	sw	s4,8(sp)
80007994:	0105aa03          	lw	s4,16(a1)
80007998:	0085a783          	lw	a5,8(a1)
8000799c:	01312623          	sw	s3,12(sp)
800079a0:	40565993          	srai	s3,a2,0x5
800079a4:	01498a33          	add	s4,s3,s4
800079a8:	00812c23          	sw	s0,24(sp)
800079ac:	00912a23          	sw	s1,20(sp)
800079b0:	01212823          	sw	s2,16(sp)
800079b4:	01512223          	sw	s5,4(sp)
800079b8:	00112e23          	sw	ra,28(sp)
800079bc:	001a0913          	addi	s2,s4,1
800079c0:	00058493          	mv	s1,a1
800079c4:	00060413          	mv	s0,a2
800079c8:	0045a583          	lw	a1,4(a1)
800079cc:	00050a93          	mv	s5,a0
800079d0:	0127d863          	bge	a5,s2,800079e0 <__lshift+0x54>
800079d4:	00179793          	slli	a5,a5,0x1
800079d8:	00158593          	addi	a1,a1,1
800079dc:	ff27cce3          	blt	a5,s2,800079d4 <__lshift+0x48>
800079e0:	000a8513          	mv	a0,s5
800079e4:	f7cff0ef          	jal	ra,80007160 <_Balloc>
800079e8:	10050c63          	beqz	a0,80007b00 <__lshift+0x174>
800079ec:	01450813          	addi	a6,a0,20
800079f0:	03305463          	blez	s3,80007a18 <__lshift+0x8c>
800079f4:	00598993          	addi	s3,s3,5
800079f8:	00299993          	slli	s3,s3,0x2
800079fc:	01350733          	add	a4,a0,s3
80007a00:	00080793          	mv	a5,a6
80007a04:	00478793          	addi	a5,a5,4
80007a08:	fe07ae23          	sw	zero,-4(a5)
80007a0c:	fee79ce3          	bne	a5,a4,80007a04 <__lshift+0x78>
80007a10:	fec98993          	addi	s3,s3,-20
80007a14:	01380833          	add	a6,a6,s3
80007a18:	0104a703          	lw	a4,16(s1)
80007a1c:	01448793          	addi	a5,s1,20
80007a20:	01f47313          	andi	t1,s0,31
80007a24:	00271613          	slli	a2,a4,0x2
80007a28:	00c78633          	add	a2,a5,a2
80007a2c:	0a030463          	beqz	t1,80007ad4 <__lshift+0x148>
80007a30:	02000593          	li	a1,32
80007a34:	406585b3          	sub	a1,a1,t1
80007a38:	00080893          	mv	a7,a6
80007a3c:	00000693          	li	a3,0
80007a40:	0007a703          	lw	a4,0(a5)
80007a44:	00488893          	addi	a7,a7,4
80007a48:	00478793          	addi	a5,a5,4
80007a4c:	00671733          	sll	a4,a4,t1
80007a50:	00d76733          	or	a4,a4,a3
80007a54:	fee8ae23          	sw	a4,-4(a7)
80007a58:	ffc7a703          	lw	a4,-4(a5)
80007a5c:	00b756b3          	srl	a3,a4,a1
80007a60:	fec7e0e3          	bltu	a5,a2,80007a40 <__lshift+0xb4>
80007a64:	01548713          	addi	a4,s1,21
80007a68:	00400793          	li	a5,4
80007a6c:	00e66a63          	bltu	a2,a4,80007a80 <__lshift+0xf4>
80007a70:	409607b3          	sub	a5,a2,s1
80007a74:	feb78793          	addi	a5,a5,-21
80007a78:	ffc7f793          	andi	a5,a5,-4
80007a7c:	00478793          	addi	a5,a5,4
80007a80:	00f80833          	add	a6,a6,a5
80007a84:	00d82023          	sw	a3,0(a6)
80007a88:	00068463          	beqz	a3,80007a90 <__lshift+0x104>
80007a8c:	00090a13          	mv	s4,s2
80007a90:	0044a703          	lw	a4,4(s1)
80007a94:	04caa783          	lw	a5,76(s5)
80007a98:	01c12083          	lw	ra,28(sp)
80007a9c:	00271713          	slli	a4,a4,0x2
80007aa0:	00e787b3          	add	a5,a5,a4
80007aa4:	0007a703          	lw	a4,0(a5)
80007aa8:	01452823          	sw	s4,16(a0)
80007aac:	01812403          	lw	s0,24(sp)
80007ab0:	00e4a023          	sw	a4,0(s1)
80007ab4:	0097a023          	sw	s1,0(a5)
80007ab8:	01012903          	lw	s2,16(sp)
80007abc:	01412483          	lw	s1,20(sp)
80007ac0:	00c12983          	lw	s3,12(sp)
80007ac4:	00812a03          	lw	s4,8(sp)
80007ac8:	00412a83          	lw	s5,4(sp)
80007acc:	02010113          	addi	sp,sp,32
80007ad0:	00008067          	ret
80007ad4:	0007a703          	lw	a4,0(a5)
80007ad8:	00478793          	addi	a5,a5,4
80007adc:	00480813          	addi	a6,a6,4
80007ae0:	fee82e23          	sw	a4,-4(a6)
80007ae4:	fac7f6e3          	bgeu	a5,a2,80007a90 <__lshift+0x104>
80007ae8:	0007a703          	lw	a4,0(a5)
80007aec:	00478793          	addi	a5,a5,4
80007af0:	00480813          	addi	a6,a6,4
80007af4:	fee82e23          	sw	a4,-4(a6)
80007af8:	fcc7eee3          	bltu	a5,a2,80007ad4 <__lshift+0x148>
80007afc:	f95ff06f          	j	80007a90 <__lshift+0x104>
80007b00:	800146b7          	lui	a3,0x80014
80007b04:	80014537          	lui	a0,0x80014
80007b08:	ea068693          	addi	a3,a3,-352 # 80013ea0 <heap_end.1814+0xffffe4bc>
80007b0c:	00000613          	li	a2,0
80007b10:	1d900593          	li	a1,473
80007b14:	eb450513          	addi	a0,a0,-332 # 80013eb4 <heap_end.1814+0xffffe4d0>
80007b18:	531040ef          	jal	ra,8000c848 <__assert_func>

80007b1c <__mcmp>:
80007b1c:	01052703          	lw	a4,16(a0)
80007b20:	0105a783          	lw	a5,16(a1)
80007b24:	00050813          	mv	a6,a0
80007b28:	40f70533          	sub	a0,a4,a5
80007b2c:	04f71463          	bne	a4,a5,80007b74 <__mcmp+0x58>
80007b30:	00279793          	slli	a5,a5,0x2
80007b34:	01480813          	addi	a6,a6,20
80007b38:	01458593          	addi	a1,a1,20
80007b3c:	00f80733          	add	a4,a6,a5
80007b40:	00f587b3          	add	a5,a1,a5
80007b44:	0080006f          	j	80007b4c <__mcmp+0x30>
80007b48:	02e87663          	bgeu	a6,a4,80007b74 <__mcmp+0x58>
80007b4c:	ffc72683          	lw	a3,-4(a4)
80007b50:	ffc7a603          	lw	a2,-4(a5)
80007b54:	ffc70713          	addi	a4,a4,-4
80007b58:	ffc78793          	addi	a5,a5,-4
80007b5c:	fec686e3          	beq	a3,a2,80007b48 <__mcmp+0x2c>
80007b60:	00c6b6b3          	sltu	a3,a3,a2
80007b64:	40d00533          	neg	a0,a3
80007b68:	ffe57513          	andi	a0,a0,-2
80007b6c:	00150513          	addi	a0,a0,1
80007b70:	00008067          	ret
80007b74:	00008067          	ret

80007b78 <__mdiff>:
80007b78:	0105a783          	lw	a5,16(a1)
80007b7c:	01062703          	lw	a4,16(a2)
80007b80:	ff010113          	addi	sp,sp,-16
80007b84:	00812423          	sw	s0,8(sp)
80007b88:	00912223          	sw	s1,4(sp)
80007b8c:	01212023          	sw	s2,0(sp)
80007b90:	00112623          	sw	ra,12(sp)
80007b94:	00058493          	mv	s1,a1
80007b98:	00060413          	mv	s0,a2
80007b9c:	40e78933          	sub	s2,a5,a4
80007ba0:	1ae79463          	bne	a5,a4,80007d48 <__mdiff+0x1d0>
80007ba4:	00271693          	slli	a3,a4,0x2
80007ba8:	01458593          	addi	a1,a1,20
80007bac:	01460713          	addi	a4,a2,20
80007bb0:	00d587b3          	add	a5,a1,a3
80007bb4:	00d70733          	add	a4,a4,a3
80007bb8:	0080006f          	j	80007bc0 <__mdiff+0x48>
80007bbc:	18f5fc63          	bgeu	a1,a5,80007d54 <__mdiff+0x1dc>
80007bc0:	ffc7a603          	lw	a2,-4(a5)
80007bc4:	ffc72683          	lw	a3,-4(a4)
80007bc8:	ffc78793          	addi	a5,a5,-4
80007bcc:	ffc70713          	addi	a4,a4,-4
80007bd0:	fed606e3          	beq	a2,a3,80007bbc <__mdiff+0x44>
80007bd4:	16d66063          	bltu	a2,a3,80007d34 <__mdiff+0x1bc>
80007bd8:	0044a583          	lw	a1,4(s1)
80007bdc:	d84ff0ef          	jal	ra,80007160 <_Balloc>
80007be0:	1a050263          	beqz	a0,80007d84 <__mdiff+0x20c>
80007be4:	0104ae03          	lw	t3,16(s1)
80007be8:	01042283          	lw	t0,16(s0)
80007bec:	01448f93          	addi	t6,s1,20
80007bf0:	002e1e93          	slli	t4,t3,0x2
80007bf4:	01440813          	addi	a6,s0,20
80007bf8:	00229293          	slli	t0,t0,0x2
80007bfc:	01450393          	addi	t2,a0,20
80007c00:	000108b7          	lui	a7,0x10
80007c04:	01252623          	sw	s2,12(a0)
80007c08:	01df8eb3          	add	t4,t6,t4
80007c0c:	005802b3          	add	t0,a6,t0
80007c10:	00038f13          	mv	t5,t2
80007c14:	000f8313          	mv	t1,t6
80007c18:	00000793          	li	a5,0
80007c1c:	fff88893          	addi	a7,a7,-1 # ffff <_printf_r-0x7fff0001>
80007c20:	00032703          	lw	a4,0(t1)
80007c24:	00082583          	lw	a1,0(a6)
80007c28:	004f0f13          	addi	t5,t5,4
80007c2c:	011776b3          	and	a3,a4,a7
80007c30:	00f686b3          	add	a3,a3,a5
80007c34:	0115f7b3          	and	a5,a1,a7
80007c38:	40f686b3          	sub	a3,a3,a5
80007c3c:	0105d593          	srli	a1,a1,0x10
80007c40:	01075793          	srli	a5,a4,0x10
80007c44:	40b787b3          	sub	a5,a5,a1
80007c48:	4106d713          	srai	a4,a3,0x10
80007c4c:	00e787b3          	add	a5,a5,a4
80007c50:	01079713          	slli	a4,a5,0x10
80007c54:	0116f6b3          	and	a3,a3,a7
80007c58:	00d766b3          	or	a3,a4,a3
80007c5c:	00480813          	addi	a6,a6,4
80007c60:	fedf2e23          	sw	a3,-4(t5)
80007c64:	00430313          	addi	t1,t1,4
80007c68:	4107d793          	srai	a5,a5,0x10
80007c6c:	fa586ae3          	bltu	a6,t0,80007c20 <__mdiff+0xa8>
80007c70:	408285b3          	sub	a1,t0,s0
80007c74:	feb58593          	addi	a1,a1,-21
80007c78:	01540413          	addi	s0,s0,21
80007c7c:	0025d593          	srli	a1,a1,0x2
80007c80:	00000713          	li	a4,0
80007c84:	0082e463          	bltu	t0,s0,80007c8c <__mdiff+0x114>
80007c88:	00259713          	slli	a4,a1,0x2
80007c8c:	00e38733          	add	a4,t2,a4
80007c90:	00400813          	li	a6,4
80007c94:	0082e663          	bltu	t0,s0,80007ca0 <__mdiff+0x128>
80007c98:	00158593          	addi	a1,a1,1
80007c9c:	00259813          	slli	a6,a1,0x2
80007ca0:	010f8fb3          	add	t6,t6,a6
80007ca4:	010383b3          	add	t2,t2,a6
80007ca8:	05dffe63          	bgeu	t6,t4,80007d04 <__mdiff+0x18c>
80007cac:	000108b7          	lui	a7,0x10
80007cb0:	00038813          	mv	a6,t2
80007cb4:	000f8593          	mv	a1,t6
80007cb8:	fff88893          	addi	a7,a7,-1 # ffff <_printf_r-0x7fff0001>
80007cbc:	0005a703          	lw	a4,0(a1)
80007cc0:	00480813          	addi	a6,a6,4
80007cc4:	00458593          	addi	a1,a1,4
80007cc8:	01177633          	and	a2,a4,a7
80007ccc:	00f60633          	add	a2,a2,a5
80007cd0:	41065693          	srai	a3,a2,0x10
80007cd4:	01075793          	srli	a5,a4,0x10
80007cd8:	00d787b3          	add	a5,a5,a3
80007cdc:	01079693          	slli	a3,a5,0x10
80007ce0:	01167633          	and	a2,a2,a7
80007ce4:	00c6e6b3          	or	a3,a3,a2
80007ce8:	fed82e23          	sw	a3,-4(a6)
80007cec:	4107d793          	srai	a5,a5,0x10
80007cf0:	fdd5e6e3          	bltu	a1,t4,80007cbc <__mdiff+0x144>
80007cf4:	fffe8713          	addi	a4,t4,-1
80007cf8:	41f70fb3          	sub	t6,a4,t6
80007cfc:	ffcff713          	andi	a4,t6,-4
80007d00:	00e38733          	add	a4,t2,a4
80007d04:	00069a63          	bnez	a3,80007d18 <__mdiff+0x1a0>
80007d08:	ffc72783          	lw	a5,-4(a4)
80007d0c:	fffe0e13          	addi	t3,t3,-1
80007d10:	ffc70713          	addi	a4,a4,-4
80007d14:	fe078ae3          	beqz	a5,80007d08 <__mdiff+0x190>
80007d18:	00c12083          	lw	ra,12(sp)
80007d1c:	00812403          	lw	s0,8(sp)
80007d20:	01c52823          	sw	t3,16(a0)
80007d24:	00412483          	lw	s1,4(sp)
80007d28:	00012903          	lw	s2,0(sp)
80007d2c:	01010113          	addi	sp,sp,16
80007d30:	00008067          	ret
80007d34:	00048793          	mv	a5,s1
80007d38:	00100913          	li	s2,1
80007d3c:	00040493          	mv	s1,s0
80007d40:	00078413          	mv	s0,a5
80007d44:	e95ff06f          	j	80007bd8 <__mdiff+0x60>
80007d48:	fe0946e3          	bltz	s2,80007d34 <__mdiff+0x1bc>
80007d4c:	00000913          	li	s2,0
80007d50:	e89ff06f          	j	80007bd8 <__mdiff+0x60>
80007d54:	00000593          	li	a1,0
80007d58:	c08ff0ef          	jal	ra,80007160 <_Balloc>
80007d5c:	04050263          	beqz	a0,80007da0 <__mdiff+0x228>
80007d60:	00c12083          	lw	ra,12(sp)
80007d64:	00812403          	lw	s0,8(sp)
80007d68:	00100793          	li	a5,1
80007d6c:	00f52823          	sw	a5,16(a0)
80007d70:	00052a23          	sw	zero,20(a0)
80007d74:	00412483          	lw	s1,4(sp)
80007d78:	00012903          	lw	s2,0(sp)
80007d7c:	01010113          	addi	sp,sp,16
80007d80:	00008067          	ret
80007d84:	800146b7          	lui	a3,0x80014
80007d88:	80014537          	lui	a0,0x80014
80007d8c:	ea068693          	addi	a3,a3,-352 # 80013ea0 <heap_end.1814+0xffffe4bc>
80007d90:	00000613          	li	a2,0
80007d94:	24000593          	li	a1,576
80007d98:	eb450513          	addi	a0,a0,-332 # 80013eb4 <heap_end.1814+0xffffe4d0>
80007d9c:	2ad040ef          	jal	ra,8000c848 <__assert_func>
80007da0:	800146b7          	lui	a3,0x80014
80007da4:	80014537          	lui	a0,0x80014
80007da8:	ea068693          	addi	a3,a3,-352 # 80013ea0 <heap_end.1814+0xffffe4bc>
80007dac:	00000613          	li	a2,0
80007db0:	23200593          	li	a1,562
80007db4:	eb450513          	addi	a0,a0,-332 # 80013eb4 <heap_end.1814+0xffffe4d0>
80007db8:	291040ef          	jal	ra,8000c848 <__assert_func>

80007dbc <__ulp>:
80007dbc:	7ff007b7          	lui	a5,0x7ff00
80007dc0:	00b7f5b3          	and	a1,a5,a1
80007dc4:	fcc007b7          	lui	a5,0xfcc00
80007dc8:	00f585b3          	add	a1,a1,a5
80007dcc:	00b05863          	blez	a1,80007ddc <__ulp+0x20>
80007dd0:	00000793          	li	a5,0
80007dd4:	00078513          	mv	a0,a5
80007dd8:	00008067          	ret
80007ddc:	40b005b3          	neg	a1,a1
80007de0:	4145d593          	srai	a1,a1,0x14
80007de4:	01300793          	li	a5,19
80007de8:	00b7c863          	blt	a5,a1,80007df8 <__ulp+0x3c>
80007dec:	000807b7          	lui	a5,0x80
80007df0:	40b7d5b3          	sra	a1,a5,a1
80007df4:	fddff06f          	j	80007dd0 <__ulp+0x14>
80007df8:	fec58713          	addi	a4,a1,-20
80007dfc:	01e00693          	li	a3,30
80007e00:	00000593          	li	a1,0
80007e04:	00100793          	li	a5,1
80007e08:	fce6c6e3          	blt	a3,a4,80007dd4 <__ulp+0x18>
80007e0c:	800007b7          	lui	a5,0x80000
80007e10:	00e7d7b3          	srl	a5,a5,a4
80007e14:	00078513          	mv	a0,a5
80007e18:	00008067          	ret

80007e1c <__b2d>:
80007e1c:	fe010113          	addi	sp,sp,-32
80007e20:	00912a23          	sw	s1,20(sp)
80007e24:	01052483          	lw	s1,16(a0)
80007e28:	00812c23          	sw	s0,24(sp)
80007e2c:	01450413          	addi	s0,a0,20
80007e30:	00249493          	slli	s1,s1,0x2
80007e34:	009404b3          	add	s1,s0,s1
80007e38:	01212823          	sw	s2,16(sp)
80007e3c:	ffc4a903          	lw	s2,-4(s1)
80007e40:	01312623          	sw	s3,12(sp)
80007e44:	01412423          	sw	s4,8(sp)
80007e48:	00090513          	mv	a0,s2
80007e4c:	00058993          	mv	s3,a1
80007e50:	00112e23          	sw	ra,28(sp)
80007e54:	e58ff0ef          	jal	ra,800074ac <__hi0bits>
80007e58:	02000713          	li	a4,32
80007e5c:	40a707b3          	sub	a5,a4,a0
80007e60:	00f9a023          	sw	a5,0(s3)
80007e64:	00a00793          	li	a5,10
80007e68:	ffc48a13          	addi	s4,s1,-4
80007e6c:	08a7d063          	bge	a5,a0,80007eec <__b2d+0xd0>
80007e70:	ff550513          	addi	a0,a0,-11
80007e74:	05447063          	bgeu	s0,s4,80007eb4 <__b2d+0x98>
80007e78:	ff84a783          	lw	a5,-8(s1)
80007e7c:	04050063          	beqz	a0,80007ebc <__b2d+0xa0>
80007e80:	40a706b3          	sub	a3,a4,a0
80007e84:	00d7d733          	srl	a4,a5,a3
80007e88:	00a91933          	sll	s2,s2,a0
80007e8c:	00e96933          	or	s2,s2,a4
80007e90:	ff848613          	addi	a2,s1,-8
80007e94:	3ff00737          	lui	a4,0x3ff00
80007e98:	00e96733          	or	a4,s2,a4
80007e9c:	00a797b3          	sll	a5,a5,a0
80007ea0:	02c47263          	bgeu	s0,a2,80007ec4 <__b2d+0xa8>
80007ea4:	ff44a603          	lw	a2,-12(s1)
80007ea8:	00d656b3          	srl	a3,a2,a3
80007eac:	00d7e7b3          	or	a5,a5,a3
80007eb0:	0140006f          	j	80007ec4 <__b2d+0xa8>
80007eb4:	00000793          	li	a5,0
80007eb8:	06051463          	bnez	a0,80007f20 <__b2d+0x104>
80007ebc:	3ff00737          	lui	a4,0x3ff00
80007ec0:	00e96733          	or	a4,s2,a4
80007ec4:	01c12083          	lw	ra,28(sp)
80007ec8:	01812403          	lw	s0,24(sp)
80007ecc:	01412483          	lw	s1,20(sp)
80007ed0:	01012903          	lw	s2,16(sp)
80007ed4:	00c12983          	lw	s3,12(sp)
80007ed8:	00812a03          	lw	s4,8(sp)
80007edc:	00078513          	mv	a0,a5
80007ee0:	00070593          	mv	a1,a4
80007ee4:	02010113          	addi	sp,sp,32
80007ee8:	00008067          	ret
80007eec:	00b00693          	li	a3,11
80007ef0:	40a686b3          	sub	a3,a3,a0
80007ef4:	3ff007b7          	lui	a5,0x3ff00
80007ef8:	00d95733          	srl	a4,s2,a3
80007efc:	00f76733          	or	a4,a4,a5
80007f00:	00000793          	li	a5,0
80007f04:	01447663          	bgeu	s0,s4,80007f10 <__b2d+0xf4>
80007f08:	ff84a783          	lw	a5,-8(s1)
80007f0c:	00d7d7b3          	srl	a5,a5,a3
80007f10:	01550513          	addi	a0,a0,21
80007f14:	00a91533          	sll	a0,s2,a0
80007f18:	00f567b3          	or	a5,a0,a5
80007f1c:	fa9ff06f          	j	80007ec4 <__b2d+0xa8>
80007f20:	00a91533          	sll	a0,s2,a0
80007f24:	3ff00737          	lui	a4,0x3ff00
80007f28:	00e56733          	or	a4,a0,a4
80007f2c:	00000793          	li	a5,0
80007f30:	f95ff06f          	j	80007ec4 <__b2d+0xa8>

80007f34 <__d2b>:
80007f34:	fd010113          	addi	sp,sp,-48
80007f38:	01412c23          	sw	s4,24(sp)
80007f3c:	00058a13          	mv	s4,a1
80007f40:	00100593          	li	a1,1
80007f44:	02912223          	sw	s1,36(sp)
80007f48:	03212023          	sw	s2,32(sp)
80007f4c:	01312e23          	sw	s3,28(sp)
80007f50:	02112623          	sw	ra,44(sp)
80007f54:	02812423          	sw	s0,40(sp)
80007f58:	01512a23          	sw	s5,20(sp)
80007f5c:	00060493          	mv	s1,a2
80007f60:	00068993          	mv	s3,a3
80007f64:	00070913          	mv	s2,a4
80007f68:	9f8ff0ef          	jal	ra,80007160 <_Balloc>
80007f6c:	10050a63          	beqz	a0,80008080 <__d2b+0x14c>
80007f70:	0144d793          	srli	a5,s1,0x14
80007f74:	00100737          	lui	a4,0x100
80007f78:	fff70613          	addi	a2,a4,-1 # fffff <_printf_r-0x7ff00001>
80007f7c:	01579693          	slli	a3,a5,0x15
80007f80:	00050413          	mv	s0,a0
80007f84:	00967633          	and	a2,a2,s1
80007f88:	7ff7fa93          	andi	s5,a5,2047
80007f8c:	00068463          	beqz	a3,80007f94 <__d2b+0x60>
80007f90:	00e66633          	or	a2,a2,a4
80007f94:	00c12623          	sw	a2,12(sp)
80007f98:	080a0863          	beqz	s4,80008028 <__d2b+0xf4>
80007f9c:	00810513          	addi	a0,sp,8
80007fa0:	01412423          	sw	s4,8(sp)
80007fa4:	d7cff0ef          	jal	ra,80007520 <__lo0bits>
80007fa8:	00c12703          	lw	a4,12(sp)
80007fac:	00050793          	mv	a5,a0
80007fb0:	0c050263          	beqz	a0,80008074 <__d2b+0x140>
80007fb4:	00812603          	lw	a2,8(sp)
80007fb8:	02000693          	li	a3,32
80007fbc:	40a686b3          	sub	a3,a3,a0
80007fc0:	00d716b3          	sll	a3,a4,a3
80007fc4:	00c6e6b3          	or	a3,a3,a2
80007fc8:	00a75733          	srl	a4,a4,a0
80007fcc:	00d42a23          	sw	a3,20(s0)
80007fd0:	00e12623          	sw	a4,12(sp)
80007fd4:	00e034b3          	snez	s1,a4
80007fd8:	00148493          	addi	s1,s1,1
80007fdc:	00e42c23          	sw	a4,24(s0)
80007fe0:	00942823          	sw	s1,16(s0)
80007fe4:	060a8463          	beqz	s5,8000804c <__d2b+0x118>
80007fe8:	bcda8a93          	addi	s5,s5,-1075
80007fec:	00fa8ab3          	add	s5,s5,a5
80007ff0:	03500513          	li	a0,53
80007ff4:	0159a023          	sw	s5,0(s3)
80007ff8:	40f507b3          	sub	a5,a0,a5
80007ffc:	00f92023          	sw	a5,0(s2)
80008000:	02c12083          	lw	ra,44(sp)
80008004:	00040513          	mv	a0,s0
80008008:	02812403          	lw	s0,40(sp)
8000800c:	02412483          	lw	s1,36(sp)
80008010:	02012903          	lw	s2,32(sp)
80008014:	01c12983          	lw	s3,28(sp)
80008018:	01812a03          	lw	s4,24(sp)
8000801c:	01412a83          	lw	s5,20(sp)
80008020:	03010113          	addi	sp,sp,48
80008024:	00008067          	ret
80008028:	00c10513          	addi	a0,sp,12
8000802c:	cf4ff0ef          	jal	ra,80007520 <__lo0bits>
80008030:	00100793          	li	a5,1
80008034:	00f42823          	sw	a5,16(s0)
80008038:	00c12783          	lw	a5,12(sp)
8000803c:	00100493          	li	s1,1
80008040:	00f42a23          	sw	a5,20(s0)
80008044:	02050793          	addi	a5,a0,32
80008048:	fa0a90e3          	bnez	s5,80007fe8 <__d2b+0xb4>
8000804c:	00249713          	slli	a4,s1,0x2
80008050:	00e40733          	add	a4,s0,a4
80008054:	01072503          	lw	a0,16(a4)
80008058:	bce78793          	addi	a5,a5,-1074 # 3feffbce <_printf_r-0x40100432>
8000805c:	00f9a023          	sw	a5,0(s3)
80008060:	c4cff0ef          	jal	ra,800074ac <__hi0bits>
80008064:	00549493          	slli	s1,s1,0x5
80008068:	40a484b3          	sub	s1,s1,a0
8000806c:	00992023          	sw	s1,0(s2)
80008070:	f91ff06f          	j	80008000 <__d2b+0xcc>
80008074:	00812683          	lw	a3,8(sp)
80008078:	00d42a23          	sw	a3,20(s0)
8000807c:	f59ff06f          	j	80007fd4 <__d2b+0xa0>
80008080:	800146b7          	lui	a3,0x80014
80008084:	80014537          	lui	a0,0x80014
80008088:	ea068693          	addi	a3,a3,-352 # 80013ea0 <heap_end.1814+0xffffe4bc>
8000808c:	00000613          	li	a2,0
80008090:	30a00593          	li	a1,778
80008094:	eb450513          	addi	a0,a0,-332 # 80013eb4 <heap_end.1814+0xffffe4d0>
80008098:	7b0040ef          	jal	ra,8000c848 <__assert_func>

8000809c <__ratio>:
8000809c:	fd010113          	addi	sp,sp,-48
800080a0:	03212023          	sw	s2,32(sp)
800080a4:	00058913          	mv	s2,a1
800080a8:	00810593          	addi	a1,sp,8
800080ac:	02112623          	sw	ra,44(sp)
800080b0:	02812423          	sw	s0,40(sp)
800080b4:	02912223          	sw	s1,36(sp)
800080b8:	01312e23          	sw	s3,28(sp)
800080bc:	00050993          	mv	s3,a0
800080c0:	d5dff0ef          	jal	ra,80007e1c <__b2d>
800080c4:	00050493          	mv	s1,a0
800080c8:	00058413          	mv	s0,a1
800080cc:	00090513          	mv	a0,s2
800080d0:	00c10593          	addi	a1,sp,12
800080d4:	d49ff0ef          	jal	ra,80007e1c <__b2d>
800080d8:	01092783          	lw	a5,16(s2)
800080dc:	0109a703          	lw	a4,16(s3)
800080e0:	00c12683          	lw	a3,12(sp)
800080e4:	40f70733          	sub	a4,a4,a5
800080e8:	00812783          	lw	a5,8(sp)
800080ec:	00571713          	slli	a4,a4,0x5
800080f0:	40d787b3          	sub	a5,a5,a3
800080f4:	00f707b3          	add	a5,a4,a5
800080f8:	00050693          	mv	a3,a0
800080fc:	02f05e63          	blez	a5,80008138 <__ratio+0x9c>
80008100:	01479793          	slli	a5,a5,0x14
80008104:	00878433          	add	s0,a5,s0
80008108:	00068613          	mv	a2,a3
8000810c:	00048513          	mv	a0,s1
80008110:	00058693          	mv	a3,a1
80008114:	00040593          	mv	a1,s0
80008118:	7e9070ef          	jal	ra,80010100 <__divdf3>
8000811c:	02c12083          	lw	ra,44(sp)
80008120:	02812403          	lw	s0,40(sp)
80008124:	02412483          	lw	s1,36(sp)
80008128:	02012903          	lw	s2,32(sp)
8000812c:	01c12983          	lw	s3,28(sp)
80008130:	03010113          	addi	sp,sp,48
80008134:	00008067          	ret
80008138:	01479713          	slli	a4,a5,0x14
8000813c:	40e585b3          	sub	a1,a1,a4
80008140:	fc9ff06f          	j	80008108 <__ratio+0x6c>

80008144 <_mprec_log10>:
80008144:	ff010113          	addi	sp,sp,-16
80008148:	01212023          	sw	s2,0(sp)
8000814c:	00112623          	sw	ra,12(sp)
80008150:	00812423          	sw	s0,8(sp)
80008154:	00912223          	sw	s1,4(sp)
80008158:	01700793          	li	a5,23
8000815c:	00050913          	mv	s2,a0
80008160:	04a7da63          	bge	a5,a0,800081b4 <_mprec_log10+0x70>
80008164:	80015737          	lui	a4,0x80015
80008168:	bb072783          	lw	a5,-1104(a4) # 80014bb0 <heap_end.1814+0xfffff1cc>
8000816c:	bb472583          	lw	a1,-1100(a4)
80008170:	80015737          	lui	a4,0x80015
80008174:	bb872403          	lw	s0,-1096(a4) # 80014bb8 <heap_end.1814+0xfffff1d4>
80008178:	bbc72483          	lw	s1,-1092(a4)
8000817c:	00078513          	mv	a0,a5
80008180:	00040613          	mv	a2,s0
80008184:	00048693          	mv	a3,s1
80008188:	658080ef          	jal	ra,800107e0 <__muldf3>
8000818c:	fff90913          	addi	s2,s2,-1
80008190:	00050793          	mv	a5,a0
80008194:	fe0914e3          	bnez	s2,8000817c <_mprec_log10+0x38>
80008198:	00c12083          	lw	ra,12(sp)
8000819c:	00812403          	lw	s0,8(sp)
800081a0:	00412483          	lw	s1,4(sp)
800081a4:	00012903          	lw	s2,0(sp)
800081a8:	00078513          	mv	a0,a5
800081ac:	01010113          	addi	sp,sp,16
800081b0:	00008067          	ret
800081b4:	800147b7          	lui	a5,0x80014
800081b8:	00351913          	slli	s2,a0,0x3
800081bc:	32878793          	addi	a5,a5,808 # 80014328 <heap_end.1814+0xffffe944>
800081c0:	01278933          	add	s2,a5,s2
800081c4:	01092783          	lw	a5,16(s2)
800081c8:	00c12083          	lw	ra,12(sp)
800081cc:	00812403          	lw	s0,8(sp)
800081d0:	01492583          	lw	a1,20(s2)
800081d4:	00412483          	lw	s1,4(sp)
800081d8:	00012903          	lw	s2,0(sp)
800081dc:	00078513          	mv	a0,a5
800081e0:	01010113          	addi	sp,sp,16
800081e4:	00008067          	ret

800081e8 <__copybits>:
800081e8:	01062683          	lw	a3,16(a2)
800081ec:	fff58593          	addi	a1,a1,-1
800081f0:	4055d593          	srai	a1,a1,0x5
800081f4:	00158593          	addi	a1,a1,1
800081f8:	01460793          	addi	a5,a2,20
800081fc:	00269693          	slli	a3,a3,0x2
80008200:	00259593          	slli	a1,a1,0x2
80008204:	00d786b3          	add	a3,a5,a3
80008208:	00b505b3          	add	a1,a0,a1
8000820c:	02d7f863          	bgeu	a5,a3,8000823c <__copybits+0x54>
80008210:	00050713          	mv	a4,a0
80008214:	0007a803          	lw	a6,0(a5)
80008218:	00478793          	addi	a5,a5,4
8000821c:	00470713          	addi	a4,a4,4
80008220:	ff072e23          	sw	a6,-4(a4)
80008224:	fed7e8e3          	bltu	a5,a3,80008214 <__copybits+0x2c>
80008228:	40c687b3          	sub	a5,a3,a2
8000822c:	feb78793          	addi	a5,a5,-21
80008230:	ffc7f793          	andi	a5,a5,-4
80008234:	00478793          	addi	a5,a5,4
80008238:	00f50533          	add	a0,a0,a5
8000823c:	00b57863          	bgeu	a0,a1,8000824c <__copybits+0x64>
80008240:	00450513          	addi	a0,a0,4
80008244:	fe052e23          	sw	zero,-4(a0)
80008248:	feb56ce3          	bltu	a0,a1,80008240 <__copybits+0x58>
8000824c:	00008067          	ret

80008250 <__any_on>:
80008250:	01052703          	lw	a4,16(a0)
80008254:	4055d613          	srai	a2,a1,0x5
80008258:	01450693          	addi	a3,a0,20
8000825c:	02c75263          	bge	a4,a2,80008280 <__any_on+0x30>
80008260:	00271793          	slli	a5,a4,0x2
80008264:	00f687b3          	add	a5,a3,a5
80008268:	04f6f263          	bgeu	a3,a5,800082ac <__any_on+0x5c>
8000826c:	ffc7a703          	lw	a4,-4(a5)
80008270:	ffc78793          	addi	a5,a5,-4
80008274:	fe070ae3          	beqz	a4,80008268 <__any_on+0x18>
80008278:	00100513          	li	a0,1
8000827c:	00008067          	ret
80008280:	00261793          	slli	a5,a2,0x2
80008284:	00f687b3          	add	a5,a3,a5
80008288:	fee650e3          	bge	a2,a4,80008268 <__any_on+0x18>
8000828c:	01f5f593          	andi	a1,a1,31
80008290:	fc058ce3          	beqz	a1,80008268 <__any_on+0x18>
80008294:	0007a603          	lw	a2,0(a5)
80008298:	00100513          	li	a0,1
8000829c:	00b65733          	srl	a4,a2,a1
800082a0:	00b715b3          	sll	a1,a4,a1
800082a4:	fcb602e3          	beq	a2,a1,80008268 <__any_on+0x18>
800082a8:	00008067          	ret
800082ac:	00000513          	li	a0,0
800082b0:	00008067          	ret

800082b4 <_sbrk_r>:
800082b4:	ff010113          	addi	sp,sp,-16
800082b8:	00812423          	sw	s0,8(sp)
800082bc:	00912223          	sw	s1,4(sp)
800082c0:	00050413          	mv	s0,a0
800082c4:	800164b7          	lui	s1,0x80016
800082c8:	00058513          	mv	a0,a1
800082cc:	00112623          	sw	ra,12(sp)
800082d0:	9c04a823          	sw	zero,-1584(s1) # 800159d0 <heap_end.1814+0xffffffec>
800082d4:	448070ef          	jal	ra,8000f71c <_sbrk>
800082d8:	fff00793          	li	a5,-1
800082dc:	00f50c63          	beq	a0,a5,800082f4 <_sbrk_r+0x40>
800082e0:	00c12083          	lw	ra,12(sp)
800082e4:	00812403          	lw	s0,8(sp)
800082e8:	00412483          	lw	s1,4(sp)
800082ec:	01010113          	addi	sp,sp,16
800082f0:	00008067          	ret
800082f4:	9d04a783          	lw	a5,-1584(s1)
800082f8:	fe0784e3          	beqz	a5,800082e0 <_sbrk_r+0x2c>
800082fc:	00c12083          	lw	ra,12(sp)
80008300:	00f42023          	sw	a5,0(s0)
80008304:	00812403          	lw	s0,8(sp)
80008308:	00412483          	lw	s1,4(sp)
8000830c:	01010113          	addi	sp,sp,16
80008310:	00008067          	ret

80008314 <frexp>:
80008314:	ff010113          	addi	sp,sp,-16
80008318:	00912223          	sw	s1,4(sp)
8000831c:	800004b7          	lui	s1,0x80000
80008320:	00812423          	sw	s0,8(sp)
80008324:	00112623          	sw	ra,12(sp)
80008328:	fff4c493          	not	s1,s1
8000832c:	00060413          	mv	s0,a2
80008330:	00062023          	sw	zero,0(a2)
80008334:	00b4f6b3          	and	a3,s1,a1
80008338:	7ff00637          	lui	a2,0x7ff00
8000833c:	00058793          	mv	a5,a1
80008340:	00050713          	mv	a4,a0
80008344:	06c6d063          	bge	a3,a2,800083a4 <frexp+0x90>
80008348:	00a6e8b3          	or	a7,a3,a0
8000834c:	04088c63          	beqz	a7,800083a4 <frexp+0x90>
80008350:	00c5f633          	and	a2,a1,a2
80008354:	00058813          	mv	a6,a1
80008358:	00000893          	li	a7,0
8000835c:	02061263          	bnez	a2,80008380 <frexp+0x6c>
80008360:	800157b7          	lui	a5,0x80015
80008364:	bc47a683          	lw	a3,-1084(a5) # 80014bc4 <heap_end.1814+0xfffff1e0>
80008368:	bc07a603          	lw	a2,-1088(a5)
8000836c:	474080ef          	jal	ra,800107e0 <__muldf3>
80008370:	00050713          	mv	a4,a0
80008374:	00058813          	mv	a6,a1
80008378:	00b4f6b3          	and	a3,s1,a1
8000837c:	fca00893          	li	a7,-54
80008380:	4146d693          	srai	a3,a3,0x14
80008384:	801007b7          	lui	a5,0x80100
80008388:	fff78793          	addi	a5,a5,-1 # 800fffff <heap_end.1814+0xea61b>
8000838c:	c0268693          	addi	a3,a3,-1022
80008390:	00f87833          	and	a6,a6,a5
80008394:	011686b3          	add	a3,a3,a7
80008398:	3fe007b7          	lui	a5,0x3fe00
8000839c:	00f867b3          	or	a5,a6,a5
800083a0:	00d42023          	sw	a3,0(s0)
800083a4:	00c12083          	lw	ra,12(sp)
800083a8:	00812403          	lw	s0,8(sp)
800083ac:	00412483          	lw	s1,4(sp)
800083b0:	00070513          	mv	a0,a4
800083b4:	00078593          	mv	a1,a5
800083b8:	01010113          	addi	sp,sp,16
800083bc:	00008067          	ret

800083c0 <_sprintf_r>:
800083c0:	f6010113          	addi	sp,sp,-160
800083c4:	08c10e93          	addi	t4,sp,140
800083c8:	08f12a23          	sw	a5,148(sp)
800083cc:	80000337          	lui	t1,0x80000
800083d0:	ffff07b7          	lui	a5,0xffff0
800083d4:	00058e13          	mv	t3,a1
800083d8:	fff34313          	not	t1,t1
800083dc:	08d12623          	sw	a3,140(sp)
800083e0:	20878793          	addi	a5,a5,520 # ffff0208 <heap_end.1814+0x7ffda824>
800083e4:	00810593          	addi	a1,sp,8
800083e8:	000e8693          	mv	a3,t4
800083ec:	06112e23          	sw	ra,124(sp)
800083f0:	00f12a23          	sw	a5,20(sp)
800083f4:	08e12823          	sw	a4,144(sp)
800083f8:	09012c23          	sw	a6,152(sp)
800083fc:	09112e23          	sw	a7,156(sp)
80008400:	01c12423          	sw	t3,8(sp)
80008404:	01c12c23          	sw	t3,24(sp)
80008408:	00612e23          	sw	t1,28(sp)
8000840c:	00612823          	sw	t1,16(sp)
80008410:	01d12223          	sw	t4,4(sp)
80008414:	550000ef          	jal	ra,80008964 <_svfprintf_r>
80008418:	00812783          	lw	a5,8(sp)
8000841c:	00078023          	sb	zero,0(a5)
80008420:	07c12083          	lw	ra,124(sp)
80008424:	0a010113          	addi	sp,sp,160
80008428:	00008067          	ret

8000842c <sprintf>:
8000842c:	00050e13          	mv	t3,a0
80008430:	80016537          	lui	a0,0x80016
80008434:	f6010113          	addi	sp,sp,-160
80008438:	99c52503          	lw	a0,-1636(a0) # 8001599c <heap_end.1814+0xffffffb8>
8000843c:	08810e93          	addi	t4,sp,136
80008440:	08f12a23          	sw	a5,148(sp)
80008444:	80000337          	lui	t1,0x80000
80008448:	ffff07b7          	lui	a5,0xffff0
8000844c:	fff34313          	not	t1,t1
80008450:	08c12423          	sw	a2,136(sp)
80008454:	08d12623          	sw	a3,140(sp)
80008458:	20878793          	addi	a5,a5,520 # ffff0208 <heap_end.1814+0x7ffda824>
8000845c:	00058613          	mv	a2,a1
80008460:	000e8693          	mv	a3,t4
80008464:	00810593          	addi	a1,sp,8
80008468:	06112e23          	sw	ra,124(sp)
8000846c:	00f12a23          	sw	a5,20(sp)
80008470:	08e12823          	sw	a4,144(sp)
80008474:	09012c23          	sw	a6,152(sp)
80008478:	09112e23          	sw	a7,156(sp)
8000847c:	01c12423          	sw	t3,8(sp)
80008480:	01c12c23          	sw	t3,24(sp)
80008484:	00612e23          	sw	t1,28(sp)
80008488:	00612823          	sw	t1,16(sp)
8000848c:	01d12223          	sw	t4,4(sp)
80008490:	4d4000ef          	jal	ra,80008964 <_svfprintf_r>
80008494:	00812783          	lw	a5,8(sp)
80008498:	00078023          	sb	zero,0(a5)
8000849c:	07c12083          	lw	ra,124(sp)
800084a0:	0a010113          	addi	sp,sp,160
800084a4:	00008067          	ret

800084a8 <__sread>:
800084a8:	ff010113          	addi	sp,sp,-16
800084ac:	00812423          	sw	s0,8(sp)
800084b0:	00058413          	mv	s0,a1
800084b4:	00e59583          	lh	a1,14(a1)
800084b8:	00112623          	sw	ra,12(sp)
800084bc:	0a0050ef          	jal	ra,8000d55c <_read_r>
800084c0:	02054063          	bltz	a0,800084e0 <__sread+0x38>
800084c4:	05042783          	lw	a5,80(s0)
800084c8:	00c12083          	lw	ra,12(sp)
800084cc:	00a787b3          	add	a5,a5,a0
800084d0:	04f42823          	sw	a5,80(s0)
800084d4:	00812403          	lw	s0,8(sp)
800084d8:	01010113          	addi	sp,sp,16
800084dc:	00008067          	ret
800084e0:	00c45783          	lhu	a5,12(s0)
800084e4:	fffff737          	lui	a4,0xfffff
800084e8:	fff70713          	addi	a4,a4,-1 # ffffefff <heap_end.1814+0x7ffe961b>
800084ec:	00e7f7b3          	and	a5,a5,a4
800084f0:	00c12083          	lw	ra,12(sp)
800084f4:	00f41623          	sh	a5,12(s0)
800084f8:	00812403          	lw	s0,8(sp)
800084fc:	01010113          	addi	sp,sp,16
80008500:	00008067          	ret

80008504 <__seofread>:
80008504:	00000513          	li	a0,0
80008508:	00008067          	ret

8000850c <__swrite>:
8000850c:	00c59783          	lh	a5,12(a1)
80008510:	fe010113          	addi	sp,sp,-32
80008514:	00812c23          	sw	s0,24(sp)
80008518:	00912a23          	sw	s1,20(sp)
8000851c:	01212823          	sw	s2,16(sp)
80008520:	01312623          	sw	s3,12(sp)
80008524:	00112e23          	sw	ra,28(sp)
80008528:	1007f713          	andi	a4,a5,256
8000852c:	00058413          	mv	s0,a1
80008530:	00050493          	mv	s1,a0
80008534:	00e59583          	lh	a1,14(a1)
80008538:	00060913          	mv	s2,a2
8000853c:	00068993          	mv	s3,a3
80008540:	02071e63          	bnez	a4,8000857c <__swrite+0x70>
80008544:	fffff737          	lui	a4,0xfffff
80008548:	fff70713          	addi	a4,a4,-1 # ffffefff <heap_end.1814+0x7ffe961b>
8000854c:	00e7f7b3          	and	a5,a5,a4
80008550:	00f41623          	sh	a5,12(s0)
80008554:	01812403          	lw	s0,24(sp)
80008558:	01c12083          	lw	ra,28(sp)
8000855c:	00098693          	mv	a3,s3
80008560:	00090613          	mv	a2,s2
80008564:	00c12983          	lw	s3,12(sp)
80008568:	01012903          	lw	s2,16(sp)
8000856c:	00048513          	mv	a0,s1
80008570:	01412483          	lw	s1,20(sp)
80008574:	02010113          	addi	sp,sp,32
80008578:	2640406f          	j	8000c7dc <_write_r>
8000857c:	00200693          	li	a3,2
80008580:	00000613          	li	a2,0
80008584:	531040ef          	jal	ra,8000d2b4 <_lseek_r>
80008588:	00c41783          	lh	a5,12(s0)
8000858c:	00e41583          	lh	a1,14(s0)
80008590:	fb5ff06f          	j	80008544 <__swrite+0x38>

80008594 <__sseek>:
80008594:	ff010113          	addi	sp,sp,-16
80008598:	00812423          	sw	s0,8(sp)
8000859c:	00058413          	mv	s0,a1
800085a0:	00e59583          	lh	a1,14(a1)
800085a4:	00112623          	sw	ra,12(sp)
800085a8:	50d040ef          	jal	ra,8000d2b4 <_lseek_r>
800085ac:	fff00793          	li	a5,-1
800085b0:	02f50463          	beq	a0,a5,800085d8 <__sseek+0x44>
800085b4:	00c45783          	lhu	a5,12(s0)
800085b8:	00001737          	lui	a4,0x1
800085bc:	00c12083          	lw	ra,12(sp)
800085c0:	00e7e7b3          	or	a5,a5,a4
800085c4:	04a42823          	sw	a0,80(s0)
800085c8:	00f41623          	sh	a5,12(s0)
800085cc:	00812403          	lw	s0,8(sp)
800085d0:	01010113          	addi	sp,sp,16
800085d4:	00008067          	ret
800085d8:	00c45783          	lhu	a5,12(s0)
800085dc:	fffff737          	lui	a4,0xfffff
800085e0:	fff70713          	addi	a4,a4,-1 # ffffefff <heap_end.1814+0x7ffe961b>
800085e4:	00e7f7b3          	and	a5,a5,a4
800085e8:	00c12083          	lw	ra,12(sp)
800085ec:	00f41623          	sh	a5,12(s0)
800085f0:	00812403          	lw	s0,8(sp)
800085f4:	01010113          	addi	sp,sp,16
800085f8:	00008067          	ret

800085fc <__sclose>:
800085fc:	00e59583          	lh	a1,14(a1)
80008600:	3640406f          	j	8000c964 <_close_r>

80008604 <strcmp>:
80008604:	00b56733          	or	a4,a0,a1
80008608:	fff00393          	li	t2,-1
8000860c:	00377713          	andi	a4,a4,3
80008610:	10071063          	bnez	a4,80008710 <strcmp+0x10c>
80008614:	7f7f87b7          	lui	a5,0x7f7f8
80008618:	f7f78793          	addi	a5,a5,-129 # 7f7f7f7f <_printf_r-0x808081>
8000861c:	00052603          	lw	a2,0(a0)
80008620:	0005a683          	lw	a3,0(a1)
80008624:	00f672b3          	and	t0,a2,a5
80008628:	00f66333          	or	t1,a2,a5
8000862c:	00f282b3          	add	t0,t0,a5
80008630:	0062e2b3          	or	t0,t0,t1
80008634:	10729263          	bne	t0,t2,80008738 <strcmp+0x134>
80008638:	08d61663          	bne	a2,a3,800086c4 <strcmp+0xc0>
8000863c:	00452603          	lw	a2,4(a0)
80008640:	0045a683          	lw	a3,4(a1)
80008644:	00f672b3          	and	t0,a2,a5
80008648:	00f66333          	or	t1,a2,a5
8000864c:	00f282b3          	add	t0,t0,a5
80008650:	0062e2b3          	or	t0,t0,t1
80008654:	0c729e63          	bne	t0,t2,80008730 <strcmp+0x12c>
80008658:	06d61663          	bne	a2,a3,800086c4 <strcmp+0xc0>
8000865c:	00852603          	lw	a2,8(a0)
80008660:	0085a683          	lw	a3,8(a1)
80008664:	00f672b3          	and	t0,a2,a5
80008668:	00f66333          	or	t1,a2,a5
8000866c:	00f282b3          	add	t0,t0,a5
80008670:	0062e2b3          	or	t0,t0,t1
80008674:	0c729863          	bne	t0,t2,80008744 <strcmp+0x140>
80008678:	04d61663          	bne	a2,a3,800086c4 <strcmp+0xc0>
8000867c:	00c52603          	lw	a2,12(a0)
80008680:	00c5a683          	lw	a3,12(a1)
80008684:	00f672b3          	and	t0,a2,a5
80008688:	00f66333          	or	t1,a2,a5
8000868c:	00f282b3          	add	t0,t0,a5
80008690:	0062e2b3          	or	t0,t0,t1
80008694:	0c729263          	bne	t0,t2,80008758 <strcmp+0x154>
80008698:	02d61663          	bne	a2,a3,800086c4 <strcmp+0xc0>
8000869c:	01052603          	lw	a2,16(a0)
800086a0:	0105a683          	lw	a3,16(a1)
800086a4:	00f672b3          	and	t0,a2,a5
800086a8:	00f66333          	or	t1,a2,a5
800086ac:	00f282b3          	add	t0,t0,a5
800086b0:	0062e2b3          	or	t0,t0,t1
800086b4:	0a729c63          	bne	t0,t2,8000876c <strcmp+0x168>
800086b8:	01450513          	addi	a0,a0,20
800086bc:	01458593          	addi	a1,a1,20
800086c0:	f4d60ee3          	beq	a2,a3,8000861c <strcmp+0x18>
800086c4:	01061713          	slli	a4,a2,0x10
800086c8:	01069793          	slli	a5,a3,0x10
800086cc:	00f71e63          	bne	a4,a5,800086e8 <strcmp+0xe4>
800086d0:	01065713          	srli	a4,a2,0x10
800086d4:	0106d793          	srli	a5,a3,0x10
800086d8:	40f70533          	sub	a0,a4,a5
800086dc:	0ff57593          	andi	a1,a0,255
800086e0:	02059063          	bnez	a1,80008700 <strcmp+0xfc>
800086e4:	00008067          	ret
800086e8:	01075713          	srli	a4,a4,0x10
800086ec:	0107d793          	srli	a5,a5,0x10
800086f0:	40f70533          	sub	a0,a4,a5
800086f4:	0ff57593          	andi	a1,a0,255
800086f8:	00059463          	bnez	a1,80008700 <strcmp+0xfc>
800086fc:	00008067          	ret
80008700:	0ff77713          	andi	a4,a4,255
80008704:	0ff7f793          	andi	a5,a5,255
80008708:	40f70533          	sub	a0,a4,a5
8000870c:	00008067          	ret
80008710:	00054603          	lbu	a2,0(a0)
80008714:	0005c683          	lbu	a3,0(a1)
80008718:	00150513          	addi	a0,a0,1
8000871c:	00158593          	addi	a1,a1,1
80008720:	00d61463          	bne	a2,a3,80008728 <strcmp+0x124>
80008724:	fe0616e3          	bnez	a2,80008710 <strcmp+0x10c>
80008728:	40d60533          	sub	a0,a2,a3
8000872c:	00008067          	ret
80008730:	00450513          	addi	a0,a0,4
80008734:	00458593          	addi	a1,a1,4
80008738:	fcd61ce3          	bne	a2,a3,80008710 <strcmp+0x10c>
8000873c:	00000513          	li	a0,0
80008740:	00008067          	ret
80008744:	00850513          	addi	a0,a0,8
80008748:	00858593          	addi	a1,a1,8
8000874c:	fcd612e3          	bne	a2,a3,80008710 <strcmp+0x10c>
80008750:	00000513          	li	a0,0
80008754:	00008067          	ret
80008758:	00c50513          	addi	a0,a0,12
8000875c:	00c58593          	addi	a1,a1,12
80008760:	fad618e3          	bne	a2,a3,80008710 <strcmp+0x10c>
80008764:	00000513          	li	a0,0
80008768:	00008067          	ret
8000876c:	01050513          	addi	a0,a0,16
80008770:	01058593          	addi	a1,a1,16
80008774:	f8d61ee3          	bne	a2,a3,80008710 <strcmp+0x10c>
80008778:	00000513          	li	a0,0
8000877c:	00008067          	ret

80008780 <strcpy>:
80008780:	00b567b3          	or	a5,a0,a1
80008784:	0037f793          	andi	a5,a5,3
80008788:	08079263          	bnez	a5,8000880c <strcpy+0x8c>
8000878c:	0005a703          	lw	a4,0(a1)
80008790:	7f7f86b7          	lui	a3,0x7f7f8
80008794:	f7f68693          	addi	a3,a3,-129 # 7f7f7f7f <_printf_r-0x808081>
80008798:	00d777b3          	and	a5,a4,a3
8000879c:	00d787b3          	add	a5,a5,a3
800087a0:	00e7e7b3          	or	a5,a5,a4
800087a4:	00d7e7b3          	or	a5,a5,a3
800087a8:	fff00613          	li	a2,-1
800087ac:	06c79e63          	bne	a5,a2,80008828 <strcpy+0xa8>
800087b0:	00050613          	mv	a2,a0
800087b4:	fff00813          	li	a6,-1
800087b8:	00e62023          	sw	a4,0(a2) # 7ff00000 <_printf_r-0x100000>
800087bc:	0045a703          	lw	a4,4(a1)
800087c0:	00458593          	addi	a1,a1,4
800087c4:	00460613          	addi	a2,a2,4
800087c8:	00d777b3          	and	a5,a4,a3
800087cc:	00d787b3          	add	a5,a5,a3
800087d0:	00e7e7b3          	or	a5,a5,a4
800087d4:	00d7e7b3          	or	a5,a5,a3
800087d8:	ff0780e3          	beq	a5,a6,800087b8 <strcpy+0x38>
800087dc:	0005c783          	lbu	a5,0(a1)
800087e0:	0015c703          	lbu	a4,1(a1)
800087e4:	0025c683          	lbu	a3,2(a1)
800087e8:	00f60023          	sb	a5,0(a2)
800087ec:	00078a63          	beqz	a5,80008800 <strcpy+0x80>
800087f0:	00e600a3          	sb	a4,1(a2)
800087f4:	00070663          	beqz	a4,80008800 <strcpy+0x80>
800087f8:	00d60123          	sb	a3,2(a2)
800087fc:	00069463          	bnez	a3,80008804 <strcpy+0x84>
80008800:	00008067          	ret
80008804:	000601a3          	sb	zero,3(a2)
80008808:	00008067          	ret
8000880c:	00050793          	mv	a5,a0
80008810:	0005c703          	lbu	a4,0(a1)
80008814:	00178793          	addi	a5,a5,1
80008818:	00158593          	addi	a1,a1,1
8000881c:	fee78fa3          	sb	a4,-1(a5)
80008820:	fe0718e3          	bnez	a4,80008810 <strcpy+0x90>
80008824:	00008067          	ret
80008828:	00050613          	mv	a2,a0
8000882c:	fb1ff06f          	j	800087dc <strcpy+0x5c>

80008830 <strlen>:
80008830:	00357793          	andi	a5,a0,3
80008834:	00050713          	mv	a4,a0
80008838:	04079c63          	bnez	a5,80008890 <strlen+0x60>
8000883c:	7f7f86b7          	lui	a3,0x7f7f8
80008840:	f7f68693          	addi	a3,a3,-129 # 7f7f7f7f <_printf_r-0x808081>
80008844:	fff00593          	li	a1,-1
80008848:	00072603          	lw	a2,0(a4)
8000884c:	00470713          	addi	a4,a4,4
80008850:	00d677b3          	and	a5,a2,a3
80008854:	00d787b3          	add	a5,a5,a3
80008858:	00c7e7b3          	or	a5,a5,a2
8000885c:	00d7e7b3          	or	a5,a5,a3
80008860:	feb784e3          	beq	a5,a1,80008848 <strlen+0x18>
80008864:	ffc74683          	lbu	a3,-4(a4)
80008868:	ffd74603          	lbu	a2,-3(a4)
8000886c:	ffe74783          	lbu	a5,-2(a4)
80008870:	40a70733          	sub	a4,a4,a0
80008874:	04068063          	beqz	a3,800088b4 <strlen+0x84>
80008878:	02060a63          	beqz	a2,800088ac <strlen+0x7c>
8000887c:	00f03533          	snez	a0,a5
80008880:	00e50533          	add	a0,a0,a4
80008884:	ffe50513          	addi	a0,a0,-2
80008888:	00008067          	ret
8000888c:	fa0688e3          	beqz	a3,8000883c <strlen+0xc>
80008890:	00074783          	lbu	a5,0(a4)
80008894:	00170713          	addi	a4,a4,1
80008898:	00377693          	andi	a3,a4,3
8000889c:	fe0798e3          	bnez	a5,8000888c <strlen+0x5c>
800088a0:	40a70733          	sub	a4,a4,a0
800088a4:	fff70513          	addi	a0,a4,-1
800088a8:	00008067          	ret
800088ac:	ffd70513          	addi	a0,a4,-3
800088b0:	00008067          	ret
800088b4:	ffc70513          	addi	a0,a4,-4
800088b8:	00008067          	ret

800088bc <strncpy>:
800088bc:	00a5e7b3          	or	a5,a1,a0
800088c0:	0037f793          	andi	a5,a5,3
800088c4:	00050713          	mv	a4,a0
800088c8:	06079863          	bnez	a5,80008938 <strncpy+0x7c>
800088cc:	00300793          	li	a5,3
800088d0:	06c7f463          	bgeu	a5,a2,80008938 <strncpy+0x7c>
800088d4:	feff0337          	lui	t1,0xfeff0
800088d8:	808088b7          	lui	a7,0x80808
800088dc:	eff30313          	addi	t1,t1,-257 # fefefeff <heap_end.1814+0x7efda51b>
800088e0:	08088893          	addi	a7,a7,128 # 80808080 <heap_end.1814+0x7f269c>
800088e4:	00300e13          	li	t3,3
800088e8:	0005a683          	lw	a3,0(a1)
800088ec:	006687b3          	add	a5,a3,t1
800088f0:	fff6c813          	not	a6,a3
800088f4:	0107f7b3          	and	a5,a5,a6
800088f8:	0117f7b3          	and	a5,a5,a7
800088fc:	02079e63          	bnez	a5,80008938 <strncpy+0x7c>
80008900:	00d72023          	sw	a3,0(a4)
80008904:	ffc60613          	addi	a2,a2,-4
80008908:	00470713          	addi	a4,a4,4
8000890c:	00458593          	addi	a1,a1,4
80008910:	fcce6ce3          	bltu	t3,a2,800088e8 <strncpy+0x2c>
80008914:	00158593          	addi	a1,a1,1
80008918:	00170793          	addi	a5,a4,1
8000891c:	02060463          	beqz	a2,80008944 <strncpy+0x88>
80008920:	fff5c683          	lbu	a3,-1(a1)
80008924:	fff60813          	addi	a6,a2,-1
80008928:	fed78fa3          	sb	a3,-1(a5)
8000892c:	00068e63          	beqz	a3,80008948 <strncpy+0x8c>
80008930:	00078713          	mv	a4,a5
80008934:	00080613          	mv	a2,a6
80008938:	00158593          	addi	a1,a1,1
8000893c:	00170793          	addi	a5,a4,1
80008940:	fe0610e3          	bnez	a2,80008920 <strncpy+0x64>
80008944:	00008067          	ret
80008948:	00c70633          	add	a2,a4,a2
8000894c:	00080a63          	beqz	a6,80008960 <strncpy+0xa4>
80008950:	00178793          	addi	a5,a5,1
80008954:	fe078fa3          	sb	zero,-1(a5)
80008958:	fec79ce3          	bne	a5,a2,80008950 <strncpy+0x94>
8000895c:	00008067          	ret
80008960:	00008067          	ret

80008964 <_svfprintf_r>:
80008964:	e1010113          	addi	sp,sp,-496
80008968:	1e112623          	sw	ra,492(sp)
8000896c:	1f212023          	sw	s2,480(sp)
80008970:	1d812423          	sw	s8,456(sp)
80008974:	1da12023          	sw	s10,448(sp)
80008978:	00058c13          	mv	s8,a1
8000897c:	00060913          	mv	s2,a2
80008980:	00d12a23          	sw	a3,20(sp)
80008984:	1e812423          	sw	s0,488(sp)
80008988:	1e912223          	sw	s1,484(sp)
8000898c:	1d312e23          	sw	s3,476(sp)
80008990:	1d412c23          	sw	s4,472(sp)
80008994:	1d512a23          	sw	s5,468(sp)
80008998:	1d612823          	sw	s6,464(sp)
8000899c:	1d712623          	sw	s7,460(sp)
800089a0:	1d912223          	sw	s9,452(sp)
800089a4:	1bb12e23          	sw	s11,444(sp)
800089a8:	00050d13          	mv	s10,a0
800089ac:	b29fd0ef          	jal	ra,800064d4 <_localeconv_r>
800089b0:	00052783          	lw	a5,0(a0)
800089b4:	00078513          	mv	a0,a5
800089b8:	02f12823          	sw	a5,48(sp)
800089bc:	e75ff0ef          	jal	ra,80008830 <strlen>
800089c0:	00cc5703          	lhu	a4,12(s8)
800089c4:	0e012823          	sw	zero,240(sp)
800089c8:	0e012a23          	sw	zero,244(sp)
800089cc:	0e012c23          	sw	zero,248(sp)
800089d0:	0e012e23          	sw	zero,252(sp)
800089d4:	08077713          	andi	a4,a4,128
800089d8:	02a12623          	sw	a0,44(sp)
800089dc:	00070863          	beqz	a4,800089ec <_svfprintf_r+0x88>
800089e0:	010c2703          	lw	a4,16(s8)
800089e4:	00071463          	bnez	a4,800089ec <_svfprintf_r+0x88>
800089e8:	56c0106f          	j	80009f54 <_svfprintf_r+0x15f0>
800089ec:	10c10793          	addi	a5,sp,268
800089f0:	80014737          	lui	a4,0x80014
800089f4:	0ef12223          	sw	a5,228(sp)
800089f8:	00078893          	mv	a7,a5
800089fc:	45070793          	addi	a5,a4,1104 # 80014450 <heap_end.1814+0xffffea6c>
80008a00:	80014737          	lui	a4,0x80014
80008a04:	00f12c23          	sw	a5,24(sp)
80008a08:	00090b13          	mv	s6,s2
80008a0c:	5cc70793          	addi	a5,a4,1484 # 800145cc <heap_end.1814+0xffffebe8>
80008a10:	00f12423          	sw	a5,8(sp)
80008a14:	000b4783          	lbu	a5,0(s6)
80008a18:	0e012623          	sw	zero,236(sp)
80008a1c:	0e012423          	sw	zero,232(sp)
80008a20:	02012023          	sw	zero,32(sp)
80008a24:	02012a23          	sw	zero,52(sp)
80008a28:	02012c23          	sw	zero,56(sp)
80008a2c:	02012e23          	sw	zero,60(sp)
80008a30:	04012423          	sw	zero,72(sp)
80008a34:	04012623          	sw	zero,76(sp)
80008a38:	00012623          	sw	zero,12(sp)
80008a3c:	22078463          	beqz	a5,80008c64 <_svfprintf_r+0x300>
80008a40:	000b0413          	mv	s0,s6
80008a44:	02500693          	li	a3,37
80008a48:	2cd78463          	beq	a5,a3,80008d10 <_svfprintf_r+0x3ac>
80008a4c:	00144783          	lbu	a5,1(s0)
80008a50:	00140413          	addi	s0,s0,1
80008a54:	fe079ae3          	bnez	a5,80008a48 <_svfprintf_r+0xe4>
80008a58:	416404b3          	sub	s1,s0,s6
80008a5c:	21640463          	beq	s0,s6,80008c64 <_svfprintf_r+0x300>
80008a60:	0ec12683          	lw	a3,236(sp)
80008a64:	0e812783          	lw	a5,232(sp)
80008a68:	0168a023          	sw	s6,0(a7)
80008a6c:	009686b3          	add	a3,a3,s1
80008a70:	00178793          	addi	a5,a5,1
80008a74:	0098a223          	sw	s1,4(a7)
80008a78:	0ed12623          	sw	a3,236(sp)
80008a7c:	0ef12423          	sw	a5,232(sp)
80008a80:	00700693          	li	a3,7
80008a84:	00888893          	addi	a7,a7,8
80008a88:	28f6cc63          	blt	a3,a5,80008d20 <_svfprintf_r+0x3bc>
80008a8c:	00c12703          	lw	a4,12(sp)
80008a90:	00044783          	lbu	a5,0(s0)
80008a94:	00970733          	add	a4,a4,s1
80008a98:	00e12623          	sw	a4,12(sp)
80008a9c:	1c078463          	beqz	a5,80008c64 <_svfprintf_r+0x300>
80008aa0:	00144483          	lbu	s1,1(s0)
80008aa4:	0c0103a3          	sb	zero,199(sp)
80008aa8:	00140413          	addi	s0,s0,1
80008aac:	fff00d93          	li	s11,-1
80008ab0:	00000993          	li	s3,0
80008ab4:	00000a13          	li	s4,0
80008ab8:	05a00913          	li	s2,90
80008abc:	00900a93          	li	s5,9
80008ac0:	02a00b93          	li	s7,42
80008ac4:	00088c93          	mv	s9,a7
80008ac8:	00140413          	addi	s0,s0,1
80008acc:	fe048793          	addi	a5,s1,-32 # 7fffffe0 <heap_end.1814+0xfffea5fc>
80008ad0:	04f96463          	bltu	s2,a5,80008b18 <_svfprintf_r+0x1b4>
80008ad4:	01812703          	lw	a4,24(sp)
80008ad8:	00279793          	slli	a5,a5,0x2
80008adc:	00e787b3          	add	a5,a5,a4
80008ae0:	0007a783          	lw	a5,0(a5)
80008ae4:	00078067          	jr	a5
80008ae8:	00000993          	li	s3,0
80008aec:	fd048693          	addi	a3,s1,-48
80008af0:	00044483          	lbu	s1,0(s0)
80008af4:	00299793          	slli	a5,s3,0x2
80008af8:	013787b3          	add	a5,a5,s3
80008afc:	00179793          	slli	a5,a5,0x1
80008b00:	00f689b3          	add	s3,a3,a5
80008b04:	fd048693          	addi	a3,s1,-48
80008b08:	00140413          	addi	s0,s0,1
80008b0c:	fedaf2e3          	bgeu	s5,a3,80008af0 <_svfprintf_r+0x18c>
80008b10:	fe048793          	addi	a5,s1,-32
80008b14:	fcf970e3          	bgeu	s2,a5,80008ad4 <_svfprintf_r+0x170>
80008b18:	000c8893          	mv	a7,s9
80008b1c:	14048463          	beqz	s1,80008c64 <_svfprintf_r+0x300>
80008b20:	14910623          	sb	s1,332(sp)
80008b24:	0c0103a3          	sb	zero,199(sp)
80008b28:	00100a93          	li	s5,1
80008b2c:	00100c93          	li	s9,1
80008b30:	14c10b13          	addi	s6,sp,332
80008b34:	00012823          	sw	zero,16(sp)
80008b38:	00000d93          	li	s11,0
80008b3c:	02012423          	sw	zero,40(sp)
80008b40:	02012223          	sw	zero,36(sp)
80008b44:	00012e23          	sw	zero,28(sp)
80008b48:	002a7b93          	andi	s7,s4,2
80008b4c:	000b8463          	beqz	s7,80008b54 <_svfprintf_r+0x1f0>
80008b50:	002a8a93          	addi	s5,s5,2
80008b54:	084a7913          	andi	s2,s4,132
80008b58:	0ec12783          	lw	a5,236(sp)
80008b5c:	00091663          	bnez	s2,80008b68 <_svfprintf_r+0x204>
80008b60:	41598833          	sub	a6,s3,s5
80008b64:	63004ce3          	bgtz	a6,8000999c <_svfprintf_r+0x1038>
80008b68:	0c714683          	lbu	a3,199(sp)
80008b6c:	02068a63          	beqz	a3,80008ba0 <_svfprintf_r+0x23c>
80008b70:	0e812683          	lw	a3,232(sp)
80008b74:	0c710613          	addi	a2,sp,199
80008b78:	00c8a023          	sw	a2,0(a7)
80008b7c:	00178793          	addi	a5,a5,1
80008b80:	00100613          	li	a2,1
80008b84:	00168693          	addi	a3,a3,1
80008b88:	00c8a223          	sw	a2,4(a7)
80008b8c:	0ef12623          	sw	a5,236(sp)
80008b90:	0ed12423          	sw	a3,232(sp)
80008b94:	00700613          	li	a2,7
80008b98:	00888893          	addi	a7,a7,8
80008b9c:	4cd64c63          	blt	a2,a3,80009074 <_svfprintf_r+0x710>
80008ba0:	020b8a63          	beqz	s7,80008bd4 <_svfprintf_r+0x270>
80008ba4:	0e812683          	lw	a3,232(sp)
80008ba8:	0c810613          	addi	a2,sp,200
80008bac:	00c8a023          	sw	a2,0(a7)
80008bb0:	00278793          	addi	a5,a5,2
80008bb4:	00200613          	li	a2,2
80008bb8:	00168693          	addi	a3,a3,1
80008bbc:	00c8a223          	sw	a2,4(a7)
80008bc0:	0ef12623          	sw	a5,236(sp)
80008bc4:	0ed12423          	sw	a3,232(sp)
80008bc8:	00700613          	li	a2,7
80008bcc:	00888893          	addi	a7,a7,8
80008bd0:	6ad64ce3          	blt	a2,a3,80009a88 <_svfprintf_r+0x1124>
80008bd4:	08000693          	li	a3,128
80008bd8:	42d900e3          	beq	s2,a3,800097f8 <_svfprintf_r+0xe94>
80008bdc:	419d8db3          	sub	s11,s11,s9
80008be0:	4db04ee3          	bgtz	s11,800098bc <_svfprintf_r+0xf58>
80008be4:	100a7693          	andi	a3,s4,256
80008be8:	2c069ae3          	bnez	a3,800096bc <_svfprintf_r+0xd58>
80008bec:	0e812703          	lw	a4,232(sp)
80008bf0:	019787b3          	add	a5,a5,s9
80008bf4:	0168a023          	sw	s6,0(a7)
80008bf8:	00170713          	addi	a4,a4,1
80008bfc:	0198a223          	sw	s9,4(a7)
80008c00:	0ef12623          	sw	a5,236(sp)
80008c04:	0ee12423          	sw	a4,232(sp)
80008c08:	00700693          	li	a3,7
80008c0c:	5ae6c063          	blt	a3,a4,800091ac <_svfprintf_r+0x848>
80008c10:	00888893          	addi	a7,a7,8
80008c14:	004a7a13          	andi	s4,s4,4
80008c18:	000a0663          	beqz	s4,80008c24 <_svfprintf_r+0x2c0>
80008c1c:	415984b3          	sub	s1,s3,s5
80008c20:	5a904663          	bgtz	s1,800091cc <_svfprintf_r+0x868>
80008c24:	0159d463          	bge	s3,s5,80008c2c <_svfprintf_r+0x2c8>
80008c28:	000a8993          	mv	s3,s5
80008c2c:	00c12703          	lw	a4,12(sp)
80008c30:	01370733          	add	a4,a4,s3
80008c34:	00e12623          	sw	a4,12(sp)
80008c38:	52079ce3          	bnez	a5,80009970 <_svfprintf_r+0x100c>
80008c3c:	01012783          	lw	a5,16(sp)
80008c40:	0e012423          	sw	zero,232(sp)
80008c44:	00078863          	beqz	a5,80008c54 <_svfprintf_r+0x2f0>
80008c48:	01012583          	lw	a1,16(sp)
80008c4c:	000d0513          	mv	a0,s10
80008c50:	89dfa0ef          	jal	ra,800034ec <_free_r>
80008c54:	10c10893          	addi	a7,sp,268
80008c58:	00040b13          	mv	s6,s0
80008c5c:	000b4783          	lbu	a5,0(s6)
80008c60:	de0790e3          	bnez	a5,80008a40 <_svfprintf_r+0xdc>
80008c64:	0ec12783          	lw	a5,236(sp)
80008c68:	00078463          	beqz	a5,80008c70 <_svfprintf_r+0x30c>
80008c6c:	3450106f          	j	8000a7b0 <_svfprintf_r+0x1e4c>
80008c70:	00cc5703          	lhu	a4,12(s8)
80008c74:	04077713          	andi	a4,a4,64
80008c78:	00070463          	beqz	a4,80008c80 <_svfprintf_r+0x31c>
80008c7c:	3f80206f          	j	8000b074 <_svfprintf_r+0x2710>
80008c80:	1ec12083          	lw	ra,492(sp)
80008c84:	1e812403          	lw	s0,488(sp)
80008c88:	00c12503          	lw	a0,12(sp)
80008c8c:	1e412483          	lw	s1,484(sp)
80008c90:	1e012903          	lw	s2,480(sp)
80008c94:	1dc12983          	lw	s3,476(sp)
80008c98:	1d812a03          	lw	s4,472(sp)
80008c9c:	1d412a83          	lw	s5,468(sp)
80008ca0:	1d012b03          	lw	s6,464(sp)
80008ca4:	1cc12b83          	lw	s7,460(sp)
80008ca8:	1c812c03          	lw	s8,456(sp)
80008cac:	1c412c83          	lw	s9,452(sp)
80008cb0:	1c012d03          	lw	s10,448(sp)
80008cb4:	1bc12d83          	lw	s11,444(sp)
80008cb8:	1f010113          	addi	sp,sp,496
80008cbc:	00008067          	ret
80008cc0:	000d0513          	mv	a0,s10
80008cc4:	811fd0ef          	jal	ra,800064d4 <_localeconv_r>
80008cc8:	00452783          	lw	a5,4(a0)
80008ccc:	00078513          	mv	a0,a5
80008cd0:	04f12623          	sw	a5,76(sp)
80008cd4:	b5dff0ef          	jal	ra,80008830 <strlen>
80008cd8:	00050793          	mv	a5,a0
80008cdc:	000d0513          	mv	a0,s10
80008ce0:	00078493          	mv	s1,a5
80008ce4:	04f12423          	sw	a5,72(sp)
80008ce8:	fecfd0ef          	jal	ra,800064d4 <_localeconv_r>
80008cec:	00852783          	lw	a5,8(a0)
80008cf0:	02f12e23          	sw	a5,60(sp)
80008cf4:	00048463          	beqz	s1,80008cfc <_svfprintf_r+0x398>
80008cf8:	1640106f          	j	80009e5c <_svfprintf_r+0x14f8>
80008cfc:	00044483          	lbu	s1,0(s0)
80008d00:	dc9ff06f          	j	80008ac8 <_svfprintf_r+0x164>
80008d04:	00044483          	lbu	s1,0(s0)
80008d08:	020a6a13          	ori	s4,s4,32
80008d0c:	dbdff06f          	j	80008ac8 <_svfprintf_r+0x164>
80008d10:	416404b3          	sub	s1,s0,s6
80008d14:	d56416e3          	bne	s0,s6,80008a60 <_svfprintf_r+0xfc>
80008d18:	00044783          	lbu	a5,0(s0)
80008d1c:	d81ff06f          	j	80008a9c <_svfprintf_r+0x138>
80008d20:	0e410613          	addi	a2,sp,228
80008d24:	000c0593          	mv	a1,s8
80008d28:	000d0513          	mv	a0,s10
80008d2c:	761040ef          	jal	ra,8000dc8c <__ssprint_r>
80008d30:	f40510e3          	bnez	a0,80008c70 <_svfprintf_r+0x30c>
80008d34:	10c10893          	addi	a7,sp,268
80008d38:	d55ff06f          	j	80008a8c <_svfprintf_r+0x128>
80008d3c:	008a7793          	andi	a5,s4,8
80008d40:	000c8893          	mv	a7,s9
80008d44:	00078463          	beqz	a5,80008d4c <_svfprintf_r+0x3e8>
80008d48:	0a80106f          	j	80009df0 <_svfprintf_r+0x148c>
80008d4c:	01412783          	lw	a5,20(sp)
80008d50:	0b010513          	addi	a0,sp,176
80008d54:	01912823          	sw	s9,16(sp)
80008d58:	00778793          	addi	a5,a5,7
80008d5c:	ff87f793          	andi	a5,a5,-8
80008d60:	0007a583          	lw	a1,0(a5)
80008d64:	0047a603          	lw	a2,4(a5)
80008d68:	00878793          	addi	a5,a5,8
80008d6c:	00f12a23          	sw	a5,20(sp)
80008d70:	30d0a0ef          	jal	ra,8001387c <__extenddftf2>
80008d74:	0b012783          	lw	a5,176(sp)
80008d78:	01012883          	lw	a7,16(sp)
80008d7c:	0ef12823          	sw	a5,240(sp)
80008d80:	0b412783          	lw	a5,180(sp)
80008d84:	0ef12a23          	sw	a5,244(sp)
80008d88:	0b812783          	lw	a5,184(sp)
80008d8c:	0ef12c23          	sw	a5,248(sp)
80008d90:	0bc12783          	lw	a5,188(sp)
80008d94:	0ef12e23          	sw	a5,252(sp)
80008d98:	0f010513          	addi	a0,sp,240
80008d9c:	01112823          	sw	a7,16(sp)
80008da0:	ec8fd0ef          	jal	ra,80006468 <_ldcheck>
80008da4:	0ca12623          	sw	a0,204(sp)
80008da8:	00200793          	li	a5,2
80008dac:	01012883          	lw	a7,16(sp)
80008db0:	00f51463          	bne	a0,a5,80008db8 <_svfprintf_r+0x454>
80008db4:	6580106f          	j	8000a40c <_svfprintf_r+0x1aa8>
80008db8:	00100793          	li	a5,1
80008dbc:	00f51463          	bne	a0,a5,80008dc4 <_svfprintf_r+0x460>
80008dc0:	0750106f          	j	8000a634 <_svfprintf_r+0x1cd0>
80008dc4:	06100793          	li	a5,97
80008dc8:	00f49463          	bne	s1,a5,80008dd0 <_svfprintf_r+0x46c>
80008dcc:	19c0206f          	j	8000af68 <_svfprintf_r+0x2604>
80008dd0:	04100793          	li	a5,65
80008dd4:	00f49463          	bne	s1,a5,80008ddc <_svfprintf_r+0x478>
80008dd8:	52d0106f          	j	8000ab04 <_svfprintf_r+0x21a0>
80008ddc:	fdf4fb93          	andi	s7,s1,-33
80008de0:	fff00793          	li	a5,-1
80008de4:	05712a23          	sw	s7,84(sp)
80008de8:	00fd9463          	bne	s11,a5,80008df0 <_svfprintf_r+0x48c>
80008dec:	2150106f          	j	8000a800 <_svfprintf_r+0x1e9c>
80008df0:	04700793          	li	a5,71
80008df4:	00fb9463          	bne	s7,a5,80008dfc <_svfprintf_r+0x498>
80008df8:	1e80206f          	j	8000afe0 <_svfprintf_r+0x267c>
80008dfc:	0fc12303          	lw	t1,252(sp)
80008e00:	03412423          	sw	s4,40(sp)
80008e04:	0f012e03          	lw	t3,240(sp)
80008e08:	0f412e83          	lw	t4,244(sp)
80008e0c:	0f812f03          	lw	t5,248(sp)
80008e10:	100a6793          	ori	a5,s4,256
80008e14:	00035463          	bgez	t1,80008e1c <_svfprintf_r+0x4b8>
80008e18:	39c0206f          	j	8000b1b4 <_svfprintf_r+0x2850>
80008e1c:	04012c23          	sw	zero,88(sp)
80008e20:	00078a13          	mv	s4,a5
80008e24:	00012823          	sw	zero,16(sp)
80008e28:	04600793          	li	a5,70
80008e2c:	00fb9463          	bne	s7,a5,80008e34 <_svfprintf_r+0x4d0>
80008e30:	2b90106f          	j	8000a8e8 <_svfprintf_r+0x1f84>
80008e34:	04500793          	li	a5,69
80008e38:	05112223          	sw	a7,68(sp)
80008e3c:	00fb8463          	beq	s7,a5,80008e44 <_svfprintf_r+0x4e0>
80008e40:	33d0106f          	j	8000a97c <_svfprintf_r+0x2018>
80008e44:	001d8913          	addi	s2,s11,1
80008e48:	0b010a93          	addi	s5,sp,176
80008e4c:	00090693          	mv	a3,s2
80008e50:	0dc10813          	addi	a6,sp,220
80008e54:	0d010793          	addi	a5,sp,208
80008e58:	0cc10713          	addi	a4,sp,204
80008e5c:	00200613          	li	a2,2
80008e60:	000a8593          	mv	a1,s5
80008e64:	000d0513          	mv	a0,s10
80008e68:	0bc12823          	sw	t3,176(sp)
80008e6c:	05c12023          	sw	t3,64(sp)
80008e70:	0bd12a23          	sw	t4,180(sp)
80008e74:	03d12223          	sw	t4,36(sp)
80008e78:	0be12c23          	sw	t5,184(sp)
80008e7c:	03e12023          	sw	t5,32(sp)
80008e80:	0a612e23          	sw	t1,188(sp)
80008e84:	00612e23          	sw	t1,28(sp)
80008e88:	b48fc0ef          	jal	ra,800051d0 <_ldtoa_r>
80008e8c:	01c12303          	lw	t1,28(sp)
80008e90:	02012f03          	lw	t5,32(sp)
80008e94:	02412e83          	lw	t4,36(sp)
80008e98:	04012e03          	lw	t3,64(sp)
80008e9c:	04412883          	lw	a7,68(sp)
80008ea0:	00050b13          	mv	s6,a0
80008ea4:	01250933          	add	s2,a0,s2
80008ea8:	0a010c93          	addi	s9,sp,160
80008eac:	000c8593          	mv	a1,s9
80008eb0:	000a8513          	mv	a0,s5
80008eb4:	01112e23          	sw	a7,28(sp)
80008eb8:	0bc12823          	sw	t3,176(sp)
80008ebc:	0bd12a23          	sw	t4,180(sp)
80008ec0:	0be12c23          	sw	t5,184(sp)
80008ec4:	0a612e23          	sw	t1,188(sp)
80008ec8:	0a012023          	sw	zero,160(sp)
80008ecc:	0a012223          	sw	zero,164(sp)
80008ed0:	0a012423          	sw	zero,168(sp)
80008ed4:	0a012623          	sw	zero,172(sp)
80008ed8:	6cd070ef          	jal	ra,80010da4 <__eqtf2>
80008edc:	01c12883          	lw	a7,28(sp)
80008ee0:	00090713          	mv	a4,s2
80008ee4:	02050263          	beqz	a0,80008f08 <_svfprintf_r+0x5a4>
80008ee8:	0dc12703          	lw	a4,220(sp)
80008eec:	01277e63          	bgeu	a4,s2,80008f08 <_svfprintf_r+0x5a4>
80008ef0:	03000693          	li	a3,48
80008ef4:	00170793          	addi	a5,a4,1
80008ef8:	0cf12e23          	sw	a5,220(sp)
80008efc:	00d70023          	sb	a3,0(a4)
80008f00:	0dc12703          	lw	a4,220(sp)
80008f04:	ff2768e3          	bltu	a4,s2,80008ef4 <_svfprintf_r+0x590>
80008f08:	416707b3          	sub	a5,a4,s6
80008f0c:	02f12023          	sw	a5,32(sp)
80008f10:	0cc12703          	lw	a4,204(sp)
80008f14:	04700793          	li	a5,71
80008f18:	00e12e23          	sw	a4,28(sp)
80008f1c:	05412703          	lw	a4,84(sp)
80008f20:	00f71463          	bne	a4,a5,80008f28 <_svfprintf_r+0x5c4>
80008f24:	1150106f          	j	8000a838 <_svfprintf_r+0x1ed4>
80008f28:	05412703          	lw	a4,84(sp)
80008f2c:	04600793          	li	a5,70
80008f30:	00f71463          	bne	a4,a5,80008f38 <_svfprintf_r+0x5d4>
80008f34:	34d0106f          	j	8000aa80 <_svfprintf_r+0x211c>
80008f38:	01c12783          	lw	a5,28(sp)
80008f3c:	05412703          	lw	a4,84(sp)
80008f40:	04100593          	li	a1,65
80008f44:	fff78793          	addi	a5,a5,-1
80008f48:	0cf12623          	sw	a5,204(sp)
80008f4c:	0ff4f693          	andi	a3,s1,255
80008f50:	00000613          	li	a2,0
80008f54:	00b71863          	bne	a4,a1,80008f64 <_svfprintf_r+0x600>
80008f58:	00f68693          	addi	a3,a3,15
80008f5c:	0ff6f693          	andi	a3,a3,255
80008f60:	00100613          	li	a2,1
80008f64:	0cd10a23          	sb	a3,212(sp)
80008f68:	02b00693          	li	a3,43
80008f6c:	0007da63          	bgez	a5,80008f80 <_svfprintf_r+0x61c>
80008f70:	01c12703          	lw	a4,28(sp)
80008f74:	00100793          	li	a5,1
80008f78:	02d00693          	li	a3,45
80008f7c:	40e787b3          	sub	a5,a5,a4
80008f80:	0cd10aa3          	sb	a3,213(sp)
80008f84:	00900693          	li	a3,9
80008f88:	00f6c463          	blt	a3,a5,80008f90 <_svfprintf_r+0x62c>
80008f8c:	0f40206f          	j	8000b080 <_svfprintf_r+0x271c>
80008f90:	0e310813          	addi	a6,sp,227
80008f94:	00080513          	mv	a0,a6
80008f98:	00a00613          	li	a2,10
80008f9c:	06300e13          	li	t3,99
80008fa0:	02c7e733          	rem	a4,a5,a2
80008fa4:	00050593          	mv	a1,a0
80008fa8:	00078693          	mv	a3,a5
80008fac:	fff50513          	addi	a0,a0,-1
80008fb0:	03070713          	addi	a4,a4,48
80008fb4:	fee58fa3          	sb	a4,-1(a1)
80008fb8:	02c7c7b3          	div	a5,a5,a2
80008fbc:	fede42e3          	blt	t3,a3,80008fa0 <_svfprintf_r+0x63c>
80008fc0:	03078793          	addi	a5,a5,48
80008fc4:	0ff7f613          	andi	a2,a5,255
80008fc8:	fec50fa3          	sb	a2,-1(a0)
80008fcc:	ffe58793          	addi	a5,a1,-2
80008fd0:	0107e463          	bltu	a5,a6,80008fd8 <_svfprintf_r+0x674>
80008fd4:	3980206f          	j	8000b36c <_svfprintf_r+0x2a08>
80008fd8:	0d610693          	addi	a3,sp,214
80008fdc:	0080006f          	j	80008fe4 <_svfprintf_r+0x680>
80008fe0:	0007c603          	lbu	a2,0(a5)
80008fe4:	00c68023          	sb	a2,0(a3)
80008fe8:	00178793          	addi	a5,a5,1
80008fec:	00168693          	addi	a3,a3,1
80008ff0:	ff0798e3          	bne	a5,a6,80008fe0 <_svfprintf_r+0x67c>
80008ff4:	0e510793          	addi	a5,sp,229
80008ff8:	40b787b3          	sub	a5,a5,a1
80008ffc:	0d610713          	addi	a4,sp,214
80009000:	00f707b3          	add	a5,a4,a5
80009004:	0d410693          	addi	a3,sp,212
80009008:	40d787b3          	sub	a5,a5,a3
8000900c:	02f12c23          	sw	a5,56(sp)
80009010:	02012703          	lw	a4,32(sp)
80009014:	03812683          	lw	a3,56(sp)
80009018:	00100793          	li	a5,1
8000901c:	00d70cb3          	add	s9,a4,a3
80009020:	00e7c463          	blt	a5,a4,80009028 <_svfprintf_r+0x6c4>
80009024:	2300206f          	j	8000b254 <_svfprintf_r+0x28f0>
80009028:	02c12783          	lw	a5,44(sp)
8000902c:	00fc8cb3          	add	s9,s9,a5
80009030:	02812783          	lw	a5,40(sp)
80009034:	fffcca93          	not	s5,s9
80009038:	41fada93          	srai	s5,s5,0x1f
8000903c:	bff7fa13          	andi	s4,a5,-1025
80009040:	100a6a13          	ori	s4,s4,256
80009044:	015cfab3          	and	s5,s9,s5
80009048:	02012423          	sw	zero,40(sp)
8000904c:	02012223          	sw	zero,36(sp)
80009050:	00012e23          	sw	zero,28(sp)
80009054:	05812783          	lw	a5,88(sp)
80009058:	00079463          	bnez	a5,80009060 <_svfprintf_r+0x6fc>
8000905c:	0510106f          	j	8000a8ac <_svfprintf_r+0x1f48>
80009060:	02d00793          	li	a5,45
80009064:	0cf103a3          	sb	a5,199(sp)
80009068:	00000d93          	li	s11,0
8000906c:	001a8a93          	addi	s5,s5,1
80009070:	ad9ff06f          	j	80008b48 <_svfprintf_r+0x1e4>
80009074:	0e410613          	addi	a2,sp,228
80009078:	000c0593          	mv	a1,s8
8000907c:	000d0513          	mv	a0,s10
80009080:	40d040ef          	jal	ra,8000dc8c <__ssprint_r>
80009084:	100510e3          	bnez	a0,80009984 <_svfprintf_r+0x1020>
80009088:	0ec12783          	lw	a5,236(sp)
8000908c:	10c10893          	addi	a7,sp,268
80009090:	b11ff06f          	j	80008ba0 <_svfprintf_r+0x23c>
80009094:	0e812683          	lw	a3,232(sp)
80009098:	00178c93          	addi	s9,a5,1
8000909c:	02012783          	lw	a5,32(sp)
800090a0:	00100613          	li	a2,1
800090a4:	0168a023          	sw	s6,0(a7)
800090a8:	00168493          	addi	s1,a3,1
800090ac:	00888913          	addi	s2,a7,8
800090b0:	36f658e3          	bge	a2,a5,80009c20 <_svfprintf_r+0x12bc>
800090b4:	00100793          	li	a5,1
800090b8:	00f8a223          	sw	a5,4(a7)
800090bc:	0f912623          	sw	s9,236(sp)
800090c0:	0e912423          	sw	s1,232(sp)
800090c4:	00700793          	li	a5,7
800090c8:	4a97c0e3          	blt	a5,s1,80009d68 <_svfprintf_r+0x1404>
800090cc:	02c12783          	lw	a5,44(sp)
800090d0:	03012703          	lw	a4,48(sp)
800090d4:	00148493          	addi	s1,s1,1
800090d8:	00fc8cb3          	add	s9,s9,a5
800090dc:	00f92223          	sw	a5,4(s2)
800090e0:	00e92023          	sw	a4,0(s2)
800090e4:	0f912623          	sw	s9,236(sp)
800090e8:	0e912423          	sw	s1,232(sp)
800090ec:	00700793          	li	a5,7
800090f0:	00890913          	addi	s2,s2,8
800090f4:	4897cce3          	blt	a5,s1,80009d8c <_svfprintf_r+0x1428>
800090f8:	0f012783          	lw	a5,240(sp)
800090fc:	00148613          	addi	a2,s1,1
80009100:	0a010593          	addi	a1,sp,160
80009104:	0af12823          	sw	a5,176(sp)
80009108:	0f412783          	lw	a5,244(sp)
8000910c:	0b010513          	addi	a0,sp,176
80009110:	00c12e23          	sw	a2,28(sp)
80009114:	0af12a23          	sw	a5,180(sp)
80009118:	0f812783          	lw	a5,248(sp)
8000911c:	0a012023          	sw	zero,160(sp)
80009120:	0a012223          	sw	zero,164(sp)
80009124:	0af12c23          	sw	a5,184(sp)
80009128:	0fc12783          	lw	a5,252(sp)
8000912c:	0a012423          	sw	zero,168(sp)
80009130:	0a012623          	sw	zero,172(sp)
80009134:	0af12e23          	sw	a5,188(sp)
80009138:	46d070ef          	jal	ra,80010da4 <__eqtf2>
8000913c:	01c12603          	lw	a2,28(sp)
80009140:	02012783          	lw	a5,32(sp)
80009144:	00890893          	addi	a7,s2,8
80009148:	00060693          	mv	a3,a2
8000914c:	fff78d93          	addi	s11,a5,-1
80009150:	2e050ce3          	beqz	a0,80009c48 <_svfprintf_r+0x12e4>
80009154:	001b0713          	addi	a4,s6,1
80009158:	01bc8cb3          	add	s9,s9,s11
8000915c:	00e92023          	sw	a4,0(s2)
80009160:	01b92223          	sw	s11,4(s2)
80009164:	0f912623          	sw	s9,236(sp)
80009168:	0ec12423          	sw	a2,232(sp)
8000916c:	00700793          	li	a5,7
80009170:	00c7d463          	bge	a5,a2,80009178 <_svfprintf_r+0x814>
80009174:	0180106f          	j	8000a18c <_svfprintf_r+0x1828>
80009178:	01090793          	addi	a5,s2,16
8000917c:	00248693          	addi	a3,s1,2
80009180:	00088913          	mv	s2,a7
80009184:	00078893          	mv	a7,a5
80009188:	03812603          	lw	a2,56(sp)
8000918c:	0d410713          	addi	a4,sp,212
80009190:	00e92023          	sw	a4,0(s2)
80009194:	019607b3          	add	a5,a2,s9
80009198:	00c92223          	sw	a2,4(s2)
8000919c:	0ef12623          	sw	a5,236(sp)
800091a0:	0ed12423          	sw	a3,232(sp)
800091a4:	00700713          	li	a4,7
800091a8:	a6d756e3          	bge	a4,a3,80008c14 <_svfprintf_r+0x2b0>
800091ac:	0e410613          	addi	a2,sp,228
800091b0:	000c0593          	mv	a1,s8
800091b4:	000d0513          	mv	a0,s10
800091b8:	2d5040ef          	jal	ra,8000dc8c <__ssprint_r>
800091bc:	7c051463          	bnez	a0,80009984 <_svfprintf_r+0x1020>
800091c0:	0ec12783          	lw	a5,236(sp)
800091c4:	10c10893          	addi	a7,sp,268
800091c8:	a4dff06f          	j	80008c14 <_svfprintf_r+0x2b0>
800091cc:	01000693          	li	a3,16
800091d0:	0e812703          	lw	a4,232(sp)
800091d4:	0096c463          	blt	a3,s1,800091dc <_svfprintf_r+0x878>
800091d8:	1210106f          	j	8000aaf8 <_svfprintf_r+0x2194>
800091dc:	800146b7          	lui	a3,0x80014
800091e0:	5bc68e93          	addi	t4,a3,1468 # 800145bc <heap_end.1814+0xffffebd8>
800091e4:	01000913          	li	s2,16
800091e8:	00700a13          	li	s4,7
800091ec:	000e8b13          	mv	s6,t4
800091f0:	00c0006f          	j	800091fc <_svfprintf_r+0x898>
800091f4:	ff048493          	addi	s1,s1,-16
800091f8:	04995663          	bge	s2,s1,80009244 <_svfprintf_r+0x8e0>
800091fc:	01078793          	addi	a5,a5,16
80009200:	00170713          	addi	a4,a4,1
80009204:	0168a023          	sw	s6,0(a7)
80009208:	0128a223          	sw	s2,4(a7)
8000920c:	0ef12623          	sw	a5,236(sp)
80009210:	0ee12423          	sw	a4,232(sp)
80009214:	00888893          	addi	a7,a7,8
80009218:	fcea5ee3          	bge	s4,a4,800091f4 <_svfprintf_r+0x890>
8000921c:	0e410613          	addi	a2,sp,228
80009220:	000c0593          	mv	a1,s8
80009224:	000d0513          	mv	a0,s10
80009228:	265040ef          	jal	ra,8000dc8c <__ssprint_r>
8000922c:	74051c63          	bnez	a0,80009984 <_svfprintf_r+0x1020>
80009230:	ff048493          	addi	s1,s1,-16
80009234:	0ec12783          	lw	a5,236(sp)
80009238:	0e812703          	lw	a4,232(sp)
8000923c:	10c10893          	addi	a7,sp,268
80009240:	fa994ee3          	blt	s2,s1,800091fc <_svfprintf_r+0x898>
80009244:	000b0e93          	mv	t4,s6
80009248:	009787b3          	add	a5,a5,s1
8000924c:	00170713          	addi	a4,a4,1
80009250:	01d8a023          	sw	t4,0(a7)
80009254:	0098a223          	sw	s1,4(a7)
80009258:	0ef12623          	sw	a5,236(sp)
8000925c:	0ee12423          	sw	a4,232(sp)
80009260:	00700693          	li	a3,7
80009264:	9ce6d0e3          	bge	a3,a4,80008c24 <_svfprintf_r+0x2c0>
80009268:	0e410613          	addi	a2,sp,228
8000926c:	000c0593          	mv	a1,s8
80009270:	000d0513          	mv	a0,s10
80009274:	219040ef          	jal	ra,8000dc8c <__ssprint_r>
80009278:	70051663          	bnez	a0,80009984 <_svfprintf_r+0x1020>
8000927c:	0ec12783          	lw	a5,236(sp)
80009280:	9a5ff06f          	j	80008c24 <_svfprintf_r+0x2c0>
80009284:	01412783          	lw	a5,20(sp)
80009288:	0c0103a3          	sb	zero,199(sp)
8000928c:	000c8893          	mv	a7,s9
80009290:	0007ab03          	lw	s6,0(a5)
80009294:	00478913          	addi	s2,a5,4
80009298:	4e0b02e3          	beqz	s6,80009f7c <_svfprintf_r+0x1618>
8000929c:	fff00793          	li	a5,-1
800092a0:	00fd9463          	bne	s11,a5,800092a8 <_svfprintf_r+0x944>
800092a4:	1fc0106f          	j	8000a4a0 <_svfprintf_r+0x1b3c>
800092a8:	000d8613          	mv	a2,s11
800092ac:	00000593          	li	a1,0
800092b0:	000b0513          	mv	a0,s6
800092b4:	01912a23          	sw	s9,20(sp)
800092b8:	cf1fd0ef          	jal	ra,80006fa8 <memchr>
800092bc:	00a12823          	sw	a0,16(sp)
800092c0:	01412883          	lw	a7,20(sp)
800092c4:	00051463          	bnez	a0,800092cc <_svfprintf_r+0x968>
800092c8:	75c0106f          	j	8000aa24 <_svfprintf_r+0x20c0>
800092cc:	01012783          	lw	a5,16(sp)
800092d0:	01212a23          	sw	s2,20(sp)
800092d4:	00012823          	sw	zero,16(sp)
800092d8:	41678cb3          	sub	s9,a5,s6
800092dc:	0c714783          	lbu	a5,199(sp)
800092e0:	fffcca93          	not	s5,s9
800092e4:	41fada93          	srai	s5,s5,0x1f
800092e8:	02012423          	sw	zero,40(sp)
800092ec:	02012223          	sw	zero,36(sp)
800092f0:	00012e23          	sw	zero,28(sp)
800092f4:	015cfab3          	and	s5,s9,s5
800092f8:	00000d93          	li	s11,0
800092fc:	840786e3          	beqz	a5,80008b48 <_svfprintf_r+0x1e4>
80009300:	001a8a93          	addi	s5,s5,1
80009304:	845ff06f          	j	80008b48 <_svfprintf_r+0x1e4>
80009308:	01412703          	lw	a4,20(sp)
8000930c:	000c8893          	mv	a7,s9
80009310:	0c0103a3          	sb	zero,199(sp)
80009314:	00072783          	lw	a5,0(a4)
80009318:	00470713          	addi	a4,a4,4
8000931c:	00e12a23          	sw	a4,20(sp)
80009320:	14f10623          	sb	a5,332(sp)
80009324:	00100a93          	li	s5,1
80009328:	00100c93          	li	s9,1
8000932c:	14c10b13          	addi	s6,sp,332
80009330:	805ff06f          	j	80008b34 <_svfprintf_r+0x1d0>
80009334:	00044483          	lbu	s1,0(s0)
80009338:	004a6a13          	ori	s4,s4,4
8000933c:	f8cff06f          	j	80008ac8 <_svfprintf_r+0x164>
80009340:	01412683          	lw	a3,20(sp)
80009344:	020a7793          	andi	a5,s4,32
80009348:	000c8893          	mv	a7,s9
8000934c:	0006a703          	lw	a4,0(a3)
80009350:	00468693          	addi	a3,a3,4
80009354:	00d12a23          	sw	a3,20(sp)
80009358:	280790e3          	bnez	a5,80009dd8 <_svfprintf_r+0x1474>
8000935c:	010a7793          	andi	a5,s4,16
80009360:	00078463          	beqz	a5,80009368 <_svfprintf_r+0xa04>
80009364:	12c0106f          	j	8000a490 <_svfprintf_r+0x1b2c>
80009368:	040a7793          	andi	a5,s4,64
8000936c:	00078463          	beqz	a5,80009374 <_svfprintf_r+0xa10>
80009370:	3d80106f          	j	8000a748 <_svfprintf_r+0x1de4>
80009374:	200a7a13          	andi	s4,s4,512
80009378:	000a1463          	bnez	s4,80009380 <_svfprintf_r+0xa1c>
8000937c:	1140106f          	j	8000a490 <_svfprintf_r+0x1b2c>
80009380:	00c12783          	lw	a5,12(sp)
80009384:	00040b13          	mv	s6,s0
80009388:	00f70023          	sb	a5,0(a4)
8000938c:	8d1ff06f          	j	80008c5c <_svfprintf_r+0x2f8>
80009390:	00044483          	lbu	s1,0(s0)
80009394:	06c00793          	li	a5,108
80009398:	38f48ee3          	beq	s1,a5,80009f34 <_svfprintf_r+0x15d0>
8000939c:	010a6a13          	ori	s4,s4,16
800093a0:	f28ff06f          	j	80008ac8 <_svfprintf_r+0x164>
800093a4:	01412703          	lw	a4,20(sp)
800093a8:	ffff87b7          	lui	a5,0xffff8
800093ac:	8307c793          	xori	a5,a5,-2000
800093b0:	0cf11423          	sh	a5,200(sp)
800093b4:	00470793          	addi	a5,a4,4
800093b8:	00f12a23          	sw	a5,20(sp)
800093bc:	00072903          	lw	s2,0(a4)
800093c0:	800147b7          	lui	a5,0x80014
800093c4:	e3478793          	addi	a5,a5,-460 # 80013e34 <heap_end.1814+0xffffe450>
800093c8:	000c8893          	mv	a7,s9
800093cc:	02f12a23          	sw	a5,52(sp)
800093d0:	00000c93          	li	s9,0
800093d4:	002a6b93          	ori	s7,s4,2
800093d8:	00200793          	li	a5,2
800093dc:	07800493          	li	s1,120
800093e0:	0c0103a3          	sb	zero,199(sp)
800093e4:	fff00713          	li	a4,-1
800093e8:	20ed8663          	beq	s11,a4,800095f4 <_svfprintf_r+0xc90>
800093ec:	01996733          	or	a4,s2,s9
800093f0:	f7fbfa13          	andi	s4,s7,-129
800093f4:	1e071e63          	bnez	a4,800095f0 <_svfprintf_r+0xc8c>
800093f8:	260d9463          	bnez	s11,80009660 <_svfprintf_r+0xcfc>
800093fc:	1c079063          	bnez	a5,800095bc <_svfprintf_r+0xc58>
80009400:	001bfc93          	andi	s9,s7,1
80009404:	1b010b13          	addi	s6,sp,432
80009408:	1c0c90e3          	bnez	s9,80009dc8 <_svfprintf_r+0x1464>
8000940c:	000c8a93          	mv	s5,s9
80009410:	01bcd463          	bge	s9,s11,80009418 <_svfprintf_r+0xab4>
80009414:	000d8a93          	mv	s5,s11
80009418:	0c714783          	lbu	a5,199(sp)
8000941c:	00012823          	sw	zero,16(sp)
80009420:	02012423          	sw	zero,40(sp)
80009424:	02012223          	sw	zero,36(sp)
80009428:	00012e23          	sw	zero,28(sp)
8000942c:	ec079ae3          	bnez	a5,80009300 <_svfprintf_r+0x99c>
80009430:	f18ff06f          	j	80008b48 <_svfprintf_r+0x1e4>
80009434:	000c8893          	mv	a7,s9
80009438:	010a6a13          	ori	s4,s4,16
8000943c:	020a7793          	andi	a5,s4,32
80009440:	06078ce3          	beqz	a5,80009cb8 <_svfprintf_r+0x1354>
80009444:	01412783          	lw	a5,20(sp)
80009448:	00778b13          	addi	s6,a5,7
8000944c:	ff8b7b13          	andi	s6,s6,-8
80009450:	000b2903          	lw	s2,0(s6)
80009454:	004b2c83          	lw	s9,4(s6)
80009458:	008b0793          	addi	a5,s6,8
8000945c:	00f12a23          	sw	a5,20(sp)
80009460:	bffa7b93          	andi	s7,s4,-1025
80009464:	00000793          	li	a5,0
80009468:	f79ff06f          	j	800093e0 <_svfprintf_r+0xa7c>
8000946c:	00044483          	lbu	s1,0(s0)
80009470:	06800793          	li	a5,104
80009474:	2cf488e3          	beq	s1,a5,80009f44 <_svfprintf_r+0x15e0>
80009478:	040a6a13          	ori	s4,s4,64
8000947c:	e4cff06f          	j	80008ac8 <_svfprintf_r+0x164>
80009480:	000c8893          	mv	a7,s9
80009484:	010a6b93          	ori	s7,s4,16
80009488:	020bf793          	andi	a5,s7,32
8000948c:	04078ce3          	beqz	a5,80009ce4 <_svfprintf_r+0x1380>
80009490:	01412783          	lw	a5,20(sp)
80009494:	00778b13          	addi	s6,a5,7
80009498:	ff8b7b13          	andi	s6,s6,-8
8000949c:	008b0793          	addi	a5,s6,8
800094a0:	00f12a23          	sw	a5,20(sp)
800094a4:	000b2903          	lw	s2,0(s6)
800094a8:	004b2c83          	lw	s9,4(s6)
800094ac:	00100793          	li	a5,1
800094b0:	f31ff06f          	j	800093e0 <_svfprintf_r+0xa7c>
800094b4:	00044483          	lbu	s1,0(s0)
800094b8:	008a6a13          	ori	s4,s4,8
800094bc:	e0cff06f          	j	80008ac8 <_svfprintf_r+0x164>
800094c0:	01412783          	lw	a5,20(sp)
800094c4:	00044483          	lbu	s1,0(s0)
800094c8:	0007a983          	lw	s3,0(a5)
800094cc:	00478793          	addi	a5,a5,4
800094d0:	00f12a23          	sw	a5,20(sp)
800094d4:	de09da63          	bgez	s3,80008ac8 <_svfprintf_r+0x164>
800094d8:	413009b3          	neg	s3,s3
800094dc:	004a6a13          	ori	s4,s4,4
800094e0:	de8ff06f          	j	80008ac8 <_svfprintf_r+0x164>
800094e4:	00044483          	lbu	s1,0(s0)
800094e8:	001a6a13          	ori	s4,s4,1
800094ec:	ddcff06f          	j	80008ac8 <_svfprintf_r+0x164>
800094f0:	0c714783          	lbu	a5,199(sp)
800094f4:	00044483          	lbu	s1,0(s0)
800094f8:	dc079863          	bnez	a5,80008ac8 <_svfprintf_r+0x164>
800094fc:	02000793          	li	a5,32
80009500:	0cf103a3          	sb	a5,199(sp)
80009504:	dc4ff06f          	j	80008ac8 <_svfprintf_r+0x164>
80009508:	00044483          	lbu	s1,0(s0)
8000950c:	080a6a13          	ori	s4,s4,128
80009510:	db8ff06f          	j	80008ac8 <_svfprintf_r+0x164>
80009514:	00044483          	lbu	s1,0(s0)
80009518:	00140713          	addi	a4,s0,1
8000951c:	01749463          	bne	s1,s7,80009524 <_svfprintf_r+0xbc0>
80009520:	5f50106f          	j	8000b314 <_svfprintf_r+0x29b0>
80009524:	fd048693          	addi	a3,s1,-48
80009528:	00070413          	mv	s0,a4
8000952c:	00000d93          	li	s11,0
80009530:	d8daee63          	bltu	s5,a3,80008acc <_svfprintf_r+0x168>
80009534:	00044483          	lbu	s1,0(s0)
80009538:	002d9793          	slli	a5,s11,0x2
8000953c:	01b787b3          	add	a5,a5,s11
80009540:	00179793          	slli	a5,a5,0x1
80009544:	00d78db3          	add	s11,a5,a3
80009548:	fd048693          	addi	a3,s1,-48
8000954c:	00140413          	addi	s0,s0,1
80009550:	fedaf2e3          	bgeu	s5,a3,80009534 <_svfprintf_r+0xbd0>
80009554:	d78ff06f          	j	80008acc <_svfprintf_r+0x168>
80009558:	02b00793          	li	a5,43
8000955c:	00044483          	lbu	s1,0(s0)
80009560:	0cf103a3          	sb	a5,199(sp)
80009564:	d64ff06f          	j	80008ac8 <_svfprintf_r+0x164>
80009568:	000c8893          	mv	a7,s9
8000956c:	010a6a13          	ori	s4,s4,16
80009570:	020a7793          	andi	a5,s4,32
80009574:	7a078063          	beqz	a5,80009d14 <_svfprintf_r+0x13b0>
80009578:	01412783          	lw	a5,20(sp)
8000957c:	00778b13          	addi	s6,a5,7
80009580:	ff8b7b13          	andi	s6,s6,-8
80009584:	004b2783          	lw	a5,4(s6)
80009588:	000b2903          	lw	s2,0(s6)
8000958c:	008b0713          	addi	a4,s6,8
80009590:	00e12a23          	sw	a4,20(sp)
80009594:	00078c93          	mv	s9,a5
80009598:	7a07c663          	bltz	a5,80009d44 <_svfprintf_r+0x13e0>
8000959c:	fff00793          	li	a5,-1
800095a0:	000a0b93          	mv	s7,s4
800095a4:	02fd8463          	beq	s11,a5,800095cc <_svfprintf_r+0xc68>
800095a8:	019967b3          	or	a5,s2,s9
800095ac:	f7fa7b93          	andi	s7,s4,-129
800095b0:	00079e63          	bnez	a5,800095cc <_svfprintf_r+0xc68>
800095b4:	020d9263          	bnez	s11,800095d8 <_svfprintf_r+0xc74>
800095b8:	000b8a13          	mv	s4,s7
800095bc:	00000d93          	li	s11,0
800095c0:	00000c93          	li	s9,0
800095c4:	1b010b13          	addi	s6,sp,432
800095c8:	e45ff06f          	j	8000940c <_svfprintf_r+0xaa8>
800095cc:	400c96e3          	bnez	s9,8000a1d8 <_svfprintf_r+0x1874>
800095d0:	00900793          	li	a5,9
800095d4:	4127e2e3          	bltu	a5,s2,8000a1d8 <_svfprintf_r+0x1874>
800095d8:	03090913          	addi	s2,s2,48
800095dc:	1b2107a3          	sb	s2,431(sp)
800095e0:	000b8a13          	mv	s4,s7
800095e4:	00100c93          	li	s9,1
800095e8:	1af10b13          	addi	s6,sp,431
800095ec:	e21ff06f          	j	8000940c <_svfprintf_r+0xaa8>
800095f0:	000a0b93          	mv	s7,s4
800095f4:	00100713          	li	a4,1
800095f8:	fce78ae3          	beq	a5,a4,800095cc <_svfprintf_r+0xc68>
800095fc:	00200713          	li	a4,2
80009600:	06e78c63          	beq	a5,a4,80009678 <_svfprintf_r+0xd14>
80009604:	1b010b13          	addi	s6,sp,432
80009608:	01dc9713          	slli	a4,s9,0x1d
8000960c:	00797793          	andi	a5,s2,7
80009610:	00395913          	srli	s2,s2,0x3
80009614:	03078793          	addi	a5,a5,48
80009618:	01276933          	or	s2,a4,s2
8000961c:	003cdc93          	srli	s9,s9,0x3
80009620:	fefb0fa3          	sb	a5,-1(s6)
80009624:	01996733          	or	a4,s2,s9
80009628:	000b0613          	mv	a2,s6
8000962c:	fffb0b13          	addi	s6,s6,-1
80009630:	fc071ce3          	bnez	a4,80009608 <_svfprintf_r+0xca4>
80009634:	001bf693          	andi	a3,s7,1
80009638:	06068a63          	beqz	a3,800096ac <_svfprintf_r+0xd48>
8000963c:	03000693          	li	a3,48
80009640:	06d78663          	beq	a5,a3,800096ac <_svfprintf_r+0xd48>
80009644:	ffe60613          	addi	a2,a2,-2
80009648:	1b010793          	addi	a5,sp,432
8000964c:	fedb0fa3          	sb	a3,-1(s6)
80009650:	40c78cb3          	sub	s9,a5,a2
80009654:	000b8a13          	mv	s4,s7
80009658:	00060b13          	mv	s6,a2
8000965c:	db1ff06f          	j	8000940c <_svfprintf_r+0xaa8>
80009660:	00100713          	li	a4,1
80009664:	00e79463          	bne	a5,a4,8000966c <_svfprintf_r+0xd08>
80009668:	1710106f          	j	8000afd8 <_svfprintf_r+0x2674>
8000966c:	00200713          	li	a4,2
80009670:	000a0b93          	mv	s7,s4
80009674:	f8e798e3          	bne	a5,a4,80009604 <_svfprintf_r+0xca0>
80009678:	03412683          	lw	a3,52(sp)
8000967c:	1b010b13          	addi	s6,sp,432
80009680:	00f97793          	andi	a5,s2,15
80009684:	00f687b3          	add	a5,a3,a5
80009688:	0007c703          	lbu	a4,0(a5)
8000968c:	00495913          	srli	s2,s2,0x4
80009690:	01cc9793          	slli	a5,s9,0x1c
80009694:	0127e933          	or	s2,a5,s2
80009698:	004cdc93          	srli	s9,s9,0x4
8000969c:	feeb0fa3          	sb	a4,-1(s6)
800096a0:	019967b3          	or	a5,s2,s9
800096a4:	fffb0b13          	addi	s6,s6,-1
800096a8:	fc079ce3          	bnez	a5,80009680 <_svfprintf_r+0xd1c>
800096ac:	1b010793          	addi	a5,sp,432
800096b0:	41678cb3          	sub	s9,a5,s6
800096b4:	000b8a13          	mv	s4,s7
800096b8:	d55ff06f          	j	8000940c <_svfprintf_r+0xaa8>
800096bc:	06500693          	li	a3,101
800096c0:	9c96dae3          	bge	a3,s1,80009094 <_svfprintf_r+0x730>
800096c4:	0f012683          	lw	a3,240(sp)
800096c8:	0a010593          	addi	a1,sp,160
800096cc:	0b010513          	addi	a0,sp,176
800096d0:	0ad12823          	sw	a3,176(sp)
800096d4:	0f412683          	lw	a3,244(sp)
800096d8:	05112223          	sw	a7,68(sp)
800096dc:	04f12023          	sw	a5,64(sp)
800096e0:	0ad12a23          	sw	a3,180(sp)
800096e4:	0f812683          	lw	a3,248(sp)
800096e8:	0a012023          	sw	zero,160(sp)
800096ec:	0a012223          	sw	zero,164(sp)
800096f0:	0ad12c23          	sw	a3,184(sp)
800096f4:	0fc12683          	lw	a3,252(sp)
800096f8:	0a012423          	sw	zero,168(sp)
800096fc:	0a012623          	sw	zero,172(sp)
80009700:	0ad12e23          	sw	a3,188(sp)
80009704:	6a0070ef          	jal	ra,80010da4 <__eqtf2>
80009708:	04012783          	lw	a5,64(sp)
8000970c:	04412883          	lw	a7,68(sp)
80009710:	38051c63          	bnez	a0,80009aa8 <_svfprintf_r+0x1144>
80009714:	0e812703          	lw	a4,232(sp)
80009718:	800146b7          	lui	a3,0x80014
8000971c:	e6468693          	addi	a3,a3,-412 # 80013e64 <heap_end.1814+0xffffe480>
80009720:	00d8a023          	sw	a3,0(a7)
80009724:	00178793          	addi	a5,a5,1
80009728:	00100693          	li	a3,1
8000972c:	00170713          	addi	a4,a4,1
80009730:	00d8a223          	sw	a3,4(a7)
80009734:	0ef12623          	sw	a5,236(sp)
80009738:	0ee12423          	sw	a4,232(sp)
8000973c:	00700693          	li	a3,7
80009740:	00888893          	addi	a7,a7,8
80009744:	44e6cce3          	blt	a3,a4,8000a39c <_svfprintf_r+0x1a38>
80009748:	0cc12703          	lw	a4,204(sp)
8000974c:	02012683          	lw	a3,32(sp)
80009750:	66d75063          	bge	a4,a3,80009db0 <_svfprintf_r+0x144c>
80009754:	03012703          	lw	a4,48(sp)
80009758:	02c12683          	lw	a3,44(sp)
8000975c:	00888893          	addi	a7,a7,8
80009760:	fee8ac23          	sw	a4,-8(a7)
80009764:	0e812703          	lw	a4,232(sp)
80009768:	00d787b3          	add	a5,a5,a3
8000976c:	fed8ae23          	sw	a3,-4(a7)
80009770:	00170713          	addi	a4,a4,1
80009774:	0ef12623          	sw	a5,236(sp)
80009778:	0ee12423          	sw	a4,232(sp)
8000977c:	00700693          	li	a3,7
80009780:	76e6cc63          	blt	a3,a4,80009ef8 <_svfprintf_r+0x1594>
80009784:	02012703          	lw	a4,32(sp)
80009788:	fff70493          	addi	s1,a4,-1
8000978c:	c8905463          	blez	s1,80008c14 <_svfprintf_r+0x2b0>
80009790:	01000693          	li	a3,16
80009794:	0e812703          	lw	a4,232(sp)
80009798:	4296d2e3          	bge	a3,s1,8000a3bc <_svfprintf_r+0x1a58>
8000979c:	01000913          	li	s2,16
800097a0:	00700c93          	li	s9,7
800097a4:	00c0006f          	j	800097b0 <_svfprintf_r+0xe4c>
800097a8:	ff048493          	addi	s1,s1,-16
800097ac:	409958e3          	bge	s2,s1,8000a3bc <_svfprintf_r+0x1a58>
800097b0:	00812683          	lw	a3,8(sp)
800097b4:	01078793          	addi	a5,a5,16
800097b8:	00170713          	addi	a4,a4,1
800097bc:	00d8a023          	sw	a3,0(a7)
800097c0:	0128a223          	sw	s2,4(a7)
800097c4:	0ef12623          	sw	a5,236(sp)
800097c8:	0ee12423          	sw	a4,232(sp)
800097cc:	00888893          	addi	a7,a7,8
800097d0:	fcecdce3          	bge	s9,a4,800097a8 <_svfprintf_r+0xe44>
800097d4:	0e410613          	addi	a2,sp,228
800097d8:	000c0593          	mv	a1,s8
800097dc:	000d0513          	mv	a0,s10
800097e0:	4ac040ef          	jal	ra,8000dc8c <__ssprint_r>
800097e4:	1a051063          	bnez	a0,80009984 <_svfprintf_r+0x1020>
800097e8:	0ec12783          	lw	a5,236(sp)
800097ec:	0e812703          	lw	a4,232(sp)
800097f0:	10c10893          	addi	a7,sp,268
800097f4:	fb5ff06f          	j	800097a8 <_svfprintf_r+0xe44>
800097f8:	41598933          	sub	s2,s3,s5
800097fc:	bf205063          	blez	s2,80008bdc <_svfprintf_r+0x278>
80009800:	01000613          	li	a2,16
80009804:	0e812683          	lw	a3,232(sp)
80009808:	07265463          	bge	a2,s2,80009870 <_svfprintf_r+0xf0c>
8000980c:	01000e13          	li	t3,16
80009810:	00700b93          	li	s7,7
80009814:	00c0006f          	j	80009820 <_svfprintf_r+0xebc>
80009818:	ff090913          	addi	s2,s2,-16
8000981c:	052e5a63          	bge	t3,s2,80009870 <_svfprintf_r+0xf0c>
80009820:	00812703          	lw	a4,8(sp)
80009824:	01078793          	addi	a5,a5,16
80009828:	00168693          	addi	a3,a3,1
8000982c:	00e8a023          	sw	a4,0(a7)
80009830:	01c8a223          	sw	t3,4(a7)
80009834:	0ef12623          	sw	a5,236(sp)
80009838:	0ed12423          	sw	a3,232(sp)
8000983c:	00888893          	addi	a7,a7,8
80009840:	fcdbdce3          	bge	s7,a3,80009818 <_svfprintf_r+0xeb4>
80009844:	0e410613          	addi	a2,sp,228
80009848:	000c0593          	mv	a1,s8
8000984c:	000d0513          	mv	a0,s10
80009850:	43c040ef          	jal	ra,8000dc8c <__ssprint_r>
80009854:	12051863          	bnez	a0,80009984 <_svfprintf_r+0x1020>
80009858:	01000e13          	li	t3,16
8000985c:	ff090913          	addi	s2,s2,-16
80009860:	0ec12783          	lw	a5,236(sp)
80009864:	0e812683          	lw	a3,232(sp)
80009868:	10c10893          	addi	a7,sp,268
8000986c:	fb2e4ae3          	blt	t3,s2,80009820 <_svfprintf_r+0xebc>
80009870:	00812703          	lw	a4,8(sp)
80009874:	012787b3          	add	a5,a5,s2
80009878:	00168693          	addi	a3,a3,1
8000987c:	00e8a023          	sw	a4,0(a7)
80009880:	0128a223          	sw	s2,4(a7)
80009884:	0ef12623          	sw	a5,236(sp)
80009888:	0ed12423          	sw	a3,232(sp)
8000988c:	00700613          	li	a2,7
80009890:	00888893          	addi	a7,a7,8
80009894:	b4d65463          	bge	a2,a3,80008bdc <_svfprintf_r+0x278>
80009898:	0e410613          	addi	a2,sp,228
8000989c:	000c0593          	mv	a1,s8
800098a0:	000d0513          	mv	a0,s10
800098a4:	3e8040ef          	jal	ra,8000dc8c <__ssprint_r>
800098a8:	0c051e63          	bnez	a0,80009984 <_svfprintf_r+0x1020>
800098ac:	419d8db3          	sub	s11,s11,s9
800098b0:	0ec12783          	lw	a5,236(sp)
800098b4:	10c10893          	addi	a7,sp,268
800098b8:	b3b05663          	blez	s11,80008be4 <_svfprintf_r+0x280>
800098bc:	01000613          	li	a2,16
800098c0:	0e812683          	lw	a3,232(sp)
800098c4:	07b65263          	bge	a2,s11,80009928 <_svfprintf_r+0xfc4>
800098c8:	01000b93          	li	s7,16
800098cc:	00700913          	li	s2,7
800098d0:	00c0006f          	j	800098dc <_svfprintf_r+0xf78>
800098d4:	ff0d8d93          	addi	s11,s11,-16
800098d8:	05bbd863          	bge	s7,s11,80009928 <_svfprintf_r+0xfc4>
800098dc:	00812703          	lw	a4,8(sp)
800098e0:	01078793          	addi	a5,a5,16
800098e4:	00168693          	addi	a3,a3,1
800098e8:	00e8a023          	sw	a4,0(a7)
800098ec:	0178a223          	sw	s7,4(a7)
800098f0:	0ef12623          	sw	a5,236(sp)
800098f4:	0ed12423          	sw	a3,232(sp)
800098f8:	00888893          	addi	a7,a7,8
800098fc:	fcd95ce3          	bge	s2,a3,800098d4 <_svfprintf_r+0xf70>
80009900:	0e410613          	addi	a2,sp,228
80009904:	000c0593          	mv	a1,s8
80009908:	000d0513          	mv	a0,s10
8000990c:	380040ef          	jal	ra,8000dc8c <__ssprint_r>
80009910:	06051a63          	bnez	a0,80009984 <_svfprintf_r+0x1020>
80009914:	ff0d8d93          	addi	s11,s11,-16
80009918:	0ec12783          	lw	a5,236(sp)
8000991c:	0e812683          	lw	a3,232(sp)
80009920:	10c10893          	addi	a7,sp,268
80009924:	fbbbcce3          	blt	s7,s11,800098dc <_svfprintf_r+0xf78>
80009928:	00812703          	lw	a4,8(sp)
8000992c:	01b787b3          	add	a5,a5,s11
80009930:	00168693          	addi	a3,a3,1
80009934:	00e8a023          	sw	a4,0(a7)
80009938:	01b8a223          	sw	s11,4(a7)
8000993c:	0ef12623          	sw	a5,236(sp)
80009940:	0ed12423          	sw	a3,232(sp)
80009944:	00700613          	li	a2,7
80009948:	00888893          	addi	a7,a7,8
8000994c:	a8d65c63          	bge	a2,a3,80008be4 <_svfprintf_r+0x280>
80009950:	0e410613          	addi	a2,sp,228
80009954:	000c0593          	mv	a1,s8
80009958:	000d0513          	mv	a0,s10
8000995c:	330040ef          	jal	ra,8000dc8c <__ssprint_r>
80009960:	02051263          	bnez	a0,80009984 <_svfprintf_r+0x1020>
80009964:	0ec12783          	lw	a5,236(sp)
80009968:	10c10893          	addi	a7,sp,268
8000996c:	a78ff06f          	j	80008be4 <_svfprintf_r+0x280>
80009970:	0e410613          	addi	a2,sp,228
80009974:	000c0593          	mv	a1,s8
80009978:	000d0513          	mv	a0,s10
8000997c:	310040ef          	jal	ra,8000dc8c <__ssprint_r>
80009980:	aa050e63          	beqz	a0,80008c3c <_svfprintf_r+0x2d8>
80009984:	01012b83          	lw	s7,16(sp)
80009988:	ae0b8463          	beqz	s7,80008c70 <_svfprintf_r+0x30c>
8000998c:	000b8593          	mv	a1,s7
80009990:	000d0513          	mv	a0,s10
80009994:	b59f90ef          	jal	ra,800034ec <_free_r>
80009998:	ad8ff06f          	j	80008c70 <_svfprintf_r+0x30c>
8000999c:	80014737          	lui	a4,0x80014
800099a0:	01000613          	li	a2,16
800099a4:	0e812683          	lw	a3,232(sp)
800099a8:	5bc70e93          	addi	t4,a4,1468 # 800145bc <heap_end.1814+0xffffebd8>
800099ac:	09065c63          	bge	a2,a6,80009a44 <_svfprintf_r+0x10e0>
800099b0:	04812023          	sw	s0,64(sp)
800099b4:	04912223          	sw	s1,68(sp)
800099b8:	000d0413          	mv	s0,s10
800099bc:	000c0493          	mv	s1,s8
800099c0:	01000e13          	li	t3,16
800099c4:	00700293          	li	t0,7
800099c8:	00080c13          	mv	s8,a6
800099cc:	000e8d13          	mv	s10,t4
800099d0:	00c0006f          	j	800099dc <_svfprintf_r+0x1078>
800099d4:	ff0c0c13          	addi	s8,s8,-16
800099d8:	058e5a63          	bge	t3,s8,80009a2c <_svfprintf_r+0x10c8>
800099dc:	01078793          	addi	a5,a5,16
800099e0:	00168693          	addi	a3,a3,1
800099e4:	01a8a023          	sw	s10,0(a7)
800099e8:	01c8a223          	sw	t3,4(a7)
800099ec:	0ef12623          	sw	a5,236(sp)
800099f0:	0ed12423          	sw	a3,232(sp)
800099f4:	00888893          	addi	a7,a7,8
800099f8:	fcd2dee3          	bge	t0,a3,800099d4 <_svfprintf_r+0x1070>
800099fc:	0e410613          	addi	a2,sp,228
80009a00:	00048593          	mv	a1,s1
80009a04:	00040513          	mv	a0,s0
80009a08:	284040ef          	jal	ra,8000dc8c <__ssprint_r>
80009a0c:	160512e3          	bnez	a0,8000a370 <_svfprintf_r+0x1a0c>
80009a10:	01000e13          	li	t3,16
80009a14:	ff0c0c13          	addi	s8,s8,-16
80009a18:	0ec12783          	lw	a5,236(sp)
80009a1c:	0e812683          	lw	a3,232(sp)
80009a20:	10c10893          	addi	a7,sp,268
80009a24:	00700293          	li	t0,7
80009a28:	fb8e4ae3          	blt	t3,s8,800099dc <_svfprintf_r+0x1078>
80009a2c:	000c0813          	mv	a6,s8
80009a30:	000d0e93          	mv	t4,s10
80009a34:	00048c13          	mv	s8,s1
80009a38:	00040d13          	mv	s10,s0
80009a3c:	04412483          	lw	s1,68(sp)
80009a40:	04012403          	lw	s0,64(sp)
80009a44:	010787b3          	add	a5,a5,a6
80009a48:	00168693          	addi	a3,a3,1
80009a4c:	01d8a023          	sw	t4,0(a7)
80009a50:	0108a223          	sw	a6,4(a7)
80009a54:	0ef12623          	sw	a5,236(sp)
80009a58:	0ed12423          	sw	a3,232(sp)
80009a5c:	00700613          	li	a2,7
80009a60:	00888893          	addi	a7,a7,8
80009a64:	90d65263          	bge	a2,a3,80008b68 <_svfprintf_r+0x204>
80009a68:	0e410613          	addi	a2,sp,228
80009a6c:	000c0593          	mv	a1,s8
80009a70:	000d0513          	mv	a0,s10
80009a74:	218040ef          	jal	ra,8000dc8c <__ssprint_r>
80009a78:	f00516e3          	bnez	a0,80009984 <_svfprintf_r+0x1020>
80009a7c:	0ec12783          	lw	a5,236(sp)
80009a80:	10c10893          	addi	a7,sp,268
80009a84:	8e4ff06f          	j	80008b68 <_svfprintf_r+0x204>
80009a88:	0e410613          	addi	a2,sp,228
80009a8c:	000c0593          	mv	a1,s8
80009a90:	000d0513          	mv	a0,s10
80009a94:	1f8040ef          	jal	ra,8000dc8c <__ssprint_r>
80009a98:	ee0516e3          	bnez	a0,80009984 <_svfprintf_r+0x1020>
80009a9c:	0ec12783          	lw	a5,236(sp)
80009aa0:	10c10893          	addi	a7,sp,268
80009aa4:	930ff06f          	j	80008bd4 <_svfprintf_r+0x270>
80009aa8:	0cc12583          	lw	a1,204(sp)
80009aac:	7eb05c63          	blez	a1,8000a2a4 <_svfprintf_r+0x1940>
80009ab0:	01c12703          	lw	a4,28(sp)
80009ab4:	02012683          	lw	a3,32(sp)
80009ab8:	00070493          	mv	s1,a4
80009abc:	3ce6c263          	blt	a3,a4,80009e80 <_svfprintf_r+0x151c>
80009ac0:	02905663          	blez	s1,80009aec <_svfprintf_r+0x1188>
80009ac4:	0e812683          	lw	a3,232(sp)
80009ac8:	009787b3          	add	a5,a5,s1
80009acc:	0168a023          	sw	s6,0(a7)
80009ad0:	00168693          	addi	a3,a3,1
80009ad4:	0098a223          	sw	s1,4(a7)
80009ad8:	0ef12623          	sw	a5,236(sp)
80009adc:	0ed12423          	sw	a3,232(sp)
80009ae0:	00700613          	li	a2,7
80009ae4:	00888893          	addi	a7,a7,8
80009ae8:	40d64ce3          	blt	a2,a3,8000a700 <_svfprintf_r+0x1d9c>
80009aec:	fff4c693          	not	a3,s1
80009af0:	01c12703          	lw	a4,28(sp)
80009af4:	41f6d693          	srai	a3,a3,0x1f
80009af8:	00d4f4b3          	and	s1,s1,a3
80009afc:	409704b3          	sub	s1,a4,s1
80009b00:	48904e63          	bgtz	s1,80009f9c <_svfprintf_r+0x1638>
80009b04:	01c12703          	lw	a4,28(sp)
80009b08:	400a7693          	andi	a3,s4,1024
80009b0c:	00eb0db3          	add	s11,s6,a4
80009b10:	4e069a63          	bnez	a3,8000a004 <_svfprintf_r+0x16a0>
80009b14:	0cc12483          	lw	s1,204(sp)
80009b18:	02012703          	lw	a4,32(sp)
80009b1c:	00e4c663          	blt	s1,a4,80009b28 <_svfprintf_r+0x11c4>
80009b20:	001a7693          	andi	a3,s4,1
80009b24:	400682e3          	beqz	a3,8000a728 <_svfprintf_r+0x1dc4>
80009b28:	03012683          	lw	a3,48(sp)
80009b2c:	02c12703          	lw	a4,44(sp)
80009b30:	00700613          	li	a2,7
80009b34:	00d8a023          	sw	a3,0(a7)
80009b38:	0e812683          	lw	a3,232(sp)
80009b3c:	00e787b3          	add	a5,a5,a4
80009b40:	00e8a223          	sw	a4,4(a7)
80009b44:	00168693          	addi	a3,a3,1
80009b48:	0ef12623          	sw	a5,236(sp)
80009b4c:	0ed12423          	sw	a3,232(sp)
80009b50:	00888893          	addi	a7,a7,8
80009b54:	6ad644e3          	blt	a2,a3,8000a9fc <_svfprintf_r+0x2098>
80009b58:	02012683          	lw	a3,32(sp)
80009b5c:	00db0733          	add	a4,s6,a3
80009b60:	409684b3          	sub	s1,a3,s1
80009b64:	41b70733          	sub	a4,a4,s11
80009b68:	00048913          	mv	s2,s1
80009b6c:	00975463          	bge	a4,s1,80009b74 <_svfprintf_r+0x1210>
80009b70:	00070913          	mv	s2,a4
80009b74:	03205663          	blez	s2,80009ba0 <_svfprintf_r+0x123c>
80009b78:	0e812703          	lw	a4,232(sp)
80009b7c:	012787b3          	add	a5,a5,s2
80009b80:	01b8a023          	sw	s11,0(a7)
80009b84:	00170713          	addi	a4,a4,1
80009b88:	0128a223          	sw	s2,4(a7)
80009b8c:	0ef12623          	sw	a5,236(sp)
80009b90:	0ee12423          	sw	a4,232(sp)
80009b94:	00700693          	li	a3,7
80009b98:	00888893          	addi	a7,a7,8
80009b9c:	6ae6cae3          	blt	a3,a4,8000aa50 <_svfprintf_r+0x20ec>
80009ba0:	fff94713          	not	a4,s2
80009ba4:	41f75713          	srai	a4,a4,0x1f
80009ba8:	00e97733          	and	a4,s2,a4
80009bac:	40e484b3          	sub	s1,s1,a4
80009bb0:	00904463          	bgtz	s1,80009bb8 <_svfprintf_r+0x1254>
80009bb4:	860ff06f          	j	80008c14 <_svfprintf_r+0x2b0>
80009bb8:	01000693          	li	a3,16
80009bbc:	0e812703          	lw	a4,232(sp)
80009bc0:	7e96de63          	bge	a3,s1,8000a3bc <_svfprintf_r+0x1a58>
80009bc4:	01000913          	li	s2,16
80009bc8:	00700c93          	li	s9,7
80009bcc:	00c0006f          	j	80009bd8 <_svfprintf_r+0x1274>
80009bd0:	ff048493          	addi	s1,s1,-16
80009bd4:	7e995463          	bge	s2,s1,8000a3bc <_svfprintf_r+0x1a58>
80009bd8:	00812683          	lw	a3,8(sp)
80009bdc:	01078793          	addi	a5,a5,16
80009be0:	00170713          	addi	a4,a4,1
80009be4:	00d8a023          	sw	a3,0(a7)
80009be8:	0128a223          	sw	s2,4(a7)
80009bec:	0ef12623          	sw	a5,236(sp)
80009bf0:	0ee12423          	sw	a4,232(sp)
80009bf4:	00888893          	addi	a7,a7,8
80009bf8:	fcecdce3          	bge	s9,a4,80009bd0 <_svfprintf_r+0x126c>
80009bfc:	0e410613          	addi	a2,sp,228
80009c00:	000c0593          	mv	a1,s8
80009c04:	000d0513          	mv	a0,s10
80009c08:	084040ef          	jal	ra,8000dc8c <__ssprint_r>
80009c0c:	d6051ce3          	bnez	a0,80009984 <_svfprintf_r+0x1020>
80009c10:	0ec12783          	lw	a5,236(sp)
80009c14:	0e812703          	lw	a4,232(sp)
80009c18:	10c10893          	addi	a7,sp,268
80009c1c:	fb5ff06f          	j	80009bd0 <_svfprintf_r+0x126c>
80009c20:	001a7793          	andi	a5,s4,1
80009c24:	c8079863          	bnez	a5,800090b4 <_svfprintf_r+0x750>
80009c28:	00c8a223          	sw	a2,4(a7)
80009c2c:	0f912623          	sw	s9,236(sp)
80009c30:	0e912423          	sw	s1,232(sp)
80009c34:	00700793          	li	a5,7
80009c38:	5497ca63          	blt	a5,s1,8000a18c <_svfprintf_r+0x1828>
80009c3c:	00268693          	addi	a3,a3,2
80009c40:	01088893          	addi	a7,a7,16
80009c44:	d44ff06f          	j	80009188 <_svfprintf_r+0x824>
80009c48:	d5b05063          	blez	s11,80009188 <_svfprintf_r+0x824>
80009c4c:	01000713          	li	a4,16
80009c50:	01b74463          	blt	a4,s11,80009c58 <_svfprintf_r+0x12f4>
80009c54:	6b80106f          	j	8000b30c <_svfprintf_r+0x29a8>
80009c58:	00700b13          	li	s6,7
80009c5c:	00060493          	mv	s1,a2
80009c60:	0100006f          	j	80009c70 <_svfprintf_r+0x130c>
80009c64:	ff0d8d93          	addi	s11,s11,-16
80009c68:	11b75ee3          	bge	a4,s11,8000a584 <_svfprintf_r+0x1c20>
80009c6c:	00148493          	addi	s1,s1,1
80009c70:	00812783          	lw	a5,8(sp)
80009c74:	010c8c93          	addi	s9,s9,16
80009c78:	00e92223          	sw	a4,4(s2)
80009c7c:	00f92023          	sw	a5,0(s2)
80009c80:	0f912623          	sw	s9,236(sp)
80009c84:	0e912423          	sw	s1,232(sp)
80009c88:	00890913          	addi	s2,s2,8
80009c8c:	fc9b5ce3          	bge	s6,s1,80009c64 <_svfprintf_r+0x1300>
80009c90:	0e410613          	addi	a2,sp,228
80009c94:	000c0593          	mv	a1,s8
80009c98:	000d0513          	mv	a0,s10
80009c9c:	7f1030ef          	jal	ra,8000dc8c <__ssprint_r>
80009ca0:	ce0512e3          	bnez	a0,80009984 <_svfprintf_r+0x1020>
80009ca4:	0ec12c83          	lw	s9,236(sp)
80009ca8:	0e812483          	lw	s1,232(sp)
80009cac:	10c10913          	addi	s2,sp,268
80009cb0:	01000713          	li	a4,16
80009cb4:	fb1ff06f          	j	80009c64 <_svfprintf_r+0x1300>
80009cb8:	01412683          	lw	a3,20(sp)
80009cbc:	010a7793          	andi	a5,s4,16
80009cc0:	00468713          	addi	a4,a3,4
80009cc4:	18079463          	bnez	a5,80009e4c <_svfprintf_r+0x14e8>
80009cc8:	040a7793          	andi	a5,s4,64
80009ccc:	140786e3          	beqz	a5,8000a618 <_svfprintf_r+0x1cb4>
80009cd0:	01412783          	lw	a5,20(sp)
80009cd4:	00000c93          	li	s9,0
80009cd8:	00e12a23          	sw	a4,20(sp)
80009cdc:	0007d903          	lhu	s2,0(a5)
80009ce0:	f80ff06f          	j	80009460 <_svfprintf_r+0xafc>
80009ce4:	01412683          	lw	a3,20(sp)
80009ce8:	010bf793          	andi	a5,s7,16
80009cec:	00468713          	addi	a4,a3,4
80009cf0:	14079463          	bnez	a5,80009e38 <_svfprintf_r+0x14d4>
80009cf4:	040bf793          	andi	a5,s7,64
80009cf8:	100780e3          	beqz	a5,8000a5f8 <_svfprintf_r+0x1c94>
80009cfc:	01412783          	lw	a5,20(sp)
80009d00:	00000c93          	li	s9,0
80009d04:	00e12a23          	sw	a4,20(sp)
80009d08:	0007d903          	lhu	s2,0(a5)
80009d0c:	00100793          	li	a5,1
80009d10:	ed0ff06f          	j	800093e0 <_svfprintf_r+0xa7c>
80009d14:	01412683          	lw	a3,20(sp)
80009d18:	010a7793          	andi	a5,s4,16
80009d1c:	00468713          	addi	a4,a3,4
80009d20:	10079263          	bnez	a5,80009e24 <_svfprintf_r+0x14c0>
80009d24:	040a7793          	andi	a5,s4,64
80009d28:	0a0788e3          	beqz	a5,8000a5d8 <_svfprintf_r+0x1c74>
80009d2c:	01412783          	lw	a5,20(sp)
80009d30:	00e12a23          	sw	a4,20(sp)
80009d34:	00079903          	lh	s2,0(a5)
80009d38:	41f95c93          	srai	s9,s2,0x1f
80009d3c:	000c8793          	mv	a5,s9
80009d40:	8407dee3          	bgez	a5,8000959c <_svfprintf_r+0xc38>
80009d44:	012037b3          	snez	a5,s2
80009d48:	41900cb3          	neg	s9,s9
80009d4c:	40fc8cb3          	sub	s9,s9,a5
80009d50:	02d00793          	li	a5,45
80009d54:	0cf103a3          	sb	a5,199(sp)
80009d58:	41200933          	neg	s2,s2
80009d5c:	000a0b93          	mv	s7,s4
80009d60:	00100793          	li	a5,1
80009d64:	e80ff06f          	j	800093e4 <_svfprintf_r+0xa80>
80009d68:	0e410613          	addi	a2,sp,228
80009d6c:	000c0593          	mv	a1,s8
80009d70:	000d0513          	mv	a0,s10
80009d74:	719030ef          	jal	ra,8000dc8c <__ssprint_r>
80009d78:	c00516e3          	bnez	a0,80009984 <_svfprintf_r+0x1020>
80009d7c:	0ec12c83          	lw	s9,236(sp)
80009d80:	0e812483          	lw	s1,232(sp)
80009d84:	10c10913          	addi	s2,sp,268
80009d88:	b44ff06f          	j	800090cc <_svfprintf_r+0x768>
80009d8c:	0e410613          	addi	a2,sp,228
80009d90:	000c0593          	mv	a1,s8
80009d94:	000d0513          	mv	a0,s10
80009d98:	6f5030ef          	jal	ra,8000dc8c <__ssprint_r>
80009d9c:	be0514e3          	bnez	a0,80009984 <_svfprintf_r+0x1020>
80009da0:	0ec12c83          	lw	s9,236(sp)
80009da4:	0e812483          	lw	s1,232(sp)
80009da8:	10c10913          	addi	s2,sp,268
80009dac:	b4cff06f          	j	800090f8 <_svfprintf_r+0x794>
80009db0:	001a7713          	andi	a4,s4,1
80009db4:	00071463          	bnez	a4,80009dbc <_svfprintf_r+0x1458>
80009db8:	e5dfe06f          	j	80008c14 <_svfprintf_r+0x2b0>
80009dbc:	999ff06f          	j	80009754 <_svfprintf_r+0xdf0>
80009dc0:	000c8893          	mv	a7,s9
80009dc4:	facff06f          	j	80009570 <_svfprintf_r+0xc0c>
80009dc8:	03000793          	li	a5,48
80009dcc:	1af107a3          	sb	a5,431(sp)
80009dd0:	1af10b13          	addi	s6,sp,431
80009dd4:	e38ff06f          	j	8000940c <_svfprintf_r+0xaa8>
80009dd8:	00c12683          	lw	a3,12(sp)
80009ddc:	00040b13          	mv	s6,s0
80009de0:	41f6d793          	srai	a5,a3,0x1f
80009de4:	00d72023          	sw	a3,0(a4)
80009de8:	00f72223          	sw	a5,4(a4)
80009dec:	e71fe06f          	j	80008c5c <_svfprintf_r+0x2f8>
80009df0:	01412703          	lw	a4,20(sp)
80009df4:	00072783          	lw	a5,0(a4)
80009df8:	00470713          	addi	a4,a4,4
80009dfc:	00e12a23          	sw	a4,20(sp)
80009e00:	0007a583          	lw	a1,0(a5)
80009e04:	0047a603          	lw	a2,4(a5)
80009e08:	0087a683          	lw	a3,8(a5)
80009e0c:	00c7a783          	lw	a5,12(a5)
80009e10:	0eb12823          	sw	a1,240(sp)
80009e14:	0ec12a23          	sw	a2,244(sp)
80009e18:	0ed12c23          	sw	a3,248(sp)
80009e1c:	0ef12e23          	sw	a5,252(sp)
80009e20:	f79fe06f          	j	80008d98 <_svfprintf_r+0x434>
80009e24:	0006a903          	lw	s2,0(a3)
80009e28:	00e12a23          	sw	a4,20(sp)
80009e2c:	41f95c93          	srai	s9,s2,0x1f
80009e30:	000c8793          	mv	a5,s9
80009e34:	f64ff06f          	j	80009598 <_svfprintf_r+0xc34>
80009e38:	0006a903          	lw	s2,0(a3)
80009e3c:	00000c93          	li	s9,0
80009e40:	00e12a23          	sw	a4,20(sp)
80009e44:	00100793          	li	a5,1
80009e48:	d98ff06f          	j	800093e0 <_svfprintf_r+0xa7c>
80009e4c:	0006a903          	lw	s2,0(a3)
80009e50:	00000c93          	li	s9,0
80009e54:	00e12a23          	sw	a4,20(sp)
80009e58:	e08ff06f          	j	80009460 <_svfprintf_r+0xafc>
80009e5c:	03c12783          	lw	a5,60(sp)
80009e60:	00044483          	lbu	s1,0(s0)
80009e64:	00079463          	bnez	a5,80009e6c <_svfprintf_r+0x1508>
80009e68:	c61fe06f          	j	80008ac8 <_svfprintf_r+0x164>
80009e6c:	0007c783          	lbu	a5,0(a5)
80009e70:	00079463          	bnez	a5,80009e78 <_svfprintf_r+0x1514>
80009e74:	c55fe06f          	j	80008ac8 <_svfprintf_r+0x164>
80009e78:	400a6a13          	ori	s4,s4,1024
80009e7c:	c4dfe06f          	j	80008ac8 <_svfprintf_r+0x164>
80009e80:	00068493          	mv	s1,a3
80009e84:	c49040e3          	bgtz	s1,80009ac4 <_svfprintf_r+0x1160>
80009e88:	c65ff06f          	j	80009aec <_svfprintf_r+0x1188>
80009e8c:	000c8893          	mv	a7,s9
80009e90:	000a0b93          	mv	s7,s4
80009e94:	df4ff06f          	j	80009488 <_svfprintf_r+0xb24>
80009e98:	800147b7          	lui	a5,0x80014
80009e9c:	e3478793          	addi	a5,a5,-460 # 80013e34 <heap_end.1814+0xffffe450>
80009ea0:	000c8893          	mv	a7,s9
80009ea4:	02f12a23          	sw	a5,52(sp)
80009ea8:	020a7793          	andi	a5,s4,32
80009eac:	2c078063          	beqz	a5,8000a16c <_svfprintf_r+0x1808>
80009eb0:	01412783          	lw	a5,20(sp)
80009eb4:	00778b13          	addi	s6,a5,7
80009eb8:	ff8b7b13          	andi	s6,s6,-8
80009ebc:	000b2903          	lw	s2,0(s6)
80009ec0:	004b2c83          	lw	s9,4(s6)
80009ec4:	008b0793          	addi	a5,s6,8
80009ec8:	00f12a23          	sw	a5,20(sp)
80009ecc:	001a7793          	andi	a5,s4,1
80009ed0:	00078e63          	beqz	a5,80009eec <_svfprintf_r+0x1588>
80009ed4:	019967b3          	or	a5,s2,s9
80009ed8:	00078a63          	beqz	a5,80009eec <_svfprintf_r+0x1588>
80009edc:	03000793          	li	a5,48
80009ee0:	0cf10423          	sb	a5,200(sp)
80009ee4:	0c9104a3          	sb	s1,201(sp)
80009ee8:	002a6a13          	ori	s4,s4,2
80009eec:	bffa7b93          	andi	s7,s4,-1025
80009ef0:	00200793          	li	a5,2
80009ef4:	cecff06f          	j	800093e0 <_svfprintf_r+0xa7c>
80009ef8:	0e410613          	addi	a2,sp,228
80009efc:	000c0593          	mv	a1,s8
80009f00:	000d0513          	mv	a0,s10
80009f04:	589030ef          	jal	ra,8000dc8c <__ssprint_r>
80009f08:	a6051ee3          	bnez	a0,80009984 <_svfprintf_r+0x1020>
80009f0c:	0ec12783          	lw	a5,236(sp)
80009f10:	10c10893          	addi	a7,sp,268
80009f14:	871ff06f          	j	80009784 <_svfprintf_r+0xe20>
80009f18:	800147b7          	lui	a5,0x80014
80009f1c:	e4878793          	addi	a5,a5,-440 # 80013e48 <heap_end.1814+0xffffe464>
80009f20:	000c8893          	mv	a7,s9
80009f24:	02f12a23          	sw	a5,52(sp)
80009f28:	f81ff06f          	j	80009ea8 <_svfprintf_r+0x1544>
80009f2c:	000c8893          	mv	a7,s9
80009f30:	d0cff06f          	j	8000943c <_svfprintf_r+0xad8>
80009f34:	00144483          	lbu	s1,1(s0)
80009f38:	020a6a13          	ori	s4,s4,32
80009f3c:	00140413          	addi	s0,s0,1
80009f40:	b89fe06f          	j	80008ac8 <_svfprintf_r+0x164>
80009f44:	00144483          	lbu	s1,1(s0)
80009f48:	200a6a13          	ori	s4,s4,512
80009f4c:	00140413          	addi	s0,s0,1
80009f50:	b79fe06f          	j	80008ac8 <_svfprintf_r+0x164>
80009f54:	04000593          	li	a1,64
80009f58:	000d0513          	mv	a0,s10
80009f5c:	821fc0ef          	jal	ra,8000677c <_malloc_r>
80009f60:	00ac2023          	sw	a0,0(s8)
80009f64:	00ac2823          	sw	a0,16(s8)
80009f68:	00051463          	bnez	a0,80009f70 <_svfprintf_r+0x160c>
80009f6c:	3cc0106f          	j	8000b338 <_svfprintf_r+0x29d4>
80009f70:	04000713          	li	a4,64
80009f74:	00ec2a23          	sw	a4,20(s8)
80009f78:	a75fe06f          	j	800089ec <_svfprintf_r+0x88>
80009f7c:	00600793          	li	a5,6
80009f80:	000d8c93          	mv	s9,s11
80009f84:	79b7ee63          	bltu	a5,s11,8000a720 <_svfprintf_r+0x1dbc>
80009f88:	80014737          	lui	a4,0x80014
80009f8c:	000c8a93          	mv	s5,s9
80009f90:	01212a23          	sw	s2,20(sp)
80009f94:	e5c70b13          	addi	s6,a4,-420 # 80013e5c <heap_end.1814+0xffffe478>
80009f98:	b9dfe06f          	j	80008b34 <_svfprintf_r+0x1d0>
80009f9c:	01000613          	li	a2,16
80009fa0:	0e812683          	lw	a3,232(sp)
80009fa4:	6a965863          	bge	a2,s1,8000a654 <_svfprintf_r+0x1cf0>
80009fa8:	01000c93          	li	s9,16
80009fac:	00700d93          	li	s11,7
80009fb0:	00c0006f          	j	80009fbc <_svfprintf_r+0x1658>
80009fb4:	ff048493          	addi	s1,s1,-16
80009fb8:	689cde63          	bge	s9,s1,8000a654 <_svfprintf_r+0x1cf0>
80009fbc:	00812703          	lw	a4,8(sp)
80009fc0:	01078793          	addi	a5,a5,16
80009fc4:	00168693          	addi	a3,a3,1
80009fc8:	00e8a023          	sw	a4,0(a7)
80009fcc:	0198a223          	sw	s9,4(a7)
80009fd0:	0ef12623          	sw	a5,236(sp)
80009fd4:	0ed12423          	sw	a3,232(sp)
80009fd8:	00888893          	addi	a7,a7,8
80009fdc:	fcdddce3          	bge	s11,a3,80009fb4 <_svfprintf_r+0x1650>
80009fe0:	0e410613          	addi	a2,sp,228
80009fe4:	000c0593          	mv	a1,s8
80009fe8:	000d0513          	mv	a0,s10
80009fec:	4a1030ef          	jal	ra,8000dc8c <__ssprint_r>
80009ff0:	98051ae3          	bnez	a0,80009984 <_svfprintf_r+0x1020>
80009ff4:	0ec12783          	lw	a5,236(sp)
80009ff8:	0e812683          	lw	a3,232(sp)
80009ffc:	10c10893          	addi	a7,sp,268
8000a000:	fb5ff06f          	j	80009fb4 <_svfprintf_r+0x1650>
8000a004:	02012703          	lw	a4,32(sp)
8000a008:	02412c83          	lw	s9,36(sp)
8000a00c:	01412e23          	sw	s4,28(sp)
8000a010:	04812023          	sw	s0,64(sp)
8000a014:	05312223          	sw	s3,68(sp)
8000a018:	03512223          	sw	s5,36(sp)
8000a01c:	02812983          	lw	s3,40(sp)
8000a020:	03612423          	sw	s6,40(sp)
8000a024:	00eb0bb3          	add	s7,s6,a4
8000a028:	03c12403          	lw	s0,60(sp)
8000a02c:	04812a03          	lw	s4,72(sp)
8000a030:	04c12a83          	lw	s5,76(sp)
8000a034:	00700493          	li	s1,7
8000a038:	01000913          	li	s2,16
8000a03c:	000c0b13          	mv	s6,s8
8000a040:	080c8863          	beqz	s9,8000a0d0 <_svfprintf_r+0x176c>
8000a044:	08099863          	bnez	s3,8000a0d4 <_svfprintf_r+0x1770>
8000a048:	fff40413          	addi	s0,s0,-1
8000a04c:	fffc8c93          	addi	s9,s9,-1
8000a050:	0e812703          	lw	a4,232(sp)
8000a054:	014787b3          	add	a5,a5,s4
8000a058:	0158a023          	sw	s5,0(a7)
8000a05c:	00170713          	addi	a4,a4,1
8000a060:	0148a223          	sw	s4,4(a7)
8000a064:	0ef12623          	sw	a5,236(sp)
8000a068:	0ee12423          	sw	a4,232(sp)
8000a06c:	00888893          	addi	a7,a7,8
8000a070:	14e4c463          	blt	s1,a4,8000a1b8 <_svfprintf_r+0x1854>
8000a074:	00044683          	lbu	a3,0(s0)
8000a078:	41bb8633          	sub	a2,s7,s11
8000a07c:	00068c13          	mv	s8,a3
8000a080:	00d65463          	bge	a2,a3,8000a088 <_svfprintf_r+0x1724>
8000a084:	00060c13          	mv	s8,a2
8000a088:	03805663          	blez	s8,8000a0b4 <_svfprintf_r+0x1750>
8000a08c:	0e812683          	lw	a3,232(sp)
8000a090:	018787b3          	add	a5,a5,s8
8000a094:	01b8a023          	sw	s11,0(a7)
8000a098:	00168693          	addi	a3,a3,1
8000a09c:	0188a223          	sw	s8,4(a7)
8000a0a0:	0ef12623          	sw	a5,236(sp)
8000a0a4:	0ed12423          	sw	a3,232(sp)
8000a0a8:	34d4c063          	blt	s1,a3,8000a3e8 <_svfprintf_r+0x1a84>
8000a0ac:	00044683          	lbu	a3,0(s0)
8000a0b0:	00888893          	addi	a7,a7,8
8000a0b4:	fffc4613          	not	a2,s8
8000a0b8:	41f65613          	srai	a2,a2,0x1f
8000a0bc:	00cc7733          	and	a4,s8,a2
8000a0c0:	40e68c33          	sub	s8,a3,a4
8000a0c4:	01804c63          	bgtz	s8,8000a0dc <_svfprintf_r+0x1778>
8000a0c8:	00dd8db3          	add	s11,s11,a3
8000a0cc:	f60c9ce3          	bnez	s9,8000a044 <_svfprintf_r+0x16e0>
8000a0d0:	72098c63          	beqz	s3,8000a808 <_svfprintf_r+0x1ea4>
8000a0d4:	fff98993          	addi	s3,s3,-1
8000a0d8:	f79ff06f          	j	8000a050 <_svfprintf_r+0x16ec>
8000a0dc:	0e812683          	lw	a3,232(sp)
8000a0e0:	01894863          	blt	s2,s8,8000a0f0 <_svfprintf_r+0x178c>
8000a0e4:	0580006f          	j	8000a13c <_svfprintf_r+0x17d8>
8000a0e8:	ff0c0c13          	addi	s8,s8,-16
8000a0ec:	05895863          	bge	s2,s8,8000a13c <_svfprintf_r+0x17d8>
8000a0f0:	00812703          	lw	a4,8(sp)
8000a0f4:	01078793          	addi	a5,a5,16
8000a0f8:	00168693          	addi	a3,a3,1
8000a0fc:	00e8a023          	sw	a4,0(a7)
8000a100:	0128a223          	sw	s2,4(a7)
8000a104:	0ef12623          	sw	a5,236(sp)
8000a108:	0ed12423          	sw	a3,232(sp)
8000a10c:	00888893          	addi	a7,a7,8
8000a110:	fcd4dce3          	bge	s1,a3,8000a0e8 <_svfprintf_r+0x1784>
8000a114:	0e410613          	addi	a2,sp,228
8000a118:	000b0593          	mv	a1,s6
8000a11c:	000d0513          	mv	a0,s10
8000a120:	36d030ef          	jal	ra,8000dc8c <__ssprint_r>
8000a124:	5a051c63          	bnez	a0,8000a6dc <_svfprintf_r+0x1d78>
8000a128:	ff0c0c13          	addi	s8,s8,-16
8000a12c:	0ec12783          	lw	a5,236(sp)
8000a130:	0e812683          	lw	a3,232(sp)
8000a134:	10c10893          	addi	a7,sp,268
8000a138:	fb894ce3          	blt	s2,s8,8000a0f0 <_svfprintf_r+0x178c>
8000a13c:	00812703          	lw	a4,8(sp)
8000a140:	018787b3          	add	a5,a5,s8
8000a144:	00168693          	addi	a3,a3,1
8000a148:	00e8a023          	sw	a4,0(a7)
8000a14c:	0188a223          	sw	s8,4(a7)
8000a150:	0ef12623          	sw	a5,236(sp)
8000a154:	0ed12423          	sw	a3,232(sp)
8000a158:	76d4c463          	blt	s1,a3,8000a8c0 <_svfprintf_r+0x1f5c>
8000a15c:	00044683          	lbu	a3,0(s0)
8000a160:	00888893          	addi	a7,a7,8
8000a164:	00dd8db3          	add	s11,s11,a3
8000a168:	f65ff06f          	j	8000a0cc <_svfprintf_r+0x1768>
8000a16c:	01412683          	lw	a3,20(sp)
8000a170:	010a7793          	andi	a5,s4,16
8000a174:	00468713          	addi	a4,a3,4
8000a178:	20078463          	beqz	a5,8000a380 <_svfprintf_r+0x1a1c>
8000a17c:	0006a903          	lw	s2,0(a3)
8000a180:	00000c93          	li	s9,0
8000a184:	00e12a23          	sw	a4,20(sp)
8000a188:	d45ff06f          	j	80009ecc <_svfprintf_r+0x1568>
8000a18c:	0e410613          	addi	a2,sp,228
8000a190:	000c0593          	mv	a1,s8
8000a194:	000d0513          	mv	a0,s10
8000a198:	2f5030ef          	jal	ra,8000dc8c <__ssprint_r>
8000a19c:	fe051463          	bnez	a0,80009984 <_svfprintf_r+0x1020>
8000a1a0:	0e812683          	lw	a3,232(sp)
8000a1a4:	0ec12c83          	lw	s9,236(sp)
8000a1a8:	11410893          	addi	a7,sp,276
8000a1ac:	00168693          	addi	a3,a3,1
8000a1b0:	10c10913          	addi	s2,sp,268
8000a1b4:	fd5fe06f          	j	80009188 <_svfprintf_r+0x824>
8000a1b8:	0e410613          	addi	a2,sp,228
8000a1bc:	000b0593          	mv	a1,s6
8000a1c0:	000d0513          	mv	a0,s10
8000a1c4:	2c9030ef          	jal	ra,8000dc8c <__ssprint_r>
8000a1c8:	50051a63          	bnez	a0,8000a6dc <_svfprintf_r+0x1d78>
8000a1cc:	0ec12783          	lw	a5,236(sp)
8000a1d0:	10c10893          	addi	a7,sp,268
8000a1d4:	ea1ff06f          	j	8000a074 <_svfprintf_r+0x1710>
8000a1d8:	1b010b13          	addi	s6,sp,432
8000a1dc:	00000793          	li	a5,0
8000a1e0:	00812823          	sw	s0,16(sp)
8000a1e4:	00912e23          	sw	s1,28(sp)
8000a1e8:	000b0413          	mv	s0,s6
8000a1ec:	03312223          	sw	s3,36(sp)
8000a1f0:	000c0b13          	mv	s6,s8
8000a1f4:	00090493          	mv	s1,s2
8000a1f8:	000c8993          	mv	s3,s9
8000a1fc:	400bfa13          	andi	s4,s7,1024
8000a200:	03c12c83          	lw	s9,60(sp)
8000a204:	0ff00a93          	li	s5,255
8000a208:	00088c13          	mv	s8,a7
8000a20c:	00078913          	mv	s2,a5
8000a210:	0240006f          	j	8000a234 <_svfprintf_r+0x18d0>
8000a214:	00a00613          	li	a2,10
8000a218:	00000693          	li	a3,0
8000a21c:	00048513          	mv	a0,s1
8000a220:	00098593          	mv	a1,s3
8000a224:	698050ef          	jal	ra,8000f8bc <__udivdi3>
8000a228:	4c098063          	beqz	s3,8000a6e8 <_svfprintf_r+0x1d84>
8000a22c:	00050493          	mv	s1,a0
8000a230:	00058993          	mv	s3,a1
8000a234:	00a00613          	li	a2,10
8000a238:	00000693          	li	a3,0
8000a23c:	00048513          	mv	a0,s1
8000a240:	00098593          	mv	a1,s3
8000a244:	2ad050ef          	jal	ra,8000fcf0 <__umoddi3>
8000a248:	03050513          	addi	a0,a0,48
8000a24c:	fea40fa3          	sb	a0,-1(s0)
8000a250:	00190913          	addi	s2,s2,1
8000a254:	fff40413          	addi	s0,s0,-1
8000a258:	fa0a0ee3          	beqz	s4,8000a214 <_svfprintf_r+0x18b0>
8000a25c:	000cc683          	lbu	a3,0(s9)
8000a260:	fad91ae3          	bne	s2,a3,8000a214 <_svfprintf_r+0x18b0>
8000a264:	fb5908e3          	beq	s2,s5,8000a214 <_svfprintf_r+0x18b0>
8000a268:	42099a63          	bnez	s3,8000a69c <_svfprintf_r+0x1d38>
8000a26c:	00900793          	li	a5,9
8000a270:	4297e663          	bltu	a5,s1,8000a69c <_svfprintf_r+0x1d38>
8000a274:	000c0893          	mv	a7,s8
8000a278:	1b010793          	addi	a5,sp,432
8000a27c:	000b0c13          	mv	s8,s6
8000a280:	00040b13          	mv	s6,s0
8000a284:	03912e23          	sw	s9,60(sp)
8000a288:	01c12483          	lw	s1,28(sp)
8000a28c:	02412983          	lw	s3,36(sp)
8000a290:	01012403          	lw	s0,16(sp)
8000a294:	03212023          	sw	s2,32(sp)
8000a298:	41678cb3          	sub	s9,a5,s6
8000a29c:	000b8a13          	mv	s4,s7
8000a2a0:	96cff06f          	j	8000940c <_svfprintf_r+0xaa8>
8000a2a4:	0e812683          	lw	a3,232(sp)
8000a2a8:	80014637          	lui	a2,0x80014
8000a2ac:	e6460613          	addi	a2,a2,-412 # 80013e64 <heap_end.1814+0xffffe480>
8000a2b0:	00c8a023          	sw	a2,0(a7)
8000a2b4:	00178793          	addi	a5,a5,1
8000a2b8:	00100613          	li	a2,1
8000a2bc:	00168693          	addi	a3,a3,1
8000a2c0:	00c8a223          	sw	a2,4(a7)
8000a2c4:	0ef12623          	sw	a5,236(sp)
8000a2c8:	0ed12423          	sw	a3,232(sp)
8000a2cc:	00700613          	li	a2,7
8000a2d0:	00888893          	addi	a7,a7,8
8000a2d4:	06d64c63          	blt	a2,a3,8000a34c <_svfprintf_r+0x19e8>
8000a2d8:	20059863          	bnez	a1,8000a4e8 <_svfprintf_r+0x1b84>
8000a2dc:	02012703          	lw	a4,32(sp)
8000a2e0:	001a7693          	andi	a3,s4,1
8000a2e4:	00e6e6b3          	or	a3,a3,a4
8000a2e8:	00069463          	bnez	a3,8000a2f0 <_svfprintf_r+0x198c>
8000a2ec:	929fe06f          	j	80008c14 <_svfprintf_r+0x2b0>
8000a2f0:	03012683          	lw	a3,48(sp)
8000a2f4:	02c12703          	lw	a4,44(sp)
8000a2f8:	00700613          	li	a2,7
8000a2fc:	00d8a023          	sw	a3,0(a7)
8000a300:	0e812683          	lw	a3,232(sp)
8000a304:	00e787b3          	add	a5,a5,a4
8000a308:	00e8a223          	sw	a4,4(a7)
8000a30c:	00168693          	addi	a3,a3,1
8000a310:	0ef12623          	sw	a5,236(sp)
8000a314:	0ed12423          	sw	a3,232(sp)
8000a318:	4ad64e63          	blt	a2,a3,8000a7d4 <_svfprintf_r+0x1e70>
8000a31c:	00888893          	addi	a7,a7,8
8000a320:	02012703          	lw	a4,32(sp)
8000a324:	00168693          	addi	a3,a3,1
8000a328:	0168a023          	sw	s6,0(a7)
8000a32c:	00e787b3          	add	a5,a5,a4
8000a330:	00e8a223          	sw	a4,4(a7)
8000a334:	0ef12623          	sw	a5,236(sp)
8000a338:	0ed12423          	sw	a3,232(sp)
8000a33c:	00700713          	li	a4,7
8000a340:	00d74463          	blt	a4,a3,8000a348 <_svfprintf_r+0x19e4>
8000a344:	8cdfe06f          	j	80008c10 <_svfprintf_r+0x2ac>
8000a348:	e65fe06f          	j	800091ac <_svfprintf_r+0x848>
8000a34c:	0e410613          	addi	a2,sp,228
8000a350:	000c0593          	mv	a1,s8
8000a354:	000d0513          	mv	a0,s10
8000a358:	135030ef          	jal	ra,8000dc8c <__ssprint_r>
8000a35c:	e2051463          	bnez	a0,80009984 <_svfprintf_r+0x1020>
8000a360:	0cc12583          	lw	a1,204(sp)
8000a364:	0ec12783          	lw	a5,236(sp)
8000a368:	10c10893          	addi	a7,sp,268
8000a36c:	f6dff06f          	j	8000a2d8 <_svfprintf_r+0x1974>
8000a370:	01012b83          	lw	s7,16(sp)
8000a374:	00040d13          	mv	s10,s0
8000a378:	00048c13          	mv	s8,s1
8000a37c:	e0cff06f          	j	80009988 <_svfprintf_r+0x1024>
8000a380:	040a7793          	andi	a5,s4,64
8000a384:	22078c63          	beqz	a5,8000a5bc <_svfprintf_r+0x1c58>
8000a388:	01412783          	lw	a5,20(sp)
8000a38c:	00000c93          	li	s9,0
8000a390:	00e12a23          	sw	a4,20(sp)
8000a394:	0007d903          	lhu	s2,0(a5)
8000a398:	b35ff06f          	j	80009ecc <_svfprintf_r+0x1568>
8000a39c:	0e410613          	addi	a2,sp,228
8000a3a0:	000c0593          	mv	a1,s8
8000a3a4:	000d0513          	mv	a0,s10
8000a3a8:	0e5030ef          	jal	ra,8000dc8c <__ssprint_r>
8000a3ac:	dc051c63          	bnez	a0,80009984 <_svfprintf_r+0x1020>
8000a3b0:	0ec12783          	lw	a5,236(sp)
8000a3b4:	10c10893          	addi	a7,sp,268
8000a3b8:	b90ff06f          	j	80009748 <_svfprintf_r+0xde4>
8000a3bc:	00812683          	lw	a3,8(sp)
8000a3c0:	009787b3          	add	a5,a5,s1
8000a3c4:	0098a223          	sw	s1,4(a7)
8000a3c8:	00d8a023          	sw	a3,0(a7)
8000a3cc:	00170713          	addi	a4,a4,1
8000a3d0:	0ef12623          	sw	a5,236(sp)
8000a3d4:	0ee12423          	sw	a4,232(sp)
8000a3d8:	00700693          	li	a3,7
8000a3dc:	00e6c463          	blt	a3,a4,8000a3e4 <_svfprintf_r+0x1a80>
8000a3e0:	831fe06f          	j	80008c10 <_svfprintf_r+0x2ac>
8000a3e4:	dc9fe06f          	j	800091ac <_svfprintf_r+0x848>
8000a3e8:	0e410613          	addi	a2,sp,228
8000a3ec:	000b0593          	mv	a1,s6
8000a3f0:	000d0513          	mv	a0,s10
8000a3f4:	099030ef          	jal	ra,8000dc8c <__ssprint_r>
8000a3f8:	2e051263          	bnez	a0,8000a6dc <_svfprintf_r+0x1d78>
8000a3fc:	00044683          	lbu	a3,0(s0)
8000a400:	0ec12783          	lw	a5,236(sp)
8000a404:	10c10893          	addi	a7,sp,268
8000a408:	cadff06f          	j	8000a0b4 <_svfprintf_r+0x1750>
8000a40c:	0f012783          	lw	a5,240(sp)
8000a410:	0a010593          	addi	a1,sp,160
8000a414:	0b010513          	addi	a0,sp,176
8000a418:	0af12823          	sw	a5,176(sp)
8000a41c:	0f412783          	lw	a5,244(sp)
8000a420:	0a012023          	sw	zero,160(sp)
8000a424:	0a012223          	sw	zero,164(sp)
8000a428:	0af12a23          	sw	a5,180(sp)
8000a42c:	0f812783          	lw	a5,248(sp)
8000a430:	0a012423          	sw	zero,168(sp)
8000a434:	0a012623          	sw	zero,172(sp)
8000a438:	0af12c23          	sw	a5,184(sp)
8000a43c:	0fc12783          	lw	a5,252(sp)
8000a440:	0af12e23          	sw	a5,188(sp)
8000a444:	371060ef          	jal	ra,80010fb4 <__letf2>
8000a448:	01012883          	lw	a7,16(sp)
8000a44c:	52054263          	bltz	a0,8000a970 <_svfprintf_r+0x200c>
8000a450:	0c714783          	lbu	a5,199(sp)
8000a454:	04700713          	li	a4,71
8000a458:	28975e63          	bge	a4,s1,8000a6f4 <_svfprintf_r+0x1d90>
8000a45c:	80014737          	lui	a4,0x80014
8000a460:	e2870b13          	addi	s6,a4,-472 # 80013e28 <heap_end.1814+0xffffe444>
8000a464:	00012823          	sw	zero,16(sp)
8000a468:	02012423          	sw	zero,40(sp)
8000a46c:	02012223          	sw	zero,36(sp)
8000a470:	00012e23          	sw	zero,28(sp)
8000a474:	f7fa7a13          	andi	s4,s4,-129
8000a478:	00300a93          	li	s5,3
8000a47c:	00300c93          	li	s9,3
8000a480:	00000d93          	li	s11,0
8000a484:	00078463          	beqz	a5,8000a48c <_svfprintf_r+0x1b28>
8000a488:	e79fe06f          	j	80009300 <_svfprintf_r+0x99c>
8000a48c:	ebcfe06f          	j	80008b48 <_svfprintf_r+0x1e4>
8000a490:	00c12783          	lw	a5,12(sp)
8000a494:	00040b13          	mv	s6,s0
8000a498:	00f72023          	sw	a5,0(a4)
8000a49c:	fc0fe06f          	j	80008c5c <_svfprintf_r+0x2f8>
8000a4a0:	000b0513          	mv	a0,s6
8000a4a4:	05912023          	sw	s9,64(sp)
8000a4a8:	b88fe0ef          	jal	ra,80008830 <strlen>
8000a4ac:	0c714783          	lbu	a5,199(sp)
8000a4b0:	fff54a93          	not	s5,a0
8000a4b4:	41fada93          	srai	s5,s5,0x1f
8000a4b8:	01212a23          	sw	s2,20(sp)
8000a4bc:	00012823          	sw	zero,16(sp)
8000a4c0:	02012423          	sw	zero,40(sp)
8000a4c4:	02012223          	sw	zero,36(sp)
8000a4c8:	00012e23          	sw	zero,28(sp)
8000a4cc:	04012883          	lw	a7,64(sp)
8000a4d0:	00050c93          	mv	s9,a0
8000a4d4:	01557ab3          	and	s5,a0,s5
8000a4d8:	00000d93          	li	s11,0
8000a4dc:	00078463          	beqz	a5,8000a4e4 <_svfprintf_r+0x1b80>
8000a4e0:	e21fe06f          	j	80009300 <_svfprintf_r+0x99c>
8000a4e4:	e64fe06f          	j	80008b48 <_svfprintf_r+0x1e4>
8000a4e8:	03012683          	lw	a3,48(sp)
8000a4ec:	02c12703          	lw	a4,44(sp)
8000a4f0:	00700613          	li	a2,7
8000a4f4:	00d8a023          	sw	a3,0(a7)
8000a4f8:	0e812683          	lw	a3,232(sp)
8000a4fc:	00e787b3          	add	a5,a5,a4
8000a500:	00e8a223          	sw	a4,4(a7)
8000a504:	00168693          	addi	a3,a3,1
8000a508:	0ef12623          	sw	a5,236(sp)
8000a50c:	0ed12423          	sw	a3,232(sp)
8000a510:	00888893          	addi	a7,a7,8
8000a514:	2cd64063          	blt	a2,a3,8000a7d4 <_svfprintf_r+0x1e70>
8000a518:	e005d4e3          	bgez	a1,8000a320 <_svfprintf_r+0x19bc>
8000a51c:	ff000613          	li	a2,-16
8000a520:	40b004b3          	neg	s1,a1
8000a524:	26c5d4e3          	bge	a1,a2,8000af8c <_svfprintf_r+0x2628>
8000a528:	01000913          	li	s2,16
8000a52c:	00700c93          	li	s9,7
8000a530:	00c0006f          	j	8000a53c <_svfprintf_r+0x1bd8>
8000a534:	ff048493          	addi	s1,s1,-16
8000a538:	24995ae3          	bge	s2,s1,8000af8c <_svfprintf_r+0x2628>
8000a53c:	00812703          	lw	a4,8(sp)
8000a540:	01078793          	addi	a5,a5,16
8000a544:	00168693          	addi	a3,a3,1
8000a548:	00e8a023          	sw	a4,0(a7)
8000a54c:	0128a223          	sw	s2,4(a7)
8000a550:	0ef12623          	sw	a5,236(sp)
8000a554:	0ed12423          	sw	a3,232(sp)
8000a558:	00888893          	addi	a7,a7,8
8000a55c:	fcdcdce3          	bge	s9,a3,8000a534 <_svfprintf_r+0x1bd0>
8000a560:	0e410613          	addi	a2,sp,228
8000a564:	000c0593          	mv	a1,s8
8000a568:	000d0513          	mv	a0,s10
8000a56c:	720030ef          	jal	ra,8000dc8c <__ssprint_r>
8000a570:	c0051a63          	bnez	a0,80009984 <_svfprintf_r+0x1020>
8000a574:	0ec12783          	lw	a5,236(sp)
8000a578:	0e812683          	lw	a3,232(sp)
8000a57c:	10c10893          	addi	a7,sp,268
8000a580:	fb5ff06f          	j	8000a534 <_svfprintf_r+0x1bd0>
8000a584:	00148693          	addi	a3,s1,1
8000a588:	00890713          	addi	a4,s2,8
8000a58c:	00812783          	lw	a5,8(sp)
8000a590:	01bc8cb3          	add	s9,s9,s11
8000a594:	01b92223          	sw	s11,4(s2)
8000a598:	00f92023          	sw	a5,0(s2)
8000a59c:	0f912623          	sw	s9,236(sp)
8000a5a0:	0ed12423          	sw	a3,232(sp)
8000a5a4:	00700793          	li	a5,7
8000a5a8:	bed7c2e3          	blt	a5,a3,8000a18c <_svfprintf_r+0x1828>
8000a5ac:	00168693          	addi	a3,a3,1
8000a5b0:	00870893          	addi	a7,a4,8
8000a5b4:	00070913          	mv	s2,a4
8000a5b8:	bd1fe06f          	j	80009188 <_svfprintf_r+0x824>
8000a5bc:	200a7793          	andi	a5,s4,512
8000a5c0:	1c078e63          	beqz	a5,8000a79c <_svfprintf_r+0x1e38>
8000a5c4:	01412783          	lw	a5,20(sp)
8000a5c8:	00000c93          	li	s9,0
8000a5cc:	00e12a23          	sw	a4,20(sp)
8000a5d0:	0007c903          	lbu	s2,0(a5)
8000a5d4:	8f9ff06f          	j	80009ecc <_svfprintf_r+0x1568>
8000a5d8:	200a7793          	andi	a5,s4,512
8000a5dc:	1a078463          	beqz	a5,8000a784 <_svfprintf_r+0x1e20>
8000a5e0:	01412783          	lw	a5,20(sp)
8000a5e4:	00e12a23          	sw	a4,20(sp)
8000a5e8:	00078903          	lb	s2,0(a5)
8000a5ec:	41f95c93          	srai	s9,s2,0x1f
8000a5f0:	000c8793          	mv	a5,s9
8000a5f4:	fa5fe06f          	j	80009598 <_svfprintf_r+0xc34>
8000a5f8:	200bf793          	andi	a5,s7,512
8000a5fc:	16078863          	beqz	a5,8000a76c <_svfprintf_r+0x1e08>
8000a600:	01412783          	lw	a5,20(sp)
8000a604:	00000c93          	li	s9,0
8000a608:	00e12a23          	sw	a4,20(sp)
8000a60c:	0007c903          	lbu	s2,0(a5)
8000a610:	00100793          	li	a5,1
8000a614:	dcdfe06f          	j	800093e0 <_svfprintf_r+0xa7c>
8000a618:	200a7793          	andi	a5,s4,512
8000a61c:	12078e63          	beqz	a5,8000a758 <_svfprintf_r+0x1df4>
8000a620:	01412783          	lw	a5,20(sp)
8000a624:	00000c93          	li	s9,0
8000a628:	00e12a23          	sw	a4,20(sp)
8000a62c:	0007c903          	lbu	s2,0(a5)
8000a630:	e31fe06f          	j	80009460 <_svfprintf_r+0xafc>
8000a634:	0fc12783          	lw	a5,252(sp)
8000a638:	1807c863          	bltz	a5,8000a7c8 <_svfprintf_r+0x1e64>
8000a63c:	0c714783          	lbu	a5,199(sp)
8000a640:	04700713          	li	a4,71
8000a644:	46975c63          	bge	a4,s1,8000aabc <_svfprintf_r+0x2158>
8000a648:	80014737          	lui	a4,0x80014
8000a64c:	e3070b13          	addi	s6,a4,-464 # 80013e30 <heap_end.1814+0xffffe44c>
8000a650:	e15ff06f          	j	8000a464 <_svfprintf_r+0x1b00>
8000a654:	00812703          	lw	a4,8(sp)
8000a658:	009787b3          	add	a5,a5,s1
8000a65c:	00168693          	addi	a3,a3,1
8000a660:	00e8a023          	sw	a4,0(a7)
8000a664:	0098a223          	sw	s1,4(a7)
8000a668:	0ef12623          	sw	a5,236(sp)
8000a66c:	0ed12423          	sw	a3,232(sp)
8000a670:	00700613          	li	a2,7
8000a674:	00888893          	addi	a7,a7,8
8000a678:	c8d65663          	bge	a2,a3,80009b04 <_svfprintf_r+0x11a0>
8000a67c:	0e410613          	addi	a2,sp,228
8000a680:	000c0593          	mv	a1,s8
8000a684:	000d0513          	mv	a0,s10
8000a688:	604030ef          	jal	ra,8000dc8c <__ssprint_r>
8000a68c:	ae051c63          	bnez	a0,80009984 <_svfprintf_r+0x1020>
8000a690:	0ec12783          	lw	a5,236(sp)
8000a694:	10c10893          	addi	a7,sp,268
8000a698:	c6cff06f          	j	80009b04 <_svfprintf_r+0x11a0>
8000a69c:	04812783          	lw	a5,72(sp)
8000a6a0:	04c12583          	lw	a1,76(sp)
8000a6a4:	00000913          	li	s2,0
8000a6a8:	40f40433          	sub	s0,s0,a5
8000a6ac:	00078613          	mv	a2,a5
8000a6b0:	00040513          	mv	a0,s0
8000a6b4:	a08fe0ef          	jal	ra,800088bc <strncpy>
8000a6b8:	001cc583          	lbu	a1,1(s9)
8000a6bc:	00a00613          	li	a2,10
8000a6c0:	00000693          	li	a3,0
8000a6c4:	00b03833          	snez	a6,a1
8000a6c8:	00048513          	mv	a0,s1
8000a6cc:	00098593          	mv	a1,s3
8000a6d0:	010c8cb3          	add	s9,s9,a6
8000a6d4:	1e8050ef          	jal	ra,8000f8bc <__udivdi3>
8000a6d8:	b55ff06f          	j	8000a22c <_svfprintf_r+0x18c8>
8000a6dc:	01012b83          	lw	s7,16(sp)
8000a6e0:	000b0c13          	mv	s8,s6
8000a6e4:	aa4ff06f          	j	80009988 <_svfprintf_r+0x1024>
8000a6e8:	00900793          	li	a5,9
8000a6ec:	b497e0e3          	bltu	a5,s1,8000a22c <_svfprintf_r+0x18c8>
8000a6f0:	b85ff06f          	j	8000a274 <_svfprintf_r+0x1910>
8000a6f4:	80014737          	lui	a4,0x80014
8000a6f8:	e2470b13          	addi	s6,a4,-476 # 80013e24 <heap_end.1814+0xffffe440>
8000a6fc:	d69ff06f          	j	8000a464 <_svfprintf_r+0x1b00>
8000a700:	0e410613          	addi	a2,sp,228
8000a704:	000c0593          	mv	a1,s8
8000a708:	000d0513          	mv	a0,s10
8000a70c:	580030ef          	jal	ra,8000dc8c <__ssprint_r>
8000a710:	a6051a63          	bnez	a0,80009984 <_svfprintf_r+0x1020>
8000a714:	0ec12783          	lw	a5,236(sp)
8000a718:	10c10893          	addi	a7,sp,268
8000a71c:	bd0ff06f          	j	80009aec <_svfprintf_r+0x1188>
8000a720:	00600c93          	li	s9,6
8000a724:	865ff06f          	j	80009f88 <_svfprintf_r+0x1624>
8000a728:	02012683          	lw	a3,32(sp)
8000a72c:	00db0733          	add	a4,s6,a3
8000a730:	409684b3          	sub	s1,a3,s1
8000a734:	41b70833          	sub	a6,a4,s11
8000a738:	00048913          	mv	s2,s1
8000a73c:	c6985263          	bge	a6,s1,80009ba0 <_svfprintf_r+0x123c>
8000a740:	00080913          	mv	s2,a6
8000a744:	c5cff06f          	j	80009ba0 <_svfprintf_r+0x123c>
8000a748:	00c12783          	lw	a5,12(sp)
8000a74c:	00040b13          	mv	s6,s0
8000a750:	00f71023          	sh	a5,0(a4)
8000a754:	d08fe06f          	j	80008c5c <_svfprintf_r+0x2f8>
8000a758:	01412783          	lw	a5,20(sp)
8000a75c:	00000c93          	li	s9,0
8000a760:	00e12a23          	sw	a4,20(sp)
8000a764:	0007a903          	lw	s2,0(a5)
8000a768:	cf9fe06f          	j	80009460 <_svfprintf_r+0xafc>
8000a76c:	01412783          	lw	a5,20(sp)
8000a770:	00000c93          	li	s9,0
8000a774:	00e12a23          	sw	a4,20(sp)
8000a778:	0007a903          	lw	s2,0(a5)
8000a77c:	00100793          	li	a5,1
8000a780:	c61fe06f          	j	800093e0 <_svfprintf_r+0xa7c>
8000a784:	01412783          	lw	a5,20(sp)
8000a788:	00e12a23          	sw	a4,20(sp)
8000a78c:	0007a903          	lw	s2,0(a5)
8000a790:	41f95c93          	srai	s9,s2,0x1f
8000a794:	000c8793          	mv	a5,s9
8000a798:	e01fe06f          	j	80009598 <_svfprintf_r+0xc34>
8000a79c:	01412783          	lw	a5,20(sp)
8000a7a0:	00000c93          	li	s9,0
8000a7a4:	00e12a23          	sw	a4,20(sp)
8000a7a8:	0007a903          	lw	s2,0(a5)
8000a7ac:	f20ff06f          	j	80009ecc <_svfprintf_r+0x1568>
8000a7b0:	0e410613          	addi	a2,sp,228
8000a7b4:	000c0593          	mv	a1,s8
8000a7b8:	000d0513          	mv	a0,s10
8000a7bc:	4d0030ef          	jal	ra,8000dc8c <__ssprint_r>
8000a7c0:	00cc5703          	lhu	a4,12(s8)
8000a7c4:	cb0fe06f          	j	80008c74 <_svfprintf_r+0x310>
8000a7c8:	02d00793          	li	a5,45
8000a7cc:	0cf103a3          	sb	a5,199(sp)
8000a7d0:	e71ff06f          	j	8000a640 <_svfprintf_r+0x1cdc>
8000a7d4:	0e410613          	addi	a2,sp,228
8000a7d8:	000c0593          	mv	a1,s8
8000a7dc:	000d0513          	mv	a0,s10
8000a7e0:	4ac030ef          	jal	ra,8000dc8c <__ssprint_r>
8000a7e4:	9a051063          	bnez	a0,80009984 <_svfprintf_r+0x1020>
8000a7e8:	0cc12583          	lw	a1,204(sp)
8000a7ec:	0ec12783          	lw	a5,236(sp)
8000a7f0:	0e812683          	lw	a3,232(sp)
8000a7f4:	10c10893          	addi	a7,sp,268
8000a7f8:	b205d4e3          	bgez	a1,8000a320 <_svfprintf_r+0x19bc>
8000a7fc:	d21ff06f          	j	8000a51c <_svfprintf_r+0x1bb8>
8000a800:	00600d93          	li	s11,6
8000a804:	df8fe06f          	j	80008dfc <_svfprintf_r+0x498>
8000a808:	02012703          	lw	a4,32(sp)
8000a80c:	000b0c13          	mv	s8,s6
8000a810:	02812b03          	lw	s6,40(sp)
8000a814:	02812e23          	sw	s0,60(sp)
8000a818:	01c12a03          	lw	s4,28(sp)
8000a81c:	00eb06b3          	add	a3,s6,a4
8000a820:	04012403          	lw	s0,64(sp)
8000a824:	04412983          	lw	s3,68(sp)
8000a828:	02412a83          	lw	s5,36(sp)
8000a82c:	afb6f463          	bgeu	a3,s11,80009b14 <_svfprintf_r+0x11b0>
8000a830:	00068d93          	mv	s11,a3
8000a834:	ae0ff06f          	j	80009b14 <_svfprintf_r+0x11b0>
8000a838:	01c12703          	lw	a4,28(sp)
8000a83c:	ffd00793          	li	a5,-3
8000a840:	00f74463          	blt	a4,a5,8000a848 <_svfprintf_r+0x1ee4>
8000a844:	00edda63          	bge	s11,a4,8000a858 <_svfprintf_r+0x1ef4>
8000a848:	ffe48493          	addi	s1,s1,-2
8000a84c:	fdf4f793          	andi	a5,s1,-33
8000a850:	04f12a23          	sw	a5,84(sp)
8000a854:	ee4fe06f          	j	80008f38 <_svfprintf_r+0x5d4>
8000a858:	02012783          	lw	a5,32(sp)
8000a85c:	01c12703          	lw	a4,28(sp)
8000a860:	26f74463          	blt	a4,a5,8000aac8 <_svfprintf_r+0x2164>
8000a864:	02812783          	lw	a5,40(sp)
8000a868:	00070c93          	mv	s9,a4
8000a86c:	0017f793          	andi	a5,a5,1
8000a870:	00078663          	beqz	a5,8000a87c <_svfprintf_r+0x1f18>
8000a874:	02c12783          	lw	a5,44(sp)
8000a878:	00f70cb3          	add	s9,a4,a5
8000a87c:	02812783          	lw	a5,40(sp)
8000a880:	4007f793          	andi	a5,a5,1024
8000a884:	00078663          	beqz	a5,8000a890 <_svfprintf_r+0x1f2c>
8000a888:	01c12783          	lw	a5,28(sp)
8000a88c:	12f04ae3          	bgtz	a5,8000b1c0 <_svfprintf_r+0x285c>
8000a890:	fffcca93          	not	s5,s9
8000a894:	41fada93          	srai	s5,s5,0x1f
8000a898:	015cfab3          	and	s5,s9,s5
8000a89c:	06700493          	li	s1,103
8000a8a0:	02012423          	sw	zero,40(sp)
8000a8a4:	02012223          	sw	zero,36(sp)
8000a8a8:	facfe06f          	j	80009054 <_svfprintf_r+0x6f0>
8000a8ac:	0c714783          	lbu	a5,199(sp)
8000a8b0:	00000d93          	li	s11,0
8000a8b4:	00078463          	beqz	a5,8000a8bc <_svfprintf_r+0x1f58>
8000a8b8:	a49fe06f          	j	80009300 <_svfprintf_r+0x99c>
8000a8bc:	a8cfe06f          	j	80008b48 <_svfprintf_r+0x1e4>
8000a8c0:	0e410613          	addi	a2,sp,228
8000a8c4:	000b0593          	mv	a1,s6
8000a8c8:	000d0513          	mv	a0,s10
8000a8cc:	3c0030ef          	jal	ra,8000dc8c <__ssprint_r>
8000a8d0:	e00516e3          	bnez	a0,8000a6dc <_svfprintf_r+0x1d78>
8000a8d4:	00044683          	lbu	a3,0(s0)
8000a8d8:	0ec12783          	lw	a5,236(sp)
8000a8dc:	10c10893          	addi	a7,sp,268
8000a8e0:	00dd8db3          	add	s11,s11,a3
8000a8e4:	fe8ff06f          	j	8000a0cc <_svfprintf_r+0x1768>
8000a8e8:	0b010a93          	addi	s5,sp,176
8000a8ec:	0dc10813          	addi	a6,sp,220
8000a8f0:	0d010793          	addi	a5,sp,208
8000a8f4:	0cc10713          	addi	a4,sp,204
8000a8f8:	000d8693          	mv	a3,s11
8000a8fc:	00300613          	li	a2,3
8000a900:	000a8593          	mv	a1,s5
8000a904:	000d0513          	mv	a0,s10
8000a908:	05112223          	sw	a7,68(sp)
8000a90c:	0bc12823          	sw	t3,176(sp)
8000a910:	05c12023          	sw	t3,64(sp)
8000a914:	0bd12a23          	sw	t4,180(sp)
8000a918:	03d12223          	sw	t4,36(sp)
8000a91c:	0be12c23          	sw	t5,184(sp)
8000a920:	03e12023          	sw	t5,32(sp)
8000a924:	0a612e23          	sw	t1,188(sp)
8000a928:	00612e23          	sw	t1,28(sp)
8000a92c:	8a5fa0ef          	jal	ra,800051d0 <_ldtoa_r>
8000a930:	01c12303          	lw	t1,28(sp)
8000a934:	02012f03          	lw	t5,32(sp)
8000a938:	02412e83          	lw	t4,36(sp)
8000a93c:	04012e03          	lw	t3,64(sp)
8000a940:	04412883          	lw	a7,68(sp)
8000a944:	00050b13          	mv	s6,a0
8000a948:	04600793          	li	a5,70
8000a94c:	01bb0933          	add	s2,s6,s11
8000a950:	62fb9a63          	bne	s7,a5,8000af84 <_svfprintf_r+0x2620>
8000a954:	000b4683          	lbu	a3,0(s6)
8000a958:	03000793          	li	a5,48
8000a95c:	10f686e3          	beq	a3,a5,8000b268 <_svfprintf_r+0x2904>
8000a960:	0a010c93          	addi	s9,sp,160
8000a964:	0cc12783          	lw	a5,204(sp)
8000a968:	00f90933          	add	s2,s2,a5
8000a96c:	d40fe06f          	j	80008eac <_svfprintf_r+0x548>
8000a970:	02d00793          	li	a5,45
8000a974:	0cf103a3          	sb	a5,199(sp)
8000a978:	addff06f          	j	8000a454 <_svfprintf_r+0x1af0>
8000a97c:	0b010a93          	addi	s5,sp,176
8000a980:	0d010793          	addi	a5,sp,208
8000a984:	0dc10813          	addi	a6,sp,220
8000a988:	0cc10713          	addi	a4,sp,204
8000a98c:	000d8693          	mv	a3,s11
8000a990:	00200613          	li	a2,2
8000a994:	000a8593          	mv	a1,s5
8000a998:	000d0513          	mv	a0,s10
8000a99c:	0bc12823          	sw	t3,176(sp)
8000a9a0:	05c12023          	sw	t3,64(sp)
8000a9a4:	0bd12a23          	sw	t4,180(sp)
8000a9a8:	03d12223          	sw	t4,36(sp)
8000a9ac:	0be12c23          	sw	t5,184(sp)
8000a9b0:	03e12023          	sw	t5,32(sp)
8000a9b4:	0a612e23          	sw	t1,188(sp)
8000a9b8:	00612e23          	sw	t1,28(sp)
8000a9bc:	815fa0ef          	jal	ra,800051d0 <_ldtoa_r>
8000a9c0:	04700793          	li	a5,71
8000a9c4:	01c12303          	lw	t1,28(sp)
8000a9c8:	02012f03          	lw	t5,32(sp)
8000a9cc:	02412e83          	lw	t4,36(sp)
8000a9d0:	04012e03          	lw	t3,64(sp)
8000a9d4:	04412883          	lw	a7,68(sp)
8000a9d8:	00050b13          	mv	s6,a0
8000a9dc:	f6fb96e3          	bne	s7,a5,8000a948 <_svfprintf_r+0x1fe4>
8000a9e0:	02812783          	lw	a5,40(sp)
8000a9e4:	0017f793          	andi	a5,a5,1
8000a9e8:	58079863          	bnez	a5,8000af78 <_svfprintf_r+0x2614>
8000a9ec:	04700793          	li	a5,71
8000a9f0:	0dc12703          	lw	a4,220(sp)
8000a9f4:	04f12a23          	sw	a5,84(sp)
8000a9f8:	d10fe06f          	j	80008f08 <_svfprintf_r+0x5a4>
8000a9fc:	0e410613          	addi	a2,sp,228
8000aa00:	000c0593          	mv	a1,s8
8000aa04:	000d0513          	mv	a0,s10
8000aa08:	284030ef          	jal	ra,8000dc8c <__ssprint_r>
8000aa0c:	00050463          	beqz	a0,8000aa14 <_svfprintf_r+0x20b0>
8000aa10:	f75fe06f          	j	80009984 <_svfprintf_r+0x1020>
8000aa14:	0cc12483          	lw	s1,204(sp)
8000aa18:	0ec12783          	lw	a5,236(sp)
8000aa1c:	10c10893          	addi	a7,sp,268
8000aa20:	938ff06f          	j	80009b58 <_svfprintf_r+0x11f4>
8000aa24:	0c714783          	lbu	a5,199(sp)
8000aa28:	01212a23          	sw	s2,20(sp)
8000aa2c:	02012423          	sw	zero,40(sp)
8000aa30:	02012223          	sw	zero,36(sp)
8000aa34:	00012e23          	sw	zero,28(sp)
8000aa38:	000d8a93          	mv	s5,s11
8000aa3c:	000d8c93          	mv	s9,s11
8000aa40:	00000d93          	li	s11,0
8000aa44:	00078463          	beqz	a5,8000aa4c <_svfprintf_r+0x20e8>
8000aa48:	8b9fe06f          	j	80009300 <_svfprintf_r+0x99c>
8000aa4c:	8fcfe06f          	j	80008b48 <_svfprintf_r+0x1e4>
8000aa50:	0e410613          	addi	a2,sp,228
8000aa54:	000c0593          	mv	a1,s8
8000aa58:	000d0513          	mv	a0,s10
8000aa5c:	230030ef          	jal	ra,8000dc8c <__ssprint_r>
8000aa60:	00050463          	beqz	a0,8000aa68 <_svfprintf_r+0x2104>
8000aa64:	f21fe06f          	j	80009984 <_svfprintf_r+0x1020>
8000aa68:	0cc12483          	lw	s1,204(sp)
8000aa6c:	02012703          	lw	a4,32(sp)
8000aa70:	0ec12783          	lw	a5,236(sp)
8000aa74:	10c10893          	addi	a7,sp,268
8000aa78:	409704b3          	sub	s1,a4,s1
8000aa7c:	924ff06f          	j	80009ba0 <_svfprintf_r+0x123c>
8000aa80:	02812783          	lw	a5,40(sp)
8000aa84:	01c12703          	lw	a4,28(sp)
8000aa88:	0017f793          	andi	a5,a5,1
8000aa8c:	01b7e7b3          	or	a5,a5,s11
8000aa90:	04e054e3          	blez	a4,8000b2d8 <_svfprintf_r+0x2974>
8000aa94:	7a079663          	bnez	a5,8000b240 <_svfprintf_r+0x28dc>
8000aa98:	01c12c83          	lw	s9,28(sp)
8000aa9c:	06600493          	li	s1,102
8000aaa0:	02812783          	lw	a5,40(sp)
8000aaa4:	4007f793          	andi	a5,a5,1024
8000aaa8:	70079e63          	bnez	a5,8000b1c4 <_svfprintf_r+0x2860>
8000aaac:	fffcca93          	not	s5,s9
8000aab0:	41fada93          	srai	s5,s5,0x1f
8000aab4:	015cfab3          	and	s5,s9,s5
8000aab8:	de9ff06f          	j	8000a8a0 <_svfprintf_r+0x1f3c>
8000aabc:	80014737          	lui	a4,0x80014
8000aac0:	e2c70b13          	addi	s6,a4,-468 # 80013e2c <heap_end.1814+0xffffe448>
8000aac4:	9a1ff06f          	j	8000a464 <_svfprintf_r+0x1b00>
8000aac8:	02012783          	lw	a5,32(sp)
8000aacc:	02c12703          	lw	a4,44(sp)
8000aad0:	06700493          	li	s1,103
8000aad4:	00e78cb3          	add	s9,a5,a4
8000aad8:	01c12783          	lw	a5,28(sp)
8000aadc:	fcf042e3          	bgtz	a5,8000aaa0 <_svfprintf_r+0x213c>
8000aae0:	40fc8cb3          	sub	s9,s9,a5
8000aae4:	001c8c93          	addi	s9,s9,1
8000aae8:	fffcca93          	not	s5,s9
8000aaec:	41fada93          	srai	s5,s5,0x1f
8000aaf0:	015cfab3          	and	s5,s9,s5
8000aaf4:	dadff06f          	j	8000a8a0 <_svfprintf_r+0x1f3c>
8000aaf8:	800146b7          	lui	a3,0x80014
8000aafc:	5bc68e93          	addi	t4,a3,1468 # 800145bc <heap_end.1814+0xffffebd8>
8000ab00:	f48fe06f          	j	80009248 <_svfprintf_r+0x8e4>
8000ab04:	03000793          	li	a5,48
8000ab08:	0cf10423          	sb	a5,200(sp)
8000ab0c:	05800793          	li	a5,88
8000ab10:	002a6713          	ori	a4,s4,2
8000ab14:	0cf104a3          	sb	a5,201(sp)
8000ab18:	02e12423          	sw	a4,40(sp)
8000ab1c:	06300793          	li	a5,99
8000ab20:	00012823          	sw	zero,16(sp)
8000ab24:	14c10b13          	addi	s6,sp,332
8000ab28:	41b7ce63          	blt	a5,s11,8000af44 <_svfprintf_r+0x25e0>
8000ab2c:	0fc12303          	lw	t1,252(sp)
8000ab30:	fdf4fb93          	andi	s7,s1,-33
8000ab34:	05712a23          	sw	s7,84(sp)
8000ab38:	04012c23          	sw	zero,88(sp)
8000ab3c:	0f012e03          	lw	t3,240(sp)
8000ab40:	0f412e83          	lw	t4,244(sp)
8000ab44:	0f812f03          	lw	t5,248(sp)
8000ab48:	102a6a13          	ori	s4,s4,258
8000ab4c:	38034263          	bltz	t1,8000aed0 <_svfprintf_r+0x256c>
8000ab50:	06100793          	li	a5,97
8000ab54:	54f48e63          	beq	s1,a5,8000b0b0 <_svfprintf_r+0x274c>
8000ab58:	04100793          	li	a5,65
8000ab5c:	00f48463          	beq	s1,a5,8000ab64 <_svfprintf_r+0x2200>
8000ab60:	ac8fe06f          	j	80008e28 <_svfprintf_r+0x4c4>
8000ab64:	0b010a93          	addi	s5,sp,176
8000ab68:	000a8513          	mv	a0,s5
8000ab6c:	05112823          	sw	a7,80(sp)
8000ab70:	0bc12823          	sw	t3,176(sp)
8000ab74:	0bd12a23          	sw	t4,180(sp)
8000ab78:	0be12c23          	sw	t5,184(sp)
8000ab7c:	0a612e23          	sw	t1,188(sp)
8000ab80:	6f1080ef          	jal	ra,80013a70 <__trunctfdf2>
8000ab84:	0cc10613          	addi	a2,sp,204
8000ab88:	f8cfd0ef          	jal	ra,80008314 <frexp>
8000ab8c:	00058613          	mv	a2,a1
8000ab90:	00050593          	mv	a1,a0
8000ab94:	000a8513          	mv	a0,s5
8000ab98:	4e5080ef          	jal	ra,8001387c <__extenddftf2>
8000ab9c:	0b012783          	lw	a5,176(sp)
8000aba0:	0a010c93          	addi	s9,sp,160
8000aba4:	09010913          	addi	s2,sp,144
8000aba8:	08f12823          	sw	a5,144(sp)
8000abac:	0b412783          	lw	a5,180(sp)
8000abb0:	08010613          	addi	a2,sp,128
8000abb4:	00090593          	mv	a1,s2
8000abb8:	08f12a23          	sw	a5,148(sp)
8000abbc:	0b812783          	lw	a5,184(sp)
8000abc0:	000c8513          	mv	a0,s9
8000abc4:	04c12023          	sw	a2,64(sp)
8000abc8:	08f12c23          	sw	a5,152(sp)
8000abcc:	0bc12783          	lw	a5,188(sp)
8000abd0:	08012023          	sw	zero,128(sp)
8000abd4:	08012223          	sw	zero,132(sp)
8000abd8:	08f12e23          	sw	a5,156(sp)
8000abdc:	3ffc07b7          	lui	a5,0x3ffc0
8000abe0:	08f12623          	sw	a5,140(sp)
8000abe4:	08012423          	sw	zero,136(sp)
8000abe8:	510060ef          	jal	ra,800110f8 <__multf3>
8000abec:	0a012803          	lw	a6,160(sp)
8000abf0:	0a412e03          	lw	t3,164(sp)
8000abf4:	0a812e83          	lw	t4,168(sp)
8000abf8:	0ac12f03          	lw	t5,172(sp)
8000abfc:	000c8593          	mv	a1,s9
8000ac00:	000a8513          	mv	a0,s5
8000ac04:	0b012823          	sw	a6,176(sp)
8000ac08:	05012223          	sw	a6,68(sp)
8000ac0c:	0bc12a23          	sw	t3,180(sp)
8000ac10:	03c12223          	sw	t3,36(sp)
8000ac14:	0bd12c23          	sw	t4,184(sp)
8000ac18:	03d12023          	sw	t4,32(sp)
8000ac1c:	0be12e23          	sw	t5,188(sp)
8000ac20:	01e12e23          	sw	t5,28(sp)
8000ac24:	0a012023          	sw	zero,160(sp)
8000ac28:	0a012223          	sw	zero,164(sp)
8000ac2c:	0a012423          	sw	zero,168(sp)
8000ac30:	0a012623          	sw	zero,172(sp)
8000ac34:	170060ef          	jal	ra,80010da4 <__eqtf2>
8000ac38:	01c12f03          	lw	t5,28(sp)
8000ac3c:	02012e83          	lw	t4,32(sp)
8000ac40:	02412e03          	lw	t3,36(sp)
8000ac44:	04412803          	lw	a6,68(sp)
8000ac48:	05012883          	lw	a7,80(sp)
8000ac4c:	00051663          	bnez	a0,8000ac58 <_svfprintf_r+0x22f4>
8000ac50:	00100793          	li	a5,1
8000ac54:	0cf12623          	sw	a5,204(sp)
8000ac58:	800147b7          	lui	a5,0x80014
8000ac5c:	e4878793          	addi	a5,a5,-440 # 80013e48 <heap_end.1814+0xffffe464>
8000ac60:	02f12223          	sw	a5,36(sp)
8000ac64:	fffd8693          	addi	a3,s11,-1
8000ac68:	05412e23          	sw	s4,92(sp)
8000ac6c:	06912223          	sw	s1,100(sp)
8000ac70:	07b12623          	sw	s11,108(sp)
8000ac74:	07a12a23          	sw	s10,116(sp)
8000ac78:	07812c23          	sw	s8,120(sp)
8000ac7c:	000b0b93          	mv	s7,s6
8000ac80:	06812023          	sw	s0,96(sp)
8000ac84:	07312423          	sw	s3,104(sp)
8000ac88:	07112823          	sw	a7,112(sp)
8000ac8c:	00068c13          	mv	s8,a3
8000ac90:	07612e23          	sw	s6,124(sp)
8000ac94:	00080d13          	mv	s10,a6
8000ac98:	000e0d93          	mv	s11,t3
8000ac9c:	000e8493          	mv	s1,t4
8000aca0:	000f0a13          	mv	s4,t5
8000aca4:	0480006f          	j	8000acec <_svfprintf_r+0x2388>
8000aca8:	000c8593          	mv	a1,s9
8000acac:	000a8513          	mv	a0,s5
8000acb0:	02c12023          	sw	a2,32(sp)
8000acb4:	01f12e23          	sw	t6,28(sp)
8000acb8:	0bf12c23          	sw	t6,184(sp)
8000acbc:	0ac12e23          	sw	a2,188(sp)
8000acc0:	0b612823          	sw	s6,176(sp)
8000acc4:	0b312a23          	sw	s3,180(sp)
8000acc8:	0a012023          	sw	zero,160(sp)
8000accc:	0a012223          	sw	zero,164(sp)
8000acd0:	0a012423          	sw	zero,168(sp)
8000acd4:	0a012623          	sw	zero,172(sp)
8000acd8:	0cc060ef          	jal	ra,80010da4 <__eqtf2>
8000acdc:	01c12f83          	lw	t6,28(sp)
8000ace0:	02012603          	lw	a2,32(sp)
8000ace4:	fffc0c13          	addi	s8,s8,-1
8000ace8:	0e050263          	beqz	a0,8000adcc <_svfprintf_r+0x2468>
8000acec:	400307b7          	lui	a5,0x40030
8000acf0:	00090613          	mv	a2,s2
8000acf4:	000c8593          	mv	a1,s9
8000acf8:	000a8513          	mv	a0,s5
8000acfc:	08f12e23          	sw	a5,156(sp)
8000ad00:	0ba12023          	sw	s10,160(sp)
8000ad04:	0bb12223          	sw	s11,164(sp)
8000ad08:	0a912423          	sw	s1,168(sp)
8000ad0c:	0b412623          	sw	s4,172(sp)
8000ad10:	08012823          	sw	zero,144(sp)
8000ad14:	08012a23          	sw	zero,148(sp)
8000ad18:	08012c23          	sw	zero,152(sp)
8000ad1c:	3dc060ef          	jal	ra,800110f8 <__multf3>
8000ad20:	000a8513          	mv	a0,s5
8000ad24:	0f5080ef          	jal	ra,80013618 <__fixtfsi>
8000ad28:	00050593          	mv	a1,a0
8000ad2c:	00050413          	mv	s0,a0
8000ad30:	000a8513          	mv	a0,s5
8000ad34:	0b012983          	lw	s3,176(sp)
8000ad38:	0b412483          	lw	s1,180(sp)
8000ad3c:	0b812b03          	lw	s6,184(sp)
8000ad40:	0bc12a03          	lw	s4,188(sp)
8000ad44:	1e9080ef          	jal	ra,8001372c <__floatsitf>
8000ad48:	0b012703          	lw	a4,176(sp)
8000ad4c:	04012603          	lw	a2,64(sp)
8000ad50:	00090593          	mv	a1,s2
8000ad54:	08e12023          	sw	a4,128(sp)
8000ad58:	0b412703          	lw	a4,180(sp)
8000ad5c:	000c8513          	mv	a0,s9
8000ad60:	09312823          	sw	s3,144(sp)
8000ad64:	08e12223          	sw	a4,132(sp)
8000ad68:	0b812703          	lw	a4,184(sp)
8000ad6c:	08912a23          	sw	s1,148(sp)
8000ad70:	09612c23          	sw	s6,152(sp)
8000ad74:	08e12423          	sw	a4,136(sp)
8000ad78:	0bc12703          	lw	a4,188(sp)
8000ad7c:	09412e23          	sw	s4,156(sp)
8000ad80:	08e12623          	sw	a4,140(sp)
8000ad84:	36c070ef          	jal	ra,800120f0 <__subtf3>
8000ad88:	02412783          	lw	a5,36(sp)
8000ad8c:	0a012b03          	lw	s6,160(sp)
8000ad90:	0a412983          	lw	s3,164(sp)
8000ad94:	00878733          	add	a4,a5,s0
8000ad98:	00074703          	lbu	a4,0(a4)
8000ad9c:	0a812f83          	lw	t6,168(sp)
8000ada0:	0ac12603          	lw	a2,172(sp)
8000ada4:	05712823          	sw	s7,80(sp)
8000ada8:	00eb8023          	sb	a4,0(s7)
8000adac:	05812223          	sw	s8,68(sp)
8000adb0:	fff00793          	li	a5,-1
8000adb4:	001b8b93          	addi	s7,s7,1
8000adb8:	000b0d13          	mv	s10,s6
8000adbc:	00098d93          	mv	s11,s3
8000adc0:	000f8493          	mv	s1,t6
8000adc4:	00060a13          	mv	s4,a2
8000adc8:	eefc10e3          	bne	s8,a5,8000aca8 <_svfprintf_r+0x2344>
8000adcc:	07012883          	lw	a7,112(sp)
8000add0:	000b0393          	mv	t2,s6
8000add4:	00098293          	mv	t0,s3
8000add8:	3ffe0937          	lui	s2,0x3ffe0
8000addc:	000c8593          	mv	a1,s9
8000ade0:	000a8513          	mv	a0,s5
8000ade4:	03112023          	sw	a7,32(sp)
8000ade8:	00812e23          	sw	s0,28(sp)
8000adec:	05c12a03          	lw	s4,92(sp)
8000adf0:	06412483          	lw	s1,100(sp)
8000adf4:	06012403          	lw	s0,96(sp)
8000adf8:	0a712823          	sw	t2,176(sp)
8000adfc:	06712223          	sw	t2,100(sp)
8000ae00:	0a512a23          	sw	t0,180(sp)
8000ae04:	06512023          	sw	t0,96(sp)
8000ae08:	0bf12c23          	sw	t6,184(sp)
8000ae0c:	05f12e23          	sw	t6,92(sp)
8000ae10:	0ac12e23          	sw	a2,188(sp)
8000ae14:	04c12023          	sw	a2,64(sp)
8000ae18:	0a012023          	sw	zero,160(sp)
8000ae1c:	0a012223          	sw	zero,164(sp)
8000ae20:	0a012423          	sw	zero,168(sp)
8000ae24:	0b212623          	sw	s2,172(sp)
8000ae28:	048060ef          	jal	ra,80010e70 <__getf2>
8000ae2c:	06c12d83          	lw	s11,108(sp)
8000ae30:	07412d03          	lw	s10,116(sp)
8000ae34:	07812c03          	lw	s8,120(sp)
8000ae38:	07c12b03          	lw	s6,124(sp)
8000ae3c:	06812983          	lw	s3,104(sp)
8000ae40:	02012883          	lw	a7,32(sp)
8000ae44:	0aa04063          	bgtz	a0,8000aee4 <_svfprintf_r+0x2580>
8000ae48:	06412383          	lw	t2,100(sp)
8000ae4c:	06012283          	lw	t0,96(sp)
8000ae50:	05c12f83          	lw	t6,92(sp)
8000ae54:	04012603          	lw	a2,64(sp)
8000ae58:	000c8593          	mv	a1,s9
8000ae5c:	000a8513          	mv	a0,s5
8000ae60:	0a712823          	sw	t2,176(sp)
8000ae64:	0a512a23          	sw	t0,180(sp)
8000ae68:	0bf12c23          	sw	t6,184(sp)
8000ae6c:	0ac12e23          	sw	a2,188(sp)
8000ae70:	0a012023          	sw	zero,160(sp)
8000ae74:	0a012223          	sw	zero,164(sp)
8000ae78:	0a012423          	sw	zero,168(sp)
8000ae7c:	0b212623          	sw	s2,172(sp)
8000ae80:	725050ef          	jal	ra,80010da4 <__eqtf2>
8000ae84:	02012883          	lw	a7,32(sp)
8000ae88:	00051863          	bnez	a0,8000ae98 <_svfprintf_r+0x2534>
8000ae8c:	01c12783          	lw	a5,28(sp)
8000ae90:	0017fc93          	andi	s9,a5,1
8000ae94:	040c9863          	bnez	s9,8000aee4 <_svfprintf_r+0x2580>
8000ae98:	04412783          	lw	a5,68(sp)
8000ae9c:	03000613          	li	a2,48
8000aea0:	00178693          	addi	a3,a5,1 # 40030001 <_printf_r-0x3ffcffff>
8000aea4:	00db86b3          	add	a3,s7,a3
8000aea8:	0007c863          	bltz	a5,8000aeb8 <_svfprintf_r+0x2554>
8000aeac:	001b8b93          	addi	s7,s7,1
8000aeb0:	fecb8fa3          	sb	a2,-1(s7)
8000aeb4:	fedb9ce3          	bne	s7,a3,8000aeac <_svfprintf_r+0x2548>
8000aeb8:	416b87b3          	sub	a5,s7,s6
8000aebc:	02f12023          	sw	a5,32(sp)
8000aec0:	850fe06f          	j	80008f10 <_svfprintf_r+0x5ac>
8000aec4:	03412423          	sw	s4,40(sp)
8000aec8:	00012823          	sw	zero,16(sp)
8000aecc:	00090a13          	mv	s4,s2
8000aed0:	800007b7          	lui	a5,0x80000
8000aed4:	0067c333          	xor	t1,a5,t1
8000aed8:	02d00793          	li	a5,45
8000aedc:	04f12c23          	sw	a5,88(sp)
8000aee0:	c71ff06f          	j	8000ab50 <_svfprintf_r+0x21ec>
8000aee4:	05012783          	lw	a5,80(sp)
8000aee8:	000b8693          	mv	a3,s7
8000aeec:	0cf12e23          	sw	a5,220(sp)
8000aef0:	02412783          	lw	a5,36(sp)
8000aef4:	fffbc603          	lbu	a2,-1(s7)
8000aef8:	00f7c583          	lbu	a1,15(a5) # 8000000f <heap_end.1814+0xfffea62b>
8000aefc:	02b61063          	bne	a2,a1,8000af1c <_svfprintf_r+0x25b8>
8000af00:	03000513          	li	a0,48
8000af04:	fea68fa3          	sb	a0,-1(a3)
8000af08:	0dc12683          	lw	a3,220(sp)
8000af0c:	fff68793          	addi	a5,a3,-1
8000af10:	0cf12e23          	sw	a5,220(sp)
8000af14:	fff6c603          	lbu	a2,-1(a3)
8000af18:	fec586e3          	beq	a1,a2,8000af04 <_svfprintf_r+0x25a0>
8000af1c:	00160593          	addi	a1,a2,1
8000af20:	03900513          	li	a0,57
8000af24:	0ff5f593          	andi	a1,a1,255
8000af28:	00a60663          	beq	a2,a0,8000af34 <_svfprintf_r+0x25d0>
8000af2c:	feb68fa3          	sb	a1,-1(a3)
8000af30:	f89ff06f          	j	8000aeb8 <_svfprintf_r+0x2554>
8000af34:	02412783          	lw	a5,36(sp)
8000af38:	00a7c583          	lbu	a1,10(a5)
8000af3c:	feb68fa3          	sb	a1,-1(a3)
8000af40:	f79ff06f          	j	8000aeb8 <_svfprintf_r+0x2554>
8000af44:	001d8593          	addi	a1,s11,1
8000af48:	000d0513          	mv	a0,s10
8000af4c:	01112823          	sw	a7,16(sp)
8000af50:	82dfb0ef          	jal	ra,8000677c <_malloc_r>
8000af54:	01012883          	lw	a7,16(sp)
8000af58:	00050b13          	mv	s6,a0
8000af5c:	3e050863          	beqz	a0,8000b34c <_svfprintf_r+0x29e8>
8000af60:	00a12823          	sw	a0,16(sp)
8000af64:	bc9ff06f          	j	8000ab2c <_svfprintf_r+0x21c8>
8000af68:	03000793          	li	a5,48
8000af6c:	0cf10423          	sb	a5,200(sp)
8000af70:	07800793          	li	a5,120
8000af74:	b9dff06f          	j	8000ab10 <_svfprintf_r+0x21ac>
8000af78:	04700793          	li	a5,71
8000af7c:	01bb0933          	add	s2,s6,s11
8000af80:	04f12a23          	sw	a5,84(sp)
8000af84:	0a010c93          	addi	s9,sp,160
8000af88:	f25fd06f          	j	80008eac <_svfprintf_r+0x548>
8000af8c:	00812703          	lw	a4,8(sp)
8000af90:	009787b3          	add	a5,a5,s1
8000af94:	00168693          	addi	a3,a3,1
8000af98:	00e8a023          	sw	a4,0(a7)
8000af9c:	0098a223          	sw	s1,4(a7)
8000afa0:	0ef12623          	sw	a5,236(sp)
8000afa4:	0ed12423          	sw	a3,232(sp)
8000afa8:	00700613          	li	a2,7
8000afac:	b6d65863          	bge	a2,a3,8000a31c <_svfprintf_r+0x19b8>
8000afb0:	0e410613          	addi	a2,sp,228
8000afb4:	000c0593          	mv	a1,s8
8000afb8:	000d0513          	mv	a0,s10
8000afbc:	4d1020ef          	jal	ra,8000dc8c <__ssprint_r>
8000afc0:	00050463          	beqz	a0,8000afc8 <_svfprintf_r+0x2664>
8000afc4:	9c1fe06f          	j	80009984 <_svfprintf_r+0x1020>
8000afc8:	0ec12783          	lw	a5,236(sp)
8000afcc:	0e812683          	lw	a3,232(sp)
8000afd0:	10c10893          	addi	a7,sp,268
8000afd4:	b4cff06f          	j	8000a320 <_svfprintf_r+0x19bc>
8000afd8:	000a0b93          	mv	s7,s4
8000afdc:	dfcfe06f          	j	800095d8 <_svfprintf_r+0xc74>
8000afe0:	000d9463          	bnez	s11,8000afe8 <_svfprintf_r+0x2684>
8000afe4:	00100d93          	li	s11,1
8000afe8:	0fc12303          	lw	t1,252(sp)
8000afec:	0f012e03          	lw	t3,240(sp)
8000aff0:	0f412e83          	lw	t4,244(sp)
8000aff4:	0f812f03          	lw	t5,248(sp)
8000aff8:	100a6913          	ori	s2,s4,256
8000affc:	ec0344e3          	bltz	t1,8000aec4 <_svfprintf_r+0x2560>
8000b000:	0b010a93          	addi	s5,sp,176
8000b004:	0dc10813          	addi	a6,sp,220
8000b008:	0d010793          	addi	a5,sp,208
8000b00c:	0cc10713          	addi	a4,sp,204
8000b010:	000d8693          	mv	a3,s11
8000b014:	00200613          	li	a2,2
8000b018:	000a8593          	mv	a1,s5
8000b01c:	000d0513          	mv	a0,s10
8000b020:	05112223          	sw	a7,68(sp)
8000b024:	0bc12823          	sw	t3,176(sp)
8000b028:	05c12023          	sw	t3,64(sp)
8000b02c:	0bd12a23          	sw	t4,180(sp)
8000b030:	03d12223          	sw	t4,36(sp)
8000b034:	0be12c23          	sw	t5,184(sp)
8000b038:	03e12023          	sw	t5,32(sp)
8000b03c:	0a612e23          	sw	t1,188(sp)
8000b040:	00612e23          	sw	t1,28(sp)
8000b044:	98cfa0ef          	jal	ra,800051d0 <_ldtoa_r>
8000b048:	01c12303          	lw	t1,28(sp)
8000b04c:	03412423          	sw	s4,40(sp)
8000b050:	02012f03          	lw	t5,32(sp)
8000b054:	02412e83          	lw	t4,36(sp)
8000b058:	04012e03          	lw	t3,64(sp)
8000b05c:	04412883          	lw	a7,68(sp)
8000b060:	00050b13          	mv	s6,a0
8000b064:	00090a13          	mv	s4,s2
8000b068:	00012823          	sw	zero,16(sp)
8000b06c:	04012c23          	sw	zero,88(sp)
8000b070:	971ff06f          	j	8000a9e0 <_svfprintf_r+0x207c>
8000b074:	fff00793          	li	a5,-1
8000b078:	00f12623          	sw	a5,12(sp)
8000b07c:	c05fd06f          	j	80008c80 <_svfprintf_r+0x31c>
8000b080:	0d610693          	addi	a3,sp,214
8000b084:	00061863          	bnez	a2,8000b094 <_svfprintf_r+0x2730>
8000b088:	03000693          	li	a3,48
8000b08c:	0cd10b23          	sb	a3,214(sp)
8000b090:	0d710693          	addi	a3,sp,215
8000b094:	1b010713          	addi	a4,sp,432
8000b098:	03078793          	addi	a5,a5,48
8000b09c:	40e68633          	sub	a2,a3,a4
8000b0a0:	00f68023          	sb	a5,0(a3)
8000b0a4:	0dd60793          	addi	a5,a2,221
8000b0a8:	02f12c23          	sw	a5,56(sp)
8000b0ac:	f65fd06f          	j	80009010 <_svfprintf_r+0x6ac>
8000b0b0:	0b010a93          	addi	s5,sp,176
8000b0b4:	000a8513          	mv	a0,s5
8000b0b8:	05112823          	sw	a7,80(sp)
8000b0bc:	0bc12823          	sw	t3,176(sp)
8000b0c0:	0bd12a23          	sw	t4,180(sp)
8000b0c4:	0be12c23          	sw	t5,184(sp)
8000b0c8:	0a612e23          	sw	t1,188(sp)
8000b0cc:	1a5080ef          	jal	ra,80013a70 <__trunctfdf2>
8000b0d0:	0cc10613          	addi	a2,sp,204
8000b0d4:	a40fd0ef          	jal	ra,80008314 <frexp>
8000b0d8:	00058613          	mv	a2,a1
8000b0dc:	00050593          	mv	a1,a0
8000b0e0:	000a8513          	mv	a0,s5
8000b0e4:	798080ef          	jal	ra,8001387c <__extenddftf2>
8000b0e8:	0b012783          	lw	a5,176(sp)
8000b0ec:	0a010c93          	addi	s9,sp,160
8000b0f0:	09010913          	addi	s2,sp,144
8000b0f4:	08f12823          	sw	a5,144(sp)
8000b0f8:	0b412783          	lw	a5,180(sp)
8000b0fc:	08010613          	addi	a2,sp,128
8000b100:	00090593          	mv	a1,s2
8000b104:	08f12a23          	sw	a5,148(sp)
8000b108:	0b812783          	lw	a5,184(sp)
8000b10c:	000c8513          	mv	a0,s9
8000b110:	04c12023          	sw	a2,64(sp)
8000b114:	08f12c23          	sw	a5,152(sp)
8000b118:	0bc12783          	lw	a5,188(sp)
8000b11c:	08012023          	sw	zero,128(sp)
8000b120:	08012223          	sw	zero,132(sp)
8000b124:	08f12e23          	sw	a5,156(sp)
8000b128:	3ffc07b7          	lui	a5,0x3ffc0
8000b12c:	08f12623          	sw	a5,140(sp)
8000b130:	08012423          	sw	zero,136(sp)
8000b134:	7c5050ef          	jal	ra,800110f8 <__multf3>
8000b138:	0a012803          	lw	a6,160(sp)
8000b13c:	0a412e03          	lw	t3,164(sp)
8000b140:	0a812e83          	lw	t4,168(sp)
8000b144:	0ac12f03          	lw	t5,172(sp)
8000b148:	000c8593          	mv	a1,s9
8000b14c:	000a8513          	mv	a0,s5
8000b150:	0b012823          	sw	a6,176(sp)
8000b154:	05012223          	sw	a6,68(sp)
8000b158:	0bc12a23          	sw	t3,180(sp)
8000b15c:	03c12223          	sw	t3,36(sp)
8000b160:	0bd12c23          	sw	t4,184(sp)
8000b164:	03d12023          	sw	t4,32(sp)
8000b168:	0be12e23          	sw	t5,188(sp)
8000b16c:	01e12e23          	sw	t5,28(sp)
8000b170:	0a012023          	sw	zero,160(sp)
8000b174:	0a012223          	sw	zero,164(sp)
8000b178:	0a012423          	sw	zero,168(sp)
8000b17c:	0a012623          	sw	zero,172(sp)
8000b180:	425050ef          	jal	ra,80010da4 <__eqtf2>
8000b184:	01c12f03          	lw	t5,28(sp)
8000b188:	02012e83          	lw	t4,32(sp)
8000b18c:	02412e03          	lw	t3,36(sp)
8000b190:	04412803          	lw	a6,68(sp)
8000b194:	05012883          	lw	a7,80(sp)
8000b198:	00051663          	bnez	a0,8000b1a4 <_svfprintf_r+0x2840>
8000b19c:	00100793          	li	a5,1
8000b1a0:	0cf12623          	sw	a5,204(sp)
8000b1a4:	800147b7          	lui	a5,0x80014
8000b1a8:	e3478793          	addi	a5,a5,-460 # 80013e34 <heap_end.1814+0xffffe450>
8000b1ac:	02f12223          	sw	a5,36(sp)
8000b1b0:	ab5ff06f          	j	8000ac64 <_svfprintf_r+0x2300>
8000b1b4:	00012823          	sw	zero,16(sp)
8000b1b8:	00078a13          	mv	s4,a5
8000b1bc:	d15ff06f          	j	8000aed0 <_svfprintf_r+0x256c>
8000b1c0:	06700493          	li	s1,103
8000b1c4:	03c12603          	lw	a2,60(sp)
8000b1c8:	0ff00693          	li	a3,255
8000b1cc:	00064783          	lbu	a5,0(a2)
8000b1d0:	18d78863          	beq	a5,a3,8000b360 <_svfprintf_r+0x29fc>
8000b1d4:	01c12703          	lw	a4,28(sp)
8000b1d8:	00000513          	li	a0,0
8000b1dc:	00000593          	li	a1,0
8000b1e0:	00e7de63          	bge	a5,a4,8000b1fc <_svfprintf_r+0x2898>
8000b1e4:	40f70733          	sub	a4,a4,a5
8000b1e8:	00164783          	lbu	a5,1(a2)
8000b1ec:	04078463          	beqz	a5,8000b234 <_svfprintf_r+0x28d0>
8000b1f0:	00158593          	addi	a1,a1,1
8000b1f4:	00160613          	addi	a2,a2,1
8000b1f8:	fed794e3          	bne	a5,a3,8000b1e0 <_svfprintf_r+0x287c>
8000b1fc:	02c12e23          	sw	a2,60(sp)
8000b200:	00e12e23          	sw	a4,28(sp)
8000b204:	02b12223          	sw	a1,36(sp)
8000b208:	02a12423          	sw	a0,40(sp)
8000b20c:	02812703          	lw	a4,40(sp)
8000b210:	02412783          	lw	a5,36(sp)
8000b214:	00e787b3          	add	a5,a5,a4
8000b218:	04812703          	lw	a4,72(sp)
8000b21c:	02e787b3          	mul	a5,a5,a4
8000b220:	01978cb3          	add	s9,a5,s9
8000b224:	fffcca93          	not	s5,s9
8000b228:	41fada93          	srai	s5,s5,0x1f
8000b22c:	015cfab3          	and	s5,s9,s5
8000b230:	e25fd06f          	j	80009054 <_svfprintf_r+0x6f0>
8000b234:	00064783          	lbu	a5,0(a2)
8000b238:	00150513          	addi	a0,a0,1
8000b23c:	fbdff06f          	j	8000b1f8 <_svfprintf_r+0x2894>
8000b240:	02c12783          	lw	a5,44(sp)
8000b244:	06600493          	li	s1,102
8000b248:	00f70cb3          	add	s9,a4,a5
8000b24c:	01bc8cb3          	add	s9,s9,s11
8000b250:	851ff06f          	j	8000aaa0 <_svfprintf_r+0x213c>
8000b254:	02812783          	lw	a5,40(sp)
8000b258:	0017f793          	andi	a5,a5,1
8000b25c:	00079463          	bnez	a5,8000b264 <_svfprintf_r+0x2900>
8000b260:	dd1fd06f          	j	80009030 <_svfprintf_r+0x6cc>
8000b264:	dc5fd06f          	j	80009028 <_svfprintf_r+0x6c4>
8000b268:	0a010c93          	addi	s9,sp,160
8000b26c:	000c8593          	mv	a1,s9
8000b270:	000a8513          	mv	a0,s5
8000b274:	05112223          	sw	a7,68(sp)
8000b278:	0bc12823          	sw	t3,176(sp)
8000b27c:	05c12023          	sw	t3,64(sp)
8000b280:	0bd12a23          	sw	t4,180(sp)
8000b284:	03d12223          	sw	t4,36(sp)
8000b288:	0be12c23          	sw	t5,184(sp)
8000b28c:	03e12023          	sw	t5,32(sp)
8000b290:	0a612e23          	sw	t1,188(sp)
8000b294:	00612e23          	sw	t1,28(sp)
8000b298:	0a012023          	sw	zero,160(sp)
8000b29c:	0a012223          	sw	zero,164(sp)
8000b2a0:	0a012423          	sw	zero,168(sp)
8000b2a4:	0a012623          	sw	zero,172(sp)
8000b2a8:	2fd050ef          	jal	ra,80010da4 <__eqtf2>
8000b2ac:	01c12303          	lw	t1,28(sp)
8000b2b0:	02012f03          	lw	t5,32(sp)
8000b2b4:	02412e83          	lw	t4,36(sp)
8000b2b8:	04012e03          	lw	t3,64(sp)
8000b2bc:	04412883          	lw	a7,68(sp)
8000b2c0:	ea050263          	beqz	a0,8000a964 <_svfprintf_r+0x2000>
8000b2c4:	00100793          	li	a5,1
8000b2c8:	41b787b3          	sub	a5,a5,s11
8000b2cc:	0cf12623          	sw	a5,204(sp)
8000b2d0:	00f90933          	add	s2,s2,a5
8000b2d4:	bd9fd06f          	j	80008eac <_svfprintf_r+0x548>
8000b2d8:	00079a63          	bnez	a5,8000b2ec <_svfprintf_r+0x2988>
8000b2dc:	00100a93          	li	s5,1
8000b2e0:	06600493          	li	s1,102
8000b2e4:	00100c93          	li	s9,1
8000b2e8:	db8ff06f          	j	8000a8a0 <_svfprintf_r+0x1f3c>
8000b2ec:	02c12783          	lw	a5,44(sp)
8000b2f0:	06600493          	li	s1,102
8000b2f4:	00178c93          	addi	s9,a5,1
8000b2f8:	01bc8cb3          	add	s9,s9,s11
8000b2fc:	fffcca93          	not	s5,s9
8000b300:	41fada93          	srai	s5,s5,0x1f
8000b304:	015cfab3          	and	s5,s9,s5
8000b308:	d98ff06f          	j	8000a8a0 <_svfprintf_r+0x1f3c>
8000b30c:	00088713          	mv	a4,a7
8000b310:	a7cff06f          	j	8000a58c <_svfprintf_r+0x1c28>
8000b314:	01412783          	lw	a5,20(sp)
8000b318:	0007ad83          	lw	s11,0(a5)
8000b31c:	00478793          	addi	a5,a5,4
8000b320:	000dd463          	bgez	s11,8000b328 <_svfprintf_r+0x29c4>
8000b324:	fff00d93          	li	s11,-1
8000b328:	00144483          	lbu	s1,1(s0)
8000b32c:	00f12a23          	sw	a5,20(sp)
8000b330:	00070413          	mv	s0,a4
8000b334:	f94fd06f          	j	80008ac8 <_svfprintf_r+0x164>
8000b338:	00c00793          	li	a5,12
8000b33c:	00fd2023          	sw	a5,0(s10)
8000b340:	fff00793          	li	a5,-1
8000b344:	00f12623          	sw	a5,12(sp)
8000b348:	939fd06f          	j	80008c80 <_svfprintf_r+0x31c>
8000b34c:	00cc5703          	lhu	a4,12(s8)
8000b350:	04076793          	ori	a5,a4,64
8000b354:	00078713          	mv	a4,a5
8000b358:	00fc1623          	sh	a5,12(s8)
8000b35c:	919fd06f          	j	80008c74 <_svfprintf_r+0x310>
8000b360:	02012423          	sw	zero,40(sp)
8000b364:	02012223          	sw	zero,36(sp)
8000b368:	ea5ff06f          	j	8000b20c <_svfprintf_r+0x28a8>
8000b36c:	00200793          	li	a5,2
8000b370:	02f12c23          	sw	a5,56(sp)
8000b374:	c9dfd06f          	j	80009010 <_svfprintf_r+0x6ac>

8000b378 <__sprint_r.part.0>:
8000b378:	0645a783          	lw	a5,100(a1)
8000b37c:	fd010113          	addi	sp,sp,-48
8000b380:	01612823          	sw	s6,16(sp)
8000b384:	02112623          	sw	ra,44(sp)
8000b388:	02812423          	sw	s0,40(sp)
8000b38c:	02912223          	sw	s1,36(sp)
8000b390:	03212023          	sw	s2,32(sp)
8000b394:	01312e23          	sw	s3,28(sp)
8000b398:	01412c23          	sw	s4,24(sp)
8000b39c:	01512a23          	sw	s5,20(sp)
8000b3a0:	01712623          	sw	s7,12(sp)
8000b3a4:	01812423          	sw	s8,8(sp)
8000b3a8:	01279713          	slli	a4,a5,0x12
8000b3ac:	00060b13          	mv	s6,a2
8000b3b0:	0a075863          	bgez	a4,8000b460 <__sprint_r.part.0+0xe8>
8000b3b4:	00862783          	lw	a5,8(a2)
8000b3b8:	00062b83          	lw	s7,0(a2)
8000b3bc:	00058913          	mv	s2,a1
8000b3c0:	00050993          	mv	s3,a0
8000b3c4:	fff00a93          	li	s5,-1
8000b3c8:	08078863          	beqz	a5,8000b458 <__sprint_r.part.0+0xe0>
8000b3cc:	004bac03          	lw	s8,4(s7)
8000b3d0:	000ba403          	lw	s0,0(s7)
8000b3d4:	002c5a13          	srli	s4,s8,0x2
8000b3d8:	060a0663          	beqz	s4,8000b444 <__sprint_r.part.0+0xcc>
8000b3dc:	00000493          	li	s1,0
8000b3e0:	00c0006f          	j	8000b3ec <__sprint_r.part.0+0x74>
8000b3e4:	00440413          	addi	s0,s0,4
8000b3e8:	049a0c63          	beq	s4,s1,8000b440 <__sprint_r.part.0+0xc8>
8000b3ec:	00042583          	lw	a1,0(s0)
8000b3f0:	00090613          	mv	a2,s2
8000b3f4:	00098513          	mv	a0,s3
8000b3f8:	0a1010ef          	jal	ra,8000cc98 <_fputwc_r>
8000b3fc:	00148493          	addi	s1,s1,1
8000b400:	ff5512e3          	bne	a0,s5,8000b3e4 <__sprint_r.part.0+0x6c>
8000b404:	fff00513          	li	a0,-1
8000b408:	02c12083          	lw	ra,44(sp)
8000b40c:	02812403          	lw	s0,40(sp)
8000b410:	000b2423          	sw	zero,8(s6)
8000b414:	000b2223          	sw	zero,4(s6)
8000b418:	02412483          	lw	s1,36(sp)
8000b41c:	02012903          	lw	s2,32(sp)
8000b420:	01c12983          	lw	s3,28(sp)
8000b424:	01812a03          	lw	s4,24(sp)
8000b428:	01412a83          	lw	s5,20(sp)
8000b42c:	01012b03          	lw	s6,16(sp)
8000b430:	00c12b83          	lw	s7,12(sp)
8000b434:	00812c03          	lw	s8,8(sp)
8000b438:	03010113          	addi	sp,sp,48
8000b43c:	00008067          	ret
8000b440:	008b2783          	lw	a5,8(s6)
8000b444:	ffcc7c13          	andi	s8,s8,-4
8000b448:	418787b3          	sub	a5,a5,s8
8000b44c:	00fb2423          	sw	a5,8(s6)
8000b450:	008b8b93          	addi	s7,s7,8
8000b454:	f6079ce3          	bnez	a5,8000b3cc <__sprint_r.part.0+0x54>
8000b458:	00000513          	li	a0,0
8000b45c:	fadff06f          	j	8000b408 <__sprint_r.part.0+0x90>
8000b460:	14d010ef          	jal	ra,8000cdac <__sfvwrite_r>
8000b464:	fa5ff06f          	j	8000b408 <__sprint_r.part.0+0x90>

8000b468 <__sprint_r>:
8000b468:	00862703          	lw	a4,8(a2)
8000b46c:	00070463          	beqz	a4,8000b474 <__sprint_r+0xc>
8000b470:	f09ff06f          	j	8000b378 <__sprint_r.part.0>
8000b474:	00062223          	sw	zero,4(a2)
8000b478:	00000513          	li	a0,0
8000b47c:	00008067          	ret

8000b480 <_vfiprintf_r>:
8000b480:	ed010113          	addi	sp,sp,-304
8000b484:	11312e23          	sw	s3,284(sp)
8000b488:	11412c23          	sw	s4,280(sp)
8000b48c:	11712623          	sw	s7,268(sp)
8000b490:	12112623          	sw	ra,300(sp)
8000b494:	12812423          	sw	s0,296(sp)
8000b498:	12912223          	sw	s1,292(sp)
8000b49c:	13212023          	sw	s2,288(sp)
8000b4a0:	11512a23          	sw	s5,276(sp)
8000b4a4:	11612823          	sw	s6,272(sp)
8000b4a8:	11812423          	sw	s8,264(sp)
8000b4ac:	11912223          	sw	s9,260(sp)
8000b4b0:	11a12023          	sw	s10,256(sp)
8000b4b4:	0fb12e23          	sw	s11,252(sp)
8000b4b8:	00d12823          	sw	a3,16(sp)
8000b4bc:	00050a13          	mv	s4,a0
8000b4c0:	00058993          	mv	s3,a1
8000b4c4:	00060b93          	mv	s7,a2
8000b4c8:	00050663          	beqz	a0,8000b4d4 <_vfiprintf_r+0x54>
8000b4cc:	03852783          	lw	a5,56(a0)
8000b4d0:	5e078e63          	beqz	a5,8000bacc <_vfiprintf_r+0x64c>
8000b4d4:	00c99703          	lh	a4,12(s3)
8000b4d8:	01071793          	slli	a5,a4,0x10
8000b4dc:	01271693          	slli	a3,a4,0x12
8000b4e0:	0107d793          	srli	a5,a5,0x10
8000b4e4:	0206ca63          	bltz	a3,8000b518 <_vfiprintf_r+0x98>
8000b4e8:	000027b7          	lui	a5,0x2
8000b4ec:	0649a683          	lw	a3,100(s3)
8000b4f0:	00f767b3          	or	a5,a4,a5
8000b4f4:	01079793          	slli	a5,a5,0x10
8000b4f8:	ffffe737          	lui	a4,0xffffe
8000b4fc:	4107d793          	srai	a5,a5,0x10
8000b500:	fff70713          	addi	a4,a4,-1 # ffffdfff <heap_end.1814+0x7ffe861b>
8000b504:	00e6f733          	and	a4,a3,a4
8000b508:	00f99623          	sh	a5,12(s3)
8000b50c:	01079793          	slli	a5,a5,0x10
8000b510:	06e9a223          	sw	a4,100(s3)
8000b514:	0107d793          	srli	a5,a5,0x10
8000b518:	0087f713          	andi	a4,a5,8
8000b51c:	40070063          	beqz	a4,8000b91c <_vfiprintf_r+0x49c>
8000b520:	0109a703          	lw	a4,16(s3)
8000b524:	3e070c63          	beqz	a4,8000b91c <_vfiprintf_r+0x49c>
8000b528:	01a7f793          	andi	a5,a5,26
8000b52c:	00a00713          	li	a4,10
8000b530:	40e78663          	beq	a5,a4,8000b93c <_vfiprintf_r+0x4bc>
8000b534:	800147b7          	lui	a5,0x80014
8000b538:	5dc78793          	addi	a5,a5,1500 # 800145dc <heap_end.1814+0xffffebf8>
8000b53c:	80014b37          	lui	s6,0x80014
8000b540:	04c10493          	addi	s1,sp,76
8000b544:	00f12a23          	sw	a5,20(sp)
8000b548:	80014937          	lui	s2,0x80014
8000b54c:	748b0793          	addi	a5,s6,1864 # 80014748 <heap_end.1814+0xffffed64>
8000b550:	000b8c13          	mv	s8,s7
8000b554:	04912023          	sw	s1,64(sp)
8000b558:	04012423          	sw	zero,72(sp)
8000b55c:	04012223          	sw	zero,68(sp)
8000b560:	00012c23          	sw	zero,24(sp)
8000b564:	00012e23          	sw	zero,28(sp)
8000b568:	02012223          	sw	zero,36(sp)
8000b56c:	02012023          	sw	zero,32(sp)
8000b570:	00012623          	sw	zero,12(sp)
8000b574:	00f12423          	sw	a5,8(sp)
8000b578:	75890913          	addi	s2,s2,1880 # 80014758 <heap_end.1814+0xffffed74>
8000b57c:	00048b93          	mv	s7,s1
8000b580:	000c4783          	lbu	a5,0(s8)
8000b584:	26078863          	beqz	a5,8000b7f4 <_vfiprintf_r+0x374>
8000b588:	000c0413          	mv	s0,s8
8000b58c:	02500713          	li	a4,37
8000b590:	42e78e63          	beq	a5,a4,8000b9cc <_vfiprintf_r+0x54c>
8000b594:	00144783          	lbu	a5,1(s0)
8000b598:	00140413          	addi	s0,s0,1
8000b59c:	fe079ae3          	bnez	a5,8000b590 <_vfiprintf_r+0x110>
8000b5a0:	41840cb3          	sub	s9,s0,s8
8000b5a4:	25840863          	beq	s0,s8,8000b7f4 <_vfiprintf_r+0x374>
8000b5a8:	04812703          	lw	a4,72(sp)
8000b5ac:	04412783          	lw	a5,68(sp)
8000b5b0:	018ba023          	sw	s8,0(s7)
8000b5b4:	00ec8733          	add	a4,s9,a4
8000b5b8:	00178793          	addi	a5,a5,1
8000b5bc:	019ba223          	sw	s9,4(s7)
8000b5c0:	04e12423          	sw	a4,72(sp)
8000b5c4:	04f12223          	sw	a5,68(sp)
8000b5c8:	00700693          	li	a3,7
8000b5cc:	008b8b93          	addi	s7,s7,8
8000b5d0:	02f6d063          	bge	a3,a5,8000b5f0 <_vfiprintf_r+0x170>
8000b5d4:	3a070ae3          	beqz	a4,8000c188 <_vfiprintf_r+0xd08>
8000b5d8:	04010613          	addi	a2,sp,64
8000b5dc:	00098593          	mv	a1,s3
8000b5e0:	000a0513          	mv	a0,s4
8000b5e4:	d95ff0ef          	jal	ra,8000b378 <__sprint_r.part.0>
8000b5e8:	20051a63          	bnez	a0,8000b7fc <_vfiprintf_r+0x37c>
8000b5ec:	00048b93          	mv	s7,s1
8000b5f0:	00c12703          	lw	a4,12(sp)
8000b5f4:	00044783          	lbu	a5,0(s0)
8000b5f8:	01970733          	add	a4,a4,s9
8000b5fc:	00e12623          	sw	a4,12(sp)
8000b600:	1e078a63          	beqz	a5,8000b7f4 <_vfiprintf_r+0x374>
8000b604:	00144703          	lbu	a4,1(s0)
8000b608:	00140c13          	addi	s8,s0,1
8000b60c:	02010da3          	sb	zero,59(sp)
8000b610:	fff00a93          	li	s5,-1
8000b614:	00012223          	sw	zero,4(sp)
8000b618:	00000b13          	li	s6,0
8000b61c:	05a00c93          	li	s9,90
8000b620:	00900d13          	li	s10,9
8000b624:	02a00613          	li	a2,42
8000b628:	001c0c13          	addi	s8,s8,1
8000b62c:	fe070793          	addi	a5,a4,-32
8000b630:	04fce863          	bltu	s9,a5,8000b680 <_vfiprintf_r+0x200>
8000b634:	01412683          	lw	a3,20(sp)
8000b638:	00279793          	slli	a5,a5,0x2
8000b63c:	00d787b3          	add	a5,a5,a3
8000b640:	0007a783          	lw	a5,0(a5)
8000b644:	00078067          	jr	a5
8000b648:	00012223          	sw	zero,4(sp)
8000b64c:	fd070793          	addi	a5,a4,-48
8000b650:	00412583          	lw	a1,4(sp)
8000b654:	000c4703          	lbu	a4,0(s8)
8000b658:	001c0c13          	addi	s8,s8,1
8000b65c:	00259693          	slli	a3,a1,0x2
8000b660:	00b686b3          	add	a3,a3,a1
8000b664:	00169693          	slli	a3,a3,0x1
8000b668:	00d787b3          	add	a5,a5,a3
8000b66c:	00f12223          	sw	a5,4(sp)
8000b670:	fd070793          	addi	a5,a4,-48
8000b674:	fcfd7ee3          	bgeu	s10,a5,8000b650 <_vfiprintf_r+0x1d0>
8000b678:	fe070793          	addi	a5,a4,-32
8000b67c:	fafcfce3          	bgeu	s9,a5,8000b634 <_vfiprintf_r+0x1b4>
8000b680:	16070a63          	beqz	a4,8000b7f4 <_vfiprintf_r+0x374>
8000b684:	08e10623          	sb	a4,140(sp)
8000b688:	02010da3          	sb	zero,59(sp)
8000b68c:	00100c93          	li	s9,1
8000b690:	00100d13          	li	s10,1
8000b694:	08c10413          	addi	s0,sp,140
8000b698:	00000a93          	li	s5,0
8000b69c:	002b7f93          	andi	t6,s6,2
8000b6a0:	000f8463          	beqz	t6,8000b6a8 <_vfiprintf_r+0x228>
8000b6a4:	002c8c93          	addi	s9,s9,2
8000b6a8:	04412703          	lw	a4,68(sp)
8000b6ac:	084b7f13          	andi	t5,s6,132
8000b6b0:	04812783          	lw	a5,72(sp)
8000b6b4:	00170693          	addi	a3,a4,1
8000b6b8:	00068613          	mv	a2,a3
8000b6bc:	000f1863          	bnez	t5,8000b6cc <_vfiprintf_r+0x24c>
8000b6c0:	00412583          	lw	a1,4(sp)
8000b6c4:	41958db3          	sub	s11,a1,s9
8000b6c8:	09b042e3          	bgtz	s11,8000bf4c <_vfiprintf_r+0xacc>
8000b6cc:	03b14583          	lbu	a1,59(sp)
8000b6d0:	008b8693          	addi	a3,s7,8
8000b6d4:	02058c63          	beqz	a1,8000b70c <_vfiprintf_r+0x28c>
8000b6d8:	03b10713          	addi	a4,sp,59
8000b6dc:	00178793          	addi	a5,a5,1
8000b6e0:	00eba023          	sw	a4,0(s7)
8000b6e4:	00100713          	li	a4,1
8000b6e8:	00eba223          	sw	a4,4(s7)
8000b6ec:	04f12423          	sw	a5,72(sp)
8000b6f0:	04c12223          	sw	a2,68(sp)
8000b6f4:	00700713          	li	a4,7
8000b6f8:	7ec74063          	blt	a4,a2,8000bed8 <_vfiprintf_r+0xa58>
8000b6fc:	00060713          	mv	a4,a2
8000b700:	00068b93          	mv	s7,a3
8000b704:	00160613          	addi	a2,a2,1
8000b708:	00868693          	addi	a3,a3,8
8000b70c:	040f8e63          	beqz	t6,8000b768 <_vfiprintf_r+0x2e8>
8000b710:	03c10713          	addi	a4,sp,60
8000b714:	00278793          	addi	a5,a5,2
8000b718:	00eba023          	sw	a4,0(s7)
8000b71c:	00200713          	li	a4,2
8000b720:	00eba223          	sw	a4,4(s7)
8000b724:	04f12423          	sw	a5,72(sp)
8000b728:	04c12223          	sw	a2,68(sp)
8000b72c:	00700713          	li	a4,7
8000b730:	00c750e3          	bge	a4,a2,8000bf30 <_vfiprintf_r+0xab0>
8000b734:	2a0784e3          	beqz	a5,8000c1dc <_vfiprintf_r+0xd5c>
8000b738:	04010613          	addi	a2,sp,64
8000b73c:	00098593          	mv	a1,s3
8000b740:	000a0513          	mv	a0,s4
8000b744:	03e12423          	sw	t5,40(sp)
8000b748:	c31ff0ef          	jal	ra,8000b378 <__sprint_r.part.0>
8000b74c:	0a051863          	bnez	a0,8000b7fc <_vfiprintf_r+0x37c>
8000b750:	04412703          	lw	a4,68(sp)
8000b754:	04812783          	lw	a5,72(sp)
8000b758:	02812f03          	lw	t5,40(sp)
8000b75c:	05410693          	addi	a3,sp,84
8000b760:	00170613          	addi	a2,a4,1
8000b764:	00048b93          	mv	s7,s1
8000b768:	08000593          	li	a1,128
8000b76c:	5abf0663          	beq	t5,a1,8000bd18 <_vfiprintf_r+0x898>
8000b770:	41aa8ab3          	sub	s5,s5,s10
8000b774:	69504263          	bgtz	s5,8000bdf8 <_vfiprintf_r+0x978>
8000b778:	00fd07b3          	add	a5,s10,a5
8000b77c:	008ba023          	sw	s0,0(s7)
8000b780:	01aba223          	sw	s10,4(s7)
8000b784:	04f12423          	sw	a5,72(sp)
8000b788:	04c12223          	sw	a2,68(sp)
8000b78c:	00700713          	li	a4,7
8000b790:	02c75263          	bge	a4,a2,8000b7b4 <_vfiprintf_r+0x334>
8000b794:	0a078ee3          	beqz	a5,8000c050 <_vfiprintf_r+0xbd0>
8000b798:	04010613          	addi	a2,sp,64
8000b79c:	00098593          	mv	a1,s3
8000b7a0:	000a0513          	mv	a0,s4
8000b7a4:	bd5ff0ef          	jal	ra,8000b378 <__sprint_r.part.0>
8000b7a8:	04051a63          	bnez	a0,8000b7fc <_vfiprintf_r+0x37c>
8000b7ac:	04812783          	lw	a5,72(sp)
8000b7b0:	00048693          	mv	a3,s1
8000b7b4:	004b7313          	andi	t1,s6,4
8000b7b8:	00030863          	beqz	t1,8000b7c8 <_vfiprintf_r+0x348>
8000b7bc:	00412703          	lw	a4,4(sp)
8000b7c0:	41970bb3          	sub	s7,a4,s9
8000b7c4:	0b7044e3          	bgtz	s7,8000c06c <_vfiprintf_r+0xbec>
8000b7c8:	00412403          	lw	s0,4(sp)
8000b7cc:	01945463          	bge	s0,s9,8000b7d4 <_vfiprintf_r+0x354>
8000b7d0:	000c8413          	mv	s0,s9
8000b7d4:	00c12703          	lw	a4,12(sp)
8000b7d8:	00870733          	add	a4,a4,s0
8000b7dc:	00e12623          	sw	a4,12(sp)
8000b7e0:	6c079863          	bnez	a5,8000beb0 <_vfiprintf_r+0xa30>
8000b7e4:	000c4783          	lbu	a5,0(s8)
8000b7e8:	04012223          	sw	zero,68(sp)
8000b7ec:	00048b93          	mv	s7,s1
8000b7f0:	d8079ce3          	bnez	a5,8000b588 <_vfiprintf_r+0x108>
8000b7f4:	04812783          	lw	a5,72(sp)
8000b7f8:	64079ae3          	bnez	a5,8000c64c <_vfiprintf_r+0x11cc>
8000b7fc:	00c9d783          	lhu	a5,12(s3)
8000b800:	0407f793          	andi	a5,a5,64
8000b804:	680792e3          	bnez	a5,8000c688 <_vfiprintf_r+0x1208>
8000b808:	12c12083          	lw	ra,300(sp)
8000b80c:	12812403          	lw	s0,296(sp)
8000b810:	00c12503          	lw	a0,12(sp)
8000b814:	12412483          	lw	s1,292(sp)
8000b818:	12012903          	lw	s2,288(sp)
8000b81c:	11c12983          	lw	s3,284(sp)
8000b820:	11812a03          	lw	s4,280(sp)
8000b824:	11412a83          	lw	s5,276(sp)
8000b828:	11012b03          	lw	s6,272(sp)
8000b82c:	10c12b83          	lw	s7,268(sp)
8000b830:	10812c03          	lw	s8,264(sp)
8000b834:	10412c83          	lw	s9,260(sp)
8000b838:	10012d03          	lw	s10,256(sp)
8000b83c:	0fc12d83          	lw	s11,252(sp)
8000b840:	13010113          	addi	sp,sp,304
8000b844:	00008067          	ret
8000b848:	000a0513          	mv	a0,s4
8000b84c:	c89fa0ef          	jal	ra,800064d4 <_localeconv_r>
8000b850:	00452783          	lw	a5,4(a0)
8000b854:	00078513          	mv	a0,a5
8000b858:	02f12023          	sw	a5,32(sp)
8000b85c:	fd5fc0ef          	jal	ra,80008830 <strlen>
8000b860:	00050793          	mv	a5,a0
8000b864:	000a0513          	mv	a0,s4
8000b868:	00078413          	mv	s0,a5
8000b86c:	02f12223          	sw	a5,36(sp)
8000b870:	c65fa0ef          	jal	ra,800064d4 <_localeconv_r>
8000b874:	00852783          	lw	a5,8(a0)
8000b878:	02a00613          	li	a2,42
8000b87c:	00f12e23          	sw	a5,28(sp)
8000b880:	2a0418e3          	bnez	s0,8000c330 <_vfiprintf_r+0xeb0>
8000b884:	000c4703          	lbu	a4,0(s8)
8000b888:	da1ff06f          	j	8000b628 <_vfiprintf_r+0x1a8>
8000b88c:	000c4703          	lbu	a4,0(s8)
8000b890:	020b6b13          	ori	s6,s6,32
8000b894:	d95ff06f          	j	8000b628 <_vfiprintf_r+0x1a8>
8000b898:	010b6b13          	ori	s6,s6,16
8000b89c:	020b7793          	andi	a5,s6,32
8000b8a0:	16078463          	beqz	a5,8000ba08 <_vfiprintf_r+0x588>
8000b8a4:	01012783          	lw	a5,16(sp)
8000b8a8:	00778793          	addi	a5,a5,7
8000b8ac:	ff87f793          	andi	a5,a5,-8
8000b8b0:	0047a703          	lw	a4,4(a5)
8000b8b4:	0007ad03          	lw	s10,0(a5)
8000b8b8:	00878793          	addi	a5,a5,8
8000b8bc:	00f12823          	sw	a5,16(sp)
8000b8c0:	00070c93          	mv	s9,a4
8000b8c4:	16074a63          	bltz	a4,8000ba38 <_vfiprintf_r+0x5b8>
8000b8c8:	fff00713          	li	a4,-1
8000b8cc:	000b0d93          	mv	s11,s6
8000b8d0:	00ea8863          	beq	s5,a4,8000b8e0 <_vfiprintf_r+0x460>
8000b8d4:	019d6733          	or	a4,s10,s9
8000b8d8:	f7fb7d93          	andi	s11,s6,-129
8000b8dc:	0a070ce3          	beqz	a4,8000c194 <_vfiprintf_r+0xd14>
8000b8e0:	160c96e3          	bnez	s9,8000c24c <_vfiprintf_r+0xdcc>
8000b8e4:	00900713          	li	a4,9
8000b8e8:	17a762e3          	bltu	a4,s10,8000c24c <_vfiprintf_r+0xdcc>
8000b8ec:	030d0793          	addi	a5,s10,48
8000b8f0:	0ef107a3          	sb	a5,239(sp)
8000b8f4:	000d8b13          	mv	s6,s11
8000b8f8:	00100d13          	li	s10,1
8000b8fc:	0ef10413          	addi	s0,sp,239
8000b900:	000a8c93          	mv	s9,s5
8000b904:	01aad463          	bge	s5,s10,8000b90c <_vfiprintf_r+0x48c>
8000b908:	000d0c93          	mv	s9,s10
8000b90c:	03b14783          	lbu	a5,59(sp)
8000b910:	00f037b3          	snez	a5,a5
8000b914:	00fc8cb3          	add	s9,s9,a5
8000b918:	d85ff06f          	j	8000b69c <_vfiprintf_r+0x21c>
8000b91c:	00098593          	mv	a1,s3
8000b920:	000a0513          	mv	a0,s4
8000b924:	ad8f70ef          	jal	ra,80002bfc <__swsetup_r>
8000b928:	560510e3          	bnez	a0,8000c688 <_vfiprintf_r+0x1208>
8000b92c:	00c9d783          	lhu	a5,12(s3)
8000b930:	00a00713          	li	a4,10
8000b934:	01a7f793          	andi	a5,a5,26
8000b938:	bee79ee3          	bne	a5,a4,8000b534 <_vfiprintf_r+0xb4>
8000b93c:	00e99783          	lh	a5,14(s3)
8000b940:	be07cae3          	bltz	a5,8000b534 <_vfiprintf_r+0xb4>
8000b944:	01012683          	lw	a3,16(sp)
8000b948:	000b8613          	mv	a2,s7
8000b94c:	00098593          	mv	a1,s3
8000b950:	000a0513          	mv	a0,s4
8000b954:	58d000ef          	jal	ra,8000c6e0 <__sbprintf>
8000b958:	00a12623          	sw	a0,12(sp)
8000b95c:	eadff06f          	j	8000b808 <_vfiprintf_r+0x388>
8000b960:	010b6b13          	ori	s6,s6,16
8000b964:	020b7793          	andi	a5,s6,32
8000b968:	06078a63          	beqz	a5,8000b9dc <_vfiprintf_r+0x55c>
8000b96c:	01012783          	lw	a5,16(sp)
8000b970:	00778793          	addi	a5,a5,7
8000b974:	ff87f793          	andi	a5,a5,-8
8000b978:	0007ad03          	lw	s10,0(a5)
8000b97c:	0047ac83          	lw	s9,4(a5)
8000b980:	00878793          	addi	a5,a5,8
8000b984:	00f12823          	sw	a5,16(sp)
8000b988:	bffb7d93          	andi	s11,s6,-1025
8000b98c:	00000713          	li	a4,0
8000b990:	02010da3          	sb	zero,59(sp)
8000b994:	fff00693          	li	a3,-1
8000b998:	0cda8463          	beq	s5,a3,8000ba60 <_vfiprintf_r+0x5e0>
8000b99c:	019d66b3          	or	a3,s10,s9
8000b9a0:	f7fdfb13          	andi	s6,s11,-129
8000b9a4:	5a069063          	bnez	a3,8000bf44 <_vfiprintf_r+0xac4>
8000b9a8:	300a9c63          	bnez	s5,8000bcc0 <_vfiprintf_r+0x840>
8000b9ac:	7e071863          	bnez	a4,8000c19c <_vfiprintf_r+0xd1c>
8000b9b0:	001dfd13          	andi	s10,s11,1
8000b9b4:	0f010413          	addi	s0,sp,240
8000b9b8:	f40d04e3          	beqz	s10,8000b900 <_vfiprintf_r+0x480>
8000b9bc:	03000793          	li	a5,48
8000b9c0:	0ef107a3          	sb	a5,239(sp)
8000b9c4:	0ef10413          	addi	s0,sp,239
8000b9c8:	f39ff06f          	j	8000b900 <_vfiprintf_r+0x480>
8000b9cc:	41840cb3          	sub	s9,s0,s8
8000b9d0:	bd841ce3          	bne	s0,s8,8000b5a8 <_vfiprintf_r+0x128>
8000b9d4:	00044783          	lbu	a5,0(s0)
8000b9d8:	c29ff06f          	j	8000b600 <_vfiprintf_r+0x180>
8000b9dc:	01012683          	lw	a3,16(sp)
8000b9e0:	010b7793          	andi	a5,s6,16
8000b9e4:	00468713          	addi	a4,a3,4
8000b9e8:	16079ce3          	bnez	a5,8000c360 <_vfiprintf_r+0xee0>
8000b9ec:	040b7793          	andi	a5,s6,64
8000b9f0:	380788e3          	beqz	a5,8000c580 <_vfiprintf_r+0x1100>
8000b9f4:	01012783          	lw	a5,16(sp)
8000b9f8:	00000c93          	li	s9,0
8000b9fc:	00e12823          	sw	a4,16(sp)
8000ba00:	0007dd03          	lhu	s10,0(a5)
8000ba04:	f85ff06f          	j	8000b988 <_vfiprintf_r+0x508>
8000ba08:	01012683          	lw	a3,16(sp)
8000ba0c:	010b7793          	andi	a5,s6,16
8000ba10:	00468713          	addi	a4,a3,4
8000ba14:	100794e3          	bnez	a5,8000c31c <_vfiprintf_r+0xe9c>
8000ba18:	040b7793          	andi	a5,s6,64
8000ba1c:	320782e3          	beqz	a5,8000c540 <_vfiprintf_r+0x10c0>
8000ba20:	01012783          	lw	a5,16(sp)
8000ba24:	00e12823          	sw	a4,16(sp)
8000ba28:	00079d03          	lh	s10,0(a5)
8000ba2c:	41fd5c93          	srai	s9,s10,0x1f
8000ba30:	000c8713          	mv	a4,s9
8000ba34:	e8075ae3          	bgez	a4,8000b8c8 <_vfiprintf_r+0x448>
8000ba38:	01a03733          	snez	a4,s10
8000ba3c:	41900eb3          	neg	t4,s9
8000ba40:	40ee8cb3          	sub	s9,t4,a4
8000ba44:	02d00713          	li	a4,45
8000ba48:	02e10da3          	sb	a4,59(sp)
8000ba4c:	fff00693          	li	a3,-1
8000ba50:	41a00d33          	neg	s10,s10
8000ba54:	000b0d93          	mv	s11,s6
8000ba58:	00100713          	li	a4,1
8000ba5c:	f4da90e3          	bne	s5,a3,8000b99c <_vfiprintf_r+0x51c>
8000ba60:	00100693          	li	a3,1
8000ba64:	e6d70ee3          	beq	a4,a3,8000b8e0 <_vfiprintf_r+0x460>
8000ba68:	00200693          	li	a3,2
8000ba6c:	26d70463          	beq	a4,a3,8000bcd4 <_vfiprintf_r+0x854>
8000ba70:	0f010413          	addi	s0,sp,240
8000ba74:	01dc9793          	slli	a5,s9,0x1d
8000ba78:	007d7713          	andi	a4,s10,7
8000ba7c:	003d5d13          	srli	s10,s10,0x3
8000ba80:	03070713          	addi	a4,a4,48
8000ba84:	01a7ed33          	or	s10,a5,s10
8000ba88:	003cdc93          	srli	s9,s9,0x3
8000ba8c:	fee40fa3          	sb	a4,-1(s0)
8000ba90:	019d67b3          	or	a5,s10,s9
8000ba94:	00040613          	mv	a2,s0
8000ba98:	fff40413          	addi	s0,s0,-1
8000ba9c:	fc079ce3          	bnez	a5,8000ba74 <_vfiprintf_r+0x5f4>
8000baa0:	001df793          	andi	a5,s11,1
8000baa4:	26078263          	beqz	a5,8000bd08 <_vfiprintf_r+0x888>
8000baa8:	03000793          	li	a5,48
8000baac:	24f70e63          	beq	a4,a5,8000bd08 <_vfiprintf_r+0x888>
8000bab0:	ffe60613          	addi	a2,a2,-2
8000bab4:	fef40fa3          	sb	a5,-1(s0)
8000bab8:	0f010793          	addi	a5,sp,240
8000babc:	40c78d33          	sub	s10,a5,a2
8000bac0:	000d8b13          	mv	s6,s11
8000bac4:	00060413          	mv	s0,a2
8000bac8:	e39ff06f          	j	8000b900 <_vfiprintf_r+0x480>
8000bacc:	899f70ef          	jal	ra,80003364 <__sinit>
8000bad0:	a05ff06f          	j	8000b4d4 <_vfiprintf_r+0x54>
8000bad4:	01012783          	lw	a5,16(sp)
8000bad8:	02010da3          	sb	zero,59(sp)
8000badc:	0007a403          	lw	s0,0(a5)
8000bae0:	00478d93          	addi	s11,a5,4
8000bae4:	220400e3          	beqz	s0,8000c504 <_vfiprintf_r+0x1084>
8000bae8:	fff00793          	li	a5,-1
8000baec:	12fa88e3          	beq	s5,a5,8000c41c <_vfiprintf_r+0xf9c>
8000baf0:	000a8613          	mv	a2,s5
8000baf4:	00000593          	li	a1,0
8000baf8:	00040513          	mv	a0,s0
8000bafc:	cacfb0ef          	jal	ra,80006fa8 <memchr>
8000bb00:	360500e3          	beqz	a0,8000c660 <_vfiprintf_r+0x11e0>
8000bb04:	40850d33          	sub	s10,a0,s0
8000bb08:	01b12823          	sw	s11,16(sp)
8000bb0c:	00000a93          	li	s5,0
8000bb10:	df1ff06f          	j	8000b900 <_vfiprintf_r+0x480>
8000bb14:	01012703          	lw	a4,16(sp)
8000bb18:	02010da3          	sb	zero,59(sp)
8000bb1c:	00100c93          	li	s9,1
8000bb20:	00072783          	lw	a5,0(a4)
8000bb24:	00470713          	addi	a4,a4,4
8000bb28:	00e12823          	sw	a4,16(sp)
8000bb2c:	08f10623          	sb	a5,140(sp)
8000bb30:	00100d13          	li	s10,1
8000bb34:	08c10413          	addi	s0,sp,140
8000bb38:	b61ff06f          	j	8000b698 <_vfiprintf_r+0x218>
8000bb3c:	01012783          	lw	a5,16(sp)
8000bb40:	ffff8737          	lui	a4,0xffff8
8000bb44:	83074713          	xori	a4,a4,-2000
8000bb48:	0007ad03          	lw	s10,0(a5)
8000bb4c:	00478793          	addi	a5,a5,4
8000bb50:	00f12823          	sw	a5,16(sp)
8000bb54:	800147b7          	lui	a5,0x80014
8000bb58:	e3478793          	addi	a5,a5,-460 # 80013e34 <heap_end.1814+0xffffe450>
8000bb5c:	02e11e23          	sh	a4,60(sp)
8000bb60:	00000c93          	li	s9,0
8000bb64:	002b6d93          	ori	s11,s6,2
8000bb68:	00f12c23          	sw	a5,24(sp)
8000bb6c:	00200713          	li	a4,2
8000bb70:	e21ff06f          	j	8000b990 <_vfiprintf_r+0x510>
8000bb74:	000c4703          	lbu	a4,0(s8)
8000bb78:	06c00793          	li	a5,108
8000bb7c:	16f706e3          	beq	a4,a5,8000c4e8 <_vfiprintf_r+0x1068>
8000bb80:	010b6b13          	ori	s6,s6,16
8000bb84:	aa5ff06f          	j	8000b628 <_vfiprintf_r+0x1a8>
8000bb88:	000c4703          	lbu	a4,0(s8)
8000bb8c:	06800793          	li	a5,104
8000bb90:	14f704e3          	beq	a4,a5,8000c4d8 <_vfiprintf_r+0x1058>
8000bb94:	040b6b13          	ori	s6,s6,64
8000bb98:	a91ff06f          	j	8000b628 <_vfiprintf_r+0x1a8>
8000bb9c:	010b6d93          	ori	s11,s6,16
8000bba0:	020df793          	andi	a5,s11,32
8000bba4:	60078463          	beqz	a5,8000c1ac <_vfiprintf_r+0xd2c>
8000bba8:	01012783          	lw	a5,16(sp)
8000bbac:	00100713          	li	a4,1
8000bbb0:	00778793          	addi	a5,a5,7
8000bbb4:	ff87f793          	andi	a5,a5,-8
8000bbb8:	0007ad03          	lw	s10,0(a5)
8000bbbc:	0047ac83          	lw	s9,4(a5)
8000bbc0:	00878793          	addi	a5,a5,8
8000bbc4:	00f12823          	sw	a5,16(sp)
8000bbc8:	dc9ff06f          	j	8000b990 <_vfiprintf_r+0x510>
8000bbcc:	000c4703          	lbu	a4,0(s8)
8000bbd0:	080b6b13          	ori	s6,s6,128
8000bbd4:	a55ff06f          	j	8000b628 <_vfiprintf_r+0x1a8>
8000bbd8:	01012683          	lw	a3,16(sp)
8000bbdc:	000c4703          	lbu	a4,0(s8)
8000bbe0:	0006a783          	lw	a5,0(a3)
8000bbe4:	00468693          	addi	a3,a3,4
8000bbe8:	00d12823          	sw	a3,16(sp)
8000bbec:	00f12223          	sw	a5,4(sp)
8000bbf0:	a207dce3          	bgez	a5,8000b628 <_vfiprintf_r+0x1a8>
8000bbf4:	40f007b3          	neg	a5,a5
8000bbf8:	00f12223          	sw	a5,4(sp)
8000bbfc:	004b6b13          	ori	s6,s6,4
8000bc00:	a29ff06f          	j	8000b628 <_vfiprintf_r+0x1a8>
8000bc04:	000c4703          	lbu	a4,0(s8)
8000bc08:	001b6b13          	ori	s6,s6,1
8000bc0c:	a1dff06f          	j	8000b628 <_vfiprintf_r+0x1a8>
8000bc10:	03b14783          	lbu	a5,59(sp)
8000bc14:	000c4703          	lbu	a4,0(s8)
8000bc18:	a00798e3          	bnez	a5,8000b628 <_vfiprintf_r+0x1a8>
8000bc1c:	02000793          	li	a5,32
8000bc20:	02f10da3          	sb	a5,59(sp)
8000bc24:	a05ff06f          	j	8000b628 <_vfiprintf_r+0x1a8>
8000bc28:	000c4703          	lbu	a4,0(s8)
8000bc2c:	004b6b13          	ori	s6,s6,4
8000bc30:	9f9ff06f          	j	8000b628 <_vfiprintf_r+0x1a8>
8000bc34:	02b00793          	li	a5,43
8000bc38:	000c4703          	lbu	a4,0(s8)
8000bc3c:	02f10da3          	sb	a5,59(sp)
8000bc40:	9e9ff06f          	j	8000b628 <_vfiprintf_r+0x1a8>
8000bc44:	000c4703          	lbu	a4,0(s8)
8000bc48:	001c0693          	addi	a3,s8,1
8000bc4c:	24c70ae3          	beq	a4,a2,8000c6a0 <_vfiprintf_r+0x1220>
8000bc50:	fd070793          	addi	a5,a4,-48 # ffff7fd0 <heap_end.1814+0x7ffe25ec>
8000bc54:	00068c13          	mv	s8,a3
8000bc58:	00000a93          	li	s5,0
8000bc5c:	9cfd68e3          	bltu	s10,a5,8000b62c <_vfiprintf_r+0x1ac>
8000bc60:	000c4703          	lbu	a4,0(s8)
8000bc64:	002a9693          	slli	a3,s5,0x2
8000bc68:	01568ab3          	add	s5,a3,s5
8000bc6c:	001a9a93          	slli	s5,s5,0x1
8000bc70:	00fa8ab3          	add	s5,s5,a5
8000bc74:	fd070793          	addi	a5,a4,-48
8000bc78:	001c0c13          	addi	s8,s8,1
8000bc7c:	fefd72e3          	bgeu	s10,a5,8000bc60 <_vfiprintf_r+0x7e0>
8000bc80:	9adff06f          	j	8000b62c <_vfiprintf_r+0x1ac>
8000bc84:	01012683          	lw	a3,16(sp)
8000bc88:	020b7793          	andi	a5,s6,32
8000bc8c:	0006a703          	lw	a4,0(a3)
8000bc90:	00468693          	addi	a3,a3,4
8000bc94:	00d12823          	sw	a3,16(sp)
8000bc98:	6a079a63          	bnez	a5,8000c34c <_vfiprintf_r+0xecc>
8000bc9c:	010b7793          	andi	a5,s6,16
8000bca0:	04079ce3          	bnez	a5,8000c4f8 <_vfiprintf_r+0x1078>
8000bca4:	040b7793          	andi	a5,s6,64
8000bca8:	140790e3          	bnez	a5,8000c5e8 <_vfiprintf_r+0x1168>
8000bcac:	200b7313          	andi	t1,s6,512
8000bcb0:	040304e3          	beqz	t1,8000c4f8 <_vfiprintf_r+0x1078>
8000bcb4:	00c12783          	lw	a5,12(sp)
8000bcb8:	00f70023          	sb	a5,0(a4)
8000bcbc:	8c5ff06f          	j	8000b580 <_vfiprintf_r+0x100>
8000bcc0:	00100693          	li	a3,1
8000bcc4:	1ad70ee3          	beq	a4,a3,8000c680 <_vfiprintf_r+0x1200>
8000bcc8:	00200693          	li	a3,2
8000bccc:	000b0d93          	mv	s11,s6
8000bcd0:	dad710e3          	bne	a4,a3,8000ba70 <_vfiprintf_r+0x5f0>
8000bcd4:	01812683          	lw	a3,24(sp)
8000bcd8:	0f010413          	addi	s0,sp,240
8000bcdc:	00fd7793          	andi	a5,s10,15
8000bce0:	00f687b3          	add	a5,a3,a5
8000bce4:	0007c703          	lbu	a4,0(a5)
8000bce8:	004d5d13          	srli	s10,s10,0x4
8000bcec:	01cc9793          	slli	a5,s9,0x1c
8000bcf0:	01a7ed33          	or	s10,a5,s10
8000bcf4:	004cdc93          	srli	s9,s9,0x4
8000bcf8:	fee40fa3          	sb	a4,-1(s0)
8000bcfc:	019d67b3          	or	a5,s10,s9
8000bd00:	fff40413          	addi	s0,s0,-1
8000bd04:	fc079ce3          	bnez	a5,8000bcdc <_vfiprintf_r+0x85c>
8000bd08:	0f010793          	addi	a5,sp,240
8000bd0c:	40878d33          	sub	s10,a5,s0
8000bd10:	000d8b13          	mv	s6,s11
8000bd14:	bedff06f          	j	8000b900 <_vfiprintf_r+0x480>
8000bd18:	00412583          	lw	a1,4(sp)
8000bd1c:	41958db3          	sub	s11,a1,s9
8000bd20:	a5b058e3          	blez	s11,8000b770 <_vfiprintf_r+0x2f0>
8000bd24:	01000593          	li	a1,16
8000bd28:	17b5d6e3          	bge	a1,s11,8000c694 <_vfiprintf_r+0x1214>
8000bd2c:	01000e93          	li	t4,16
8000bd30:	00700f13          	li	t5,7
8000bd34:	0180006f          	j	8000bd4c <_vfiprintf_r+0x8cc>
8000bd38:	00270613          	addi	a2,a4,2
8000bd3c:	008b8b93          	addi	s7,s7,8
8000bd40:	00068713          	mv	a4,a3
8000bd44:	ff0d8d93          	addi	s11,s11,-16
8000bd48:	05bedc63          	bge	t4,s11,8000bda0 <_vfiprintf_r+0x920>
8000bd4c:	01078793          	addi	a5,a5,16
8000bd50:	00170693          	addi	a3,a4,1
8000bd54:	012ba023          	sw	s2,0(s7)
8000bd58:	01dba223          	sw	t4,4(s7)
8000bd5c:	04f12423          	sw	a5,72(sp)
8000bd60:	04d12223          	sw	a3,68(sp)
8000bd64:	fcdf5ae3          	bge	t5,a3,8000bd38 <_vfiprintf_r+0x8b8>
8000bd68:	16078063          	beqz	a5,8000bec8 <_vfiprintf_r+0xa48>
8000bd6c:	04010613          	addi	a2,sp,64
8000bd70:	00098593          	mv	a1,s3
8000bd74:	000a0513          	mv	a0,s4
8000bd78:	e00ff0ef          	jal	ra,8000b378 <__sprint_r.part.0>
8000bd7c:	a80510e3          	bnez	a0,8000b7fc <_vfiprintf_r+0x37c>
8000bd80:	04412703          	lw	a4,68(sp)
8000bd84:	01000e93          	li	t4,16
8000bd88:	ff0d8d93          	addi	s11,s11,-16
8000bd8c:	04812783          	lw	a5,72(sp)
8000bd90:	00048b93          	mv	s7,s1
8000bd94:	00170613          	addi	a2,a4,1
8000bd98:	00700f13          	li	t5,7
8000bd9c:	fbbec8e3          	blt	t4,s11,8000bd4c <_vfiprintf_r+0x8cc>
8000bda0:	00060593          	mv	a1,a2
8000bda4:	008b8513          	addi	a0,s7,8
8000bda8:	01b787b3          	add	a5,a5,s11
8000bdac:	012ba023          	sw	s2,0(s7)
8000bdb0:	01bba223          	sw	s11,4(s7)
8000bdb4:	04f12423          	sw	a5,72(sp)
8000bdb8:	04b12223          	sw	a1,68(sp)
8000bdbc:	00700713          	li	a4,7
8000bdc0:	52b75a63          	bge	a4,a1,8000c2f4 <_vfiprintf_r+0xe74>
8000bdc4:	7e078663          	beqz	a5,8000c5b0 <_vfiprintf_r+0x1130>
8000bdc8:	04010613          	addi	a2,sp,64
8000bdcc:	00098593          	mv	a1,s3
8000bdd0:	000a0513          	mv	a0,s4
8000bdd4:	da4ff0ef          	jal	ra,8000b378 <__sprint_r.part.0>
8000bdd8:	a20512e3          	bnez	a0,8000b7fc <_vfiprintf_r+0x37c>
8000bddc:	04412703          	lw	a4,68(sp)
8000bde0:	41aa8ab3          	sub	s5,s5,s10
8000bde4:	04812783          	lw	a5,72(sp)
8000bde8:	05410693          	addi	a3,sp,84
8000bdec:	00170613          	addi	a2,a4,1
8000bdf0:	00048b93          	mv	s7,s1
8000bdf4:	995052e3          	blez	s5,8000b778 <_vfiprintf_r+0x2f8>
8000bdf8:	01000593          	li	a1,16
8000bdfc:	7b55d063          	bge	a1,s5,8000c59c <_vfiprintf_r+0x111c>
8000be00:	01000893          	li	a7,16
8000be04:	00700d93          	li	s11,7
8000be08:	0180006f          	j	8000be20 <_vfiprintf_r+0x9a0>
8000be0c:	00270613          	addi	a2,a4,2
8000be10:	008b8b93          	addi	s7,s7,8
8000be14:	00068713          	mv	a4,a3
8000be18:	ff0a8a93          	addi	s5,s5,-16
8000be1c:	0558da63          	bge	a7,s5,8000be70 <_vfiprintf_r+0x9f0>
8000be20:	01078793          	addi	a5,a5,16
8000be24:	00170693          	addi	a3,a4,1
8000be28:	012ba023          	sw	s2,0(s7)
8000be2c:	011ba223          	sw	a7,4(s7)
8000be30:	04f12423          	sw	a5,72(sp)
8000be34:	04d12223          	sw	a3,68(sp)
8000be38:	fcdddae3          	bge	s11,a3,8000be0c <_vfiprintf_r+0x98c>
8000be3c:	06078263          	beqz	a5,8000bea0 <_vfiprintf_r+0xa20>
8000be40:	04010613          	addi	a2,sp,64
8000be44:	00098593          	mv	a1,s3
8000be48:	000a0513          	mv	a0,s4
8000be4c:	d2cff0ef          	jal	ra,8000b378 <__sprint_r.part.0>
8000be50:	9a0516e3          	bnez	a0,8000b7fc <_vfiprintf_r+0x37c>
8000be54:	04412703          	lw	a4,68(sp)
8000be58:	01000893          	li	a7,16
8000be5c:	ff0a8a93          	addi	s5,s5,-16
8000be60:	04812783          	lw	a5,72(sp)
8000be64:	00048b93          	mv	s7,s1
8000be68:	00170613          	addi	a2,a4,1
8000be6c:	fb58cae3          	blt	a7,s5,8000be20 <_vfiprintf_r+0x9a0>
8000be70:	008b8593          	addi	a1,s7,8
8000be74:	015787b3          	add	a5,a5,s5
8000be78:	012ba023          	sw	s2,0(s7)
8000be7c:	015ba223          	sw	s5,4(s7)
8000be80:	04f12423          	sw	a5,72(sp)
8000be84:	04c12223          	sw	a2,68(sp)
8000be88:	00700713          	li	a4,7
8000be8c:	2cc74663          	blt	a4,a2,8000c158 <_vfiprintf_r+0xcd8>
8000be90:	00160613          	addi	a2,a2,1
8000be94:	00858693          	addi	a3,a1,8
8000be98:	00058b93          	mv	s7,a1
8000be9c:	8ddff06f          	j	8000b778 <_vfiprintf_r+0x2f8>
8000bea0:	00100613          	li	a2,1
8000bea4:	00000713          	li	a4,0
8000bea8:	00048b93          	mv	s7,s1
8000beac:	f6dff06f          	j	8000be18 <_vfiprintf_r+0x998>
8000beb0:	04010613          	addi	a2,sp,64
8000beb4:	00098593          	mv	a1,s3
8000beb8:	000a0513          	mv	a0,s4
8000bebc:	cbcff0ef          	jal	ra,8000b378 <__sprint_r.part.0>
8000bec0:	920502e3          	beqz	a0,8000b7e4 <_vfiprintf_r+0x364>
8000bec4:	939ff06f          	j	8000b7fc <_vfiprintf_r+0x37c>
8000bec8:	00100613          	li	a2,1
8000becc:	00000713          	li	a4,0
8000bed0:	00048b93          	mv	s7,s1
8000bed4:	e71ff06f          	j	8000bd44 <_vfiprintf_r+0x8c4>
8000bed8:	30078c63          	beqz	a5,8000c1f0 <_vfiprintf_r+0xd70>
8000bedc:	04010613          	addi	a2,sp,64
8000bee0:	00098593          	mv	a1,s3
8000bee4:	000a0513          	mv	a0,s4
8000bee8:	03e12623          	sw	t5,44(sp)
8000beec:	03f12423          	sw	t6,40(sp)
8000bef0:	c88ff0ef          	jal	ra,8000b378 <__sprint_r.part.0>
8000bef4:	900514e3          	bnez	a0,8000b7fc <_vfiprintf_r+0x37c>
8000bef8:	04412703          	lw	a4,68(sp)
8000befc:	04812783          	lw	a5,72(sp)
8000bf00:	02c12f03          	lw	t5,44(sp)
8000bf04:	02812f83          	lw	t6,40(sp)
8000bf08:	05410693          	addi	a3,sp,84
8000bf0c:	00170613          	addi	a2,a4,1
8000bf10:	00048b93          	mv	s7,s1
8000bf14:	ff8ff06f          	j	8000b70c <_vfiprintf_r+0x28c>
8000bf18:	03c10793          	addi	a5,sp,60
8000bf1c:	04f12623          	sw	a5,76(sp)
8000bf20:	00200793          	li	a5,2
8000bf24:	04f12823          	sw	a5,80(sp)
8000bf28:	00100613          	li	a2,1
8000bf2c:	05410693          	addi	a3,sp,84
8000bf30:	00060713          	mv	a4,a2
8000bf34:	00068b93          	mv	s7,a3
8000bf38:	00170613          	addi	a2,a4,1
8000bf3c:	008b8693          	addi	a3,s7,8
8000bf40:	829ff06f          	j	8000b768 <_vfiprintf_r+0x2e8>
8000bf44:	000b0d93          	mv	s11,s6
8000bf48:	b19ff06f          	j	8000ba60 <_vfiprintf_r+0x5e0>
8000bf4c:	01000613          	li	a2,16
8000bf50:	73b65063          	bge	a2,s11,8000c670 <_vfiprintf_r+0x11f0>
8000bf54:	000b8613          	mv	a2,s7
8000bf58:	01000e93          	li	t4,16
8000bf5c:	00040b93          	mv	s7,s0
8000bf60:	00700293          	li	t0,7
8000bf64:	00098413          	mv	s0,s3
8000bf68:	03f12423          	sw	t6,40(sp)
8000bf6c:	000d8993          	mv	s3,s11
8000bf70:	000c0d93          	mv	s11,s8
8000bf74:	000a8c13          	mv	s8,s5
8000bf78:	000f0a93          	mv	s5,t5
8000bf7c:	01c0006f          	j	8000bf98 <_vfiprintf_r+0xb18>
8000bf80:	00270513          	addi	a0,a4,2
8000bf84:	00860613          	addi	a2,a2,8
8000bf88:	00068713          	mv	a4,a3
8000bf8c:	ff098993          	addi	s3,s3,-16
8000bf90:	053ede63          	bge	t4,s3,8000bfec <_vfiprintf_r+0xb6c>
8000bf94:	00170693          	addi	a3,a4,1
8000bf98:	00812583          	lw	a1,8(sp)
8000bf9c:	01078793          	addi	a5,a5,16
8000bfa0:	01d62223          	sw	t4,4(a2)
8000bfa4:	00b62023          	sw	a1,0(a2)
8000bfa8:	04f12423          	sw	a5,72(sp)
8000bfac:	04d12223          	sw	a3,68(sp)
8000bfb0:	fcd2d8e3          	bge	t0,a3,8000bf80 <_vfiprintf_r+0xb00>
8000bfb4:	08078663          	beqz	a5,8000c040 <_vfiprintf_r+0xbc0>
8000bfb8:	04010613          	addi	a2,sp,64
8000bfbc:	00040593          	mv	a1,s0
8000bfc0:	000a0513          	mv	a0,s4
8000bfc4:	bb4ff0ef          	jal	ra,8000b378 <__sprint_r.part.0>
8000bfc8:	4c051663          	bnez	a0,8000c494 <_vfiprintf_r+0x1014>
8000bfcc:	04412703          	lw	a4,68(sp)
8000bfd0:	01000e93          	li	t4,16
8000bfd4:	ff098993          	addi	s3,s3,-16
8000bfd8:	04812783          	lw	a5,72(sp)
8000bfdc:	00048613          	mv	a2,s1
8000bfe0:	00170513          	addi	a0,a4,1
8000bfe4:	00700293          	li	t0,7
8000bfe8:	fb3ec6e3          	blt	t4,s3,8000bf94 <_vfiprintf_r+0xb14>
8000bfec:	02812f83          	lw	t6,40(sp)
8000bff0:	000a8f13          	mv	t5,s5
8000bff4:	00050593          	mv	a1,a0
8000bff8:	000c0a93          	mv	s5,s8
8000bffc:	000d8c13          	mv	s8,s11
8000c000:	00098d93          	mv	s11,s3
8000c004:	00040993          	mv	s3,s0
8000c008:	000b8413          	mv	s0,s7
8000c00c:	00060b93          	mv	s7,a2
8000c010:	00812703          	lw	a4,8(sp)
8000c014:	01b787b3          	add	a5,a5,s11
8000c018:	01bba223          	sw	s11,4(s7)
8000c01c:	00eba023          	sw	a4,0(s7)
8000c020:	04f12423          	sw	a5,72(sp)
8000c024:	04b12223          	sw	a1,68(sp)
8000c028:	00700713          	li	a4,7
8000c02c:	1eb74263          	blt	a4,a1,8000c210 <_vfiprintf_r+0xd90>
8000c030:	008b8b93          	addi	s7,s7,8
8000c034:	00158613          	addi	a2,a1,1
8000c038:	00058713          	mv	a4,a1
8000c03c:	e90ff06f          	j	8000b6cc <_vfiprintf_r+0x24c>
8000c040:	00000713          	li	a4,0
8000c044:	00100513          	li	a0,1
8000c048:	00048613          	mv	a2,s1
8000c04c:	f41ff06f          	j	8000bf8c <_vfiprintf_r+0xb0c>
8000c050:	04012223          	sw	zero,68(sp)
8000c054:	004b7313          	andi	t1,s6,4
8000c058:	0e030263          	beqz	t1,8000c13c <_vfiprintf_r+0xcbc>
8000c05c:	00412703          	lw	a4,4(sp)
8000c060:	41970bb3          	sub	s7,a4,s9
8000c064:	0d705c63          	blez	s7,8000c13c <_vfiprintf_r+0xcbc>
8000c068:	00048693          	mv	a3,s1
8000c06c:	01000713          	li	a4,16
8000c070:	04412603          	lw	a2,68(sp)
8000c074:	61775263          	bge	a4,s7,8000c678 <_vfiprintf_r+0x11f8>
8000c078:	01000d13          	li	s10,16
8000c07c:	00700d93          	li	s11,7
8000c080:	0180006f          	j	8000c098 <_vfiprintf_r+0xc18>
8000c084:	00260513          	addi	a0,a2,2
8000c088:	00868693          	addi	a3,a3,8
8000c08c:	00070613          	mv	a2,a4
8000c090:	ff0b8b93          	addi	s7,s7,-16
8000c094:	057d5a63          	bge	s10,s7,8000c0e8 <_vfiprintf_r+0xc68>
8000c098:	00812583          	lw	a1,8(sp)
8000c09c:	01078793          	addi	a5,a5,16
8000c0a0:	00160713          	addi	a4,a2,1
8000c0a4:	00b6a023          	sw	a1,0(a3)
8000c0a8:	01a6a223          	sw	s10,4(a3)
8000c0ac:	04f12423          	sw	a5,72(sp)
8000c0b0:	04e12223          	sw	a4,68(sp)
8000c0b4:	fcedd8e3          	bge	s11,a4,8000c084 <_vfiprintf_r+0xc04>
8000c0b8:	06078a63          	beqz	a5,8000c12c <_vfiprintf_r+0xcac>
8000c0bc:	04010613          	addi	a2,sp,64
8000c0c0:	00098593          	mv	a1,s3
8000c0c4:	000a0513          	mv	a0,s4
8000c0c8:	ab0ff0ef          	jal	ra,8000b378 <__sprint_r.part.0>
8000c0cc:	f2051863          	bnez	a0,8000b7fc <_vfiprintf_r+0x37c>
8000c0d0:	04412603          	lw	a2,68(sp)
8000c0d4:	ff0b8b93          	addi	s7,s7,-16
8000c0d8:	04812783          	lw	a5,72(sp)
8000c0dc:	00048693          	mv	a3,s1
8000c0e0:	00160513          	addi	a0,a2,1
8000c0e4:	fb7d4ae3          	blt	s10,s7,8000c098 <_vfiprintf_r+0xc18>
8000c0e8:	00050593          	mv	a1,a0
8000c0ec:	00812703          	lw	a4,8(sp)
8000c0f0:	017787b3          	add	a5,a5,s7
8000c0f4:	0176a223          	sw	s7,4(a3)
8000c0f8:	00e6a023          	sw	a4,0(a3)
8000c0fc:	04f12423          	sw	a5,72(sp)
8000c100:	04b12223          	sw	a1,68(sp)
8000c104:	00700713          	li	a4,7
8000c108:	ecb75063          	bge	a4,a1,8000b7c8 <_vfiprintf_r+0x348>
8000c10c:	02078863          	beqz	a5,8000c13c <_vfiprintf_r+0xcbc>
8000c110:	04010613          	addi	a2,sp,64
8000c114:	00098593          	mv	a1,s3
8000c118:	000a0513          	mv	a0,s4
8000c11c:	a5cff0ef          	jal	ra,8000b378 <__sprint_r.part.0>
8000c120:	ec051e63          	bnez	a0,8000b7fc <_vfiprintf_r+0x37c>
8000c124:	04812783          	lw	a5,72(sp)
8000c128:	ea0ff06f          	j	8000b7c8 <_vfiprintf_r+0x348>
8000c12c:	00100513          	li	a0,1
8000c130:	00000613          	li	a2,0
8000c134:	00048693          	mv	a3,s1
8000c138:	f59ff06f          	j	8000c090 <_vfiprintf_r+0xc10>
8000c13c:	00412403          	lw	s0,4(sp)
8000c140:	01945463          	bge	s0,s9,8000c148 <_vfiprintf_r+0xcc8>
8000c144:	000c8413          	mv	s0,s9
8000c148:	00c12783          	lw	a5,12(sp)
8000c14c:	008787b3          	add	a5,a5,s0
8000c150:	00f12623          	sw	a5,12(sp)
8000c154:	e90ff06f          	j	8000b7e4 <_vfiprintf_r+0x364>
8000c158:	34078263          	beqz	a5,8000c49c <_vfiprintf_r+0x101c>
8000c15c:	04010613          	addi	a2,sp,64
8000c160:	00098593          	mv	a1,s3
8000c164:	000a0513          	mv	a0,s4
8000c168:	a10ff0ef          	jal	ra,8000b378 <__sprint_r.part.0>
8000c16c:	e8051863          	bnez	a0,8000b7fc <_vfiprintf_r+0x37c>
8000c170:	04412603          	lw	a2,68(sp)
8000c174:	04812783          	lw	a5,72(sp)
8000c178:	05410693          	addi	a3,sp,84
8000c17c:	00160613          	addi	a2,a2,1
8000c180:	00048b93          	mv	s7,s1
8000c184:	df4ff06f          	j	8000b778 <_vfiprintf_r+0x2f8>
8000c188:	04012223          	sw	zero,68(sp)
8000c18c:	00048b93          	mv	s7,s1
8000c190:	c60ff06f          	j	8000b5f0 <_vfiprintf_r+0x170>
8000c194:	f40a9c63          	bnez	s5,8000b8ec <_vfiprintf_r+0x46c>
8000c198:	000d8b13          	mv	s6,s11
8000c19c:	00000a93          	li	s5,0
8000c1a0:	00000d13          	li	s10,0
8000c1a4:	0f010413          	addi	s0,sp,240
8000c1a8:	f58ff06f          	j	8000b900 <_vfiprintf_r+0x480>
8000c1ac:	01012683          	lw	a3,16(sp)
8000c1b0:	010df793          	andi	a5,s11,16
8000c1b4:	00468713          	addi	a4,a3,4
8000c1b8:	14079863          	bnez	a5,8000c308 <_vfiprintf_r+0xe88>
8000c1bc:	040df793          	andi	a5,s11,64
8000c1c0:	3a078063          	beqz	a5,8000c560 <_vfiprintf_r+0x10e0>
8000c1c4:	01012783          	lw	a5,16(sp)
8000c1c8:	00000c93          	li	s9,0
8000c1cc:	00e12823          	sw	a4,16(sp)
8000c1d0:	0007dd03          	lhu	s10,0(a5)
8000c1d4:	00100713          	li	a4,1
8000c1d8:	fb8ff06f          	j	8000b990 <_vfiprintf_r+0x510>
8000c1dc:	05410693          	addi	a3,sp,84
8000c1e0:	00100613          	li	a2,1
8000c1e4:	00000713          	li	a4,0
8000c1e8:	00048b93          	mv	s7,s1
8000c1ec:	d7cff06f          	j	8000b768 <_vfiprintf_r+0x2e8>
8000c1f0:	180f8063          	beqz	t6,8000c370 <_vfiprintf_r+0xef0>
8000c1f4:	03c10793          	addi	a5,sp,60
8000c1f8:	04f12623          	sw	a5,76(sp)
8000c1fc:	00200793          	li	a5,2
8000c200:	04f12823          	sw	a5,80(sp)
8000c204:	00100713          	li	a4,1
8000c208:	05410b93          	addi	s7,sp,84
8000c20c:	d2dff06f          	j	8000bf38 <_vfiprintf_r+0xab8>
8000c210:	22078263          	beqz	a5,8000c434 <_vfiprintf_r+0xfb4>
8000c214:	04010613          	addi	a2,sp,64
8000c218:	00098593          	mv	a1,s3
8000c21c:	000a0513          	mv	a0,s4
8000c220:	03e12623          	sw	t5,44(sp)
8000c224:	03f12423          	sw	t6,40(sp)
8000c228:	950ff0ef          	jal	ra,8000b378 <__sprint_r.part.0>
8000c22c:	dc051863          	bnez	a0,8000b7fc <_vfiprintf_r+0x37c>
8000c230:	04412703          	lw	a4,68(sp)
8000c234:	04812783          	lw	a5,72(sp)
8000c238:	02c12f03          	lw	t5,44(sp)
8000c23c:	02812f83          	lw	t6,40(sp)
8000c240:	00048b93          	mv	s7,s1
8000c244:	00170613          	addi	a2,a4,1
8000c248:	c84ff06f          	j	8000b6cc <_vfiprintf_r+0x24c>
8000c24c:	400df793          	andi	a5,s11,1024
8000c250:	03412423          	sw	s4,40(sp)
8000c254:	03312623          	sw	s3,44(sp)
8000c258:	000c8a13          	mv	s4,s9
8000c25c:	000d0993          	mv	s3,s10
8000c260:	00000b13          	li	s6,0
8000c264:	01c12d03          	lw	s10,28(sp)
8000c268:	0f010413          	addi	s0,sp,240
8000c26c:	00078c93          	mv	s9,a5
8000c270:	0240006f          	j	8000c294 <_vfiprintf_r+0xe14>
8000c274:	00a00613          	li	a2,10
8000c278:	00000693          	li	a3,0
8000c27c:	00098513          	mv	a0,s3
8000c280:	000a0593          	mv	a1,s4
8000c284:	638030ef          	jal	ra,8000f8bc <__udivdi3>
8000c288:	300a0e63          	beqz	s4,8000c5a4 <_vfiprintf_r+0x1124>
8000c28c:	00050993          	mv	s3,a0
8000c290:	00058a13          	mv	s4,a1
8000c294:	00a00613          	li	a2,10
8000c298:	00000693          	li	a3,0
8000c29c:	00098513          	mv	a0,s3
8000c2a0:	000a0593          	mv	a1,s4
8000c2a4:	24d030ef          	jal	ra,8000fcf0 <__umoddi3>
8000c2a8:	03050513          	addi	a0,a0,48
8000c2ac:	fea40fa3          	sb	a0,-1(s0)
8000c2b0:	001b0b13          	addi	s6,s6,1
8000c2b4:	fff40413          	addi	s0,s0,-1
8000c2b8:	fa0c8ee3          	beqz	s9,8000c274 <_vfiprintf_r+0xdf4>
8000c2bc:	000d4683          	lbu	a3,0(s10)
8000c2c0:	fb669ae3          	bne	a3,s6,8000c274 <_vfiprintf_r+0xdf4>
8000c2c4:	0ff00793          	li	a5,255
8000c2c8:	fafb06e3          	beq	s6,a5,8000c274 <_vfiprintf_r+0xdf4>
8000c2cc:	180a1463          	bnez	s4,8000c454 <_vfiprintf_r+0xfd4>
8000c2d0:	00900793          	li	a5,9
8000c2d4:	1937e063          	bltu	a5,s3,8000c454 <_vfiprintf_r+0xfd4>
8000c2d8:	0f010793          	addi	a5,sp,240
8000c2dc:	01a12e23          	sw	s10,28(sp)
8000c2e0:	02812a03          	lw	s4,40(sp)
8000c2e4:	02c12983          	lw	s3,44(sp)
8000c2e8:	40878d33          	sub	s10,a5,s0
8000c2ec:	000d8b13          	mv	s6,s11
8000c2f0:	e10ff06f          	j	8000b900 <_vfiprintf_r+0x480>
8000c2f4:	00158613          	addi	a2,a1,1
8000c2f8:	00850693          	addi	a3,a0,8
8000c2fc:	00058713          	mv	a4,a1
8000c300:	00050b93          	mv	s7,a0
8000c304:	c6cff06f          	j	8000b770 <_vfiprintf_r+0x2f0>
8000c308:	00e12823          	sw	a4,16(sp)
8000c30c:	0006ad03          	lw	s10,0(a3)
8000c310:	00000c93          	li	s9,0
8000c314:	00100713          	li	a4,1
8000c318:	e78ff06f          	j	8000b990 <_vfiprintf_r+0x510>
8000c31c:	0006ad03          	lw	s10,0(a3)
8000c320:	00e12823          	sw	a4,16(sp)
8000c324:	41fd5c93          	srai	s9,s10,0x1f
8000c328:	000c8713          	mv	a4,s9
8000c32c:	d98ff06f          	j	8000b8c4 <_vfiprintf_r+0x444>
8000c330:	01c12783          	lw	a5,28(sp)
8000c334:	000c4703          	lbu	a4,0(s8)
8000c338:	ae078863          	beqz	a5,8000b628 <_vfiprintf_r+0x1a8>
8000c33c:	0007c783          	lbu	a5,0(a5)
8000c340:	ae078463          	beqz	a5,8000b628 <_vfiprintf_r+0x1a8>
8000c344:	400b6b13          	ori	s6,s6,1024
8000c348:	ae0ff06f          	j	8000b628 <_vfiprintf_r+0x1a8>
8000c34c:	00c12683          	lw	a3,12(sp)
8000c350:	41f6d793          	srai	a5,a3,0x1f
8000c354:	00d72023          	sw	a3,0(a4)
8000c358:	00f72223          	sw	a5,4(a4)
8000c35c:	a24ff06f          	j	8000b580 <_vfiprintf_r+0x100>
8000c360:	0006ad03          	lw	s10,0(a3)
8000c364:	00000c93          	li	s9,0
8000c368:	00e12823          	sw	a4,16(sp)
8000c36c:	e1cff06f          	j	8000b988 <_vfiprintf_r+0x508>
8000c370:	00000713          	li	a4,0
8000c374:	05410693          	addi	a3,sp,84
8000c378:	00100613          	li	a2,1
8000c37c:	00048b93          	mv	s7,s1
8000c380:	be8ff06f          	j	8000b768 <_vfiprintf_r+0x2e8>
8000c384:	000b0d93          	mv	s11,s6
8000c388:	819ff06f          	j	8000bba0 <_vfiprintf_r+0x720>
8000c38c:	800147b7          	lui	a5,0x80014
8000c390:	e4878793          	addi	a5,a5,-440 # 80013e48 <heap_end.1814+0xffffe464>
8000c394:	00f12c23          	sw	a5,24(sp)
8000c398:	020b7793          	andi	a5,s6,32
8000c39c:	06078063          	beqz	a5,8000c3fc <_vfiprintf_r+0xf7c>
8000c3a0:	01012783          	lw	a5,16(sp)
8000c3a4:	00778793          	addi	a5,a5,7
8000c3a8:	ff87f793          	andi	a5,a5,-8
8000c3ac:	0007ad03          	lw	s10,0(a5)
8000c3b0:	0047ac83          	lw	s9,4(a5)
8000c3b4:	00878793          	addi	a5,a5,8
8000c3b8:	00f12823          	sw	a5,16(sp)
8000c3bc:	001b7693          	andi	a3,s6,1
8000c3c0:	00068e63          	beqz	a3,8000c3dc <_vfiprintf_r+0xf5c>
8000c3c4:	019d66b3          	or	a3,s10,s9
8000c3c8:	00068a63          	beqz	a3,8000c3dc <_vfiprintf_r+0xf5c>
8000c3cc:	03000693          	li	a3,48
8000c3d0:	02d10e23          	sb	a3,60(sp)
8000c3d4:	02e10ea3          	sb	a4,61(sp)
8000c3d8:	002b6b13          	ori	s6,s6,2
8000c3dc:	bffb7d93          	andi	s11,s6,-1025
8000c3e0:	00200713          	li	a4,2
8000c3e4:	dacff06f          	j	8000b990 <_vfiprintf_r+0x510>
8000c3e8:	800147b7          	lui	a5,0x80014
8000c3ec:	e3478793          	addi	a5,a5,-460 # 80013e34 <heap_end.1814+0xffffe450>
8000c3f0:	00f12c23          	sw	a5,24(sp)
8000c3f4:	020b7793          	andi	a5,s6,32
8000c3f8:	fa0794e3          	bnez	a5,8000c3a0 <_vfiprintf_r+0xf20>
8000c3fc:	01012603          	lw	a2,16(sp)
8000c400:	010b7793          	andi	a5,s6,16
8000c404:	00460693          	addi	a3,a2,4
8000c408:	0a078a63          	beqz	a5,8000c4bc <_vfiprintf_r+0x103c>
8000c40c:	00062d03          	lw	s10,0(a2)
8000c410:	00000c93          	li	s9,0
8000c414:	00d12823          	sw	a3,16(sp)
8000c418:	fa5ff06f          	j	8000c3bc <_vfiprintf_r+0xf3c>
8000c41c:	00040513          	mv	a0,s0
8000c420:	c10fc0ef          	jal	ra,80008830 <strlen>
8000c424:	00050d13          	mv	s10,a0
8000c428:	01b12823          	sw	s11,16(sp)
8000c42c:	00000a93          	li	s5,0
8000c430:	cd0ff06f          	j	8000b900 <_vfiprintf_r+0x480>
8000c434:	03b14703          	lbu	a4,59(sp)
8000c438:	18071a63          	bnez	a4,8000c5cc <_vfiprintf_r+0x114c>
8000c43c:	ac0f9ee3          	bnez	t6,8000bf18 <_vfiprintf_r+0xa98>
8000c440:	00000713          	li	a4,0
8000c444:	00100613          	li	a2,1
8000c448:	05410693          	addi	a3,sp,84
8000c44c:	00048b93          	mv	s7,s1
8000c450:	b18ff06f          	j	8000b768 <_vfiprintf_r+0x2e8>
8000c454:	02412783          	lw	a5,36(sp)
8000c458:	02012583          	lw	a1,32(sp)
8000c45c:	00000b13          	li	s6,0
8000c460:	40f40433          	sub	s0,s0,a5
8000c464:	00078613          	mv	a2,a5
8000c468:	00040513          	mv	a0,s0
8000c46c:	c50fc0ef          	jal	ra,800088bc <strncpy>
8000c470:	001d4583          	lbu	a1,1(s10)
8000c474:	00a00613          	li	a2,10
8000c478:	00000693          	li	a3,0
8000c47c:	00b03733          	snez	a4,a1
8000c480:	00098513          	mv	a0,s3
8000c484:	000a0593          	mv	a1,s4
8000c488:	00ed0d33          	add	s10,s10,a4
8000c48c:	430030ef          	jal	ra,8000f8bc <__udivdi3>
8000c490:	dfdff06f          	j	8000c28c <_vfiprintf_r+0xe0c>
8000c494:	00040993          	mv	s3,s0
8000c498:	b64ff06f          	j	8000b7fc <_vfiprintf_r+0x37c>
8000c49c:	00100713          	li	a4,1
8000c4a0:	000d0793          	mv	a5,s10
8000c4a4:	04812623          	sw	s0,76(sp)
8000c4a8:	05a12823          	sw	s10,80(sp)
8000c4ac:	05a12423          	sw	s10,72(sp)
8000c4b0:	04e12223          	sw	a4,68(sp)
8000c4b4:	05410693          	addi	a3,sp,84
8000c4b8:	afcff06f          	j	8000b7b4 <_vfiprintf_r+0x334>
8000c4bc:	040b7793          	andi	a5,s6,64
8000c4c0:	06078263          	beqz	a5,8000c524 <_vfiprintf_r+0x10a4>
8000c4c4:	01012783          	lw	a5,16(sp)
8000c4c8:	00000c93          	li	s9,0
8000c4cc:	00d12823          	sw	a3,16(sp)
8000c4d0:	0007dd03          	lhu	s10,0(a5)
8000c4d4:	ee9ff06f          	j	8000c3bc <_vfiprintf_r+0xf3c>
8000c4d8:	001c4703          	lbu	a4,1(s8)
8000c4dc:	200b6b13          	ori	s6,s6,512
8000c4e0:	001c0c13          	addi	s8,s8,1
8000c4e4:	944ff06f          	j	8000b628 <_vfiprintf_r+0x1a8>
8000c4e8:	001c4703          	lbu	a4,1(s8)
8000c4ec:	020b6b13          	ori	s6,s6,32
8000c4f0:	001c0c13          	addi	s8,s8,1
8000c4f4:	934ff06f          	j	8000b628 <_vfiprintf_r+0x1a8>
8000c4f8:	00c12783          	lw	a5,12(sp)
8000c4fc:	00f72023          	sw	a5,0(a4)
8000c500:	880ff06f          	j	8000b580 <_vfiprintf_r+0x100>
8000c504:	00600793          	li	a5,6
8000c508:	000a8d13          	mv	s10,s5
8000c50c:	0b57ec63          	bltu	a5,s5,8000c5c4 <_vfiprintf_r+0x1144>
8000c510:	80014e37          	lui	t3,0x80014
8000c514:	000d0c93          	mv	s9,s10
8000c518:	01b12823          	sw	s11,16(sp)
8000c51c:	e5ce0413          	addi	s0,t3,-420 # 80013e5c <heap_end.1814+0xffffe478>
8000c520:	978ff06f          	j	8000b698 <_vfiprintf_r+0x218>
8000c524:	200b7793          	andi	a5,s6,512
8000c528:	10078863          	beqz	a5,8000c638 <_vfiprintf_r+0x11b8>
8000c52c:	01012783          	lw	a5,16(sp)
8000c530:	00000c93          	li	s9,0
8000c534:	00d12823          	sw	a3,16(sp)
8000c538:	0007cd03          	lbu	s10,0(a5)
8000c53c:	e81ff06f          	j	8000c3bc <_vfiprintf_r+0xf3c>
8000c540:	200b7793          	andi	a5,s6,512
8000c544:	0c078e63          	beqz	a5,8000c620 <_vfiprintf_r+0x11a0>
8000c548:	01012783          	lw	a5,16(sp)
8000c54c:	00e12823          	sw	a4,16(sp)
8000c550:	00078d03          	lb	s10,0(a5)
8000c554:	41fd5c93          	srai	s9,s10,0x1f
8000c558:	000c8713          	mv	a4,s9
8000c55c:	b68ff06f          	j	8000b8c4 <_vfiprintf_r+0x444>
8000c560:	200df793          	andi	a5,s11,512
8000c564:	0a078263          	beqz	a5,8000c608 <_vfiprintf_r+0x1188>
8000c568:	01012783          	lw	a5,16(sp)
8000c56c:	00000c93          	li	s9,0
8000c570:	00e12823          	sw	a4,16(sp)
8000c574:	0007cd03          	lbu	s10,0(a5)
8000c578:	00100713          	li	a4,1
8000c57c:	c14ff06f          	j	8000b990 <_vfiprintf_r+0x510>
8000c580:	200b7793          	andi	a5,s6,512
8000c584:	06078863          	beqz	a5,8000c5f4 <_vfiprintf_r+0x1174>
8000c588:	01012783          	lw	a5,16(sp)
8000c58c:	00000c93          	li	s9,0
8000c590:	00e12823          	sw	a4,16(sp)
8000c594:	0007cd03          	lbu	s10,0(a5)
8000c598:	bf0ff06f          	j	8000b988 <_vfiprintf_r+0x508>
8000c59c:	00068593          	mv	a1,a3
8000c5a0:	8d5ff06f          	j	8000be74 <_vfiprintf_r+0x9f4>
8000c5a4:	00900793          	li	a5,9
8000c5a8:	cf37e2e3          	bltu	a5,s3,8000c28c <_vfiprintf_r+0xe0c>
8000c5ac:	d2dff06f          	j	8000c2d8 <_vfiprintf_r+0xe58>
8000c5b0:	05410693          	addi	a3,sp,84
8000c5b4:	00100613          	li	a2,1
8000c5b8:	00000713          	li	a4,0
8000c5bc:	00048b93          	mv	s7,s1
8000c5c0:	9b0ff06f          	j	8000b770 <_vfiprintf_r+0x2f0>
8000c5c4:	00600d13          	li	s10,6
8000c5c8:	f49ff06f          	j	8000c510 <_vfiprintf_r+0x1090>
8000c5cc:	03b10793          	addi	a5,sp,59
8000c5d0:	04f12623          	sw	a5,76(sp)
8000c5d4:	00100793          	li	a5,1
8000c5d8:	04f12823          	sw	a5,80(sp)
8000c5dc:	00100613          	li	a2,1
8000c5e0:	05410693          	addi	a3,sp,84
8000c5e4:	918ff06f          	j	8000b6fc <_vfiprintf_r+0x27c>
8000c5e8:	00c12783          	lw	a5,12(sp)
8000c5ec:	00f71023          	sh	a5,0(a4)
8000c5f0:	f91fe06f          	j	8000b580 <_vfiprintf_r+0x100>
8000c5f4:	01012783          	lw	a5,16(sp)
8000c5f8:	00000c93          	li	s9,0
8000c5fc:	00e12823          	sw	a4,16(sp)
8000c600:	0007ad03          	lw	s10,0(a5)
8000c604:	b84ff06f          	j	8000b988 <_vfiprintf_r+0x508>
8000c608:	01012783          	lw	a5,16(sp)
8000c60c:	00000c93          	li	s9,0
8000c610:	00e12823          	sw	a4,16(sp)
8000c614:	0007ad03          	lw	s10,0(a5)
8000c618:	00100713          	li	a4,1
8000c61c:	b74ff06f          	j	8000b990 <_vfiprintf_r+0x510>
8000c620:	01012783          	lw	a5,16(sp)
8000c624:	00e12823          	sw	a4,16(sp)
8000c628:	0007ad03          	lw	s10,0(a5)
8000c62c:	41fd5c93          	srai	s9,s10,0x1f
8000c630:	000c8713          	mv	a4,s9
8000c634:	a90ff06f          	j	8000b8c4 <_vfiprintf_r+0x444>
8000c638:	01012783          	lw	a5,16(sp)
8000c63c:	00000c93          	li	s9,0
8000c640:	00d12823          	sw	a3,16(sp)
8000c644:	0007ad03          	lw	s10,0(a5)
8000c648:	d75ff06f          	j	8000c3bc <_vfiprintf_r+0xf3c>
8000c64c:	04010613          	addi	a2,sp,64
8000c650:	00098593          	mv	a1,s3
8000c654:	000a0513          	mv	a0,s4
8000c658:	d21fe0ef          	jal	ra,8000b378 <__sprint_r.part.0>
8000c65c:	9a0ff06f          	j	8000b7fc <_vfiprintf_r+0x37c>
8000c660:	000a8d13          	mv	s10,s5
8000c664:	01b12823          	sw	s11,16(sp)
8000c668:	00000a93          	li	s5,0
8000c66c:	a94ff06f          	j	8000b900 <_vfiprintf_r+0x480>
8000c670:	00068593          	mv	a1,a3
8000c674:	99dff06f          	j	8000c010 <_vfiprintf_r+0xb90>
8000c678:	00160593          	addi	a1,a2,1
8000c67c:	a71ff06f          	j	8000c0ec <_vfiprintf_r+0xc6c>
8000c680:	000b0d93          	mv	s11,s6
8000c684:	a68ff06f          	j	8000b8ec <_vfiprintf_r+0x46c>
8000c688:	fff00793          	li	a5,-1
8000c68c:	00f12623          	sw	a5,12(sp)
8000c690:	978ff06f          	j	8000b808 <_vfiprintf_r+0x388>
8000c694:	00068513          	mv	a0,a3
8000c698:	00060593          	mv	a1,a2
8000c69c:	f0cff06f          	j	8000bda8 <_vfiprintf_r+0x928>
8000c6a0:	01012783          	lw	a5,16(sp)
8000c6a4:	0007aa83          	lw	s5,0(a5)
8000c6a8:	00478793          	addi	a5,a5,4
8000c6ac:	000ad463          	bgez	s5,8000c6b4 <_vfiprintf_r+0x1234>
8000c6b0:	fff00a93          	li	s5,-1
8000c6b4:	001c4703          	lbu	a4,1(s8)
8000c6b8:	00f12823          	sw	a5,16(sp)
8000c6bc:	00068c13          	mv	s8,a3
8000c6c0:	f69fe06f          	j	8000b628 <_vfiprintf_r+0x1a8>

8000c6c4 <vfiprintf>:
8000c6c4:	80016737          	lui	a4,0x80016
8000c6c8:	00050793          	mv	a5,a0
8000c6cc:	99c72503          	lw	a0,-1636(a4) # 8001599c <heap_end.1814+0xffffffb8>
8000c6d0:	00060693          	mv	a3,a2
8000c6d4:	00058613          	mv	a2,a1
8000c6d8:	00078593          	mv	a1,a5
8000c6dc:	da5fe06f          	j	8000b480 <_vfiprintf_r>

8000c6e0 <__sbprintf>:
8000c6e0:	00c5d783          	lhu	a5,12(a1)
8000c6e4:	0645ae03          	lw	t3,100(a1)
8000c6e8:	00e5d303          	lhu	t1,14(a1)
8000c6ec:	01c5a883          	lw	a7,28(a1)
8000c6f0:	0245a803          	lw	a6,36(a1)
8000c6f4:	b8010113          	addi	sp,sp,-1152
8000c6f8:	ffd7f793          	andi	a5,a5,-3
8000c6fc:	40000713          	li	a4,1024
8000c700:	46812c23          	sw	s0,1144(sp)
8000c704:	00f11a23          	sh	a5,20(sp)
8000c708:	00058413          	mv	s0,a1
8000c70c:	07010793          	addi	a5,sp,112
8000c710:	00810593          	addi	a1,sp,8
8000c714:	46912a23          	sw	s1,1140(sp)
8000c718:	47212823          	sw	s2,1136(sp)
8000c71c:	46112e23          	sw	ra,1148(sp)
8000c720:	00050913          	mv	s2,a0
8000c724:	07c12623          	sw	t3,108(sp)
8000c728:	00611b23          	sh	t1,22(sp)
8000c72c:	03112223          	sw	a7,36(sp)
8000c730:	03012623          	sw	a6,44(sp)
8000c734:	00f12423          	sw	a5,8(sp)
8000c738:	00f12c23          	sw	a5,24(sp)
8000c73c:	00e12823          	sw	a4,16(sp)
8000c740:	00e12e23          	sw	a4,28(sp)
8000c744:	02012023          	sw	zero,32(sp)
8000c748:	d39fe0ef          	jal	ra,8000b480 <_vfiprintf_r>
8000c74c:	00050493          	mv	s1,a0
8000c750:	02055c63          	bgez	a0,8000c788 <__sbprintf+0xa8>
8000c754:	01415783          	lhu	a5,20(sp)
8000c758:	0407f793          	andi	a5,a5,64
8000c75c:	00078863          	beqz	a5,8000c76c <__sbprintf+0x8c>
8000c760:	00c45783          	lhu	a5,12(s0)
8000c764:	0407e793          	ori	a5,a5,64
8000c768:	00f41623          	sh	a5,12(s0)
8000c76c:	47c12083          	lw	ra,1148(sp)
8000c770:	47812403          	lw	s0,1144(sp)
8000c774:	47012903          	lw	s2,1136(sp)
8000c778:	00048513          	mv	a0,s1
8000c77c:	47412483          	lw	s1,1140(sp)
8000c780:	48010113          	addi	sp,sp,1152
8000c784:	00008067          	ret
8000c788:	00810593          	addi	a1,sp,8
8000c78c:	00090513          	mv	a0,s2
8000c790:	829f60ef          	jal	ra,80002fb8 <_fflush_r>
8000c794:	fc0500e3          	beqz	a0,8000c754 <__sbprintf+0x74>
8000c798:	fff00493          	li	s1,-1
8000c79c:	fb9ff06f          	j	8000c754 <__sbprintf+0x74>

8000c7a0 <_wctomb_r>:
8000c7a0:	800157b7          	lui	a5,0x80015
8000c7a4:	5087a303          	lw	t1,1288(a5) # 80015508 <heap_end.1814+0xfffffb24>
8000c7a8:	00030067          	jr	t1

8000c7ac <__ascii_wctomb>:
8000c7ac:	02058463          	beqz	a1,8000c7d4 <__ascii_wctomb+0x28>
8000c7b0:	0ff00793          	li	a5,255
8000c7b4:	00c7e863          	bltu	a5,a2,8000c7c4 <__ascii_wctomb+0x18>
8000c7b8:	00c58023          	sb	a2,0(a1)
8000c7bc:	00100513          	li	a0,1
8000c7c0:	00008067          	ret
8000c7c4:	08a00793          	li	a5,138
8000c7c8:	00f52023          	sw	a5,0(a0)
8000c7cc:	fff00513          	li	a0,-1
8000c7d0:	00008067          	ret
8000c7d4:	00000513          	li	a0,0
8000c7d8:	00008067          	ret

8000c7dc <_write_r>:
8000c7dc:	ff010113          	addi	sp,sp,-16
8000c7e0:	00058713          	mv	a4,a1
8000c7e4:	00812423          	sw	s0,8(sp)
8000c7e8:	00912223          	sw	s1,4(sp)
8000c7ec:	00060593          	mv	a1,a2
8000c7f0:	00050413          	mv	s0,a0
8000c7f4:	800164b7          	lui	s1,0x80016
8000c7f8:	00068613          	mv	a2,a3
8000c7fc:	00070513          	mv	a0,a4
8000c800:	00112623          	sw	ra,12(sp)
8000c804:	9c04a823          	sw	zero,-1584(s1) # 800159d0 <heap_end.1814+0xffffffec>
8000c808:	7b5020ef          	jal	ra,8000f7bc <_write>
8000c80c:	fff00793          	li	a5,-1
8000c810:	00f50c63          	beq	a0,a5,8000c828 <_write_r+0x4c>
8000c814:	00c12083          	lw	ra,12(sp)
8000c818:	00812403          	lw	s0,8(sp)
8000c81c:	00412483          	lw	s1,4(sp)
8000c820:	01010113          	addi	sp,sp,16
8000c824:	00008067          	ret
8000c828:	9d04a783          	lw	a5,-1584(s1)
8000c82c:	fe0784e3          	beqz	a5,8000c814 <_write_r+0x38>
8000c830:	00c12083          	lw	ra,12(sp)
8000c834:	00f42023          	sw	a5,0(s0)
8000c838:	00812403          	lw	s0,8(sp)
8000c83c:	00412483          	lw	s1,4(sp)
8000c840:	01010113          	addi	sp,sp,16
8000c844:	00008067          	ret

8000c848 <__assert_func>:
8000c848:	800167b7          	lui	a5,0x80016
8000c84c:	99c7a703          	lw	a4,-1636(a5) # 8001599c <heap_end.1814+0xffffffb8>
8000c850:	ff010113          	addi	sp,sp,-16
8000c854:	00068793          	mv	a5,a3
8000c858:	00060813          	mv	a6,a2
8000c85c:	00112623          	sw	ra,12(sp)
8000c860:	00c72883          	lw	a7,12(a4)
8000c864:	00050693          	mv	a3,a0
8000c868:	00058713          	mv	a4,a1
8000c86c:	00078613          	mv	a2,a5
8000c870:	02080063          	beqz	a6,8000c890 <__assert_func+0x48>
8000c874:	800147b7          	lui	a5,0x80014
8000c878:	f0878793          	addi	a5,a5,-248 # 80013f08 <heap_end.1814+0xffffe524>
8000c87c:	800145b7          	lui	a1,0x80014
8000c880:	f1858593          	addi	a1,a1,-232 # 80013f18 <heap_end.1814+0xffffe534>
8000c884:	00088513          	mv	a0,a7
8000c888:	294000ef          	jal	ra,8000cb1c <fiprintf>
8000c88c:	121020ef          	jal	ra,8000f1ac <abort>
8000c890:	80014837          	lui	a6,0x80014
8000c894:	f1480793          	addi	a5,a6,-236 # 80013f14 <heap_end.1814+0xffffe530>
8000c898:	f1480813          	addi	a6,a6,-236
8000c89c:	fe1ff06f          	j	8000c87c <__assert_func+0x34>

8000c8a0 <__assert>:
8000c8a0:	ff010113          	addi	sp,sp,-16
8000c8a4:	00060693          	mv	a3,a2
8000c8a8:	00000613          	li	a2,0
8000c8ac:	00112623          	sw	ra,12(sp)
8000c8b0:	f99ff0ef          	jal	ra,8000c848 <__assert_func>

8000c8b4 <_calloc_r>:
8000c8b4:	02c585b3          	mul	a1,a1,a2
8000c8b8:	ff010113          	addi	sp,sp,-16
8000c8bc:	00812423          	sw	s0,8(sp)
8000c8c0:	00112623          	sw	ra,12(sp)
8000c8c4:	eb9f90ef          	jal	ra,8000677c <_malloc_r>
8000c8c8:	00050413          	mv	s0,a0
8000c8cc:	02050863          	beqz	a0,8000c8fc <_calloc_r+0x48>
8000c8d0:	ffc52603          	lw	a2,-4(a0)
8000c8d4:	02400713          	li	a4,36
8000c8d8:	ffc67613          	andi	a2,a2,-4
8000c8dc:	ffc60613          	addi	a2,a2,-4
8000c8e0:	06c76063          	bltu	a4,a2,8000c940 <_calloc_r+0x8c>
8000c8e4:	01300693          	li	a3,19
8000c8e8:	00050793          	mv	a5,a0
8000c8ec:	02c6e263          	bltu	a3,a2,8000c910 <_calloc_r+0x5c>
8000c8f0:	0007a023          	sw	zero,0(a5)
8000c8f4:	0007a223          	sw	zero,4(a5)
8000c8f8:	0007a423          	sw	zero,8(a5)
8000c8fc:	00c12083          	lw	ra,12(sp)
8000c900:	00040513          	mv	a0,s0
8000c904:	00812403          	lw	s0,8(sp)
8000c908:	01010113          	addi	sp,sp,16
8000c90c:	00008067          	ret
8000c910:	00052023          	sw	zero,0(a0)
8000c914:	00052223          	sw	zero,4(a0)
8000c918:	01b00793          	li	a5,27
8000c91c:	04c7f063          	bgeu	a5,a2,8000c95c <_calloc_r+0xa8>
8000c920:	00052423          	sw	zero,8(a0)
8000c924:	00052623          	sw	zero,12(a0)
8000c928:	01050793          	addi	a5,a0,16
8000c92c:	fce612e3          	bne	a2,a4,8000c8f0 <_calloc_r+0x3c>
8000c930:	00052823          	sw	zero,16(a0)
8000c934:	01850793          	addi	a5,a0,24
8000c938:	00052a23          	sw	zero,20(a0)
8000c93c:	fb5ff06f          	j	8000c8f0 <_calloc_r+0x3c>
8000c940:	00000593          	li	a1,0
8000c944:	f38fa0ef          	jal	ra,8000707c <memset>
8000c948:	00c12083          	lw	ra,12(sp)
8000c94c:	00040513          	mv	a0,s0
8000c950:	00812403          	lw	s0,8(sp)
8000c954:	01010113          	addi	sp,sp,16
8000c958:	00008067          	ret
8000c95c:	00850793          	addi	a5,a0,8
8000c960:	f91ff06f          	j	8000c8f0 <_calloc_r+0x3c>

8000c964 <_close_r>:
8000c964:	ff010113          	addi	sp,sp,-16
8000c968:	00812423          	sw	s0,8(sp)
8000c96c:	00912223          	sw	s1,4(sp)
8000c970:	00050413          	mv	s0,a0
8000c974:	800164b7          	lui	s1,0x80016
8000c978:	00058513          	mv	a0,a1
8000c97c:	00112623          	sw	ra,12(sp)
8000c980:	9c04a823          	sw	zero,-1584(s1) # 800159d0 <heap_end.1814+0xffffffec>
8000c984:	381020ef          	jal	ra,8000f504 <_close>
8000c988:	fff00793          	li	a5,-1
8000c98c:	00f50c63          	beq	a0,a5,8000c9a4 <_close_r+0x40>
8000c990:	00c12083          	lw	ra,12(sp)
8000c994:	00812403          	lw	s0,8(sp)
8000c998:	00412483          	lw	s1,4(sp)
8000c99c:	01010113          	addi	sp,sp,16
8000c9a0:	00008067          	ret
8000c9a4:	9d04a783          	lw	a5,-1584(s1)
8000c9a8:	fe0784e3          	beqz	a5,8000c990 <_close_r+0x2c>
8000c9ac:	00c12083          	lw	ra,12(sp)
8000c9b0:	00f42023          	sw	a5,0(s0)
8000c9b4:	00812403          	lw	s0,8(sp)
8000c9b8:	00412483          	lw	s1,4(sp)
8000c9bc:	01010113          	addi	sp,sp,16
8000c9c0:	00008067          	ret

8000c9c4 <_fclose_r>:
8000c9c4:	ff010113          	addi	sp,sp,-16
8000c9c8:	00112623          	sw	ra,12(sp)
8000c9cc:	00812423          	sw	s0,8(sp)
8000c9d0:	00912223          	sw	s1,4(sp)
8000c9d4:	01212023          	sw	s2,0(sp)
8000c9d8:	02058063          	beqz	a1,8000c9f8 <_fclose_r+0x34>
8000c9dc:	00058413          	mv	s0,a1
8000c9e0:	00050493          	mv	s1,a0
8000c9e4:	00050663          	beqz	a0,8000c9f0 <_fclose_r+0x2c>
8000c9e8:	03852783          	lw	a5,56(a0)
8000c9ec:	0a078c63          	beqz	a5,8000caa4 <_fclose_r+0xe0>
8000c9f0:	00c41783          	lh	a5,12(s0)
8000c9f4:	02079263          	bnez	a5,8000ca18 <_fclose_r+0x54>
8000c9f8:	00c12083          	lw	ra,12(sp)
8000c9fc:	00812403          	lw	s0,8(sp)
8000ca00:	00000913          	li	s2,0
8000ca04:	00412483          	lw	s1,4(sp)
8000ca08:	00090513          	mv	a0,s2
8000ca0c:	00012903          	lw	s2,0(sp)
8000ca10:	01010113          	addi	sp,sp,16
8000ca14:	00008067          	ret
8000ca18:	00040593          	mv	a1,s0
8000ca1c:	00048513          	mv	a0,s1
8000ca20:	b3cf60ef          	jal	ra,80002d5c <__sflush_r>
8000ca24:	02c42783          	lw	a5,44(s0)
8000ca28:	00050913          	mv	s2,a0
8000ca2c:	00078a63          	beqz	a5,8000ca40 <_fclose_r+0x7c>
8000ca30:	01c42583          	lw	a1,28(s0)
8000ca34:	00048513          	mv	a0,s1
8000ca38:	000780e7          	jalr	a5
8000ca3c:	06054c63          	bltz	a0,8000cab4 <_fclose_r+0xf0>
8000ca40:	00c45783          	lhu	a5,12(s0)
8000ca44:	0807f793          	andi	a5,a5,128
8000ca48:	06079e63          	bnez	a5,8000cac4 <_fclose_r+0x100>
8000ca4c:	03042583          	lw	a1,48(s0)
8000ca50:	00058c63          	beqz	a1,8000ca68 <_fclose_r+0xa4>
8000ca54:	04040793          	addi	a5,s0,64
8000ca58:	00f58663          	beq	a1,a5,8000ca64 <_fclose_r+0xa0>
8000ca5c:	00048513          	mv	a0,s1
8000ca60:	a8df60ef          	jal	ra,800034ec <_free_r>
8000ca64:	02042823          	sw	zero,48(s0)
8000ca68:	04442583          	lw	a1,68(s0)
8000ca6c:	00058863          	beqz	a1,8000ca7c <_fclose_r+0xb8>
8000ca70:	00048513          	mv	a0,s1
8000ca74:	a79f60ef          	jal	ra,800034ec <_free_r>
8000ca78:	04042223          	sw	zero,68(s0)
8000ca7c:	8f9f60ef          	jal	ra,80003374 <__sfp_lock_acquire>
8000ca80:	00041623          	sh	zero,12(s0)
8000ca84:	8f5f60ef          	jal	ra,80003378 <__sfp_lock_release>
8000ca88:	00c12083          	lw	ra,12(sp)
8000ca8c:	00812403          	lw	s0,8(sp)
8000ca90:	00412483          	lw	s1,4(sp)
8000ca94:	00090513          	mv	a0,s2
8000ca98:	00012903          	lw	s2,0(sp)
8000ca9c:	01010113          	addi	sp,sp,16
8000caa0:	00008067          	ret
8000caa4:	8c1f60ef          	jal	ra,80003364 <__sinit>
8000caa8:	00c41783          	lh	a5,12(s0)
8000caac:	f40786e3          	beqz	a5,8000c9f8 <_fclose_r+0x34>
8000cab0:	f69ff06f          	j	8000ca18 <_fclose_r+0x54>
8000cab4:	00c45783          	lhu	a5,12(s0)
8000cab8:	fff00913          	li	s2,-1
8000cabc:	0807f793          	andi	a5,a5,128
8000cac0:	f80786e3          	beqz	a5,8000ca4c <_fclose_r+0x88>
8000cac4:	01042583          	lw	a1,16(s0)
8000cac8:	00048513          	mv	a0,s1
8000cacc:	a21f60ef          	jal	ra,800034ec <_free_r>
8000cad0:	f7dff06f          	j	8000ca4c <_fclose_r+0x88>

8000cad4 <fclose>:
8000cad4:	800167b7          	lui	a5,0x80016
8000cad8:	00050593          	mv	a1,a0
8000cadc:	99c7a503          	lw	a0,-1636(a5) # 8001599c <heap_end.1814+0xffffffb8>
8000cae0:	ee5ff06f          	j	8000c9c4 <_fclose_r>

8000cae4 <_fiprintf_r>:
8000cae4:	fc010113          	addi	sp,sp,-64
8000cae8:	02c10313          	addi	t1,sp,44
8000caec:	02d12623          	sw	a3,44(sp)
8000caf0:	00030693          	mv	a3,t1
8000caf4:	00112e23          	sw	ra,28(sp)
8000caf8:	02e12823          	sw	a4,48(sp)
8000cafc:	02f12a23          	sw	a5,52(sp)
8000cb00:	03012c23          	sw	a6,56(sp)
8000cb04:	03112e23          	sw	a7,60(sp)
8000cb08:	00612623          	sw	t1,12(sp)
8000cb0c:	975fe0ef          	jal	ra,8000b480 <_vfiprintf_r>
8000cb10:	01c12083          	lw	ra,28(sp)
8000cb14:	04010113          	addi	sp,sp,64
8000cb18:	00008067          	ret

8000cb1c <fiprintf>:
8000cb1c:	00050e13          	mv	t3,a0
8000cb20:	80016537          	lui	a0,0x80016
8000cb24:	fc010113          	addi	sp,sp,-64
8000cb28:	99c52503          	lw	a0,-1636(a0) # 8001599c <heap_end.1814+0xffffffb8>
8000cb2c:	02810313          	addi	t1,sp,40
8000cb30:	02c12423          	sw	a2,40(sp)
8000cb34:	02d12623          	sw	a3,44(sp)
8000cb38:	00058613          	mv	a2,a1
8000cb3c:	00030693          	mv	a3,t1
8000cb40:	000e0593          	mv	a1,t3
8000cb44:	00112e23          	sw	ra,28(sp)
8000cb48:	02e12823          	sw	a4,48(sp)
8000cb4c:	02f12a23          	sw	a5,52(sp)
8000cb50:	03012c23          	sw	a6,56(sp)
8000cb54:	03112e23          	sw	a7,60(sp)
8000cb58:	00612623          	sw	t1,12(sp)
8000cb5c:	925fe0ef          	jal	ra,8000b480 <_vfiprintf_r>
8000cb60:	01c12083          	lw	ra,28(sp)
8000cb64:	04010113          	addi	sp,sp,64
8000cb68:	00008067          	ret

8000cb6c <__fputwc>:
8000cb6c:	fd010113          	addi	sp,sp,-48
8000cb70:	02812423          	sw	s0,40(sp)
8000cb74:	01312e23          	sw	s3,28(sp)
8000cb78:	01612823          	sw	s6,16(sp)
8000cb7c:	02112623          	sw	ra,44(sp)
8000cb80:	02912223          	sw	s1,36(sp)
8000cb84:	03212023          	sw	s2,32(sp)
8000cb88:	01412c23          	sw	s4,24(sp)
8000cb8c:	01512a23          	sw	s5,20(sp)
8000cb90:	00050b13          	mv	s6,a0
8000cb94:	00058993          	mv	s3,a1
8000cb98:	00060413          	mv	s0,a2
8000cb9c:	9cdf90ef          	jal	ra,80006568 <__locale_mb_cur_max>
8000cba0:	00100793          	li	a5,1
8000cba4:	02f51063          	bne	a0,a5,8000cbc4 <__fputwc+0x58>
8000cba8:	fff98793          	addi	a5,s3,-1
8000cbac:	0fe00713          	li	a4,254
8000cbb0:	00f76a63          	bltu	a4,a5,8000cbc4 <__fputwc+0x58>
8000cbb4:	0ff9f713          	andi	a4,s3,255
8000cbb8:	00e10623          	sb	a4,12(sp)
8000cbbc:	00100913          	li	s2,1
8000cbc0:	02c0006f          	j	8000cbec <__fputwc+0x80>
8000cbc4:	05c40693          	addi	a3,s0,92
8000cbc8:	00098613          	mv	a2,s3
8000cbcc:	00c10593          	addi	a1,sp,12
8000cbd0:	000b0513          	mv	a0,s6
8000cbd4:	4cc020ef          	jal	ra,8000f0a0 <_wcrtomb_r>
8000cbd8:	fff00793          	li	a5,-1
8000cbdc:	00050913          	mv	s2,a0
8000cbe0:	0af50463          	beq	a0,a5,8000cc88 <__fputwc+0x11c>
8000cbe4:	08050e63          	beqz	a0,8000cc80 <__fputwc+0x114>
8000cbe8:	00c14703          	lbu	a4,12(sp)
8000cbec:	00000493          	li	s1,0
8000cbf0:	fff00a13          	li	s4,-1
8000cbf4:	00a00a93          	li	s5,10
8000cbf8:	0280006f          	j	8000cc20 <__fputwc+0xb4>
8000cbfc:	00042783          	lw	a5,0(s0)
8000cc00:	00178693          	addi	a3,a5,1
8000cc04:	00d42023          	sw	a3,0(s0)
8000cc08:	00e78023          	sb	a4,0(a5)
8000cc0c:	00148493          	addi	s1,s1,1
8000cc10:	00c10793          	addi	a5,sp,12
8000cc14:	009787b3          	add	a5,a5,s1
8000cc18:	0724f463          	bgeu	s1,s2,8000cc80 <__fputwc+0x114>
8000cc1c:	0007c703          	lbu	a4,0(a5)
8000cc20:	00842783          	lw	a5,8(s0)
8000cc24:	fff78793          	addi	a5,a5,-1
8000cc28:	00f42423          	sw	a5,8(s0)
8000cc2c:	fc07d8e3          	bgez	a5,8000cbfc <__fputwc+0x90>
8000cc30:	01842683          	lw	a3,24(s0)
8000cc34:	00070593          	mv	a1,a4
8000cc38:	00040613          	mv	a2,s0
8000cc3c:	000b0513          	mv	a0,s6
8000cc40:	00d7c463          	blt	a5,a3,8000cc48 <__fputwc+0xdc>
8000cc44:	fb571ce3          	bne	a4,s5,8000cbfc <__fputwc+0x90>
8000cc48:	2bc020ef          	jal	ra,8000ef04 <__swbuf_r>
8000cc4c:	fd4510e3          	bne	a0,s4,8000cc0c <__fputwc+0xa0>
8000cc50:	fff00913          	li	s2,-1
8000cc54:	02c12083          	lw	ra,44(sp)
8000cc58:	02812403          	lw	s0,40(sp)
8000cc5c:	02412483          	lw	s1,36(sp)
8000cc60:	01c12983          	lw	s3,28(sp)
8000cc64:	01812a03          	lw	s4,24(sp)
8000cc68:	01412a83          	lw	s5,20(sp)
8000cc6c:	01012b03          	lw	s6,16(sp)
8000cc70:	00090513          	mv	a0,s2
8000cc74:	02012903          	lw	s2,32(sp)
8000cc78:	03010113          	addi	sp,sp,48
8000cc7c:	00008067          	ret
8000cc80:	00098913          	mv	s2,s3
8000cc84:	fd1ff06f          	j	8000cc54 <__fputwc+0xe8>
8000cc88:	00c45783          	lhu	a5,12(s0)
8000cc8c:	0407e793          	ori	a5,a5,64
8000cc90:	00f41623          	sh	a5,12(s0)
8000cc94:	fc1ff06f          	j	8000cc54 <__fputwc+0xe8>

8000cc98 <_fputwc_r>:
8000cc98:	00c61783          	lh	a5,12(a2)
8000cc9c:	01279713          	slli	a4,a5,0x12
8000cca0:	02074063          	bltz	a4,8000ccc0 <_fputwc_r+0x28>
8000cca4:	06462703          	lw	a4,100(a2)
8000cca8:	000026b7          	lui	a3,0x2
8000ccac:	00d7e7b3          	or	a5,a5,a3
8000ccb0:	000026b7          	lui	a3,0x2
8000ccb4:	00d76733          	or	a4,a4,a3
8000ccb8:	00f61623          	sh	a5,12(a2)
8000ccbc:	06e62223          	sw	a4,100(a2)
8000ccc0:	eadff06f          	j	8000cb6c <__fputwc>

8000ccc4 <fputwc>:
8000ccc4:	fe010113          	addi	sp,sp,-32
8000ccc8:	800167b7          	lui	a5,0x80016
8000cccc:	00812c23          	sw	s0,24(sp)
8000ccd0:	99c7a403          	lw	s0,-1636(a5) # 8001599c <heap_end.1814+0xffffffb8>
8000ccd4:	00112e23          	sw	ra,28(sp)
8000ccd8:	00058613          	mv	a2,a1
8000ccdc:	00050593          	mv	a1,a0
8000cce0:	00040663          	beqz	s0,8000ccec <fputwc+0x28>
8000cce4:	03842783          	lw	a5,56(s0)
8000cce8:	04078063          	beqz	a5,8000cd28 <fputwc+0x64>
8000ccec:	00c61783          	lh	a5,12(a2)
8000ccf0:	01279713          	slli	a4,a5,0x12
8000ccf4:	02074063          	bltz	a4,8000cd14 <fputwc+0x50>
8000ccf8:	06462703          	lw	a4,100(a2)
8000ccfc:	000026b7          	lui	a3,0x2
8000cd00:	00d7e7b3          	or	a5,a5,a3
8000cd04:	000026b7          	lui	a3,0x2
8000cd08:	00d76733          	or	a4,a4,a3
8000cd0c:	00f61623          	sh	a5,12(a2)
8000cd10:	06e62223          	sw	a4,100(a2)
8000cd14:	00040513          	mv	a0,s0
8000cd18:	01812403          	lw	s0,24(sp)
8000cd1c:	01c12083          	lw	ra,28(sp)
8000cd20:	02010113          	addi	sp,sp,32
8000cd24:	e49ff06f          	j	8000cb6c <__fputwc>
8000cd28:	00a12423          	sw	a0,8(sp)
8000cd2c:	00040513          	mv	a0,s0
8000cd30:	00c12623          	sw	a2,12(sp)
8000cd34:	e30f60ef          	jal	ra,80003364 <__sinit>
8000cd38:	00c12603          	lw	a2,12(sp)
8000cd3c:	00812583          	lw	a1,8(sp)
8000cd40:	fadff06f          	j	8000ccec <fputwc+0x28>

8000cd44 <_fstat_r>:
8000cd44:	ff010113          	addi	sp,sp,-16
8000cd48:	00058713          	mv	a4,a1
8000cd4c:	00812423          	sw	s0,8(sp)
8000cd50:	00912223          	sw	s1,4(sp)
8000cd54:	00050413          	mv	s0,a0
8000cd58:	800164b7          	lui	s1,0x80016
8000cd5c:	00060593          	mv	a1,a2
8000cd60:	00070513          	mv	a0,a4
8000cd64:	00112623          	sw	ra,12(sp)
8000cd68:	9c04a823          	sw	zero,-1584(s1) # 800159d0 <heap_end.1814+0xffffffec>
8000cd6c:	035020ef          	jal	ra,8000f5a0 <_fstat>
8000cd70:	fff00793          	li	a5,-1
8000cd74:	00f50c63          	beq	a0,a5,8000cd8c <_fstat_r+0x48>
8000cd78:	00c12083          	lw	ra,12(sp)
8000cd7c:	00812403          	lw	s0,8(sp)
8000cd80:	00412483          	lw	s1,4(sp)
8000cd84:	01010113          	addi	sp,sp,16
8000cd88:	00008067          	ret
8000cd8c:	9d04a783          	lw	a5,-1584(s1)
8000cd90:	fe0784e3          	beqz	a5,8000cd78 <_fstat_r+0x34>
8000cd94:	00c12083          	lw	ra,12(sp)
8000cd98:	00f42023          	sw	a5,0(s0)
8000cd9c:	00812403          	lw	s0,8(sp)
8000cda0:	00412483          	lw	s1,4(sp)
8000cda4:	01010113          	addi	sp,sp,16
8000cda8:	00008067          	ret

8000cdac <__sfvwrite_r>:
8000cdac:	00862783          	lw	a5,8(a2)
8000cdb0:	32078e63          	beqz	a5,8000d0ec <__sfvwrite_r+0x340>
8000cdb4:	00c5d783          	lhu	a5,12(a1)
8000cdb8:	fd010113          	addi	sp,sp,-48
8000cdbc:	02812423          	sw	s0,40(sp)
8000cdc0:	01412c23          	sw	s4,24(sp)
8000cdc4:	01512a23          	sw	s5,20(sp)
8000cdc8:	02112623          	sw	ra,44(sp)
8000cdcc:	02912223          	sw	s1,36(sp)
8000cdd0:	03212023          	sw	s2,32(sp)
8000cdd4:	01312e23          	sw	s3,28(sp)
8000cdd8:	01612823          	sw	s6,16(sp)
8000cddc:	01712623          	sw	s7,12(sp)
8000cde0:	01812423          	sw	s8,8(sp)
8000cde4:	01912223          	sw	s9,4(sp)
8000cde8:	01a12023          	sw	s10,0(sp)
8000cdec:	0087f713          	andi	a4,a5,8
8000cdf0:	00060a13          	mv	s4,a2
8000cdf4:	00050a93          	mv	s5,a0
8000cdf8:	00058413          	mv	s0,a1
8000cdfc:	08070663          	beqz	a4,8000ce88 <__sfvwrite_r+0xdc>
8000ce00:	0105a703          	lw	a4,16(a1)
8000ce04:	08070263          	beqz	a4,8000ce88 <__sfvwrite_r+0xdc>
8000ce08:	0027f713          	andi	a4,a5,2
8000ce0c:	000a2483          	lw	s1,0(s4)
8000ce10:	08070c63          	beqz	a4,8000cea8 <__sfvwrite_r+0xfc>
8000ce14:	02442783          	lw	a5,36(s0)
8000ce18:	01c42583          	lw	a1,28(s0)
8000ce1c:	80000b37          	lui	s6,0x80000
8000ce20:	00000993          	li	s3,0
8000ce24:	00000913          	li	s2,0
8000ce28:	c00b4b13          	xori	s6,s6,-1024
8000ce2c:	00098613          	mv	a2,s3
8000ce30:	000a8513          	mv	a0,s5
8000ce34:	04090263          	beqz	s2,8000ce78 <__sfvwrite_r+0xcc>
8000ce38:	00090693          	mv	a3,s2
8000ce3c:	012b7463          	bgeu	s6,s2,8000ce44 <__sfvwrite_r+0x98>
8000ce40:	000b0693          	mv	a3,s6
8000ce44:	000780e7          	jalr	a5
8000ce48:	28a05863          	blez	a0,8000d0d8 <__sfvwrite_r+0x32c>
8000ce4c:	008a2783          	lw	a5,8(s4)
8000ce50:	00a989b3          	add	s3,s3,a0
8000ce54:	40a90933          	sub	s2,s2,a0
8000ce58:	40a78533          	sub	a0,a5,a0
8000ce5c:	00aa2423          	sw	a0,8(s4)
8000ce60:	20050a63          	beqz	a0,8000d074 <__sfvwrite_r+0x2c8>
8000ce64:	02442783          	lw	a5,36(s0)
8000ce68:	01c42583          	lw	a1,28(s0)
8000ce6c:	00098613          	mv	a2,s3
8000ce70:	000a8513          	mv	a0,s5
8000ce74:	fc0912e3          	bnez	s2,8000ce38 <__sfvwrite_r+0x8c>
8000ce78:	0004a983          	lw	s3,0(s1)
8000ce7c:	0044a903          	lw	s2,4(s1)
8000ce80:	00848493          	addi	s1,s1,8
8000ce84:	fa9ff06f          	j	8000ce2c <__sfvwrite_r+0x80>
8000ce88:	00040593          	mv	a1,s0
8000ce8c:	000a8513          	mv	a0,s5
8000ce90:	d6df50ef          	jal	ra,80002bfc <__swsetup_r>
8000ce94:	3a051c63          	bnez	a0,8000d24c <__sfvwrite_r+0x4a0>
8000ce98:	00c45783          	lhu	a5,12(s0)
8000ce9c:	000a2483          	lw	s1,0(s4)
8000cea0:	0027f713          	andi	a4,a5,2
8000cea4:	f60718e3          	bnez	a4,8000ce14 <__sfvwrite_r+0x68>
8000cea8:	0017f713          	andi	a4,a5,1
8000ceac:	24071463          	bnez	a4,8000d0f4 <__sfvwrite_r+0x348>
8000ceb0:	00842c83          	lw	s9,8(s0)
8000ceb4:	00042503          	lw	a0,0(s0)
8000ceb8:	80000b37          	lui	s6,0x80000
8000cebc:	ffeb4b93          	xori	s7,s6,-2
8000cec0:	00000c13          	li	s8,0
8000cec4:	00000913          	li	s2,0
8000cec8:	fffb4b13          	not	s6,s6
8000cecc:	0e090e63          	beqz	s2,8000cfc8 <__sfvwrite_r+0x21c>
8000ced0:	2007f713          	andi	a4,a5,512
8000ced4:	24070c63          	beqz	a4,8000d12c <__sfvwrite_r+0x380>
8000ced8:	000c8d13          	mv	s10,s9
8000cedc:	2f996263          	bltu	s2,s9,8000d1c0 <__sfvwrite_r+0x414>
8000cee0:	4807f713          	andi	a4,a5,1152
8000cee4:	08070a63          	beqz	a4,8000cf78 <__sfvwrite_r+0x1cc>
8000cee8:	01442983          	lw	s3,20(s0)
8000ceec:	01042583          	lw	a1,16(s0)
8000cef0:	00190713          	addi	a4,s2,1
8000cef4:	00199693          	slli	a3,s3,0x1
8000cef8:	013686b3          	add	a3,a3,s3
8000cefc:	01f6d993          	srli	s3,a3,0x1f
8000cf00:	40b50d33          	sub	s10,a0,a1
8000cf04:	00d989b3          	add	s3,s3,a3
8000cf08:	4019d993          	srai	s3,s3,0x1
8000cf0c:	01a70733          	add	a4,a4,s10
8000cf10:	00098613          	mv	a2,s3
8000cf14:	00e9f663          	bgeu	s3,a4,8000cf20 <__sfvwrite_r+0x174>
8000cf18:	00070993          	mv	s3,a4
8000cf1c:	00070613          	mv	a2,a4
8000cf20:	4007f793          	andi	a5,a5,1024
8000cf24:	2e078463          	beqz	a5,8000d20c <__sfvwrite_r+0x460>
8000cf28:	00060593          	mv	a1,a2
8000cf2c:	000a8513          	mv	a0,s5
8000cf30:	84df90ef          	jal	ra,8000677c <_malloc_r>
8000cf34:	00050c93          	mv	s9,a0
8000cf38:	30050263          	beqz	a0,8000d23c <__sfvwrite_r+0x490>
8000cf3c:	01042583          	lw	a1,16(s0)
8000cf40:	000d0613          	mv	a2,s10
8000cf44:	3dc000ef          	jal	ra,8000d320 <memcpy>
8000cf48:	00c45783          	lhu	a5,12(s0)
8000cf4c:	b7f7f793          	andi	a5,a5,-1153
8000cf50:	0807e793          	ori	a5,a5,128
8000cf54:	00f41623          	sh	a5,12(s0)
8000cf58:	01ac8533          	add	a0,s9,s10
8000cf5c:	41a987b3          	sub	a5,s3,s10
8000cf60:	01942823          	sw	s9,16(s0)
8000cf64:	00a42023          	sw	a0,0(s0)
8000cf68:	01342a23          	sw	s3,20(s0)
8000cf6c:	00090c93          	mv	s9,s2
8000cf70:	00f42423          	sw	a5,8(s0)
8000cf74:	00090d13          	mv	s10,s2
8000cf78:	000d0613          	mv	a2,s10
8000cf7c:	000c0593          	mv	a1,s8
8000cf80:	4bc000ef          	jal	ra,8000d43c <memmove>
8000cf84:	00842703          	lw	a4,8(s0)
8000cf88:	00042783          	lw	a5,0(s0)
8000cf8c:	00090993          	mv	s3,s2
8000cf90:	41970cb3          	sub	s9,a4,s9
8000cf94:	01a787b3          	add	a5,a5,s10
8000cf98:	01942423          	sw	s9,8(s0)
8000cf9c:	00f42023          	sw	a5,0(s0)
8000cfa0:	00000913          	li	s2,0
8000cfa4:	008a2603          	lw	a2,8(s4)
8000cfa8:	013c0c33          	add	s8,s8,s3
8000cfac:	413609b3          	sub	s3,a2,s3
8000cfb0:	013a2423          	sw	s3,8(s4)
8000cfb4:	0c098063          	beqz	s3,8000d074 <__sfvwrite_r+0x2c8>
8000cfb8:	00842c83          	lw	s9,8(s0)
8000cfbc:	00042503          	lw	a0,0(s0)
8000cfc0:	00c45783          	lhu	a5,12(s0)
8000cfc4:	f00916e3          	bnez	s2,8000ced0 <__sfvwrite_r+0x124>
8000cfc8:	0004ac03          	lw	s8,0(s1)
8000cfcc:	0044a903          	lw	s2,4(s1)
8000cfd0:	00848493          	addi	s1,s1,8
8000cfd4:	ef9ff06f          	j	8000cecc <__sfvwrite_r+0x120>
8000cfd8:	0044a983          	lw	s3,4(s1)
8000cfdc:	0004ac03          	lw	s8,0(s1)
8000cfe0:	00848493          	addi	s1,s1,8
8000cfe4:	fe098ae3          	beqz	s3,8000cfd8 <__sfvwrite_r+0x22c>
8000cfe8:	00098613          	mv	a2,s3
8000cfec:	00a00593          	li	a1,10
8000cff0:	000c0513          	mv	a0,s8
8000cff4:	fb5f90ef          	jal	ra,80006fa8 <memchr>
8000cff8:	12050463          	beqz	a0,8000d120 <__sfvwrite_r+0x374>
8000cffc:	00150513          	addi	a0,a0,1
8000d000:	41850b33          	sub	s6,a0,s8
8000d004:	000b0793          	mv	a5,s6
8000d008:	00098b93          	mv	s7,s3
8000d00c:	0137f463          	bgeu	a5,s3,8000d014 <__sfvwrite_r+0x268>
8000d010:	00078b93          	mv	s7,a5
8000d014:	00042503          	lw	a0,0(s0)
8000d018:	01042783          	lw	a5,16(s0)
8000d01c:	01442683          	lw	a3,20(s0)
8000d020:	00a7f863          	bgeu	a5,a0,8000d030 <__sfvwrite_r+0x284>
8000d024:	00842903          	lw	s2,8(s0)
8000d028:	01268933          	add	s2,a3,s2
8000d02c:	09794263          	blt	s2,s7,8000d0b0 <__sfvwrite_r+0x304>
8000d030:	1adbc863          	blt	s7,a3,8000d1e0 <__sfvwrite_r+0x434>
8000d034:	02442783          	lw	a5,36(s0)
8000d038:	01c42583          	lw	a1,28(s0)
8000d03c:	000c0613          	mv	a2,s8
8000d040:	000a8513          	mv	a0,s5
8000d044:	000780e7          	jalr	a5
8000d048:	00050913          	mv	s2,a0
8000d04c:	08a05663          	blez	a0,8000d0d8 <__sfvwrite_r+0x32c>
8000d050:	412b0b33          	sub	s6,s6,s2
8000d054:	00100513          	li	a0,1
8000d058:	160b0a63          	beqz	s6,8000d1cc <__sfvwrite_r+0x420>
8000d05c:	008a2603          	lw	a2,8(s4)
8000d060:	012c0c33          	add	s8,s8,s2
8000d064:	412989b3          	sub	s3,s3,s2
8000d068:	41260933          	sub	s2,a2,s2
8000d06c:	012a2423          	sw	s2,8(s4)
8000d070:	08091a63          	bnez	s2,8000d104 <__sfvwrite_r+0x358>
8000d074:	00000513          	li	a0,0
8000d078:	02c12083          	lw	ra,44(sp)
8000d07c:	02812403          	lw	s0,40(sp)
8000d080:	02412483          	lw	s1,36(sp)
8000d084:	02012903          	lw	s2,32(sp)
8000d088:	01c12983          	lw	s3,28(sp)
8000d08c:	01812a03          	lw	s4,24(sp)
8000d090:	01412a83          	lw	s5,20(sp)
8000d094:	01012b03          	lw	s6,16(sp)
8000d098:	00c12b83          	lw	s7,12(sp)
8000d09c:	00812c03          	lw	s8,8(sp)
8000d0a0:	00412c83          	lw	s9,4(sp)
8000d0a4:	00012d03          	lw	s10,0(sp)
8000d0a8:	03010113          	addi	sp,sp,48
8000d0ac:	00008067          	ret
8000d0b0:	000c0593          	mv	a1,s8
8000d0b4:	00090613          	mv	a2,s2
8000d0b8:	384000ef          	jal	ra,8000d43c <memmove>
8000d0bc:	00042783          	lw	a5,0(s0)
8000d0c0:	00040593          	mv	a1,s0
8000d0c4:	000a8513          	mv	a0,s5
8000d0c8:	012787b3          	add	a5,a5,s2
8000d0cc:	00f42023          	sw	a5,0(s0)
8000d0d0:	ee9f50ef          	jal	ra,80002fb8 <_fflush_r>
8000d0d4:	f6050ee3          	beqz	a0,8000d050 <__sfvwrite_r+0x2a4>
8000d0d8:	00c41783          	lh	a5,12(s0)
8000d0dc:	0407e793          	ori	a5,a5,64
8000d0e0:	00f41623          	sh	a5,12(s0)
8000d0e4:	fff00513          	li	a0,-1
8000d0e8:	f91ff06f          	j	8000d078 <__sfvwrite_r+0x2cc>
8000d0ec:	00000513          	li	a0,0
8000d0f0:	00008067          	ret
8000d0f4:	00000b13          	li	s6,0
8000d0f8:	00000513          	li	a0,0
8000d0fc:	00000c13          	li	s8,0
8000d100:	00000993          	li	s3,0
8000d104:	ec098ae3          	beqz	s3,8000cfd8 <__sfvwrite_r+0x22c>
8000d108:	ee051ee3          	bnez	a0,8000d004 <__sfvwrite_r+0x258>
8000d10c:	00098613          	mv	a2,s3
8000d110:	00a00593          	li	a1,10
8000d114:	000c0513          	mv	a0,s8
8000d118:	e91f90ef          	jal	ra,80006fa8 <memchr>
8000d11c:	ee0510e3          	bnez	a0,8000cffc <__sfvwrite_r+0x250>
8000d120:	00198793          	addi	a5,s3,1
8000d124:	00078b13          	mv	s6,a5
8000d128:	ee1ff06f          	j	8000d008 <__sfvwrite_r+0x25c>
8000d12c:	01042783          	lw	a5,16(s0)
8000d130:	04a7e263          	bltu	a5,a0,8000d174 <__sfvwrite_r+0x3c8>
8000d134:	01442783          	lw	a5,20(s0)
8000d138:	02f96e63          	bltu	s2,a5,8000d174 <__sfvwrite_r+0x3c8>
8000d13c:	00090693          	mv	a3,s2
8000d140:	012bf463          	bgeu	s7,s2,8000d148 <__sfvwrite_r+0x39c>
8000d144:	000b0693          	mv	a3,s6
8000d148:	02f6c6b3          	div	a3,a3,a5
8000d14c:	02442703          	lw	a4,36(s0)
8000d150:	01c42583          	lw	a1,28(s0)
8000d154:	000c0613          	mv	a2,s8
8000d158:	000a8513          	mv	a0,s5
8000d15c:	02f686b3          	mul	a3,a3,a5
8000d160:	000700e7          	jalr	a4
8000d164:	00050993          	mv	s3,a0
8000d168:	f6a058e3          	blez	a0,8000d0d8 <__sfvwrite_r+0x32c>
8000d16c:	41390933          	sub	s2,s2,s3
8000d170:	e35ff06f          	j	8000cfa4 <__sfvwrite_r+0x1f8>
8000d174:	000c8993          	mv	s3,s9
8000d178:	01997463          	bgeu	s2,s9,8000d180 <__sfvwrite_r+0x3d4>
8000d17c:	00090993          	mv	s3,s2
8000d180:	00098613          	mv	a2,s3
8000d184:	000c0593          	mv	a1,s8
8000d188:	2b4000ef          	jal	ra,8000d43c <memmove>
8000d18c:	00842783          	lw	a5,8(s0)
8000d190:	00042703          	lw	a4,0(s0)
8000d194:	413787b3          	sub	a5,a5,s3
8000d198:	01370733          	add	a4,a4,s3
8000d19c:	00f42423          	sw	a5,8(s0)
8000d1a0:	00e42023          	sw	a4,0(s0)
8000d1a4:	fc0794e3          	bnez	a5,8000d16c <__sfvwrite_r+0x3c0>
8000d1a8:	00040593          	mv	a1,s0
8000d1ac:	000a8513          	mv	a0,s5
8000d1b0:	e09f50ef          	jal	ra,80002fb8 <_fflush_r>
8000d1b4:	f20512e3          	bnez	a0,8000d0d8 <__sfvwrite_r+0x32c>
8000d1b8:	41390933          	sub	s2,s2,s3
8000d1bc:	de9ff06f          	j	8000cfa4 <__sfvwrite_r+0x1f8>
8000d1c0:	00090c93          	mv	s9,s2
8000d1c4:	00090d13          	mv	s10,s2
8000d1c8:	db1ff06f          	j	8000cf78 <__sfvwrite_r+0x1cc>
8000d1cc:	00040593          	mv	a1,s0
8000d1d0:	000a8513          	mv	a0,s5
8000d1d4:	de5f50ef          	jal	ra,80002fb8 <_fflush_r>
8000d1d8:	e80502e3          	beqz	a0,8000d05c <__sfvwrite_r+0x2b0>
8000d1dc:	efdff06f          	j	8000d0d8 <__sfvwrite_r+0x32c>
8000d1e0:	000b8613          	mv	a2,s7
8000d1e4:	000c0593          	mv	a1,s8
8000d1e8:	254000ef          	jal	ra,8000d43c <memmove>
8000d1ec:	00842783          	lw	a5,8(s0)
8000d1f0:	00042603          	lw	a2,0(s0)
8000d1f4:	000b8913          	mv	s2,s7
8000d1f8:	417787b3          	sub	a5,a5,s7
8000d1fc:	01760633          	add	a2,a2,s7
8000d200:	00f42423          	sw	a5,8(s0)
8000d204:	00c42023          	sw	a2,0(s0)
8000d208:	e49ff06f          	j	8000d050 <__sfvwrite_r+0x2a4>
8000d20c:	000a8513          	mv	a0,s5
8000d210:	3b8000ef          	jal	ra,8000d5c8 <_realloc_r>
8000d214:	00050c93          	mv	s9,a0
8000d218:	d40510e3          	bnez	a0,8000cf58 <__sfvwrite_r+0x1ac>
8000d21c:	01042583          	lw	a1,16(s0)
8000d220:	000a8513          	mv	a0,s5
8000d224:	ac8f60ef          	jal	ra,800034ec <_free_r>
8000d228:	00c41783          	lh	a5,12(s0)
8000d22c:	00c00713          	li	a4,12
8000d230:	00eaa023          	sw	a4,0(s5)
8000d234:	f7f7f793          	andi	a5,a5,-129
8000d238:	ea5ff06f          	j	8000d0dc <__sfvwrite_r+0x330>
8000d23c:	00c00713          	li	a4,12
8000d240:	00c41783          	lh	a5,12(s0)
8000d244:	00eaa023          	sw	a4,0(s5)
8000d248:	e95ff06f          	j	8000d0dc <__sfvwrite_r+0x330>
8000d24c:	fff00513          	li	a0,-1
8000d250:	e29ff06f          	j	8000d078 <__sfvwrite_r+0x2cc>

8000d254 <_isatty_r>:
8000d254:	ff010113          	addi	sp,sp,-16
8000d258:	00812423          	sw	s0,8(sp)
8000d25c:	00912223          	sw	s1,4(sp)
8000d260:	00050413          	mv	s0,a0
8000d264:	800164b7          	lui	s1,0x80016
8000d268:	00058513          	mv	a0,a1
8000d26c:	00112623          	sw	ra,12(sp)
8000d270:	9c04a823          	sw	zero,-1584(s1) # 800159d0 <heap_end.1814+0xffffffec>
8000d274:	3a4020ef          	jal	ra,8000f618 <_isatty>
8000d278:	fff00793          	li	a5,-1
8000d27c:	00f50c63          	beq	a0,a5,8000d294 <_isatty_r+0x40>
8000d280:	00c12083          	lw	ra,12(sp)
8000d284:	00812403          	lw	s0,8(sp)
8000d288:	00412483          	lw	s1,4(sp)
8000d28c:	01010113          	addi	sp,sp,16
8000d290:	00008067          	ret
8000d294:	9d04a783          	lw	a5,-1584(s1)
8000d298:	fe0784e3          	beqz	a5,8000d280 <_isatty_r+0x2c>
8000d29c:	00c12083          	lw	ra,12(sp)
8000d2a0:	00f42023          	sw	a5,0(s0)
8000d2a4:	00812403          	lw	s0,8(sp)
8000d2a8:	00412483          	lw	s1,4(sp)
8000d2ac:	01010113          	addi	sp,sp,16
8000d2b0:	00008067          	ret

8000d2b4 <_lseek_r>:
8000d2b4:	ff010113          	addi	sp,sp,-16
8000d2b8:	00058713          	mv	a4,a1
8000d2bc:	00812423          	sw	s0,8(sp)
8000d2c0:	00912223          	sw	s1,4(sp)
8000d2c4:	00060593          	mv	a1,a2
8000d2c8:	00050413          	mv	s0,a0
8000d2cc:	800164b7          	lui	s1,0x80016
8000d2d0:	00068613          	mv	a2,a3
8000d2d4:	00070513          	mv	a0,a4
8000d2d8:	00112623          	sw	ra,12(sp)
8000d2dc:	9c04a823          	sw	zero,-1584(s1) # 800159d0 <heap_end.1814+0xffffffec>
8000d2e0:	39c020ef          	jal	ra,8000f67c <_lseek>
8000d2e4:	fff00793          	li	a5,-1
8000d2e8:	00f50c63          	beq	a0,a5,8000d300 <_lseek_r+0x4c>
8000d2ec:	00c12083          	lw	ra,12(sp)
8000d2f0:	00812403          	lw	s0,8(sp)
8000d2f4:	00412483          	lw	s1,4(sp)
8000d2f8:	01010113          	addi	sp,sp,16
8000d2fc:	00008067          	ret
8000d300:	9d04a783          	lw	a5,-1584(s1)
8000d304:	fe0784e3          	beqz	a5,8000d2ec <_lseek_r+0x38>
8000d308:	00c12083          	lw	ra,12(sp)
8000d30c:	00f42023          	sw	a5,0(s0)
8000d310:	00812403          	lw	s0,8(sp)
8000d314:	00412483          	lw	s1,4(sp)
8000d318:	01010113          	addi	sp,sp,16
8000d31c:	00008067          	ret

8000d320 <memcpy>:
8000d320:	00a5c7b3          	xor	a5,a1,a0
8000d324:	0037f793          	andi	a5,a5,3
8000d328:	00c508b3          	add	a7,a0,a2
8000d32c:	06079263          	bnez	a5,8000d390 <memcpy+0x70>
8000d330:	00300793          	li	a5,3
8000d334:	04c7fe63          	bgeu	a5,a2,8000d390 <memcpy+0x70>
8000d338:	00357793          	andi	a5,a0,3
8000d33c:	00050713          	mv	a4,a0
8000d340:	06079863          	bnez	a5,8000d3b0 <memcpy+0x90>
8000d344:	ffc8f613          	andi	a2,a7,-4
8000d348:	fe060793          	addi	a5,a2,-32
8000d34c:	08f76c63          	bltu	a4,a5,8000d3e4 <memcpy+0xc4>
8000d350:	02c77c63          	bgeu	a4,a2,8000d388 <memcpy+0x68>
8000d354:	00058693          	mv	a3,a1
8000d358:	00070793          	mv	a5,a4
8000d35c:	0006a803          	lw	a6,0(a3) # 2000 <_printf_r-0x7fffe000>
8000d360:	00478793          	addi	a5,a5,4
8000d364:	00468693          	addi	a3,a3,4
8000d368:	ff07ae23          	sw	a6,-4(a5)
8000d36c:	fec7e8e3          	bltu	a5,a2,8000d35c <memcpy+0x3c>
8000d370:	fff60793          	addi	a5,a2,-1
8000d374:	40e787b3          	sub	a5,a5,a4
8000d378:	ffc7f793          	andi	a5,a5,-4
8000d37c:	00478793          	addi	a5,a5,4
8000d380:	00f70733          	add	a4,a4,a5
8000d384:	00f585b3          	add	a1,a1,a5
8000d388:	01176863          	bltu	a4,a7,8000d398 <memcpy+0x78>
8000d38c:	00008067          	ret
8000d390:	00050713          	mv	a4,a0
8000d394:	ff157ce3          	bgeu	a0,a7,8000d38c <memcpy+0x6c>
8000d398:	0005c783          	lbu	a5,0(a1)
8000d39c:	00170713          	addi	a4,a4,1
8000d3a0:	00158593          	addi	a1,a1,1
8000d3a4:	fef70fa3          	sb	a5,-1(a4)
8000d3a8:	ff1768e3          	bltu	a4,a7,8000d398 <memcpy+0x78>
8000d3ac:	00008067          	ret
8000d3b0:	0005c683          	lbu	a3,0(a1)
8000d3b4:	00170713          	addi	a4,a4,1
8000d3b8:	00377793          	andi	a5,a4,3
8000d3bc:	fed70fa3          	sb	a3,-1(a4)
8000d3c0:	00158593          	addi	a1,a1,1
8000d3c4:	f80780e3          	beqz	a5,8000d344 <memcpy+0x24>
8000d3c8:	0005c683          	lbu	a3,0(a1)
8000d3cc:	00170713          	addi	a4,a4,1
8000d3d0:	00377793          	andi	a5,a4,3
8000d3d4:	fed70fa3          	sb	a3,-1(a4)
8000d3d8:	00158593          	addi	a1,a1,1
8000d3dc:	fc079ae3          	bnez	a5,8000d3b0 <memcpy+0x90>
8000d3e0:	f65ff06f          	j	8000d344 <memcpy+0x24>
8000d3e4:	0045a683          	lw	a3,4(a1)
8000d3e8:	0005a283          	lw	t0,0(a1)
8000d3ec:	0085af83          	lw	t6,8(a1)
8000d3f0:	00c5af03          	lw	t5,12(a1)
8000d3f4:	0105ae83          	lw	t4,16(a1)
8000d3f8:	0145ae03          	lw	t3,20(a1)
8000d3fc:	0185a303          	lw	t1,24(a1)
8000d400:	01c5a803          	lw	a6,28(a1)
8000d404:	00d72223          	sw	a3,4(a4)
8000d408:	0205a683          	lw	a3,32(a1)
8000d40c:	00572023          	sw	t0,0(a4)
8000d410:	01f72423          	sw	t6,8(a4)
8000d414:	01e72623          	sw	t5,12(a4)
8000d418:	01d72823          	sw	t4,16(a4)
8000d41c:	01c72a23          	sw	t3,20(a4)
8000d420:	00672c23          	sw	t1,24(a4)
8000d424:	01072e23          	sw	a6,28(a4)
8000d428:	02d72023          	sw	a3,32(a4)
8000d42c:	02470713          	addi	a4,a4,36
8000d430:	02458593          	addi	a1,a1,36
8000d434:	faf768e3          	bltu	a4,a5,8000d3e4 <memcpy+0xc4>
8000d438:	f19ff06f          	j	8000d350 <memcpy+0x30>

8000d43c <memmove>:
8000d43c:	02a5f663          	bgeu	a1,a0,8000d468 <memmove+0x2c>
8000d440:	00c587b3          	add	a5,a1,a2
8000d444:	02f57263          	bgeu	a0,a5,8000d468 <memmove+0x2c>
8000d448:	00c50733          	add	a4,a0,a2
8000d44c:	0e060a63          	beqz	a2,8000d540 <memmove+0x104>
8000d450:	fff7c683          	lbu	a3,-1(a5)
8000d454:	fff78793          	addi	a5,a5,-1
8000d458:	fff70713          	addi	a4,a4,-1
8000d45c:	00d70023          	sb	a3,0(a4)
8000d460:	fef598e3          	bne	a1,a5,8000d450 <memmove+0x14>
8000d464:	00008067          	ret
8000d468:	00f00793          	li	a5,15
8000d46c:	02c7e863          	bltu	a5,a2,8000d49c <memmove+0x60>
8000d470:	00050793          	mv	a5,a0
8000d474:	fff60693          	addi	a3,a2,-1
8000d478:	0c060c63          	beqz	a2,8000d550 <memmove+0x114>
8000d47c:	00168693          	addi	a3,a3,1
8000d480:	00d786b3          	add	a3,a5,a3
8000d484:	0005c703          	lbu	a4,0(a1)
8000d488:	00178793          	addi	a5,a5,1
8000d48c:	00158593          	addi	a1,a1,1
8000d490:	fee78fa3          	sb	a4,-1(a5)
8000d494:	fed798e3          	bne	a5,a3,8000d484 <memmove+0x48>
8000d498:	00008067          	ret
8000d49c:	00a5e7b3          	or	a5,a1,a0
8000d4a0:	0037f793          	andi	a5,a5,3
8000d4a4:	0a079063          	bnez	a5,8000d544 <memmove+0x108>
8000d4a8:	ff060893          	addi	a7,a2,-16
8000d4ac:	ff08f893          	andi	a7,a7,-16
8000d4b0:	01088893          	addi	a7,a7,16
8000d4b4:	01150833          	add	a6,a0,a7
8000d4b8:	00058713          	mv	a4,a1
8000d4bc:	00050793          	mv	a5,a0
8000d4c0:	00072683          	lw	a3,0(a4)
8000d4c4:	01070713          	addi	a4,a4,16
8000d4c8:	01078793          	addi	a5,a5,16
8000d4cc:	fed7a823          	sw	a3,-16(a5)
8000d4d0:	ff472683          	lw	a3,-12(a4)
8000d4d4:	fed7aa23          	sw	a3,-12(a5)
8000d4d8:	ff872683          	lw	a3,-8(a4)
8000d4dc:	fed7ac23          	sw	a3,-8(a5)
8000d4e0:	ffc72683          	lw	a3,-4(a4)
8000d4e4:	fed7ae23          	sw	a3,-4(a5)
8000d4e8:	fcf81ce3          	bne	a6,a5,8000d4c0 <memmove+0x84>
8000d4ec:	00c67713          	andi	a4,a2,12
8000d4f0:	011585b3          	add	a1,a1,a7
8000d4f4:	00f67813          	andi	a6,a2,15
8000d4f8:	04070e63          	beqz	a4,8000d554 <memmove+0x118>
8000d4fc:	00058713          	mv	a4,a1
8000d500:	00078893          	mv	a7,a5
8000d504:	00300e13          	li	t3,3
8000d508:	00072303          	lw	t1,0(a4)
8000d50c:	00470713          	addi	a4,a4,4
8000d510:	40e806b3          	sub	a3,a6,a4
8000d514:	0068a023          	sw	t1,0(a7)
8000d518:	00d586b3          	add	a3,a1,a3
8000d51c:	00488893          	addi	a7,a7,4
8000d520:	fede64e3          	bltu	t3,a3,8000d508 <memmove+0xcc>
8000d524:	ffc80713          	addi	a4,a6,-4
8000d528:	ffc77713          	andi	a4,a4,-4
8000d52c:	00470713          	addi	a4,a4,4
8000d530:	00367613          	andi	a2,a2,3
8000d534:	00e787b3          	add	a5,a5,a4
8000d538:	00e585b3          	add	a1,a1,a4
8000d53c:	f39ff06f          	j	8000d474 <memmove+0x38>
8000d540:	00008067          	ret
8000d544:	fff60693          	addi	a3,a2,-1
8000d548:	00050793          	mv	a5,a0
8000d54c:	f31ff06f          	j	8000d47c <memmove+0x40>
8000d550:	00008067          	ret
8000d554:	00080613          	mv	a2,a6
8000d558:	f1dff06f          	j	8000d474 <memmove+0x38>

8000d55c <_read_r>:
8000d55c:	ff010113          	addi	sp,sp,-16
8000d560:	00058713          	mv	a4,a1
8000d564:	00812423          	sw	s0,8(sp)
8000d568:	00912223          	sw	s1,4(sp)
8000d56c:	00060593          	mv	a1,a2
8000d570:	00050413          	mv	s0,a0
8000d574:	800164b7          	lui	s1,0x80016
8000d578:	00068613          	mv	a2,a3
8000d57c:	00070513          	mv	a0,a4
8000d580:	00112623          	sw	ra,12(sp)
8000d584:	9c04a823          	sw	zero,-1584(s1) # 800159d0 <heap_end.1814+0xffffffec>
8000d588:	144020ef          	jal	ra,8000f6cc <_read>
8000d58c:	fff00793          	li	a5,-1
8000d590:	00f50c63          	beq	a0,a5,8000d5a8 <_read_r+0x4c>
8000d594:	00c12083          	lw	ra,12(sp)
8000d598:	00812403          	lw	s0,8(sp)
8000d59c:	00412483          	lw	s1,4(sp)
8000d5a0:	01010113          	addi	sp,sp,16
8000d5a4:	00008067          	ret
8000d5a8:	9d04a783          	lw	a5,-1584(s1)
8000d5ac:	fe0784e3          	beqz	a5,8000d594 <_read_r+0x38>
8000d5b0:	00c12083          	lw	ra,12(sp)
8000d5b4:	00f42023          	sw	a5,0(s0)
8000d5b8:	00812403          	lw	s0,8(sp)
8000d5bc:	00412483          	lw	s1,4(sp)
8000d5c0:	01010113          	addi	sp,sp,16
8000d5c4:	00008067          	ret

8000d5c8 <_realloc_r>:
8000d5c8:	fd010113          	addi	sp,sp,-48
8000d5cc:	03212023          	sw	s2,32(sp)
8000d5d0:	02112623          	sw	ra,44(sp)
8000d5d4:	02812423          	sw	s0,40(sp)
8000d5d8:	02912223          	sw	s1,36(sp)
8000d5dc:	01312e23          	sw	s3,28(sp)
8000d5e0:	01412c23          	sw	s4,24(sp)
8000d5e4:	01512a23          	sw	s5,20(sp)
8000d5e8:	01612823          	sw	s6,16(sp)
8000d5ec:	01712623          	sw	s7,12(sp)
8000d5f0:	01812423          	sw	s8,8(sp)
8000d5f4:	00060913          	mv	s2,a2
8000d5f8:	22058463          	beqz	a1,8000d820 <_realloc_r+0x258>
8000d5fc:	00058413          	mv	s0,a1
8000d600:	00050993          	mv	s3,a0
8000d604:	b55f90ef          	jal	ra,80007158 <__malloc_lock>
8000d608:	00b90493          	addi	s1,s2,11
8000d60c:	01600793          	li	a5,22
8000d610:	0e97fe63          	bgeu	a5,s1,8000d70c <_realloc_r+0x144>
8000d614:	ff84f493          	andi	s1,s1,-8
8000d618:	00048713          	mv	a4,s1
8000d61c:	0e04ce63          	bltz	s1,8000d718 <_realloc_r+0x150>
8000d620:	0f24ec63          	bltu	s1,s2,8000d718 <_realloc_r+0x150>
8000d624:	ffc42783          	lw	a5,-4(s0)
8000d628:	ff840a93          	addi	s5,s0,-8
8000d62c:	ffc7fa13          	andi	s4,a5,-4
8000d630:	014a8b33          	add	s6,s5,s4
8000d634:	18ea5c63          	bge	s4,a4,8000d7cc <_realloc_r+0x204>
8000d638:	800156b7          	lui	a3,0x80015
8000d63c:	59468b93          	addi	s7,a3,1428 # 80015594 <heap_end.1814+0xfffffbb0>
8000d640:	008ba603          	lw	a2,8(s7)
8000d644:	004b2683          	lw	a3,4(s6) # 80000004 <heap_end.1814+0xfffea620>
8000d648:	23660e63          	beq	a2,s6,8000d884 <_realloc_r+0x2bc>
8000d64c:	ffe6f613          	andi	a2,a3,-2
8000d650:	00cb0633          	add	a2,s6,a2
8000d654:	00462603          	lw	a2,4(a2)
8000d658:	00167613          	andi	a2,a2,1
8000d65c:	1a061463          	bnez	a2,8000d804 <_realloc_r+0x23c>
8000d660:	ffc6f693          	andi	a3,a3,-4
8000d664:	00da0633          	add	a2,s4,a3
8000d668:	32e65e63          	bge	a2,a4,8000d9a4 <_realloc_r+0x3dc>
8000d66c:	0017f793          	andi	a5,a5,1
8000d670:	02079463          	bnez	a5,8000d698 <_realloc_r+0xd0>
8000d674:	ff842c03          	lw	s8,-8(s0)
8000d678:	418a8c33          	sub	s8,s5,s8
8000d67c:	004c2783          	lw	a5,4(s8)
8000d680:	ffc7f793          	andi	a5,a5,-4
8000d684:	00d786b3          	add	a3,a5,a3
8000d688:	01468bb3          	add	s7,a3,s4
8000d68c:	34ebda63          	bge	s7,a4,8000d9e0 <_realloc_r+0x418>
8000d690:	00fa0bb3          	add	s7,s4,a5
8000d694:	0cebd263          	bge	s7,a4,8000d758 <_realloc_r+0x190>
8000d698:	00090593          	mv	a1,s2
8000d69c:	00098513          	mv	a0,s3
8000d6a0:	8dcf90ef          	jal	ra,8000677c <_malloc_r>
8000d6a4:	00050913          	mv	s2,a0
8000d6a8:	04050c63          	beqz	a0,8000d700 <_realloc_r+0x138>
8000d6ac:	ffc42783          	lw	a5,-4(s0)
8000d6b0:	ff850713          	addi	a4,a0,-8
8000d6b4:	ffe7f793          	andi	a5,a5,-2
8000d6b8:	00fa87b3          	add	a5,s5,a5
8000d6bc:	30e78263          	beq	a5,a4,8000d9c0 <_realloc_r+0x3f8>
8000d6c0:	ffca0613          	addi	a2,s4,-4
8000d6c4:	02400793          	li	a5,36
8000d6c8:	30c7e663          	bltu	a5,a2,8000d9d4 <_realloc_r+0x40c>
8000d6cc:	01300713          	li	a4,19
8000d6d0:	00042683          	lw	a3,0(s0)
8000d6d4:	26c76c63          	bltu	a4,a2,8000d94c <_realloc_r+0x384>
8000d6d8:	00050793          	mv	a5,a0
8000d6dc:	00040713          	mv	a4,s0
8000d6e0:	00d7a023          	sw	a3,0(a5)
8000d6e4:	00472683          	lw	a3,4(a4)
8000d6e8:	00d7a223          	sw	a3,4(a5)
8000d6ec:	00872703          	lw	a4,8(a4)
8000d6f0:	00e7a423          	sw	a4,8(a5)
8000d6f4:	00040593          	mv	a1,s0
8000d6f8:	00098513          	mv	a0,s3
8000d6fc:	df1f50ef          	jal	ra,800034ec <_free_r>
8000d700:	00098513          	mv	a0,s3
8000d704:	a59f90ef          	jal	ra,8000715c <__malloc_unlock>
8000d708:	01c0006f          	j	8000d724 <_realloc_r+0x15c>
8000d70c:	01000493          	li	s1,16
8000d710:	01000713          	li	a4,16
8000d714:	f124f8e3          	bgeu	s1,s2,8000d624 <_realloc_r+0x5c>
8000d718:	00c00793          	li	a5,12
8000d71c:	00f9a023          	sw	a5,0(s3)
8000d720:	00000913          	li	s2,0
8000d724:	02c12083          	lw	ra,44(sp)
8000d728:	02812403          	lw	s0,40(sp)
8000d72c:	02412483          	lw	s1,36(sp)
8000d730:	01c12983          	lw	s3,28(sp)
8000d734:	01812a03          	lw	s4,24(sp)
8000d738:	01412a83          	lw	s5,20(sp)
8000d73c:	01012b03          	lw	s6,16(sp)
8000d740:	00c12b83          	lw	s7,12(sp)
8000d744:	00812c03          	lw	s8,8(sp)
8000d748:	00090513          	mv	a0,s2
8000d74c:	02012903          	lw	s2,32(sp)
8000d750:	03010113          	addi	sp,sp,48
8000d754:	00008067          	ret
8000d758:	00cc2783          	lw	a5,12(s8)
8000d75c:	008c2703          	lw	a4,8(s8)
8000d760:	ffca0613          	addi	a2,s4,-4
8000d764:	02400693          	li	a3,36
8000d768:	00f72623          	sw	a5,12(a4)
8000d76c:	00e7a423          	sw	a4,8(a5)
8000d770:	008c0913          	addi	s2,s8,8
8000d774:	017c0b33          	add	s6,s8,s7
8000d778:	2ec6e463          	bltu	a3,a2,8000da60 <_realloc_r+0x498>
8000d77c:	01300593          	li	a1,19
8000d780:	00042703          	lw	a4,0(s0)
8000d784:	00090793          	mv	a5,s2
8000d788:	02c5f263          	bgeu	a1,a2,8000d7ac <_realloc_r+0x1e4>
8000d78c:	00ec2423          	sw	a4,8(s8)
8000d790:	00442703          	lw	a4,4(s0)
8000d794:	01b00793          	li	a5,27
8000d798:	00ec2623          	sw	a4,12(s8)
8000d79c:	30c7e263          	bltu	a5,a2,8000daa0 <_realloc_r+0x4d8>
8000d7a0:	00842703          	lw	a4,8(s0)
8000d7a4:	010c0793          	addi	a5,s8,16
8000d7a8:	00840413          	addi	s0,s0,8
8000d7ac:	00e7a023          	sw	a4,0(a5)
8000d7b0:	00442703          	lw	a4,4(s0)
8000d7b4:	000b8a13          	mv	s4,s7
8000d7b8:	000c0a93          	mv	s5,s8
8000d7bc:	00e7a223          	sw	a4,4(a5)
8000d7c0:	00842703          	lw	a4,8(s0)
8000d7c4:	00090413          	mv	s0,s2
8000d7c8:	00e7a423          	sw	a4,8(a5)
8000d7cc:	004aa783          	lw	a5,4(s5)
8000d7d0:	409a0733          	sub	a4,s4,s1
8000d7d4:	00f00693          	li	a3,15
8000d7d8:	0017f793          	andi	a5,a5,1
8000d7dc:	06e6ec63          	bltu	a3,a4,8000d854 <_realloc_r+0x28c>
8000d7e0:	00fa67b3          	or	a5,s4,a5
8000d7e4:	00faa223          	sw	a5,4(s5)
8000d7e8:	004b2783          	lw	a5,4(s6)
8000d7ec:	0017e793          	ori	a5,a5,1
8000d7f0:	00fb2223          	sw	a5,4(s6)
8000d7f4:	00098513          	mv	a0,s3
8000d7f8:	965f90ef          	jal	ra,8000715c <__malloc_unlock>
8000d7fc:	00040913          	mv	s2,s0
8000d800:	f25ff06f          	j	8000d724 <_realloc_r+0x15c>
8000d804:	0017f793          	andi	a5,a5,1
8000d808:	e80798e3          	bnez	a5,8000d698 <_realloc_r+0xd0>
8000d80c:	ff842c03          	lw	s8,-8(s0)
8000d810:	418a8c33          	sub	s8,s5,s8
8000d814:	004c2783          	lw	a5,4(s8)
8000d818:	ffc7f793          	andi	a5,a5,-4
8000d81c:	e75ff06f          	j	8000d690 <_realloc_r+0xc8>
8000d820:	02812403          	lw	s0,40(sp)
8000d824:	02c12083          	lw	ra,44(sp)
8000d828:	02412483          	lw	s1,36(sp)
8000d82c:	02012903          	lw	s2,32(sp)
8000d830:	01c12983          	lw	s3,28(sp)
8000d834:	01812a03          	lw	s4,24(sp)
8000d838:	01412a83          	lw	s5,20(sp)
8000d83c:	01012b03          	lw	s6,16(sp)
8000d840:	00c12b83          	lw	s7,12(sp)
8000d844:	00812c03          	lw	s8,8(sp)
8000d848:	00060593          	mv	a1,a2
8000d84c:	03010113          	addi	sp,sp,48
8000d850:	f2df806f          	j	8000677c <_malloc_r>
8000d854:	0097e7b3          	or	a5,a5,s1
8000d858:	00faa223          	sw	a5,4(s5)
8000d85c:	009a85b3          	add	a1,s5,s1
8000d860:	00176713          	ori	a4,a4,1
8000d864:	00e5a223          	sw	a4,4(a1)
8000d868:	004b2783          	lw	a5,4(s6)
8000d86c:	00858593          	addi	a1,a1,8
8000d870:	00098513          	mv	a0,s3
8000d874:	0017e793          	ori	a5,a5,1
8000d878:	00fb2223          	sw	a5,4(s6)
8000d87c:	c71f50ef          	jal	ra,800034ec <_free_r>
8000d880:	f75ff06f          	j	8000d7f4 <_realloc_r+0x22c>
8000d884:	ffc6f693          	andi	a3,a3,-4
8000d888:	00da0633          	add	a2,s4,a3
8000d88c:	01048593          	addi	a1,s1,16
8000d890:	0eb65063          	bge	a2,a1,8000d970 <_realloc_r+0x3a8>
8000d894:	0017f793          	andi	a5,a5,1
8000d898:	e00790e3          	bnez	a5,8000d698 <_realloc_r+0xd0>
8000d89c:	ff842c03          	lw	s8,-8(s0)
8000d8a0:	418a8c33          	sub	s8,s5,s8
8000d8a4:	004c2783          	lw	a5,4(s8)
8000d8a8:	ffc7f793          	andi	a5,a5,-4
8000d8ac:	00d786b3          	add	a3,a5,a3
8000d8b0:	01468b33          	add	s6,a3,s4
8000d8b4:	dcbb4ee3          	blt	s6,a1,8000d690 <_realloc_r+0xc8>
8000d8b8:	00cc2783          	lw	a5,12(s8)
8000d8bc:	008c2703          	lw	a4,8(s8)
8000d8c0:	ffca0613          	addi	a2,s4,-4
8000d8c4:	02400693          	li	a3,36
8000d8c8:	00f72623          	sw	a5,12(a4)
8000d8cc:	00e7a423          	sw	a4,8(a5)
8000d8d0:	008c0913          	addi	s2,s8,8
8000d8d4:	20c6ee63          	bltu	a3,a2,8000daf0 <_realloc_r+0x528>
8000d8d8:	01300593          	li	a1,19
8000d8dc:	00042703          	lw	a4,0(s0)
8000d8e0:	00090793          	mv	a5,s2
8000d8e4:	02c5f263          	bgeu	a1,a2,8000d908 <_realloc_r+0x340>
8000d8e8:	00ec2423          	sw	a4,8(s8)
8000d8ec:	00442703          	lw	a4,4(s0)
8000d8f0:	01b00793          	li	a5,27
8000d8f4:	00ec2623          	sw	a4,12(s8)
8000d8f8:	20c7e463          	bltu	a5,a2,8000db00 <_realloc_r+0x538>
8000d8fc:	00842703          	lw	a4,8(s0)
8000d900:	010c0793          	addi	a5,s8,16
8000d904:	00840413          	addi	s0,s0,8
8000d908:	00e7a023          	sw	a4,0(a5)
8000d90c:	00442703          	lw	a4,4(s0)
8000d910:	00e7a223          	sw	a4,4(a5)
8000d914:	00842703          	lw	a4,8(s0)
8000d918:	00e7a423          	sw	a4,8(a5)
8000d91c:	009c0733          	add	a4,s8,s1
8000d920:	409b07b3          	sub	a5,s6,s1
8000d924:	00eba423          	sw	a4,8(s7)
8000d928:	0017e793          	ori	a5,a5,1
8000d92c:	00f72223          	sw	a5,4(a4)
8000d930:	004c2783          	lw	a5,4(s8)
8000d934:	00098513          	mv	a0,s3
8000d938:	0017f793          	andi	a5,a5,1
8000d93c:	0097e4b3          	or	s1,a5,s1
8000d940:	009c2223          	sw	s1,4(s8)
8000d944:	819f90ef          	jal	ra,8000715c <__malloc_unlock>
8000d948:	dddff06f          	j	8000d724 <_realloc_r+0x15c>
8000d94c:	00d52023          	sw	a3,0(a0)
8000d950:	00442683          	lw	a3,4(s0)
8000d954:	01b00713          	li	a4,27
8000d958:	00d52223          	sw	a3,4(a0)
8000d95c:	12c76063          	bltu	a4,a2,8000da7c <_realloc_r+0x4b4>
8000d960:	00842683          	lw	a3,8(s0)
8000d964:	00840713          	addi	a4,s0,8
8000d968:	00850793          	addi	a5,a0,8
8000d96c:	d75ff06f          	j	8000d6e0 <_realloc_r+0x118>
8000d970:	009a8ab3          	add	s5,s5,s1
8000d974:	409607b3          	sub	a5,a2,s1
8000d978:	015ba423          	sw	s5,8(s7)
8000d97c:	0017e793          	ori	a5,a5,1
8000d980:	00faa223          	sw	a5,4(s5)
8000d984:	ffc42783          	lw	a5,-4(s0)
8000d988:	00098513          	mv	a0,s3
8000d98c:	00040913          	mv	s2,s0
8000d990:	0017f793          	andi	a5,a5,1
8000d994:	0097e4b3          	or	s1,a5,s1
8000d998:	fe942e23          	sw	s1,-4(s0)
8000d99c:	fc0f90ef          	jal	ra,8000715c <__malloc_unlock>
8000d9a0:	d85ff06f          	j	8000d724 <_realloc_r+0x15c>
8000d9a4:	00cb2783          	lw	a5,12(s6)
8000d9a8:	008b2703          	lw	a4,8(s6)
8000d9ac:	00060a13          	mv	s4,a2
8000d9b0:	00ca8b33          	add	s6,s5,a2
8000d9b4:	00f72623          	sw	a5,12(a4)
8000d9b8:	00e7a423          	sw	a4,8(a5)
8000d9bc:	e11ff06f          	j	8000d7cc <_realloc_r+0x204>
8000d9c0:	ffc52783          	lw	a5,-4(a0)
8000d9c4:	ffc7f793          	andi	a5,a5,-4
8000d9c8:	00fa0a33          	add	s4,s4,a5
8000d9cc:	014a8b33          	add	s6,s5,s4
8000d9d0:	dfdff06f          	j	8000d7cc <_realloc_r+0x204>
8000d9d4:	00040593          	mv	a1,s0
8000d9d8:	a65ff0ef          	jal	ra,8000d43c <memmove>
8000d9dc:	d19ff06f          	j	8000d6f4 <_realloc_r+0x12c>
8000d9e0:	00cb2783          	lw	a5,12(s6)
8000d9e4:	008b2703          	lw	a4,8(s6)
8000d9e8:	ffca0613          	addi	a2,s4,-4
8000d9ec:	02400693          	li	a3,36
8000d9f0:	00f72623          	sw	a5,12(a4)
8000d9f4:	00e7a423          	sw	a4,8(a5)
8000d9f8:	008c2703          	lw	a4,8(s8)
8000d9fc:	00cc2783          	lw	a5,12(s8)
8000da00:	008c0913          	addi	s2,s8,8
8000da04:	017c0b33          	add	s6,s8,s7
8000da08:	00f72623          	sw	a5,12(a4)
8000da0c:	00e7a423          	sw	a4,8(a5)
8000da10:	04c6e863          	bltu	a3,a2,8000da60 <_realloc_r+0x498>
8000da14:	01300693          	li	a3,19
8000da18:	00042703          	lw	a4,0(s0)
8000da1c:	00090793          	mv	a5,s2
8000da20:	d8c6f6e3          	bgeu	a3,a2,8000d7ac <_realloc_r+0x1e4>
8000da24:	00ec2423          	sw	a4,8(s8)
8000da28:	00442703          	lw	a4,4(s0)
8000da2c:	01b00793          	li	a5,27
8000da30:	00ec2623          	sw	a4,12(s8)
8000da34:	00842703          	lw	a4,8(s0)
8000da38:	d6c7f6e3          	bgeu	a5,a2,8000d7a4 <_realloc_r+0x1dc>
8000da3c:	00ec2823          	sw	a4,16(s8)
8000da40:	00c42703          	lw	a4,12(s0)
8000da44:	02400793          	li	a5,36
8000da48:	00ec2a23          	sw	a4,20(s8)
8000da4c:	01042703          	lw	a4,16(s0)
8000da50:	06f60463          	beq	a2,a5,8000dab8 <_realloc_r+0x4f0>
8000da54:	018c0793          	addi	a5,s8,24
8000da58:	01040413          	addi	s0,s0,16
8000da5c:	d51ff06f          	j	8000d7ac <_realloc_r+0x1e4>
8000da60:	00040593          	mv	a1,s0
8000da64:	00090513          	mv	a0,s2
8000da68:	9d5ff0ef          	jal	ra,8000d43c <memmove>
8000da6c:	00090413          	mv	s0,s2
8000da70:	000b8a13          	mv	s4,s7
8000da74:	000c0a93          	mv	s5,s8
8000da78:	d55ff06f          	j	8000d7cc <_realloc_r+0x204>
8000da7c:	00842703          	lw	a4,8(s0)
8000da80:	00e52423          	sw	a4,8(a0)
8000da84:	00c42703          	lw	a4,12(s0)
8000da88:	00e52623          	sw	a4,12(a0)
8000da8c:	01042683          	lw	a3,16(s0)
8000da90:	04f60263          	beq	a2,a5,8000dad4 <_realloc_r+0x50c>
8000da94:	01040713          	addi	a4,s0,16
8000da98:	01050793          	addi	a5,a0,16
8000da9c:	c45ff06f          	j	8000d6e0 <_realloc_r+0x118>
8000daa0:	00842783          	lw	a5,8(s0)
8000daa4:	00fc2823          	sw	a5,16(s8)
8000daa8:	00c42783          	lw	a5,12(s0)
8000daac:	00fc2a23          	sw	a5,20(s8)
8000dab0:	01042703          	lw	a4,16(s0)
8000dab4:	fad610e3          	bne	a2,a3,8000da54 <_realloc_r+0x48c>
8000dab8:	00ec2c23          	sw	a4,24(s8)
8000dabc:	01442703          	lw	a4,20(s0)
8000dac0:	020c0793          	addi	a5,s8,32
8000dac4:	01840413          	addi	s0,s0,24
8000dac8:	00ec2e23          	sw	a4,28(s8)
8000dacc:	00042703          	lw	a4,0(s0)
8000dad0:	cddff06f          	j	8000d7ac <_realloc_r+0x1e4>
8000dad4:	00d52823          	sw	a3,16(a0)
8000dad8:	01442683          	lw	a3,20(s0)
8000dadc:	01840713          	addi	a4,s0,24
8000dae0:	01850793          	addi	a5,a0,24
8000dae4:	00d52a23          	sw	a3,20(a0)
8000dae8:	01842683          	lw	a3,24(s0)
8000daec:	bf5ff06f          	j	8000d6e0 <_realloc_r+0x118>
8000daf0:	00040593          	mv	a1,s0
8000daf4:	00090513          	mv	a0,s2
8000daf8:	945ff0ef          	jal	ra,8000d43c <memmove>
8000dafc:	e21ff06f          	j	8000d91c <_realloc_r+0x354>
8000db00:	00842783          	lw	a5,8(s0)
8000db04:	00fc2823          	sw	a5,16(s8)
8000db08:	00c42783          	lw	a5,12(s0)
8000db0c:	00fc2a23          	sw	a5,20(s8)
8000db10:	01042703          	lw	a4,16(s0)
8000db14:	00d60863          	beq	a2,a3,8000db24 <_realloc_r+0x55c>
8000db18:	018c0793          	addi	a5,s8,24
8000db1c:	01040413          	addi	s0,s0,16
8000db20:	de9ff06f          	j	8000d908 <_realloc_r+0x340>
8000db24:	00ec2c23          	sw	a4,24(s8)
8000db28:	01442703          	lw	a4,20(s0)
8000db2c:	020c0793          	addi	a5,s8,32
8000db30:	01840413          	addi	s0,s0,24
8000db34:	00ec2e23          	sw	a4,28(s8)
8000db38:	00042703          	lw	a4,0(s0)
8000db3c:	dcdff06f          	j	8000d908 <_realloc_r+0x340>

8000db40 <cleanup_glue>:
8000db40:	ff010113          	addi	sp,sp,-16
8000db44:	00812423          	sw	s0,8(sp)
8000db48:	00058413          	mv	s0,a1
8000db4c:	0005a583          	lw	a1,0(a1)
8000db50:	00912223          	sw	s1,4(sp)
8000db54:	00112623          	sw	ra,12(sp)
8000db58:	00050493          	mv	s1,a0
8000db5c:	00058463          	beqz	a1,8000db64 <cleanup_glue+0x24>
8000db60:	fe1ff0ef          	jal	ra,8000db40 <cleanup_glue>
8000db64:	00040593          	mv	a1,s0
8000db68:	00812403          	lw	s0,8(sp)
8000db6c:	00c12083          	lw	ra,12(sp)
8000db70:	00048513          	mv	a0,s1
8000db74:	00412483          	lw	s1,4(sp)
8000db78:	01010113          	addi	sp,sp,16
8000db7c:	971f506f          	j	800034ec <_free_r>

8000db80 <_reclaim_reent>:
8000db80:	800167b7          	lui	a5,0x80016
8000db84:	99c7a783          	lw	a5,-1636(a5) # 8001599c <heap_end.1814+0xffffffb8>
8000db88:	10a78063          	beq	a5,a0,8000dc88 <_reclaim_reent+0x108>
8000db8c:	04c52583          	lw	a1,76(a0)
8000db90:	fe010113          	addi	sp,sp,-32
8000db94:	00912a23          	sw	s1,20(sp)
8000db98:	00112e23          	sw	ra,28(sp)
8000db9c:	00812c23          	sw	s0,24(sp)
8000dba0:	01212823          	sw	s2,16(sp)
8000dba4:	01312623          	sw	s3,12(sp)
8000dba8:	00050493          	mv	s1,a0
8000dbac:	04058063          	beqz	a1,8000dbec <_reclaim_reent+0x6c>
8000dbb0:	00000913          	li	s2,0
8000dbb4:	08000993          	li	s3,128
8000dbb8:	012587b3          	add	a5,a1,s2
8000dbbc:	0007a403          	lw	s0,0(a5)
8000dbc0:	00040e63          	beqz	s0,8000dbdc <_reclaim_reent+0x5c>
8000dbc4:	00040593          	mv	a1,s0
8000dbc8:	00042403          	lw	s0,0(s0)
8000dbcc:	00048513          	mv	a0,s1
8000dbd0:	91df50ef          	jal	ra,800034ec <_free_r>
8000dbd4:	fe0418e3          	bnez	s0,8000dbc4 <_reclaim_reent+0x44>
8000dbd8:	04c4a583          	lw	a1,76(s1)
8000dbdc:	00490913          	addi	s2,s2,4
8000dbe0:	fd391ce3          	bne	s2,s3,8000dbb8 <_reclaim_reent+0x38>
8000dbe4:	00048513          	mv	a0,s1
8000dbe8:	905f50ef          	jal	ra,800034ec <_free_r>
8000dbec:	0404a583          	lw	a1,64(s1)
8000dbf0:	00058663          	beqz	a1,8000dbfc <_reclaim_reent+0x7c>
8000dbf4:	00048513          	mv	a0,s1
8000dbf8:	8f5f50ef          	jal	ra,800034ec <_free_r>
8000dbfc:	1484a403          	lw	s0,328(s1)
8000dc00:	02040063          	beqz	s0,8000dc20 <_reclaim_reent+0xa0>
8000dc04:	14c48913          	addi	s2,s1,332
8000dc08:	01240c63          	beq	s0,s2,8000dc20 <_reclaim_reent+0xa0>
8000dc0c:	00040593          	mv	a1,s0
8000dc10:	00042403          	lw	s0,0(s0)
8000dc14:	00048513          	mv	a0,s1
8000dc18:	8d5f50ef          	jal	ra,800034ec <_free_r>
8000dc1c:	fe8918e3          	bne	s2,s0,8000dc0c <_reclaim_reent+0x8c>
8000dc20:	0544a583          	lw	a1,84(s1)
8000dc24:	00058663          	beqz	a1,8000dc30 <_reclaim_reent+0xb0>
8000dc28:	00048513          	mv	a0,s1
8000dc2c:	8c1f50ef          	jal	ra,800034ec <_free_r>
8000dc30:	0384a783          	lw	a5,56(s1)
8000dc34:	02078c63          	beqz	a5,8000dc6c <_reclaim_reent+0xec>
8000dc38:	03c4a783          	lw	a5,60(s1)
8000dc3c:	00048513          	mv	a0,s1
8000dc40:	000780e7          	jalr	a5
8000dc44:	2e04a583          	lw	a1,736(s1)
8000dc48:	02058263          	beqz	a1,8000dc6c <_reclaim_reent+0xec>
8000dc4c:	01812403          	lw	s0,24(sp)
8000dc50:	01c12083          	lw	ra,28(sp)
8000dc54:	01012903          	lw	s2,16(sp)
8000dc58:	00c12983          	lw	s3,12(sp)
8000dc5c:	00048513          	mv	a0,s1
8000dc60:	01412483          	lw	s1,20(sp)
8000dc64:	02010113          	addi	sp,sp,32
8000dc68:	ed9ff06f          	j	8000db40 <cleanup_glue>
8000dc6c:	01c12083          	lw	ra,28(sp)
8000dc70:	01812403          	lw	s0,24(sp)
8000dc74:	01412483          	lw	s1,20(sp)
8000dc78:	01012903          	lw	s2,16(sp)
8000dc7c:	00c12983          	lw	s3,12(sp)
8000dc80:	02010113          	addi	sp,sp,32
8000dc84:	00008067          	ret
8000dc88:	00008067          	ret

8000dc8c <__ssprint_r>:
8000dc8c:	00862783          	lw	a5,8(a2)
8000dc90:	fd010113          	addi	sp,sp,-48
8000dc94:	01512a23          	sw	s5,20(sp)
8000dc98:	02112623          	sw	ra,44(sp)
8000dc9c:	02812423          	sw	s0,40(sp)
8000dca0:	02912223          	sw	s1,36(sp)
8000dca4:	03212023          	sw	s2,32(sp)
8000dca8:	01312e23          	sw	s3,28(sp)
8000dcac:	01412c23          	sw	s4,24(sp)
8000dcb0:	01612823          	sw	s6,16(sp)
8000dcb4:	01712623          	sw	s7,12(sp)
8000dcb8:	01812423          	sw	s8,8(sp)
8000dcbc:	00060a93          	mv	s5,a2
8000dcc0:	14078863          	beqz	a5,8000de10 <__ssprint_r+0x184>
8000dcc4:	00050b13          	mv	s6,a0
8000dcc8:	00062983          	lw	s3,0(a2)
8000dccc:	0005a503          	lw	a0,0(a1)
8000dcd0:	0085a483          	lw	s1,8(a1)
8000dcd4:	00058413          	mv	s0,a1
8000dcd8:	0d40006f          	j	8000ddac <__ssprint_r+0x120>
8000dcdc:	00c45783          	lhu	a5,12(s0)
8000dce0:	4807f713          	andi	a4,a5,1152
8000dce4:	08070a63          	beqz	a4,8000dd78 <__ssprint_r+0xec>
8000dce8:	01442683          	lw	a3,20(s0)
8000dcec:	01042583          	lw	a1,16(s0)
8000dcf0:	00190713          	addi	a4,s2,1
8000dcf4:	00169493          	slli	s1,a3,0x1
8000dcf8:	00d486b3          	add	a3,s1,a3
8000dcfc:	01f6d493          	srli	s1,a3,0x1f
8000dd00:	40b50a33          	sub	s4,a0,a1
8000dd04:	00d484b3          	add	s1,s1,a3
8000dd08:	4014d493          	srai	s1,s1,0x1
8000dd0c:	01470733          	add	a4,a4,s4
8000dd10:	00048613          	mv	a2,s1
8000dd14:	00e4f663          	bgeu	s1,a4,8000dd20 <__ssprint_r+0x94>
8000dd18:	00070493          	mv	s1,a4
8000dd1c:	00070613          	mv	a2,a4
8000dd20:	4007f793          	andi	a5,a5,1024
8000dd24:	0a078663          	beqz	a5,8000ddd0 <__ssprint_r+0x144>
8000dd28:	00060593          	mv	a1,a2
8000dd2c:	000b0513          	mv	a0,s6
8000dd30:	a4df80ef          	jal	ra,8000677c <_malloc_r>
8000dd34:	00050c13          	mv	s8,a0
8000dd38:	0a050a63          	beqz	a0,8000ddec <__ssprint_r+0x160>
8000dd3c:	01042583          	lw	a1,16(s0)
8000dd40:	000a0613          	mv	a2,s4
8000dd44:	ddcff0ef          	jal	ra,8000d320 <memcpy>
8000dd48:	00c45783          	lhu	a5,12(s0)
8000dd4c:	b7f7f793          	andi	a5,a5,-1153
8000dd50:	0807e793          	ori	a5,a5,128
8000dd54:	00f41623          	sh	a5,12(s0)
8000dd58:	014c0533          	add	a0,s8,s4
8000dd5c:	41448a33          	sub	s4,s1,s4
8000dd60:	00942a23          	sw	s1,20(s0)
8000dd64:	01442423          	sw	s4,8(s0)
8000dd68:	01842823          	sw	s8,16(s0)
8000dd6c:	00a42023          	sw	a0,0(s0)
8000dd70:	00090493          	mv	s1,s2
8000dd74:	00090a13          	mv	s4,s2
8000dd78:	000a0613          	mv	a2,s4
8000dd7c:	000b8593          	mv	a1,s7
8000dd80:	ebcff0ef          	jal	ra,8000d43c <memmove>
8000dd84:	00842703          	lw	a4,8(s0)
8000dd88:	00042503          	lw	a0,0(s0)
8000dd8c:	008aa783          	lw	a5,8(s5)
8000dd90:	409704b3          	sub	s1,a4,s1
8000dd94:	01450533          	add	a0,a0,s4
8000dd98:	00942423          	sw	s1,8(s0)
8000dd9c:	00a42023          	sw	a0,0(s0)
8000dda0:	41278933          	sub	s2,a5,s2
8000dda4:	012aa423          	sw	s2,8(s5)
8000dda8:	06090463          	beqz	s2,8000de10 <__ssprint_r+0x184>
8000ddac:	0049a903          	lw	s2,4(s3)
8000ddb0:	0009ab83          	lw	s7,0(s3)
8000ddb4:	00048a13          	mv	s4,s1
8000ddb8:	00898993          	addi	s3,s3,8
8000ddbc:	fe0908e3          	beqz	s2,8000ddac <__ssprint_r+0x120>
8000ddc0:	f0997ee3          	bgeu	s2,s1,8000dcdc <__ssprint_r+0x50>
8000ddc4:	00090493          	mv	s1,s2
8000ddc8:	00090a13          	mv	s4,s2
8000ddcc:	fadff06f          	j	8000dd78 <__ssprint_r+0xec>
8000ddd0:	000b0513          	mv	a0,s6
8000ddd4:	ff4ff0ef          	jal	ra,8000d5c8 <_realloc_r>
8000ddd8:	00050c13          	mv	s8,a0
8000dddc:	f6051ee3          	bnez	a0,8000dd58 <__ssprint_r+0xcc>
8000dde0:	01042583          	lw	a1,16(s0)
8000dde4:	000b0513          	mv	a0,s6
8000dde8:	f04f50ef          	jal	ra,800034ec <_free_r>
8000ddec:	00c00793          	li	a5,12
8000ddf0:	00fb2023          	sw	a5,0(s6)
8000ddf4:	00c45783          	lhu	a5,12(s0)
8000ddf8:	fff00513          	li	a0,-1
8000ddfc:	0407e793          	ori	a5,a5,64
8000de00:	00f41623          	sh	a5,12(s0)
8000de04:	000aa423          	sw	zero,8(s5)
8000de08:	000aa223          	sw	zero,4(s5)
8000de0c:	00c0006f          	j	8000de18 <__ssprint_r+0x18c>
8000de10:	000aa223          	sw	zero,4(s5)
8000de14:	00000513          	li	a0,0
8000de18:	02c12083          	lw	ra,44(sp)
8000de1c:	02812403          	lw	s0,40(sp)
8000de20:	02412483          	lw	s1,36(sp)
8000de24:	02012903          	lw	s2,32(sp)
8000de28:	01c12983          	lw	s3,28(sp)
8000de2c:	01812a03          	lw	s4,24(sp)
8000de30:	01412a83          	lw	s5,20(sp)
8000de34:	01012b03          	lw	s6,16(sp)
8000de38:	00c12b83          	lw	s7,12(sp)
8000de3c:	00812c03          	lw	s8,8(sp)
8000de40:	03010113          	addi	sp,sp,48
8000de44:	00008067          	ret

8000de48 <_svfiprintf_r>:
8000de48:	00c5d783          	lhu	a5,12(a1)
8000de4c:	ed010113          	addi	sp,sp,-304
8000de50:	11412c23          	sw	s4,280(sp)
8000de54:	11612823          	sw	s6,272(sp)
8000de58:	11a12023          	sw	s10,256(sp)
8000de5c:	12112623          	sw	ra,300(sp)
8000de60:	12812423          	sw	s0,296(sp)
8000de64:	12912223          	sw	s1,292(sp)
8000de68:	13212023          	sw	s2,288(sp)
8000de6c:	11312e23          	sw	s3,284(sp)
8000de70:	11512a23          	sw	s5,276(sp)
8000de74:	11712623          	sw	s7,268(sp)
8000de78:	11812423          	sw	s8,264(sp)
8000de7c:	11912223          	sw	s9,260(sp)
8000de80:	0fb12e23          	sw	s11,252(sp)
8000de84:	0807f793          	andi	a5,a5,128
8000de88:	00d12623          	sw	a3,12(sp)
8000de8c:	00058a13          	mv	s4,a1
8000de90:	00050b13          	mv	s6,a0
8000de94:	00060d13          	mv	s10,a2
8000de98:	00078663          	beqz	a5,8000dea4 <_svfiprintf_r+0x5c>
8000de9c:	0105a783          	lw	a5,16(a1)
8000dea0:	5e0784e3          	beqz	a5,8000ec88 <_svfiprintf_r+0xe40>
8000dea4:	800157b7          	lui	a5,0x80015
8000dea8:	04c10a93          	addi	s5,sp,76
8000deac:	86c78793          	addi	a5,a5,-1940 # 8001486c <heap_end.1814+0xffffee88>
8000deb0:	80015bb7          	lui	s7,0x80015
8000deb4:	800154b7          	lui	s1,0x80015
8000deb8:	000d0993          	mv	s3,s10
8000debc:	05512023          	sw	s5,64(sp)
8000dec0:	04012423          	sw	zero,72(sp)
8000dec4:	04012223          	sw	zero,68(sp)
8000dec8:	00012a23          	sw	zero,20(sp)
8000decc:	00012c23          	sw	zero,24(sp)
8000ded0:	02012023          	sw	zero,32(sp)
8000ded4:	00012e23          	sw	zero,28(sp)
8000ded8:	00012423          	sw	zero,8(sp)
8000dedc:	00f12823          	sw	a5,16(sp)
8000dee0:	9d8b8b93          	addi	s7,s7,-1576 # 800149d8 <heap_end.1814+0xffffeff4>
8000dee4:	9e848493          	addi	s1,s1,-1560 # 800149e8 <heap_end.1814+0xfffff004>
8000dee8:	000a8d13          	mv	s10,s5
8000deec:	0009c783          	lbu	a5,0(s3)
8000def0:	20078c63          	beqz	a5,8000e108 <_svfiprintf_r+0x2c0>
8000def4:	00098413          	mv	s0,s3
8000def8:	02500693          	li	a3,37
8000defc:	2ad78863          	beq	a5,a3,8000e1ac <_svfiprintf_r+0x364>
8000df00:	00144783          	lbu	a5,1(s0)
8000df04:	00140413          	addi	s0,s0,1
8000df08:	fe079ae3          	bnez	a5,8000defc <_svfiprintf_r+0xb4>
8000df0c:	41340c33          	sub	s8,s0,s3
8000df10:	1f340c63          	beq	s0,s3,8000e108 <_svfiprintf_r+0x2c0>
8000df14:	04812683          	lw	a3,72(sp)
8000df18:	04412783          	lw	a5,68(sp)
8000df1c:	013d2023          	sw	s3,0(s10)
8000df20:	018686b3          	add	a3,a3,s8
8000df24:	00178793          	addi	a5,a5,1
8000df28:	018d2223          	sw	s8,4(s10)
8000df2c:	04d12423          	sw	a3,72(sp)
8000df30:	04f12223          	sw	a5,68(sp)
8000df34:	00700693          	li	a3,7
8000df38:	008d0d13          	addi	s10,s10,8
8000df3c:	28f6c063          	blt	a3,a5,8000e1bc <_svfiprintf_r+0x374>
8000df40:	00812703          	lw	a4,8(sp)
8000df44:	00044783          	lbu	a5,0(s0)
8000df48:	01870733          	add	a4,a4,s8
8000df4c:	00e12423          	sw	a4,8(sp)
8000df50:	1a078c63          	beqz	a5,8000e108 <_svfiprintf_r+0x2c0>
8000df54:	fff00893          	li	a7,-1
8000df58:	00144683          	lbu	a3,1(s0)
8000df5c:	00140993          	addi	s3,s0,1
8000df60:	02010da3          	sb	zero,59(sp)
8000df64:	00012223          	sw	zero,4(sp)
8000df68:	00000913          	li	s2,0
8000df6c:	05a00c13          	li	s8,90
8000df70:	00900c93          	li	s9,9
8000df74:	02a00593          	li	a1,42
8000df78:	00088413          	mv	s0,a7
8000df7c:	00198993          	addi	s3,s3,1
8000df80:	fe068793          	addi	a5,a3,-32
8000df84:	04fc6863          	bltu	s8,a5,8000dfd4 <_svfiprintf_r+0x18c>
8000df88:	01012703          	lw	a4,16(sp)
8000df8c:	00279793          	slli	a5,a5,0x2
8000df90:	00e787b3          	add	a5,a5,a4
8000df94:	0007a783          	lw	a5,0(a5)
8000df98:	00078067          	jr	a5
8000df9c:	00012223          	sw	zero,4(sp)
8000dfa0:	fd068793          	addi	a5,a3,-48
8000dfa4:	00412603          	lw	a2,4(sp)
8000dfa8:	0009c683          	lbu	a3,0(s3)
8000dfac:	00198993          	addi	s3,s3,1
8000dfb0:	00261713          	slli	a4,a2,0x2
8000dfb4:	00c70733          	add	a4,a4,a2
8000dfb8:	00171713          	slli	a4,a4,0x1
8000dfbc:	00e787b3          	add	a5,a5,a4
8000dfc0:	00f12223          	sw	a5,4(sp)
8000dfc4:	fd068793          	addi	a5,a3,-48
8000dfc8:	fcfcfee3          	bgeu	s9,a5,8000dfa4 <_svfiprintf_r+0x15c>
8000dfcc:	fe068793          	addi	a5,a3,-32
8000dfd0:	fafc7ce3          	bgeu	s8,a5,8000df88 <_svfiprintf_r+0x140>
8000dfd4:	12068a63          	beqz	a3,8000e108 <_svfiprintf_r+0x2c0>
8000dfd8:	08d10623          	sb	a3,140(sp)
8000dfdc:	02010da3          	sb	zero,59(sp)
8000dfe0:	00100c13          	li	s8,1
8000dfe4:	00100c93          	li	s9,1
8000dfe8:	08c10413          	addi	s0,sp,140
8000dfec:	00000893          	li	a7,0
8000dff0:	00297f13          	andi	t5,s2,2
8000dff4:	000f0463          	beqz	t5,8000dffc <_svfiprintf_r+0x1b4>
8000dff8:	002c0c13          	addi	s8,s8,2
8000dffc:	08497e93          	andi	t4,s2,132
8000e000:	04812783          	lw	a5,72(sp)
8000e004:	04412603          	lw	a2,68(sp)
8000e008:	000e9863          	bnez	t4,8000e018 <_svfiprintf_r+0x1d0>
8000e00c:	00412703          	lw	a4,4(sp)
8000e010:	41870db3          	sub	s11,a4,s8
8000e014:	7bb04a63          	bgtz	s11,8000e7c8 <_svfiprintf_r+0x980>
8000e018:	03b14503          	lbu	a0,59(sp)
8000e01c:	00160593          	addi	a1,a2,1
8000e020:	008d0693          	addi	a3,s10,8
8000e024:	04050063          	beqz	a0,8000e064 <_svfiprintf_r+0x21c>
8000e028:	03b10513          	addi	a0,sp,59
8000e02c:	00178793          	addi	a5,a5,1
8000e030:	00ad2023          	sw	a0,0(s10)
8000e034:	00100513          	li	a0,1
8000e038:	00ad2223          	sw	a0,4(s10)
8000e03c:	04f12423          	sw	a5,72(sp)
8000e040:	04b12223          	sw	a1,68(sp)
8000e044:	00700513          	li	a0,7
8000e048:	0ab540e3          	blt	a0,a1,8000e8e8 <_svfiprintf_r+0xaa0>
8000e04c:	00260f93          	addi	t6,a2,2
8000e050:	010d0513          	addi	a0,s10,16
8000e054:	00058613          	mv	a2,a1
8000e058:	00068d13          	mv	s10,a3
8000e05c:	000f8593          	mv	a1,t6
8000e060:	00050693          	mv	a3,a0
8000e064:	020f0c63          	beqz	t5,8000e09c <_svfiprintf_r+0x254>
8000e068:	03c10613          	addi	a2,sp,60
8000e06c:	00278793          	addi	a5,a5,2
8000e070:	00cd2023          	sw	a2,0(s10)
8000e074:	00200613          	li	a2,2
8000e078:	00cd2223          	sw	a2,4(s10)
8000e07c:	04f12423          	sw	a5,72(sp)
8000e080:	04b12223          	sw	a1,68(sp)
8000e084:	00700713          	li	a4,7
8000e088:	0ab742e3          	blt	a4,a1,8000e92c <_svfiprintf_r+0xae4>
8000e08c:	00058613          	mv	a2,a1
8000e090:	00068d13          	mv	s10,a3
8000e094:	00158593          	addi	a1,a1,1
8000e098:	00868693          	addi	a3,a3,8
8000e09c:	08000513          	li	a0,128
8000e0a0:	54ae8c63          	beq	t4,a0,8000e5f8 <_svfiprintf_r+0x7b0>
8000e0a4:	41988db3          	sub	s11,a7,s9
8000e0a8:	63b04463          	bgtz	s11,8000e6d0 <_svfiprintf_r+0x888>
8000e0ac:	00fc87b3          	add	a5,s9,a5
8000e0b0:	008d2023          	sw	s0,0(s10)
8000e0b4:	019d2223          	sw	s9,4(s10)
8000e0b8:	04f12423          	sw	a5,72(sp)
8000e0bc:	04b12223          	sw	a1,68(sp)
8000e0c0:	00700713          	li	a4,7
8000e0c4:	6cb74263          	blt	a4,a1,8000e788 <_svfiprintf_r+0x940>
8000e0c8:	00497313          	andi	t1,s2,4
8000e0cc:	00030863          	beqz	t1,8000e0dc <_svfiprintf_r+0x294>
8000e0d0:	00412703          	lw	a4,4(sp)
8000e0d4:	41870cb3          	sub	s9,a4,s8
8000e0d8:	099048e3          	bgtz	s9,8000e968 <_svfiprintf_r+0xb20>
8000e0dc:	00412403          	lw	s0,4(sp)
8000e0e0:	01845463          	bge	s0,s8,8000e0e8 <_svfiprintf_r+0x2a0>
8000e0e4:	000c0413          	mv	s0,s8
8000e0e8:	00812703          	lw	a4,8(sp)
8000e0ec:	00870733          	add	a4,a4,s0
8000e0f0:	00e12423          	sw	a4,8(sp)
8000e0f4:	6a079a63          	bnez	a5,8000e7a8 <_svfiprintf_r+0x960>
8000e0f8:	0009c783          	lbu	a5,0(s3)
8000e0fc:	04012223          	sw	zero,68(sp)
8000e100:	000a8d13          	mv	s10,s5
8000e104:	de0798e3          	bnez	a5,8000def4 <_svfiprintf_r+0xac>
8000e108:	04812783          	lw	a5,72(sp)
8000e10c:	56079ee3          	bnez	a5,8000ee88 <_svfiprintf_r+0x1040>
8000e110:	00ca5783          	lhu	a5,12(s4)
8000e114:	0407f793          	andi	a5,a5,64
8000e118:	5a0794e3          	bnez	a5,8000eec0 <_svfiprintf_r+0x1078>
8000e11c:	12c12083          	lw	ra,300(sp)
8000e120:	12812403          	lw	s0,296(sp)
8000e124:	00812503          	lw	a0,8(sp)
8000e128:	12412483          	lw	s1,292(sp)
8000e12c:	12012903          	lw	s2,288(sp)
8000e130:	11c12983          	lw	s3,284(sp)
8000e134:	11812a03          	lw	s4,280(sp)
8000e138:	11412a83          	lw	s5,276(sp)
8000e13c:	11012b03          	lw	s6,272(sp)
8000e140:	10c12b83          	lw	s7,268(sp)
8000e144:	10812c03          	lw	s8,264(sp)
8000e148:	10412c83          	lw	s9,260(sp)
8000e14c:	10012d03          	lw	s10,256(sp)
8000e150:	0fc12d83          	lw	s11,252(sp)
8000e154:	13010113          	addi	sp,sp,304
8000e158:	00008067          	ret
8000e15c:	000b0513          	mv	a0,s6
8000e160:	b74f80ef          	jal	ra,800064d4 <_localeconv_r>
8000e164:	00452783          	lw	a5,4(a0)
8000e168:	00078513          	mv	a0,a5
8000e16c:	00f12e23          	sw	a5,28(sp)
8000e170:	ec0fa0ef          	jal	ra,80008830 <strlen>
8000e174:	00050793          	mv	a5,a0
8000e178:	000b0513          	mv	a0,s6
8000e17c:	00078d93          	mv	s11,a5
8000e180:	02f12023          	sw	a5,32(sp)
8000e184:	b50f80ef          	jal	ra,800064d4 <_localeconv_r>
8000e188:	00852783          	lw	a5,8(a0)
8000e18c:	02a00593          	li	a1,42
8000e190:	00f12c23          	sw	a5,24(sp)
8000e194:	1e0d98e3          	bnez	s11,8000eb84 <_svfiprintf_r+0xd3c>
8000e198:	0009c683          	lbu	a3,0(s3)
8000e19c:	de1ff06f          	j	8000df7c <_svfiprintf_r+0x134>
8000e1a0:	0009c683          	lbu	a3,0(s3)
8000e1a4:	02096913          	ori	s2,s2,32
8000e1a8:	dd5ff06f          	j	8000df7c <_svfiprintf_r+0x134>
8000e1ac:	41340c33          	sub	s8,s0,s3
8000e1b0:	d73412e3          	bne	s0,s3,8000df14 <_svfiprintf_r+0xcc>
8000e1b4:	00044783          	lbu	a5,0(s0)
8000e1b8:	d99ff06f          	j	8000df50 <_svfiprintf_r+0x108>
8000e1bc:	04010613          	addi	a2,sp,64
8000e1c0:	000a0593          	mv	a1,s4
8000e1c4:	000b0513          	mv	a0,s6
8000e1c8:	ac5ff0ef          	jal	ra,8000dc8c <__ssprint_r>
8000e1cc:	f40512e3          	bnez	a0,8000e110 <_svfiprintf_r+0x2c8>
8000e1d0:	000a8d13          	mv	s10,s5
8000e1d4:	d6dff06f          	j	8000df40 <_svfiprintf_r+0xf8>
8000e1d8:	00c12783          	lw	a5,12(sp)
8000e1dc:	00040893          	mv	a7,s0
8000e1e0:	02010da3          	sb	zero,59(sp)
8000e1e4:	0007a403          	lw	s0,0(a5)
8000e1e8:	00478d93          	addi	s11,a5,4
8000e1ec:	380404e3          	beqz	s0,8000ed74 <_svfiprintf_r+0xf2c>
8000e1f0:	fff00793          	li	a5,-1
8000e1f4:	26f88ee3          	beq	a7,a5,8000ec70 <_svfiprintf_r+0xe28>
8000e1f8:	00088613          	mv	a2,a7
8000e1fc:	00000593          	li	a1,0
8000e200:	00040513          	mv	a0,s0
8000e204:	01112623          	sw	a7,12(sp)
8000e208:	da1f80ef          	jal	ra,80006fa8 <memchr>
8000e20c:	00c12883          	lw	a7,12(sp)
8000e210:	480506e3          	beqz	a0,8000ee9c <_svfiprintf_r+0x1054>
8000e214:	40850cb3          	sub	s9,a0,s0
8000e218:	01b12623          	sw	s11,12(sp)
8000e21c:	00000893          	li	a7,0
8000e220:	0940006f          	j	8000e2b4 <_svfiprintf_r+0x46c>
8000e224:	00c12703          	lw	a4,12(sp)
8000e228:	02010da3          	sb	zero,59(sp)
8000e22c:	00100c13          	li	s8,1
8000e230:	00072783          	lw	a5,0(a4)
8000e234:	00470713          	addi	a4,a4,4
8000e238:	00e12623          	sw	a4,12(sp)
8000e23c:	08f10623          	sb	a5,140(sp)
8000e240:	00100c93          	li	s9,1
8000e244:	08c10413          	addi	s0,sp,140
8000e248:	da5ff06f          	j	8000dfec <_svfiprintf_r+0x1a4>
8000e24c:	02097793          	andi	a5,s2,32
8000e250:	00040893          	mv	a7,s0
8000e254:	0e078e63          	beqz	a5,8000e350 <_svfiprintf_r+0x508>
8000e258:	00c12783          	lw	a5,12(sp)
8000e25c:	00778793          	addi	a5,a5,7
8000e260:	ff87f793          	andi	a5,a5,-8
8000e264:	0047a683          	lw	a3,4(a5)
8000e268:	0007ac83          	lw	s9,0(a5)
8000e26c:	00878793          	addi	a5,a5,8
8000e270:	00f12623          	sw	a5,12(sp)
8000e274:	00068c13          	mv	s8,a3
8000e278:	1006c463          	bltz	a3,8000e380 <_svfiprintf_r+0x538>
8000e27c:	fff00693          	li	a3,-1
8000e280:	00090d93          	mv	s11,s2
8000e284:	00d88863          	beq	a7,a3,8000e294 <_svfiprintf_r+0x44c>
8000e288:	018ce6b3          	or	a3,s9,s8
8000e28c:	f7f97d93          	andi	s11,s2,-129
8000e290:	76068e63          	beqz	a3,8000ea0c <_svfiprintf_r+0xbc4>
8000e294:	000c1ce3          	bnez	s8,8000eaac <_svfiprintf_r+0xc64>
8000e298:	00900693          	li	a3,9
8000e29c:	0196e8e3          	bltu	a3,s9,8000eaac <_svfiprintf_r+0xc64>
8000e2a0:	030c8793          	addi	a5,s9,48
8000e2a4:	0ef107a3          	sb	a5,239(sp)
8000e2a8:	000d8913          	mv	s2,s11
8000e2ac:	00100c93          	li	s9,1
8000e2b0:	0ef10413          	addi	s0,sp,239
8000e2b4:	00088c13          	mv	s8,a7
8000e2b8:	0198d463          	bge	a7,s9,8000e2c0 <_svfiprintf_r+0x478>
8000e2bc:	000c8c13          	mv	s8,s9
8000e2c0:	03b14783          	lbu	a5,59(sp)
8000e2c4:	00f037b3          	snez	a5,a5
8000e2c8:	00fc0c33          	add	s8,s8,a5
8000e2cc:	d25ff06f          	j	8000dff0 <_svfiprintf_r+0x1a8>
8000e2d0:	00040893          	mv	a7,s0
8000e2d4:	01096913          	ori	s2,s2,16
8000e2d8:	02097793          	andi	a5,s2,32
8000e2dc:	74078463          	beqz	a5,8000ea24 <_svfiprintf_r+0xbdc>
8000e2e0:	00c12783          	lw	a5,12(sp)
8000e2e4:	00778793          	addi	a5,a5,7
8000e2e8:	ff87f793          	andi	a5,a5,-8
8000e2ec:	0007ac83          	lw	s9,0(a5)
8000e2f0:	0047ac03          	lw	s8,4(a5)
8000e2f4:	00878793          	addi	a5,a5,8
8000e2f8:	00f12623          	sw	a5,12(sp)
8000e2fc:	bff97d93          	andi	s11,s2,-1025
8000e300:	00000693          	li	a3,0
8000e304:	02010da3          	sb	zero,59(sp)
8000e308:	fff00613          	li	a2,-1
8000e30c:	08c88e63          	beq	a7,a2,8000e3a8 <_svfiprintf_r+0x560>
8000e310:	018ce633          	or	a2,s9,s8
8000e314:	f7fdf913          	andi	s2,s11,-129
8000e318:	4a061463          	bnez	a2,8000e7c0 <_svfiprintf_r+0x978>
8000e31c:	28089263          	bnez	a7,8000e5a0 <_svfiprintf_r+0x758>
8000e320:	6e069a63          	bnez	a3,8000ea14 <_svfiprintf_r+0xbcc>
8000e324:	001dfc93          	andi	s9,s11,1
8000e328:	0f010413          	addi	s0,sp,240
8000e32c:	f80c84e3          	beqz	s9,8000e2b4 <_svfiprintf_r+0x46c>
8000e330:	03000793          	li	a5,48
8000e334:	0ef107a3          	sb	a5,239(sp)
8000e338:	0ef10413          	addi	s0,sp,239
8000e33c:	f79ff06f          	j	8000e2b4 <_svfiprintf_r+0x46c>
8000e340:	01096913          	ori	s2,s2,16
8000e344:	02097793          	andi	a5,s2,32
8000e348:	00040893          	mv	a7,s0
8000e34c:	f00796e3          	bnez	a5,8000e258 <_svfiprintf_r+0x410>
8000e350:	00c12703          	lw	a4,12(sp)
8000e354:	01097793          	andi	a5,s2,16
8000e358:	00470693          	addi	a3,a4,4
8000e35c:	040792e3          	bnez	a5,8000eba0 <_svfiprintf_r+0xd58>
8000e360:	04097793          	andi	a5,s2,64
8000e364:	260786e3          	beqz	a5,8000edd0 <_svfiprintf_r+0xf88>
8000e368:	00c12783          	lw	a5,12(sp)
8000e36c:	00d12623          	sw	a3,12(sp)
8000e370:	00079c83          	lh	s9,0(a5)
8000e374:	41fcdc13          	srai	s8,s9,0x1f
8000e378:	000c0693          	mv	a3,s8
8000e37c:	f006d0e3          	bgez	a3,8000e27c <_svfiprintf_r+0x434>
8000e380:	019036b3          	snez	a3,s9
8000e384:	41800eb3          	neg	t4,s8
8000e388:	40de8c33          	sub	s8,t4,a3
8000e38c:	02d00693          	li	a3,45
8000e390:	02d10da3          	sb	a3,59(sp)
8000e394:	fff00613          	li	a2,-1
8000e398:	41900cb3          	neg	s9,s9
8000e39c:	00090d93          	mv	s11,s2
8000e3a0:	00100693          	li	a3,1
8000e3a4:	f6c896e3          	bne	a7,a2,8000e310 <_svfiprintf_r+0x4c8>
8000e3a8:	00100613          	li	a2,1
8000e3ac:	eec684e3          	beq	a3,a2,8000e294 <_svfiprintf_r+0x44c>
8000e3b0:	00200613          	li	a2,2
8000e3b4:	20c68063          	beq	a3,a2,8000e5b4 <_svfiprintf_r+0x76c>
8000e3b8:	0f010413          	addi	s0,sp,240
8000e3bc:	01dc1793          	slli	a5,s8,0x1d
8000e3c0:	007cf693          	andi	a3,s9,7
8000e3c4:	003cdc93          	srli	s9,s9,0x3
8000e3c8:	03068693          	addi	a3,a3,48
8000e3cc:	0197ecb3          	or	s9,a5,s9
8000e3d0:	003c5c13          	srli	s8,s8,0x3
8000e3d4:	fed40fa3          	sb	a3,-1(s0)
8000e3d8:	018ce7b3          	or	a5,s9,s8
8000e3dc:	00040593          	mv	a1,s0
8000e3e0:	fff40413          	addi	s0,s0,-1
8000e3e4:	fc079ce3          	bnez	a5,8000e3bc <_svfiprintf_r+0x574>
8000e3e8:	001df793          	andi	a5,s11,1
8000e3ec:	1e078e63          	beqz	a5,8000e5e8 <_svfiprintf_r+0x7a0>
8000e3f0:	03000793          	li	a5,48
8000e3f4:	1ef68a63          	beq	a3,a5,8000e5e8 <_svfiprintf_r+0x7a0>
8000e3f8:	ffe58593          	addi	a1,a1,-2
8000e3fc:	fef40fa3          	sb	a5,-1(s0)
8000e400:	0f010793          	addi	a5,sp,240
8000e404:	40b78cb3          	sub	s9,a5,a1
8000e408:	000d8913          	mv	s2,s11
8000e40c:	00058413          	mv	s0,a1
8000e410:	ea5ff06f          	j	8000e2b4 <_svfiprintf_r+0x46c>
8000e414:	00040893          	mv	a7,s0
8000e418:	01096d93          	ori	s11,s2,16
8000e41c:	020df793          	andi	a5,s11,32
8000e420:	62078863          	beqz	a5,8000ea50 <_svfiprintf_r+0xc08>
8000e424:	00c12783          	lw	a5,12(sp)
8000e428:	00100693          	li	a3,1
8000e42c:	00778913          	addi	s2,a5,7
8000e430:	ff897913          	andi	s2,s2,-8
8000e434:	00890793          	addi	a5,s2,8
8000e438:	00092c83          	lw	s9,0(s2)
8000e43c:	00492c03          	lw	s8,4(s2)
8000e440:	00f12623          	sw	a5,12(sp)
8000e444:	ec1ff06f          	j	8000e304 <_svfiprintf_r+0x4bc>
8000e448:	00c12783          	lw	a5,12(sp)
8000e44c:	ffff86b7          	lui	a3,0xffff8
8000e450:	8306c693          	xori	a3,a3,-2000
8000e454:	0007ac83          	lw	s9,0(a5)
8000e458:	00478793          	addi	a5,a5,4
8000e45c:	00f12623          	sw	a5,12(sp)
8000e460:	800147b7          	lui	a5,0x80014
8000e464:	e3478793          	addi	a5,a5,-460 # 80013e34 <heap_end.1814+0xffffe450>
8000e468:	02d11e23          	sh	a3,60(sp)
8000e46c:	00040893          	mv	a7,s0
8000e470:	00000c13          	li	s8,0
8000e474:	00296d93          	ori	s11,s2,2
8000e478:	00f12a23          	sw	a5,20(sp)
8000e47c:	00200693          	li	a3,2
8000e480:	e85ff06f          	j	8000e304 <_svfiprintf_r+0x4bc>
8000e484:	0009c683          	lbu	a3,0(s3)
8000e488:	08096913          	ori	s2,s2,128
8000e48c:	af1ff06f          	j	8000df7c <_svfiprintf_r+0x134>
8000e490:	0009c683          	lbu	a3,0(s3)
8000e494:	00198713          	addi	a4,s3,1
8000e498:	22b68ae3          	beq	a3,a1,8000eecc <_svfiprintf_r+0x1084>
8000e49c:	fd068793          	addi	a5,a3,-48 # ffff7fd0 <heap_end.1814+0x7ffe25ec>
8000e4a0:	00070993          	mv	s3,a4
8000e4a4:	00000413          	li	s0,0
8000e4a8:	acfcece3          	bltu	s9,a5,8000df80 <_svfiprintf_r+0x138>
8000e4ac:	0009c683          	lbu	a3,0(s3)
8000e4b0:	00241713          	slli	a4,s0,0x2
8000e4b4:	008708b3          	add	a7,a4,s0
8000e4b8:	00189893          	slli	a7,a7,0x1
8000e4bc:	00f88433          	add	s0,a7,a5
8000e4c0:	fd068793          	addi	a5,a3,-48
8000e4c4:	00198993          	addi	s3,s3,1
8000e4c8:	fefcf2e3          	bgeu	s9,a5,8000e4ac <_svfiprintf_r+0x664>
8000e4cc:	ab5ff06f          	j	8000df80 <_svfiprintf_r+0x138>
8000e4d0:	0009c683          	lbu	a3,0(s3)
8000e4d4:	00496913          	ori	s2,s2,4
8000e4d8:	aa5ff06f          	j	8000df7c <_svfiprintf_r+0x134>
8000e4dc:	02b00793          	li	a5,43
8000e4e0:	0009c683          	lbu	a3,0(s3)
8000e4e4:	02f10da3          	sb	a5,59(sp)
8000e4e8:	a95ff06f          	j	8000df7c <_svfiprintf_r+0x134>
8000e4ec:	00c12703          	lw	a4,12(sp)
8000e4f0:	0009c683          	lbu	a3,0(s3)
8000e4f4:	00072783          	lw	a5,0(a4)
8000e4f8:	00470713          	addi	a4,a4,4
8000e4fc:	00e12623          	sw	a4,12(sp)
8000e500:	00f12223          	sw	a5,4(sp)
8000e504:	a607dce3          	bgez	a5,8000df7c <_svfiprintf_r+0x134>
8000e508:	40f007b3          	neg	a5,a5
8000e50c:	00f12223          	sw	a5,4(sp)
8000e510:	00496913          	ori	s2,s2,4
8000e514:	a69ff06f          	j	8000df7c <_svfiprintf_r+0x134>
8000e518:	0009c683          	lbu	a3,0(s3)
8000e51c:	00196913          	ori	s2,s2,1
8000e520:	a5dff06f          	j	8000df7c <_svfiprintf_r+0x134>
8000e524:	03b14783          	lbu	a5,59(sp)
8000e528:	0009c683          	lbu	a3,0(s3)
8000e52c:	a40798e3          	bnez	a5,8000df7c <_svfiprintf_r+0x134>
8000e530:	02000793          	li	a5,32
8000e534:	02f10da3          	sb	a5,59(sp)
8000e538:	a45ff06f          	j	8000df7c <_svfiprintf_r+0x134>
8000e53c:	0009c683          	lbu	a3,0(s3)
8000e540:	06800793          	li	a5,104
8000e544:	7ef68e63          	beq	a3,a5,8000ed40 <_svfiprintf_r+0xef8>
8000e548:	04096913          	ori	s2,s2,64
8000e54c:	a31ff06f          	j	8000df7c <_svfiprintf_r+0x134>
8000e550:	00c12703          	lw	a4,12(sp)
8000e554:	02097793          	andi	a5,s2,32
8000e558:	00072683          	lw	a3,0(a4)
8000e55c:	00470713          	addi	a4,a4,4
8000e560:	00e12623          	sw	a4,12(sp)
8000e564:	5e079c63          	bnez	a5,8000eb5c <_svfiprintf_r+0xd14>
8000e568:	01097793          	andi	a5,s2,16
8000e56c:	7e079e63          	bnez	a5,8000ed68 <_svfiprintf_r+0xf20>
8000e570:	04097793          	andi	a5,s2,64
8000e574:	100794e3          	bnez	a5,8000ee7c <_svfiprintf_r+0x1034>
8000e578:	20097313          	andi	t1,s2,512
8000e57c:	7e030663          	beqz	t1,8000ed68 <_svfiprintf_r+0xf20>
8000e580:	00812783          	lw	a5,8(sp)
8000e584:	00f68023          	sb	a5,0(a3)
8000e588:	965ff06f          	j	8000deec <_svfiprintf_r+0xa4>
8000e58c:	0009c683          	lbu	a3,0(s3)
8000e590:	06c00793          	li	a5,108
8000e594:	7af68e63          	beq	a3,a5,8000ed50 <_svfiprintf_r+0xf08>
8000e598:	01096913          	ori	s2,s2,16
8000e59c:	9e1ff06f          	j	8000df7c <_svfiprintf_r+0x134>
8000e5a0:	00100613          	li	a2,1
8000e5a4:	10c684e3          	beq	a3,a2,8000eeac <_svfiprintf_r+0x1064>
8000e5a8:	00200613          	li	a2,2
8000e5ac:	00090d93          	mv	s11,s2
8000e5b0:	e0c694e3          	bne	a3,a2,8000e3b8 <_svfiprintf_r+0x570>
8000e5b4:	01412683          	lw	a3,20(sp)
8000e5b8:	0f010413          	addi	s0,sp,240
8000e5bc:	00fcf793          	andi	a5,s9,15
8000e5c0:	00f687b3          	add	a5,a3,a5
8000e5c4:	0007c703          	lbu	a4,0(a5)
8000e5c8:	004cdc93          	srli	s9,s9,0x4
8000e5cc:	01cc1793          	slli	a5,s8,0x1c
8000e5d0:	0197ecb3          	or	s9,a5,s9
8000e5d4:	004c5c13          	srli	s8,s8,0x4
8000e5d8:	fee40fa3          	sb	a4,-1(s0)
8000e5dc:	018ce7b3          	or	a5,s9,s8
8000e5e0:	fff40413          	addi	s0,s0,-1
8000e5e4:	fc079ce3          	bnez	a5,8000e5bc <_svfiprintf_r+0x774>
8000e5e8:	0f010793          	addi	a5,sp,240
8000e5ec:	40878cb3          	sub	s9,a5,s0
8000e5f0:	000d8913          	mv	s2,s11
8000e5f4:	cc1ff06f          	j	8000e2b4 <_svfiprintf_r+0x46c>
8000e5f8:	00412703          	lw	a4,4(sp)
8000e5fc:	41870db3          	sub	s11,a4,s8
8000e600:	abb052e3          	blez	s11,8000e0a4 <_svfiprintf_r+0x25c>
8000e604:	01000513          	li	a0,16
8000e608:	0bb556e3          	bge	a0,s11,8000eeb4 <_svfiprintf_r+0x106c>
8000e60c:	02812223          	sw	s0,36(sp)
8000e610:	01000693          	li	a3,16
8000e614:	000a0413          	mv	s0,s4
8000e618:	00700e93          	li	t4,7
8000e61c:	000d8a13          	mv	s4,s11
8000e620:	00098d93          	mv	s11,s3
8000e624:	00088993          	mv	s3,a7
8000e628:	00c0006f          	j	8000e634 <_svfiprintf_r+0x7ec>
8000e62c:	ff0a0a13          	addi	s4,s4,-16
8000e630:	0546da63          	bge	a3,s4,8000e684 <_svfiprintf_r+0x83c>
8000e634:	01078793          	addi	a5,a5,16
8000e638:	00160613          	addi	a2,a2,1
8000e63c:	009d2023          	sw	s1,0(s10)
8000e640:	00dd2223          	sw	a3,4(s10)
8000e644:	04f12423          	sw	a5,72(sp)
8000e648:	04c12223          	sw	a2,68(sp)
8000e64c:	008d0d13          	addi	s10,s10,8
8000e650:	fccedee3          	bge	t4,a2,8000e62c <_svfiprintf_r+0x7e4>
8000e654:	04010613          	addi	a2,sp,64
8000e658:	00040593          	mv	a1,s0
8000e65c:	000b0513          	mv	a0,s6
8000e660:	e2cff0ef          	jal	ra,8000dc8c <__ssprint_r>
8000e664:	6e051e63          	bnez	a0,8000ed60 <_svfiprintf_r+0xf18>
8000e668:	01000693          	li	a3,16
8000e66c:	ff0a0a13          	addi	s4,s4,-16
8000e670:	04812783          	lw	a5,72(sp)
8000e674:	04412603          	lw	a2,68(sp)
8000e678:	000a8d13          	mv	s10,s5
8000e67c:	00700e93          	li	t4,7
8000e680:	fb46cae3          	blt	a3,s4,8000e634 <_svfiprintf_r+0x7ec>
8000e684:	00098893          	mv	a7,s3
8000e688:	000d8993          	mv	s3,s11
8000e68c:	000a0d93          	mv	s11,s4
8000e690:	00040a13          	mv	s4,s0
8000e694:	02412403          	lw	s0,36(sp)
8000e698:	00160613          	addi	a2,a2,1
8000e69c:	008d0513          	addi	a0,s10,8
8000e6a0:	01b787b3          	add	a5,a5,s11
8000e6a4:	009d2023          	sw	s1,0(s10)
8000e6a8:	01bd2223          	sw	s11,4(s10)
8000e6ac:	04f12423          	sw	a5,72(sp)
8000e6b0:	04c12223          	sw	a2,68(sp)
8000e6b4:	00700713          	li	a4,7
8000e6b8:	64c74a63          	blt	a4,a2,8000ed0c <_svfiprintf_r+0xec4>
8000e6bc:	41988db3          	sub	s11,a7,s9
8000e6c0:	00160593          	addi	a1,a2,1
8000e6c4:	00850693          	addi	a3,a0,8
8000e6c8:	00050d13          	mv	s10,a0
8000e6cc:	9fb050e3          	blez	s11,8000e0ac <_svfiprintf_r+0x264>
8000e6d0:	01000513          	li	a0,16
8000e6d4:	73b55e63          	bge	a0,s11,8000ee10 <_svfiprintf_r+0xfc8>
8000e6d8:	01000693          	li	a3,16
8000e6dc:	00700893          	li	a7,7
8000e6e0:	00c0006f          	j	8000e6ec <_svfiprintf_r+0x8a4>
8000e6e4:	ff0d8d93          	addi	s11,s11,-16
8000e6e8:	05b6da63          	bge	a3,s11,8000e73c <_svfiprintf_r+0x8f4>
8000e6ec:	01078793          	addi	a5,a5,16
8000e6f0:	00160613          	addi	a2,a2,1
8000e6f4:	009d2023          	sw	s1,0(s10)
8000e6f8:	00dd2223          	sw	a3,4(s10)
8000e6fc:	04f12423          	sw	a5,72(sp)
8000e700:	04c12223          	sw	a2,68(sp)
8000e704:	008d0d13          	addi	s10,s10,8
8000e708:	fcc8dee3          	bge	a7,a2,8000e6e4 <_svfiprintf_r+0x89c>
8000e70c:	04010613          	addi	a2,sp,64
8000e710:	000a0593          	mv	a1,s4
8000e714:	000b0513          	mv	a0,s6
8000e718:	d74ff0ef          	jal	ra,8000dc8c <__ssprint_r>
8000e71c:	9e051ae3          	bnez	a0,8000e110 <_svfiprintf_r+0x2c8>
8000e720:	01000693          	li	a3,16
8000e724:	ff0d8d93          	addi	s11,s11,-16
8000e728:	04812783          	lw	a5,72(sp)
8000e72c:	04412603          	lw	a2,68(sp)
8000e730:	000a8d13          	mv	s10,s5
8000e734:	00700893          	li	a7,7
8000e738:	fbb6cae3          	blt	a3,s11,8000e6ec <_svfiprintf_r+0x8a4>
8000e73c:	00160593          	addi	a1,a2,1
8000e740:	008d0613          	addi	a2,s10,8
8000e744:	01b787b3          	add	a5,a5,s11
8000e748:	009d2023          	sw	s1,0(s10)
8000e74c:	01bd2223          	sw	s11,4(s10)
8000e750:	04f12423          	sw	a5,72(sp)
8000e754:	04b12223          	sw	a1,68(sp)
8000e758:	00700713          	li	a4,7
8000e75c:	32b74263          	blt	a4,a1,8000ea80 <_svfiprintf_r+0xc38>
8000e760:	00060d13          	mv	s10,a2
8000e764:	00158593          	addi	a1,a1,1
8000e768:	00fc87b3          	add	a5,s9,a5
8000e76c:	008d2023          	sw	s0,0(s10)
8000e770:	019d2223          	sw	s9,4(s10)
8000e774:	04f12423          	sw	a5,72(sp)
8000e778:	04b12223          	sw	a1,68(sp)
8000e77c:	00700713          	li	a4,7
8000e780:	00860693          	addi	a3,a2,8
8000e784:	94b752e3          	bge	a4,a1,8000e0c8 <_svfiprintf_r+0x280>
8000e788:	04010613          	addi	a2,sp,64
8000e78c:	000a0593          	mv	a1,s4
8000e790:	000b0513          	mv	a0,s6
8000e794:	cf8ff0ef          	jal	ra,8000dc8c <__ssprint_r>
8000e798:	96051ce3          	bnez	a0,8000e110 <_svfiprintf_r+0x2c8>
8000e79c:	04812783          	lw	a5,72(sp)
8000e7a0:	000a8693          	mv	a3,s5
8000e7a4:	925ff06f          	j	8000e0c8 <_svfiprintf_r+0x280>
8000e7a8:	04010613          	addi	a2,sp,64
8000e7ac:	000a0593          	mv	a1,s4
8000e7b0:	000b0513          	mv	a0,s6
8000e7b4:	cd8ff0ef          	jal	ra,8000dc8c <__ssprint_r>
8000e7b8:	940500e3          	beqz	a0,8000e0f8 <_svfiprintf_r+0x2b0>
8000e7bc:	955ff06f          	j	8000e110 <_svfiprintf_r+0x2c8>
8000e7c0:	00090d93          	mv	s11,s2
8000e7c4:	be5ff06f          	j	8000e3a8 <_svfiprintf_r+0x560>
8000e7c8:	01000693          	li	a3,16
8000e7cc:	0bb6de63          	bge	a3,s11,8000e888 <_svfiprintf_r+0xa40>
8000e7d0:	000d0713          	mv	a4,s10
8000e7d4:	00700f93          	li	t6,7
8000e7d8:	000c0d13          	mv	s10,s8
8000e7dc:	03e12223          	sw	t5,36(sp)
8000e7e0:	00090c13          	mv	s8,s2
8000e7e4:	03d12423          	sw	t4,40(sp)
8000e7e8:	000a0913          	mv	s2,s4
8000e7ec:	00098a13          	mv	s4,s3
8000e7f0:	00040993          	mv	s3,s0
8000e7f4:	000d8413          	mv	s0,s11
8000e7f8:	000c8d93          	mv	s11,s9
8000e7fc:	00088c93          	mv	s9,a7
8000e800:	00c0006f          	j	8000e80c <_svfiprintf_r+0x9c4>
8000e804:	ff040413          	addi	s0,s0,-16
8000e808:	0486da63          	bge	a3,s0,8000e85c <_svfiprintf_r+0xa14>
8000e80c:	01078793          	addi	a5,a5,16
8000e810:	00160613          	addi	a2,a2,1
8000e814:	01772023          	sw	s7,0(a4)
8000e818:	00d72223          	sw	a3,4(a4)
8000e81c:	04f12423          	sw	a5,72(sp)
8000e820:	04c12223          	sw	a2,68(sp)
8000e824:	00870713          	addi	a4,a4,8
8000e828:	fccfdee3          	bge	t6,a2,8000e804 <_svfiprintf_r+0x9bc>
8000e82c:	04010613          	addi	a2,sp,64
8000e830:	00090593          	mv	a1,s2
8000e834:	000b0513          	mv	a0,s6
8000e838:	c54ff0ef          	jal	ra,8000dc8c <__ssprint_r>
8000e83c:	4a051663          	bnez	a0,8000ece8 <_svfiprintf_r+0xea0>
8000e840:	01000693          	li	a3,16
8000e844:	ff040413          	addi	s0,s0,-16
8000e848:	04812783          	lw	a5,72(sp)
8000e84c:	04412603          	lw	a2,68(sp)
8000e850:	000a8713          	mv	a4,s5
8000e854:	00700f93          	li	t6,7
8000e858:	fa86cae3          	blt	a3,s0,8000e80c <_svfiprintf_r+0x9c4>
8000e85c:	02412f03          	lw	t5,36(sp)
8000e860:	02812e83          	lw	t4,40(sp)
8000e864:	000c8893          	mv	a7,s9
8000e868:	000d8c93          	mv	s9,s11
8000e86c:	00040d93          	mv	s11,s0
8000e870:	00098413          	mv	s0,s3
8000e874:	000a0993          	mv	s3,s4
8000e878:	00090a13          	mv	s4,s2
8000e87c:	000c0913          	mv	s2,s8
8000e880:	000d0c13          	mv	s8,s10
8000e884:	00070d13          	mv	s10,a4
8000e888:	01b787b3          	add	a5,a5,s11
8000e88c:	00160613          	addi	a2,a2,1
8000e890:	017d2023          	sw	s7,0(s10)
8000e894:	01bd2223          	sw	s11,4(s10)
8000e898:	04f12423          	sw	a5,72(sp)
8000e89c:	04c12223          	sw	a2,68(sp)
8000e8a0:	00700693          	li	a3,7
8000e8a4:	008d0d13          	addi	s10,s10,8
8000e8a8:	f6c6d863          	bge	a3,a2,8000e018 <_svfiprintf_r+0x1d0>
8000e8ac:	04010613          	addi	a2,sp,64
8000e8b0:	000a0593          	mv	a1,s4
8000e8b4:	000b0513          	mv	a0,s6
8000e8b8:	03112623          	sw	a7,44(sp)
8000e8bc:	03d12423          	sw	t4,40(sp)
8000e8c0:	03e12223          	sw	t5,36(sp)
8000e8c4:	bc8ff0ef          	jal	ra,8000dc8c <__ssprint_r>
8000e8c8:	840514e3          	bnez	a0,8000e110 <_svfiprintf_r+0x2c8>
8000e8cc:	04812783          	lw	a5,72(sp)
8000e8d0:	04412603          	lw	a2,68(sp)
8000e8d4:	02c12883          	lw	a7,44(sp)
8000e8d8:	02812e83          	lw	t4,40(sp)
8000e8dc:	02412f03          	lw	t5,36(sp)
8000e8e0:	000a8d13          	mv	s10,s5
8000e8e4:	f34ff06f          	j	8000e018 <_svfiprintf_r+0x1d0>
8000e8e8:	04010613          	addi	a2,sp,64
8000e8ec:	000a0593          	mv	a1,s4
8000e8f0:	000b0513          	mv	a0,s6
8000e8f4:	03112623          	sw	a7,44(sp)
8000e8f8:	03d12423          	sw	t4,40(sp)
8000e8fc:	03e12223          	sw	t5,36(sp)
8000e900:	b8cff0ef          	jal	ra,8000dc8c <__ssprint_r>
8000e904:	800516e3          	bnez	a0,8000e110 <_svfiprintf_r+0x2c8>
8000e908:	04412603          	lw	a2,68(sp)
8000e90c:	04812783          	lw	a5,72(sp)
8000e910:	02c12883          	lw	a7,44(sp)
8000e914:	02812e83          	lw	t4,40(sp)
8000e918:	02412f03          	lw	t5,36(sp)
8000e91c:	05410693          	addi	a3,sp,84
8000e920:	00160593          	addi	a1,a2,1
8000e924:	000a8d13          	mv	s10,s5
8000e928:	f3cff06f          	j	8000e064 <_svfiprintf_r+0x21c>
8000e92c:	04010613          	addi	a2,sp,64
8000e930:	000a0593          	mv	a1,s4
8000e934:	000b0513          	mv	a0,s6
8000e938:	03112423          	sw	a7,40(sp)
8000e93c:	03d12223          	sw	t4,36(sp)
8000e940:	b4cff0ef          	jal	ra,8000dc8c <__ssprint_r>
8000e944:	fc051663          	bnez	a0,8000e110 <_svfiprintf_r+0x2c8>
8000e948:	04412603          	lw	a2,68(sp)
8000e94c:	04812783          	lw	a5,72(sp)
8000e950:	02812883          	lw	a7,40(sp)
8000e954:	02412e83          	lw	t4,36(sp)
8000e958:	05410693          	addi	a3,sp,84
8000e95c:	00160593          	addi	a1,a2,1
8000e960:	000a8d13          	mv	s10,s5
8000e964:	f38ff06f          	j	8000e09c <_svfiprintf_r+0x254>
8000e968:	01000613          	li	a2,16
8000e96c:	04412703          	lw	a4,68(sp)
8000e970:	07965063          	bge	a2,s9,8000e9d0 <_svfiprintf_r+0xb88>
8000e974:	01000d93          	li	s11,16
8000e978:	00700413          	li	s0,7
8000e97c:	00c0006f          	j	8000e988 <_svfiprintf_r+0xb40>
8000e980:	ff0c8c93          	addi	s9,s9,-16
8000e984:	059dd663          	bge	s11,s9,8000e9d0 <_svfiprintf_r+0xb88>
8000e988:	01078793          	addi	a5,a5,16
8000e98c:	00170713          	addi	a4,a4,1
8000e990:	0176a023          	sw	s7,0(a3)
8000e994:	01b6a223          	sw	s11,4(a3)
8000e998:	04f12423          	sw	a5,72(sp)
8000e99c:	04e12223          	sw	a4,68(sp)
8000e9a0:	00868693          	addi	a3,a3,8
8000e9a4:	fce45ee3          	bge	s0,a4,8000e980 <_svfiprintf_r+0xb38>
8000e9a8:	04010613          	addi	a2,sp,64
8000e9ac:	000a0593          	mv	a1,s4
8000e9b0:	000b0513          	mv	a0,s6
8000e9b4:	ad8ff0ef          	jal	ra,8000dc8c <__ssprint_r>
8000e9b8:	f4051c63          	bnez	a0,8000e110 <_svfiprintf_r+0x2c8>
8000e9bc:	ff0c8c93          	addi	s9,s9,-16
8000e9c0:	04812783          	lw	a5,72(sp)
8000e9c4:	04412703          	lw	a4,68(sp)
8000e9c8:	000a8693          	mv	a3,s5
8000e9cc:	fb9dcee3          	blt	s11,s9,8000e988 <_svfiprintf_r+0xb40>
8000e9d0:	019787b3          	add	a5,a5,s9
8000e9d4:	00170713          	addi	a4,a4,1
8000e9d8:	0176a023          	sw	s7,0(a3)
8000e9dc:	0196a223          	sw	s9,4(a3)
8000e9e0:	04f12423          	sw	a5,72(sp)
8000e9e4:	04e12223          	sw	a4,68(sp)
8000e9e8:	00700693          	li	a3,7
8000e9ec:	eee6d863          	bge	a3,a4,8000e0dc <_svfiprintf_r+0x294>
8000e9f0:	04010613          	addi	a2,sp,64
8000e9f4:	000a0593          	mv	a1,s4
8000e9f8:	000b0513          	mv	a0,s6
8000e9fc:	a90ff0ef          	jal	ra,8000dc8c <__ssprint_r>
8000ea00:	f0051863          	bnez	a0,8000e110 <_svfiprintf_r+0x2c8>
8000ea04:	04812783          	lw	a5,72(sp)
8000ea08:	ed4ff06f          	j	8000e0dc <_svfiprintf_r+0x294>
8000ea0c:	88089ae3          	bnez	a7,8000e2a0 <_svfiprintf_r+0x458>
8000ea10:	000d8913          	mv	s2,s11
8000ea14:	00000893          	li	a7,0
8000ea18:	00000c93          	li	s9,0
8000ea1c:	0f010413          	addi	s0,sp,240
8000ea20:	895ff06f          	j	8000e2b4 <_svfiprintf_r+0x46c>
8000ea24:	00c12703          	lw	a4,12(sp)
8000ea28:	01097793          	andi	a5,s2,16
8000ea2c:	00470693          	addi	a3,a4,4
8000ea30:	18079263          	bnez	a5,8000ebb4 <_svfiprintf_r+0xd6c>
8000ea34:	04097793          	andi	a5,s2,64
8000ea38:	36078e63          	beqz	a5,8000edb4 <_svfiprintf_r+0xf6c>
8000ea3c:	00c12783          	lw	a5,12(sp)
8000ea40:	00000c13          	li	s8,0
8000ea44:	00d12623          	sw	a3,12(sp)
8000ea48:	0007dc83          	lhu	s9,0(a5)
8000ea4c:	8b1ff06f          	j	8000e2fc <_svfiprintf_r+0x4b4>
8000ea50:	00c12703          	lw	a4,12(sp)
8000ea54:	010df793          	andi	a5,s11,16
8000ea58:	00470693          	addi	a3,a4,4
8000ea5c:	10079a63          	bnez	a5,8000eb70 <_svfiprintf_r+0xd28>
8000ea60:	040df793          	andi	a5,s11,64
8000ea64:	38078663          	beqz	a5,8000edf0 <_svfiprintf_r+0xfa8>
8000ea68:	00c12783          	lw	a5,12(sp)
8000ea6c:	00000c13          	li	s8,0
8000ea70:	00d12623          	sw	a3,12(sp)
8000ea74:	0007dc83          	lhu	s9,0(a5)
8000ea78:	00100693          	li	a3,1
8000ea7c:	889ff06f          	j	8000e304 <_svfiprintf_r+0x4bc>
8000ea80:	04010613          	addi	a2,sp,64
8000ea84:	000a0593          	mv	a1,s4
8000ea88:	000b0513          	mv	a0,s6
8000ea8c:	a00ff0ef          	jal	ra,8000dc8c <__ssprint_r>
8000ea90:	e8051063          	bnez	a0,8000e110 <_svfiprintf_r+0x2c8>
8000ea94:	04412583          	lw	a1,68(sp)
8000ea98:	04812783          	lw	a5,72(sp)
8000ea9c:	05410693          	addi	a3,sp,84
8000eaa0:	00158593          	addi	a1,a1,1
8000eaa4:	000a8d13          	mv	s10,s5
8000eaa8:	e04ff06f          	j	8000e0ac <_svfiprintf_r+0x264>
8000eaac:	400df793          	andi	a5,s11,1024
8000eab0:	03412423          	sw	s4,40(sp)
8000eab4:	03312623          	sw	s3,44(sp)
8000eab8:	000c0a13          	mv	s4,s8
8000eabc:	000c8993          	mv	s3,s9
8000eac0:	00000913          	li	s2,0
8000eac4:	01812c83          	lw	s9,24(sp)
8000eac8:	0f010413          	addi	s0,sp,240
8000eacc:	03112223          	sw	a7,36(sp)
8000ead0:	00078c13          	mv	s8,a5
8000ead4:	0240006f          	j	8000eaf8 <_svfiprintf_r+0xcb0>
8000ead8:	00a00613          	li	a2,10
8000eadc:	00000693          	li	a3,0
8000eae0:	00098513          	mv	a0,s3
8000eae4:	000a0593          	mv	a1,s4
8000eae8:	5d5000ef          	jal	ra,8000f8bc <__udivdi3>
8000eaec:	320a0663          	beqz	s4,8000ee18 <_svfiprintf_r+0xfd0>
8000eaf0:	00050993          	mv	s3,a0
8000eaf4:	00058a13          	mv	s4,a1
8000eaf8:	00a00613          	li	a2,10
8000eafc:	00000693          	li	a3,0
8000eb00:	00098513          	mv	a0,s3
8000eb04:	000a0593          	mv	a1,s4
8000eb08:	1e8010ef          	jal	ra,8000fcf0 <__umoddi3>
8000eb0c:	03050513          	addi	a0,a0,48
8000eb10:	fea40fa3          	sb	a0,-1(s0)
8000eb14:	00190913          	addi	s2,s2,1
8000eb18:	fff40413          	addi	s0,s0,-1
8000eb1c:	fa0c0ee3          	beqz	s8,8000ead8 <_svfiprintf_r+0xc90>
8000eb20:	000cc683          	lbu	a3,0(s9)
8000eb24:	fb269ae3          	bne	a3,s2,8000ead8 <_svfiprintf_r+0xc90>
8000eb28:	0ff00793          	li	a5,255
8000eb2c:	faf906e3          	beq	s2,a5,8000ead8 <_svfiprintf_r+0xc90>
8000eb30:	160a1c63          	bnez	s4,8000eca8 <_svfiprintf_r+0xe60>
8000eb34:	00900793          	li	a5,9
8000eb38:	1737e863          	bltu	a5,s3,8000eca8 <_svfiprintf_r+0xe60>
8000eb3c:	0f010793          	addi	a5,sp,240
8000eb40:	01912c23          	sw	s9,24(sp)
8000eb44:	02412883          	lw	a7,36(sp)
8000eb48:	02812a03          	lw	s4,40(sp)
8000eb4c:	02c12983          	lw	s3,44(sp)
8000eb50:	40878cb3          	sub	s9,a5,s0
8000eb54:	000d8913          	mv	s2,s11
8000eb58:	f5cff06f          	j	8000e2b4 <_svfiprintf_r+0x46c>
8000eb5c:	00812703          	lw	a4,8(sp)
8000eb60:	41f75793          	srai	a5,a4,0x1f
8000eb64:	00e6a023          	sw	a4,0(a3)
8000eb68:	00f6a223          	sw	a5,4(a3)
8000eb6c:	b80ff06f          	j	8000deec <_svfiprintf_r+0xa4>
8000eb70:	00d12623          	sw	a3,12(sp)
8000eb74:	00072c83          	lw	s9,0(a4)
8000eb78:	00000c13          	li	s8,0
8000eb7c:	00100693          	li	a3,1
8000eb80:	f84ff06f          	j	8000e304 <_svfiprintf_r+0x4bc>
8000eb84:	01812783          	lw	a5,24(sp)
8000eb88:	0009c683          	lbu	a3,0(s3)
8000eb8c:	be078863          	beqz	a5,8000df7c <_svfiprintf_r+0x134>
8000eb90:	0007c783          	lbu	a5,0(a5)
8000eb94:	be078463          	beqz	a5,8000df7c <_svfiprintf_r+0x134>
8000eb98:	40096913          	ori	s2,s2,1024
8000eb9c:	be0ff06f          	j	8000df7c <_svfiprintf_r+0x134>
8000eba0:	00072c83          	lw	s9,0(a4)
8000eba4:	00d12623          	sw	a3,12(sp)
8000eba8:	41fcdc13          	srai	s8,s9,0x1f
8000ebac:	000c0693          	mv	a3,s8
8000ebb0:	ec8ff06f          	j	8000e278 <_svfiprintf_r+0x430>
8000ebb4:	00072c83          	lw	s9,0(a4)
8000ebb8:	00000c13          	li	s8,0
8000ebbc:	00d12623          	sw	a3,12(sp)
8000ebc0:	f3cff06f          	j	8000e2fc <_svfiprintf_r+0x4b4>
8000ebc4:	800147b7          	lui	a5,0x80014
8000ebc8:	e4878793          	addi	a5,a5,-440 # 80013e48 <heap_end.1814+0xffffe464>
8000ebcc:	00f12a23          	sw	a5,20(sp)
8000ebd0:	02097793          	andi	a5,s2,32
8000ebd4:	00040893          	mv	a7,s0
8000ebd8:	06078c63          	beqz	a5,8000ec50 <_svfiprintf_r+0xe08>
8000ebdc:	00c12783          	lw	a5,12(sp)
8000ebe0:	00778793          	addi	a5,a5,7
8000ebe4:	ff87f793          	andi	a5,a5,-8
8000ebe8:	0007ac83          	lw	s9,0(a5)
8000ebec:	0047ac03          	lw	s8,4(a5)
8000ebf0:	00878793          	addi	a5,a5,8
8000ebf4:	00f12623          	sw	a5,12(sp)
8000ebf8:	00197613          	andi	a2,s2,1
8000ebfc:	00060e63          	beqz	a2,8000ec18 <_svfiprintf_r+0xdd0>
8000ec00:	018ce633          	or	a2,s9,s8
8000ec04:	00060a63          	beqz	a2,8000ec18 <_svfiprintf_r+0xdd0>
8000ec08:	03000613          	li	a2,48
8000ec0c:	02c10e23          	sb	a2,60(sp)
8000ec10:	02d10ea3          	sb	a3,61(sp)
8000ec14:	00296913          	ori	s2,s2,2
8000ec18:	bff97d93          	andi	s11,s2,-1025
8000ec1c:	00200693          	li	a3,2
8000ec20:	ee4ff06f          	j	8000e304 <_svfiprintf_r+0x4bc>
8000ec24:	00040893          	mv	a7,s0
8000ec28:	00090d93          	mv	s11,s2
8000ec2c:	ff0ff06f          	j	8000e41c <_svfiprintf_r+0x5d4>
8000ec30:	00040893          	mv	a7,s0
8000ec34:	ea4ff06f          	j	8000e2d8 <_svfiprintf_r+0x490>
8000ec38:	800147b7          	lui	a5,0x80014
8000ec3c:	e3478793          	addi	a5,a5,-460 # 80013e34 <heap_end.1814+0xffffe450>
8000ec40:	00f12a23          	sw	a5,20(sp)
8000ec44:	02097793          	andi	a5,s2,32
8000ec48:	00040893          	mv	a7,s0
8000ec4c:	f80798e3          	bnez	a5,8000ebdc <_svfiprintf_r+0xd94>
8000ec50:	00c12703          	lw	a4,12(sp)
8000ec54:	01097793          	andi	a5,s2,16
8000ec58:	00470613          	addi	a2,a4,4
8000ec5c:	08078a63          	beqz	a5,8000ecf0 <_svfiprintf_r+0xea8>
8000ec60:	00072c83          	lw	s9,0(a4)
8000ec64:	00000c13          	li	s8,0
8000ec68:	00c12623          	sw	a2,12(sp)
8000ec6c:	f8dff06f          	j	8000ebf8 <_svfiprintf_r+0xdb0>
8000ec70:	00040513          	mv	a0,s0
8000ec74:	bbdf90ef          	jal	ra,80008830 <strlen>
8000ec78:	00050c93          	mv	s9,a0
8000ec7c:	01b12623          	sw	s11,12(sp)
8000ec80:	00000893          	li	a7,0
8000ec84:	e30ff06f          	j	8000e2b4 <_svfiprintf_r+0x46c>
8000ec88:	04000593          	li	a1,64
8000ec8c:	af1f70ef          	jal	ra,8000677c <_malloc_r>
8000ec90:	00aa2023          	sw	a0,0(s4)
8000ec94:	00aa2823          	sw	a0,16(s4)
8000ec98:	24050c63          	beqz	a0,8000eef0 <_svfiprintf_r+0x10a8>
8000ec9c:	04000793          	li	a5,64
8000eca0:	00fa2a23          	sw	a5,20(s4)
8000eca4:	a00ff06f          	j	8000dea4 <_svfiprintf_r+0x5c>
8000eca8:	02012783          	lw	a5,32(sp)
8000ecac:	01c12583          	lw	a1,28(sp)
8000ecb0:	00000913          	li	s2,0
8000ecb4:	40f40433          	sub	s0,s0,a5
8000ecb8:	00078613          	mv	a2,a5
8000ecbc:	00040513          	mv	a0,s0
8000ecc0:	bfdf90ef          	jal	ra,800088bc <strncpy>
8000ecc4:	001cc583          	lbu	a1,1(s9)
8000ecc8:	00a00613          	li	a2,10
8000eccc:	00000693          	li	a3,0
8000ecd0:	00b03833          	snez	a6,a1
8000ecd4:	00098513          	mv	a0,s3
8000ecd8:	000a0593          	mv	a1,s4
8000ecdc:	010c8cb3          	add	s9,s9,a6
8000ece0:	3dd000ef          	jal	ra,8000f8bc <__udivdi3>
8000ece4:	e0dff06f          	j	8000eaf0 <_svfiprintf_r+0xca8>
8000ece8:	00090a13          	mv	s4,s2
8000ecec:	c24ff06f          	j	8000e110 <_svfiprintf_r+0x2c8>
8000ecf0:	04097793          	andi	a5,s2,64
8000ecf4:	0a078263          	beqz	a5,8000ed98 <_svfiprintf_r+0xf50>
8000ecf8:	00c12783          	lw	a5,12(sp)
8000ecfc:	00000c13          	li	s8,0
8000ed00:	00c12623          	sw	a2,12(sp)
8000ed04:	0007dc83          	lhu	s9,0(a5)
8000ed08:	ef1ff06f          	j	8000ebf8 <_svfiprintf_r+0xdb0>
8000ed0c:	04010613          	addi	a2,sp,64
8000ed10:	000a0593          	mv	a1,s4
8000ed14:	000b0513          	mv	a0,s6
8000ed18:	03112223          	sw	a7,36(sp)
8000ed1c:	f71fe0ef          	jal	ra,8000dc8c <__ssprint_r>
8000ed20:	be051863          	bnez	a0,8000e110 <_svfiprintf_r+0x2c8>
8000ed24:	04412603          	lw	a2,68(sp)
8000ed28:	04812783          	lw	a5,72(sp)
8000ed2c:	02412883          	lw	a7,36(sp)
8000ed30:	05410693          	addi	a3,sp,84
8000ed34:	00160593          	addi	a1,a2,1
8000ed38:	000a8d13          	mv	s10,s5
8000ed3c:	b68ff06f          	j	8000e0a4 <_svfiprintf_r+0x25c>
8000ed40:	0019c683          	lbu	a3,1(s3)
8000ed44:	20096913          	ori	s2,s2,512
8000ed48:	00198993          	addi	s3,s3,1
8000ed4c:	a30ff06f          	j	8000df7c <_svfiprintf_r+0x134>
8000ed50:	0019c683          	lbu	a3,1(s3)
8000ed54:	02096913          	ori	s2,s2,32
8000ed58:	00198993          	addi	s3,s3,1
8000ed5c:	a20ff06f          	j	8000df7c <_svfiprintf_r+0x134>
8000ed60:	00040a13          	mv	s4,s0
8000ed64:	bacff06f          	j	8000e110 <_svfiprintf_r+0x2c8>
8000ed68:	00812783          	lw	a5,8(sp)
8000ed6c:	00f6a023          	sw	a5,0(a3)
8000ed70:	97cff06f          	j	8000deec <_svfiprintf_r+0xa4>
8000ed74:	00600793          	li	a5,6
8000ed78:	00088c93          	mv	s9,a7
8000ed7c:	0117f463          	bgeu	a5,a7,8000ed84 <_svfiprintf_r+0xf3c>
8000ed80:	00600c93          	li	s9,6
8000ed84:	80014e37          	lui	t3,0x80014
8000ed88:	000c8c13          	mv	s8,s9
8000ed8c:	01b12623          	sw	s11,12(sp)
8000ed90:	e5ce0413          	addi	s0,t3,-420 # 80013e5c <heap_end.1814+0xffffe478>
8000ed94:	a58ff06f          	j	8000dfec <_svfiprintf_r+0x1a4>
8000ed98:	20097793          	andi	a5,s2,512
8000ed9c:	0c078663          	beqz	a5,8000ee68 <_svfiprintf_r+0x1020>
8000eda0:	00c12783          	lw	a5,12(sp)
8000eda4:	00000c13          	li	s8,0
8000eda8:	00c12623          	sw	a2,12(sp)
8000edac:	0007cc83          	lbu	s9,0(a5)
8000edb0:	e49ff06f          	j	8000ebf8 <_svfiprintf_r+0xdb0>
8000edb4:	20097793          	andi	a5,s2,512
8000edb8:	08078e63          	beqz	a5,8000ee54 <_svfiprintf_r+0x100c>
8000edbc:	00c12783          	lw	a5,12(sp)
8000edc0:	00000c13          	li	s8,0
8000edc4:	00d12623          	sw	a3,12(sp)
8000edc8:	0007cc83          	lbu	s9,0(a5)
8000edcc:	d30ff06f          	j	8000e2fc <_svfiprintf_r+0x4b4>
8000edd0:	20097793          	andi	a5,s2,512
8000edd4:	06078463          	beqz	a5,8000ee3c <_svfiprintf_r+0xff4>
8000edd8:	00c12783          	lw	a5,12(sp)
8000eddc:	00d12623          	sw	a3,12(sp)
8000ede0:	00078c83          	lb	s9,0(a5)
8000ede4:	41fcdc13          	srai	s8,s9,0x1f
8000ede8:	000c0693          	mv	a3,s8
8000edec:	c8cff06f          	j	8000e278 <_svfiprintf_r+0x430>
8000edf0:	200df793          	andi	a5,s11,512
8000edf4:	02078863          	beqz	a5,8000ee24 <_svfiprintf_r+0xfdc>
8000edf8:	00c12783          	lw	a5,12(sp)
8000edfc:	00000c13          	li	s8,0
8000ee00:	00d12623          	sw	a3,12(sp)
8000ee04:	0007cc83          	lbu	s9,0(a5)
8000ee08:	00100693          	li	a3,1
8000ee0c:	cf8ff06f          	j	8000e304 <_svfiprintf_r+0x4bc>
8000ee10:	00068613          	mv	a2,a3
8000ee14:	931ff06f          	j	8000e744 <_svfiprintf_r+0x8fc>
8000ee18:	00900793          	li	a5,9
8000ee1c:	cd37eae3          	bltu	a5,s3,8000eaf0 <_svfiprintf_r+0xca8>
8000ee20:	d1dff06f          	j	8000eb3c <_svfiprintf_r+0xcf4>
8000ee24:	00c12783          	lw	a5,12(sp)
8000ee28:	00000c13          	li	s8,0
8000ee2c:	00d12623          	sw	a3,12(sp)
8000ee30:	0007ac83          	lw	s9,0(a5)
8000ee34:	00100693          	li	a3,1
8000ee38:	cccff06f          	j	8000e304 <_svfiprintf_r+0x4bc>
8000ee3c:	00c12783          	lw	a5,12(sp)
8000ee40:	00d12623          	sw	a3,12(sp)
8000ee44:	0007ac83          	lw	s9,0(a5)
8000ee48:	41fcdc13          	srai	s8,s9,0x1f
8000ee4c:	000c0693          	mv	a3,s8
8000ee50:	c28ff06f          	j	8000e278 <_svfiprintf_r+0x430>
8000ee54:	00c12783          	lw	a5,12(sp)
8000ee58:	00000c13          	li	s8,0
8000ee5c:	00d12623          	sw	a3,12(sp)
8000ee60:	0007ac83          	lw	s9,0(a5)
8000ee64:	c98ff06f          	j	8000e2fc <_svfiprintf_r+0x4b4>
8000ee68:	00c12783          	lw	a5,12(sp)
8000ee6c:	00000c13          	li	s8,0
8000ee70:	00c12623          	sw	a2,12(sp)
8000ee74:	0007ac83          	lw	s9,0(a5)
8000ee78:	d81ff06f          	j	8000ebf8 <_svfiprintf_r+0xdb0>
8000ee7c:	00812783          	lw	a5,8(sp)
8000ee80:	00f69023          	sh	a5,0(a3)
8000ee84:	868ff06f          	j	8000deec <_svfiprintf_r+0xa4>
8000ee88:	04010613          	addi	a2,sp,64
8000ee8c:	000a0593          	mv	a1,s4
8000ee90:	000b0513          	mv	a0,s6
8000ee94:	df9fe0ef          	jal	ra,8000dc8c <__ssprint_r>
8000ee98:	a78ff06f          	j	8000e110 <_svfiprintf_r+0x2c8>
8000ee9c:	00088c93          	mv	s9,a7
8000eea0:	01b12623          	sw	s11,12(sp)
8000eea4:	00000893          	li	a7,0
8000eea8:	c0cff06f          	j	8000e2b4 <_svfiprintf_r+0x46c>
8000eeac:	00090d93          	mv	s11,s2
8000eeb0:	bf0ff06f          	j	8000e2a0 <_svfiprintf_r+0x458>
8000eeb4:	00068513          	mv	a0,a3
8000eeb8:	00058613          	mv	a2,a1
8000eebc:	fe4ff06f          	j	8000e6a0 <_svfiprintf_r+0x858>
8000eec0:	fff00793          	li	a5,-1
8000eec4:	00f12423          	sw	a5,8(sp)
8000eec8:	a54ff06f          	j	8000e11c <_svfiprintf_r+0x2d4>
8000eecc:	00c12783          	lw	a5,12(sp)
8000eed0:	0007a403          	lw	s0,0(a5)
8000eed4:	00478793          	addi	a5,a5,4
8000eed8:	00045463          	bgez	s0,8000eee0 <_svfiprintf_r+0x1098>
8000eedc:	fff00413          	li	s0,-1
8000eee0:	0019c683          	lbu	a3,1(s3)
8000eee4:	00f12623          	sw	a5,12(sp)
8000eee8:	00070993          	mv	s3,a4
8000eeec:	890ff06f          	j	8000df7c <_svfiprintf_r+0x134>
8000eef0:	00c00793          	li	a5,12
8000eef4:	00fb2023          	sw	a5,0(s6)
8000eef8:	fff00793          	li	a5,-1
8000eefc:	00f12423          	sw	a5,8(sp)
8000ef00:	a1cff06f          	j	8000e11c <_svfiprintf_r+0x2d4>

8000ef04 <__swbuf_r>:
8000ef04:	fe010113          	addi	sp,sp,-32
8000ef08:	00812c23          	sw	s0,24(sp)
8000ef0c:	00912a23          	sw	s1,20(sp)
8000ef10:	01212823          	sw	s2,16(sp)
8000ef14:	00112e23          	sw	ra,28(sp)
8000ef18:	01312623          	sw	s3,12(sp)
8000ef1c:	00050913          	mv	s2,a0
8000ef20:	00058493          	mv	s1,a1
8000ef24:	00060413          	mv	s0,a2
8000ef28:	00050663          	beqz	a0,8000ef34 <__swbuf_r+0x30>
8000ef2c:	03852783          	lw	a5,56(a0)
8000ef30:	14078863          	beqz	a5,8000f080 <__swbuf_r+0x17c>
8000ef34:	00c41703          	lh	a4,12(s0)
8000ef38:	01842683          	lw	a3,24(s0)
8000ef3c:	00877793          	andi	a5,a4,8
8000ef40:	00d42423          	sw	a3,8(s0)
8000ef44:	01071693          	slli	a3,a4,0x10
8000ef48:	0106d693          	srli	a3,a3,0x10
8000ef4c:	08078263          	beqz	a5,8000efd0 <__swbuf_r+0xcc>
8000ef50:	01042783          	lw	a5,16(s0)
8000ef54:	06078e63          	beqz	a5,8000efd0 <__swbuf_r+0xcc>
8000ef58:	01269613          	slli	a2,a3,0x12
8000ef5c:	0ff4f993          	andi	s3,s1,255
8000ef60:	0ff4f493          	andi	s1,s1,255
8000ef64:	08065e63          	bgez	a2,8000f000 <__swbuf_r+0xfc>
8000ef68:	00042703          	lw	a4,0(s0)
8000ef6c:	01442683          	lw	a3,20(s0)
8000ef70:	40f707b3          	sub	a5,a4,a5
8000ef74:	0ad7de63          	bge	a5,a3,8000f030 <__swbuf_r+0x12c>
8000ef78:	00842683          	lw	a3,8(s0)
8000ef7c:	00170613          	addi	a2,a4,1
8000ef80:	00c42023          	sw	a2,0(s0)
8000ef84:	fff68693          	addi	a3,a3,-1
8000ef88:	00d42423          	sw	a3,8(s0)
8000ef8c:	01370023          	sb	s3,0(a4)
8000ef90:	01442703          	lw	a4,20(s0)
8000ef94:	00178793          	addi	a5,a5,1
8000ef98:	0cf70863          	beq	a4,a5,8000f068 <__swbuf_r+0x164>
8000ef9c:	00c45783          	lhu	a5,12(s0)
8000efa0:	0017f793          	andi	a5,a5,1
8000efa4:	00078663          	beqz	a5,8000efb0 <__swbuf_r+0xac>
8000efa8:	00a00793          	li	a5,10
8000efac:	0af48e63          	beq	s1,a5,8000f068 <__swbuf_r+0x164>
8000efb0:	01c12083          	lw	ra,28(sp)
8000efb4:	01812403          	lw	s0,24(sp)
8000efb8:	01012903          	lw	s2,16(sp)
8000efbc:	00c12983          	lw	s3,12(sp)
8000efc0:	00048513          	mv	a0,s1
8000efc4:	01412483          	lw	s1,20(sp)
8000efc8:	02010113          	addi	sp,sp,32
8000efcc:	00008067          	ret
8000efd0:	00040593          	mv	a1,s0
8000efd4:	00090513          	mv	a0,s2
8000efd8:	c25f30ef          	jal	ra,80002bfc <__swsetup_r>
8000efdc:	08051e63          	bnez	a0,8000f078 <__swbuf_r+0x174>
8000efe0:	00c41703          	lh	a4,12(s0)
8000efe4:	0ff4f993          	andi	s3,s1,255
8000efe8:	01042783          	lw	a5,16(s0)
8000efec:	01071693          	slli	a3,a4,0x10
8000eff0:	0106d693          	srli	a3,a3,0x10
8000eff4:	01269613          	slli	a2,a3,0x12
8000eff8:	0ff4f493          	andi	s1,s1,255
8000effc:	f60646e3          	bltz	a2,8000ef68 <__swbuf_r+0x64>
8000f000:	06442683          	lw	a3,100(s0)
8000f004:	00002637          	lui	a2,0x2
8000f008:	00c76733          	or	a4,a4,a2
8000f00c:	ffffe637          	lui	a2,0xffffe
8000f010:	fff60613          	addi	a2,a2,-1 # ffffdfff <heap_end.1814+0x7ffe861b>
8000f014:	00c6f6b3          	and	a3,a3,a2
8000f018:	00e41623          	sh	a4,12(s0)
8000f01c:	00042703          	lw	a4,0(s0)
8000f020:	06d42223          	sw	a3,100(s0)
8000f024:	01442683          	lw	a3,20(s0)
8000f028:	40f707b3          	sub	a5,a4,a5
8000f02c:	f4d7c6e3          	blt	a5,a3,8000ef78 <__swbuf_r+0x74>
8000f030:	00040593          	mv	a1,s0
8000f034:	00090513          	mv	a0,s2
8000f038:	f81f30ef          	jal	ra,80002fb8 <_fflush_r>
8000f03c:	02051e63          	bnez	a0,8000f078 <__swbuf_r+0x174>
8000f040:	00042703          	lw	a4,0(s0)
8000f044:	00842683          	lw	a3,8(s0)
8000f048:	00100793          	li	a5,1
8000f04c:	00170613          	addi	a2,a4,1
8000f050:	fff68693          	addi	a3,a3,-1
8000f054:	00c42023          	sw	a2,0(s0)
8000f058:	00d42423          	sw	a3,8(s0)
8000f05c:	01370023          	sb	s3,0(a4)
8000f060:	01442703          	lw	a4,20(s0)
8000f064:	f2f71ce3          	bne	a4,a5,8000ef9c <__swbuf_r+0x98>
8000f068:	00040593          	mv	a1,s0
8000f06c:	00090513          	mv	a0,s2
8000f070:	f49f30ef          	jal	ra,80002fb8 <_fflush_r>
8000f074:	f2050ee3          	beqz	a0,8000efb0 <__swbuf_r+0xac>
8000f078:	fff00493          	li	s1,-1
8000f07c:	f35ff06f          	j	8000efb0 <__swbuf_r+0xac>
8000f080:	ae4f40ef          	jal	ra,80003364 <__sinit>
8000f084:	eb1ff06f          	j	8000ef34 <__swbuf_r+0x30>

8000f088 <__swbuf>:
8000f088:	80016737          	lui	a4,0x80016
8000f08c:	00050793          	mv	a5,a0
8000f090:	99c72503          	lw	a0,-1636(a4) # 8001599c <heap_end.1814+0xffffffb8>
8000f094:	00058613          	mv	a2,a1
8000f098:	00078593          	mv	a1,a5
8000f09c:	e69ff06f          	j	8000ef04 <__swbuf_r>

8000f0a0 <_wcrtomb_r>:
8000f0a0:	fe010113          	addi	sp,sp,-32
8000f0a4:	00812c23          	sw	s0,24(sp)
8000f0a8:	00912a23          	sw	s1,20(sp)
8000f0ac:	800157b7          	lui	a5,0x80015
8000f0b0:	00112e23          	sw	ra,28(sp)
8000f0b4:	5087a783          	lw	a5,1288(a5) # 80015508 <heap_end.1814+0xfffffb24>
8000f0b8:	00050413          	mv	s0,a0
8000f0bc:	00068493          	mv	s1,a3
8000f0c0:	02058263          	beqz	a1,8000f0e4 <_wcrtomb_r+0x44>
8000f0c4:	000780e7          	jalr	a5
8000f0c8:	fff00793          	li	a5,-1
8000f0cc:	02f50663          	beq	a0,a5,8000f0f8 <_wcrtomb_r+0x58>
8000f0d0:	01c12083          	lw	ra,28(sp)
8000f0d4:	01812403          	lw	s0,24(sp)
8000f0d8:	01412483          	lw	s1,20(sp)
8000f0dc:	02010113          	addi	sp,sp,32
8000f0e0:	00008067          	ret
8000f0e4:	00000613          	li	a2,0
8000f0e8:	00410593          	addi	a1,sp,4
8000f0ec:	000780e7          	jalr	a5
8000f0f0:	fff00793          	li	a5,-1
8000f0f4:	fcf51ee3          	bne	a0,a5,8000f0d0 <_wcrtomb_r+0x30>
8000f0f8:	0004a023          	sw	zero,0(s1)
8000f0fc:	08a00793          	li	a5,138
8000f100:	01c12083          	lw	ra,28(sp)
8000f104:	00f42023          	sw	a5,0(s0)
8000f108:	01812403          	lw	s0,24(sp)
8000f10c:	01412483          	lw	s1,20(sp)
8000f110:	02010113          	addi	sp,sp,32
8000f114:	00008067          	ret

8000f118 <wcrtomb>:
8000f118:	fe010113          	addi	sp,sp,-32
8000f11c:	800167b7          	lui	a5,0x80016
8000f120:	00812c23          	sw	s0,24(sp)
8000f124:	00912a23          	sw	s1,20(sp)
8000f128:	00112e23          	sw	ra,28(sp)
8000f12c:	99c7a483          	lw	s1,-1636(a5) # 8001599c <heap_end.1814+0xffffffb8>
8000f130:	800157b7          	lui	a5,0x80015
8000f134:	5087a783          	lw	a5,1288(a5) # 80015508 <heap_end.1814+0xfffffb24>
8000f138:	00060413          	mv	s0,a2
8000f13c:	02050a63          	beqz	a0,8000f170 <wcrtomb+0x58>
8000f140:	00058613          	mv	a2,a1
8000f144:	00040693          	mv	a3,s0
8000f148:	00050593          	mv	a1,a0
8000f14c:	00048513          	mv	a0,s1
8000f150:	000780e7          	jalr	a5
8000f154:	fff00793          	li	a5,-1
8000f158:	02f50a63          	beq	a0,a5,8000f18c <wcrtomb+0x74>
8000f15c:	01c12083          	lw	ra,28(sp)
8000f160:	01812403          	lw	s0,24(sp)
8000f164:	01412483          	lw	s1,20(sp)
8000f168:	02010113          	addi	sp,sp,32
8000f16c:	00008067          	ret
8000f170:	00060693          	mv	a3,a2
8000f174:	00410593          	addi	a1,sp,4
8000f178:	00000613          	li	a2,0
8000f17c:	00048513          	mv	a0,s1
8000f180:	000780e7          	jalr	a5
8000f184:	fff00793          	li	a5,-1
8000f188:	fcf51ae3          	bne	a0,a5,8000f15c <wcrtomb+0x44>
8000f18c:	00042023          	sw	zero,0(s0)
8000f190:	01c12083          	lw	ra,28(sp)
8000f194:	01812403          	lw	s0,24(sp)
8000f198:	08a00793          	li	a5,138
8000f19c:	00f4a023          	sw	a5,0(s1)
8000f1a0:	01412483          	lw	s1,20(sp)
8000f1a4:	02010113          	addi	sp,sp,32
8000f1a8:	00008067          	ret

8000f1ac <abort>:
8000f1ac:	ff010113          	addi	sp,sp,-16
8000f1b0:	00600513          	li	a0,6
8000f1b4:	00112623          	sw	ra,12(sp)
8000f1b8:	28c000ef          	jal	ra,8000f444 <raise>
8000f1bc:	00100513          	li	a0,1
8000f1c0:	39c000ef          	jal	ra,8000f55c <_exit>

8000f1c4 <_init_signal_r.part.0>:
8000f1c4:	ff010113          	addi	sp,sp,-16
8000f1c8:	08000593          	li	a1,128
8000f1cc:	00812423          	sw	s0,8(sp)
8000f1d0:	00112623          	sw	ra,12(sp)
8000f1d4:	00050413          	mv	s0,a0
8000f1d8:	da4f70ef          	jal	ra,8000677c <_malloc_r>
8000f1dc:	2ca42e23          	sw	a0,732(s0)
8000f1e0:	02050463          	beqz	a0,8000f208 <_init_signal_r.part.0+0x44>
8000f1e4:	08050793          	addi	a5,a0,128
8000f1e8:	00052023          	sw	zero,0(a0)
8000f1ec:	00450513          	addi	a0,a0,4
8000f1f0:	fef51ce3          	bne	a0,a5,8000f1e8 <_init_signal_r.part.0+0x24>
8000f1f4:	00000513          	li	a0,0
8000f1f8:	00c12083          	lw	ra,12(sp)
8000f1fc:	00812403          	lw	s0,8(sp)
8000f200:	01010113          	addi	sp,sp,16
8000f204:	00008067          	ret
8000f208:	fff00513          	li	a0,-1
8000f20c:	fedff06f          	j	8000f1f8 <_init_signal_r.part.0+0x34>

8000f210 <_init_signal_r>:
8000f210:	2dc52783          	lw	a5,732(a0)
8000f214:	00078663          	beqz	a5,8000f220 <_init_signal_r+0x10>
8000f218:	00000513          	li	a0,0
8000f21c:	00008067          	ret
8000f220:	fa5ff06f          	j	8000f1c4 <_init_signal_r.part.0>

8000f224 <_signal_r>:
8000f224:	fe010113          	addi	sp,sp,-32
8000f228:	00912a23          	sw	s1,20(sp)
8000f22c:	00112e23          	sw	ra,28(sp)
8000f230:	00812c23          	sw	s0,24(sp)
8000f234:	01f00793          	li	a5,31
8000f238:	00050493          	mv	s1,a0
8000f23c:	02b7ea63          	bltu	a5,a1,8000f270 <_signal_r+0x4c>
8000f240:	00058413          	mv	s0,a1
8000f244:	2dc52583          	lw	a1,732(a0)
8000f248:	04058463          	beqz	a1,8000f290 <_signal_r+0x6c>
8000f24c:	00241413          	slli	s0,s0,0x2
8000f250:	00858433          	add	s0,a1,s0
8000f254:	00042503          	lw	a0,0(s0)
8000f258:	00c42023          	sw	a2,0(s0)
8000f25c:	01c12083          	lw	ra,28(sp)
8000f260:	01812403          	lw	s0,24(sp)
8000f264:	01412483          	lw	s1,20(sp)
8000f268:	02010113          	addi	sp,sp,32
8000f26c:	00008067          	ret
8000f270:	01c12083          	lw	ra,28(sp)
8000f274:	01812403          	lw	s0,24(sp)
8000f278:	01600793          	li	a5,22
8000f27c:	00f52023          	sw	a5,0(a0)
8000f280:	01412483          	lw	s1,20(sp)
8000f284:	fff00513          	li	a0,-1
8000f288:	02010113          	addi	sp,sp,32
8000f28c:	00008067          	ret
8000f290:	00c12623          	sw	a2,12(sp)
8000f294:	f31ff0ef          	jal	ra,8000f1c4 <_init_signal_r.part.0>
8000f298:	00050793          	mv	a5,a0
8000f29c:	fff00513          	li	a0,-1
8000f2a0:	fa079ee3          	bnez	a5,8000f25c <_signal_r+0x38>
8000f2a4:	2dc4a583          	lw	a1,732(s1)
8000f2a8:	00c12603          	lw	a2,12(sp)
8000f2ac:	fa1ff06f          	j	8000f24c <_signal_r+0x28>

8000f2b0 <_raise_r>:
8000f2b0:	ff010113          	addi	sp,sp,-16
8000f2b4:	00912223          	sw	s1,4(sp)
8000f2b8:	00112623          	sw	ra,12(sp)
8000f2bc:	00812423          	sw	s0,8(sp)
8000f2c0:	01f00793          	li	a5,31
8000f2c4:	00050493          	mv	s1,a0
8000f2c8:	0ab7ea63          	bltu	a5,a1,8000f37c <_raise_r+0xcc>
8000f2cc:	2dc52783          	lw	a5,732(a0)
8000f2d0:	00058413          	mv	s0,a1
8000f2d4:	04078463          	beqz	a5,8000f31c <_raise_r+0x6c>
8000f2d8:	00259713          	slli	a4,a1,0x2
8000f2dc:	00e787b3          	add	a5,a5,a4
8000f2e0:	0007a703          	lw	a4,0(a5)
8000f2e4:	02070c63          	beqz	a4,8000f31c <_raise_r+0x6c>
8000f2e8:	00100693          	li	a3,1
8000f2ec:	06d70c63          	beq	a4,a3,8000f364 <_raise_r+0xb4>
8000f2f0:	fff00693          	li	a3,-1
8000f2f4:	04d70863          	beq	a4,a3,8000f344 <_raise_r+0x94>
8000f2f8:	00058513          	mv	a0,a1
8000f2fc:	0007a023          	sw	zero,0(a5)
8000f300:	000700e7          	jalr	a4
8000f304:	00000513          	li	a0,0
8000f308:	00c12083          	lw	ra,12(sp)
8000f30c:	00812403          	lw	s0,8(sp)
8000f310:	00412483          	lw	s1,4(sp)
8000f314:	01010113          	addi	sp,sp,16
8000f318:	00008067          	ret
8000f31c:	00048513          	mv	a0,s1
8000f320:	1e0000ef          	jal	ra,8000f500 <_getpid_r>
8000f324:	00040613          	mv	a2,s0
8000f328:	00812403          	lw	s0,8(sp)
8000f32c:	00c12083          	lw	ra,12(sp)
8000f330:	00050593          	mv	a1,a0
8000f334:	00048513          	mv	a0,s1
8000f338:	00412483          	lw	s1,4(sp)
8000f33c:	01010113          	addi	sp,sp,16
8000f340:	1580006f          	j	8000f498 <_kill_r>
8000f344:	00c12083          	lw	ra,12(sp)
8000f348:	00812403          	lw	s0,8(sp)
8000f34c:	01600793          	li	a5,22
8000f350:	00f52023          	sw	a5,0(a0)
8000f354:	00412483          	lw	s1,4(sp)
8000f358:	00100513          	li	a0,1
8000f35c:	01010113          	addi	sp,sp,16
8000f360:	00008067          	ret
8000f364:	00c12083          	lw	ra,12(sp)
8000f368:	00812403          	lw	s0,8(sp)
8000f36c:	00412483          	lw	s1,4(sp)
8000f370:	00000513          	li	a0,0
8000f374:	01010113          	addi	sp,sp,16
8000f378:	00008067          	ret
8000f37c:	01600793          	li	a5,22
8000f380:	00f52023          	sw	a5,0(a0)
8000f384:	fff00513          	li	a0,-1
8000f388:	f81ff06f          	j	8000f308 <_raise_r+0x58>

8000f38c <__sigtramp_r>:
8000f38c:	01f00793          	li	a5,31
8000f390:	0ab7e663          	bltu	a5,a1,8000f43c <__sigtramp_r+0xb0>
8000f394:	2dc52783          	lw	a5,732(a0)
8000f398:	fe010113          	addi	sp,sp,-32
8000f39c:	00912c23          	sw	s1,24(sp)
8000f3a0:	00112e23          	sw	ra,28(sp)
8000f3a4:	00050493          	mv	s1,a0
8000f3a8:	04078c63          	beqz	a5,8000f400 <__sigtramp_r+0x74>
8000f3ac:	00259713          	slli	a4,a1,0x2
8000f3b0:	00e787b3          	add	a5,a5,a4
8000f3b4:	0007a703          	lw	a4,0(a5)
8000f3b8:	02070a63          	beqz	a4,8000f3ec <__sigtramp_r+0x60>
8000f3bc:	fff00693          	li	a3,-1
8000f3c0:	06d70663          	beq	a4,a3,8000f42c <__sigtramp_r+0xa0>
8000f3c4:	00100693          	li	a3,1
8000f3c8:	04d70863          	beq	a4,a3,8000f418 <__sigtramp_r+0x8c>
8000f3cc:	00058513          	mv	a0,a1
8000f3d0:	0007a023          	sw	zero,0(a5)
8000f3d4:	000700e7          	jalr	a4
8000f3d8:	00000513          	li	a0,0
8000f3dc:	01c12083          	lw	ra,28(sp)
8000f3e0:	01812483          	lw	s1,24(sp)
8000f3e4:	02010113          	addi	sp,sp,32
8000f3e8:	00008067          	ret
8000f3ec:	01c12083          	lw	ra,28(sp)
8000f3f0:	01812483          	lw	s1,24(sp)
8000f3f4:	00100513          	li	a0,1
8000f3f8:	02010113          	addi	sp,sp,32
8000f3fc:	00008067          	ret
8000f400:	00b12623          	sw	a1,12(sp)
8000f404:	dc1ff0ef          	jal	ra,8000f1c4 <_init_signal_r.part.0>
8000f408:	02051663          	bnez	a0,8000f434 <__sigtramp_r+0xa8>
8000f40c:	2dc4a783          	lw	a5,732(s1)
8000f410:	00c12583          	lw	a1,12(sp)
8000f414:	f99ff06f          	j	8000f3ac <__sigtramp_r+0x20>
8000f418:	01c12083          	lw	ra,28(sp)
8000f41c:	01812483          	lw	s1,24(sp)
8000f420:	00300513          	li	a0,3
8000f424:	02010113          	addi	sp,sp,32
8000f428:	00008067          	ret
8000f42c:	00200513          	li	a0,2
8000f430:	fadff06f          	j	8000f3dc <__sigtramp_r+0x50>
8000f434:	fff00513          	li	a0,-1
8000f438:	fa5ff06f          	j	8000f3dc <__sigtramp_r+0x50>
8000f43c:	fff00513          	li	a0,-1
8000f440:	00008067          	ret

8000f444 <raise>:
8000f444:	800167b7          	lui	a5,0x80016
8000f448:	00050593          	mv	a1,a0
8000f44c:	99c7a503          	lw	a0,-1636(a5) # 8001599c <heap_end.1814+0xffffffb8>
8000f450:	e61ff06f          	j	8000f2b0 <_raise_r>

8000f454 <signal>:
8000f454:	80016737          	lui	a4,0x80016
8000f458:	00050793          	mv	a5,a0
8000f45c:	99c72503          	lw	a0,-1636(a4) # 8001599c <heap_end.1814+0xffffffb8>
8000f460:	00058613          	mv	a2,a1
8000f464:	00078593          	mv	a1,a5
8000f468:	dbdff06f          	j	8000f224 <_signal_r>

8000f46c <_init_signal>:
8000f46c:	800167b7          	lui	a5,0x80016
8000f470:	99c7a503          	lw	a0,-1636(a5) # 8001599c <heap_end.1814+0xffffffb8>
8000f474:	2dc52783          	lw	a5,732(a0)
8000f478:	00078663          	beqz	a5,8000f484 <_init_signal+0x18>
8000f47c:	00000513          	li	a0,0
8000f480:	00008067          	ret
8000f484:	d41ff06f          	j	8000f1c4 <_init_signal_r.part.0>

8000f488 <__sigtramp>:
8000f488:	800167b7          	lui	a5,0x80016
8000f48c:	00050593          	mv	a1,a0
8000f490:	99c7a503          	lw	a0,-1636(a5) # 8001599c <heap_end.1814+0xffffffb8>
8000f494:	ef9ff06f          	j	8000f38c <__sigtramp_r>

8000f498 <_kill_r>:
8000f498:	ff010113          	addi	sp,sp,-16
8000f49c:	00058713          	mv	a4,a1
8000f4a0:	00812423          	sw	s0,8(sp)
8000f4a4:	00912223          	sw	s1,4(sp)
8000f4a8:	00050413          	mv	s0,a0
8000f4ac:	800164b7          	lui	s1,0x80016
8000f4b0:	00060593          	mv	a1,a2
8000f4b4:	00070513          	mv	a0,a4
8000f4b8:	00112623          	sw	ra,12(sp)
8000f4bc:	9c04a823          	sw	zero,-1584(s1) # 800159d0 <heap_end.1814+0xffffffec>
8000f4c0:	198000ef          	jal	ra,8000f658 <_kill>
8000f4c4:	fff00793          	li	a5,-1
8000f4c8:	00f50c63          	beq	a0,a5,8000f4e0 <_kill_r+0x48>
8000f4cc:	00c12083          	lw	ra,12(sp)
8000f4d0:	00812403          	lw	s0,8(sp)
8000f4d4:	00412483          	lw	s1,4(sp)
8000f4d8:	01010113          	addi	sp,sp,16
8000f4dc:	00008067          	ret
8000f4e0:	9d04a783          	lw	a5,-1584(s1)
8000f4e4:	fe0784e3          	beqz	a5,8000f4cc <_kill_r+0x34>
8000f4e8:	00c12083          	lw	ra,12(sp)
8000f4ec:	00f42023          	sw	a5,0(s0)
8000f4f0:	00812403          	lw	s0,8(sp)
8000f4f4:	00412483          	lw	s1,4(sp)
8000f4f8:	01010113          	addi	sp,sp,16
8000f4fc:	00008067          	ret

8000f500 <_getpid_r>:
8000f500:	1100006f          	j	8000f610 <_getpid>

8000f504 <_close>:
8000f504:	ff010113          	addi	sp,sp,-16
8000f508:	00112623          	sw	ra,12(sp)
8000f50c:	00812423          	sw	s0,8(sp)
8000f510:	00000593          	li	a1,0
8000f514:	00000613          	li	a2,0
8000f518:	00000693          	li	a3,0
8000f51c:	00000713          	li	a4,0
8000f520:	00000793          	li	a5,0
8000f524:	03900893          	li	a7,57
8000f528:	00000073          	ecall
8000f52c:	00050413          	mv	s0,a0
8000f530:	00054c63          	bltz	a0,8000f548 <_close+0x44>
8000f534:	00c12083          	lw	ra,12(sp)
8000f538:	00040513          	mv	a0,s0
8000f53c:	00812403          	lw	s0,8(sp)
8000f540:	01010113          	addi	sp,sp,16
8000f544:	00008067          	ret
8000f548:	40800433          	neg	s0,s0
8000f54c:	364000ef          	jal	ra,8000f8b0 <__errno>
8000f550:	00852023          	sw	s0,0(a0)
8000f554:	fff00413          	li	s0,-1
8000f558:	fddff06f          	j	8000f534 <_close+0x30>

8000f55c <_exit>:
8000f55c:	00000593          	li	a1,0
8000f560:	00000613          	li	a2,0
8000f564:	00000693          	li	a3,0
8000f568:	00000713          	li	a4,0
8000f56c:	00000793          	li	a5,0
8000f570:	05d00893          	li	a7,93
8000f574:	00000073          	ecall
8000f578:	00054463          	bltz	a0,8000f580 <_exit+0x24>
8000f57c:	0000006f          	j	8000f57c <_exit+0x20>
8000f580:	ff010113          	addi	sp,sp,-16
8000f584:	00812423          	sw	s0,8(sp)
8000f588:	00050413          	mv	s0,a0
8000f58c:	00112623          	sw	ra,12(sp)
8000f590:	40800433          	neg	s0,s0
8000f594:	31c000ef          	jal	ra,8000f8b0 <__errno>
8000f598:	00852023          	sw	s0,0(a0)
8000f59c:	0000006f          	j	8000f59c <_exit+0x40>

8000f5a0 <_fstat>:
8000f5a0:	f7010113          	addi	sp,sp,-144
8000f5a4:	08912223          	sw	s1,132(sp)
8000f5a8:	08112623          	sw	ra,140(sp)
8000f5ac:	00058493          	mv	s1,a1
8000f5b0:	08812423          	sw	s0,136(sp)
8000f5b4:	00010593          	mv	a1,sp
8000f5b8:	00000613          	li	a2,0
8000f5bc:	00000693          	li	a3,0
8000f5c0:	00000713          	li	a4,0
8000f5c4:	00000793          	li	a5,0
8000f5c8:	05000893          	li	a7,80
8000f5cc:	00000073          	ecall
8000f5d0:	00050413          	mv	s0,a0
8000f5d4:	02054463          	bltz	a0,8000f5fc <_fstat+0x5c>
8000f5d8:	00048513          	mv	a0,s1
8000f5dc:	00010593          	mv	a1,sp
8000f5e0:	22c000ef          	jal	ra,8000f80c <_conv_stat>
8000f5e4:	08c12083          	lw	ra,140(sp)
8000f5e8:	00040513          	mv	a0,s0
8000f5ec:	08812403          	lw	s0,136(sp)
8000f5f0:	08412483          	lw	s1,132(sp)
8000f5f4:	09010113          	addi	sp,sp,144
8000f5f8:	00008067          	ret
8000f5fc:	40800433          	neg	s0,s0
8000f600:	2b0000ef          	jal	ra,8000f8b0 <__errno>
8000f604:	00852023          	sw	s0,0(a0)
8000f608:	fff00413          	li	s0,-1
8000f60c:	fcdff06f          	j	8000f5d8 <_fstat+0x38>

8000f610 <_getpid>:
8000f610:	00100513          	li	a0,1
8000f614:	00008067          	ret

8000f618 <_isatty>:
8000f618:	f9010113          	addi	sp,sp,-112
8000f61c:	00810593          	addi	a1,sp,8
8000f620:	06112623          	sw	ra,108(sp)
8000f624:	f7dff0ef          	jal	ra,8000f5a0 <_fstat>
8000f628:	fff00793          	li	a5,-1
8000f62c:	00f50e63          	beq	a0,a5,8000f648 <_isatty+0x30>
8000f630:	00c12503          	lw	a0,12(sp)
8000f634:	06c12083          	lw	ra,108(sp)
8000f638:	00d55513          	srli	a0,a0,0xd
8000f63c:	00157513          	andi	a0,a0,1
8000f640:	07010113          	addi	sp,sp,112
8000f644:	00008067          	ret
8000f648:	06c12083          	lw	ra,108(sp)
8000f64c:	00000513          	li	a0,0
8000f650:	07010113          	addi	sp,sp,112
8000f654:	00008067          	ret

8000f658 <_kill>:
8000f658:	ff010113          	addi	sp,sp,-16
8000f65c:	00112623          	sw	ra,12(sp)
8000f660:	250000ef          	jal	ra,8000f8b0 <__errno>
8000f664:	00c12083          	lw	ra,12(sp)
8000f668:	01600793          	li	a5,22
8000f66c:	00f52023          	sw	a5,0(a0)
8000f670:	fff00513          	li	a0,-1
8000f674:	01010113          	addi	sp,sp,16
8000f678:	00008067          	ret

8000f67c <_lseek>:
8000f67c:	ff010113          	addi	sp,sp,-16
8000f680:	00112623          	sw	ra,12(sp)
8000f684:	00812423          	sw	s0,8(sp)
8000f688:	00000693          	li	a3,0
8000f68c:	00000713          	li	a4,0
8000f690:	00000793          	li	a5,0
8000f694:	03e00893          	li	a7,62
8000f698:	00000073          	ecall
8000f69c:	00050413          	mv	s0,a0
8000f6a0:	00054c63          	bltz	a0,8000f6b8 <_lseek+0x3c>
8000f6a4:	00c12083          	lw	ra,12(sp)
8000f6a8:	00040513          	mv	a0,s0
8000f6ac:	00812403          	lw	s0,8(sp)
8000f6b0:	01010113          	addi	sp,sp,16
8000f6b4:	00008067          	ret
8000f6b8:	40800433          	neg	s0,s0
8000f6bc:	1f4000ef          	jal	ra,8000f8b0 <__errno>
8000f6c0:	00852023          	sw	s0,0(a0)
8000f6c4:	fff00413          	li	s0,-1
8000f6c8:	fddff06f          	j	8000f6a4 <_lseek+0x28>

8000f6cc <_read>:
8000f6cc:	ff010113          	addi	sp,sp,-16
8000f6d0:	00112623          	sw	ra,12(sp)
8000f6d4:	00812423          	sw	s0,8(sp)
8000f6d8:	00000693          	li	a3,0
8000f6dc:	00000713          	li	a4,0
8000f6e0:	00000793          	li	a5,0
8000f6e4:	03f00893          	li	a7,63
8000f6e8:	00000073          	ecall
8000f6ec:	00050413          	mv	s0,a0
8000f6f0:	00054c63          	bltz	a0,8000f708 <_read+0x3c>
8000f6f4:	00c12083          	lw	ra,12(sp)
8000f6f8:	00040513          	mv	a0,s0
8000f6fc:	00812403          	lw	s0,8(sp)
8000f700:	01010113          	addi	sp,sp,16
8000f704:	00008067          	ret
8000f708:	40800433          	neg	s0,s0
8000f70c:	1a4000ef          	jal	ra,8000f8b0 <__errno>
8000f710:	00852023          	sw	s0,0(a0)
8000f714:	fff00413          	li	s0,-1
8000f718:	fddff06f          	j	8000f6f4 <_read+0x28>

8000f71c <_sbrk>:
8000f71c:	80016337          	lui	t1,0x80016
8000f720:	9e432783          	lw	a5,-1564(t1) # 800159e4 <heap_end.1814+0x0>
8000f724:	ff010113          	addi	sp,sp,-16
8000f728:	00112623          	sw	ra,12(sp)
8000f72c:	00050813          	mv	a6,a0
8000f730:	02079863          	bnez	a5,8000f760 <_sbrk+0x44>
8000f734:	00000513          	li	a0,0
8000f738:	00000593          	li	a1,0
8000f73c:	00000613          	li	a2,0
8000f740:	00000693          	li	a3,0
8000f744:	00000713          	li	a4,0
8000f748:	0d600893          	li	a7,214
8000f74c:	00000073          	ecall
8000f750:	fff00713          	li	a4,-1
8000f754:	00050793          	mv	a5,a0
8000f758:	04e50463          	beq	a0,a4,8000f7a0 <_sbrk+0x84>
8000f75c:	9ea32223          	sw	a0,-1564(t1)
8000f760:	00f80533          	add	a0,a6,a5
8000f764:	00000593          	li	a1,0
8000f768:	00000613          	li	a2,0
8000f76c:	00000693          	li	a3,0
8000f770:	00000713          	li	a4,0
8000f774:	00000793          	li	a5,0
8000f778:	0d600893          	li	a7,214
8000f77c:	00000073          	ecall
8000f780:	9e432783          	lw	a5,-1564(t1)
8000f784:	00f80833          	add	a6,a6,a5
8000f788:	01051c63          	bne	a0,a6,8000f7a0 <_sbrk+0x84>
8000f78c:	00c12083          	lw	ra,12(sp)
8000f790:	9ea32223          	sw	a0,-1564(t1)
8000f794:	00078513          	mv	a0,a5
8000f798:	01010113          	addi	sp,sp,16
8000f79c:	00008067          	ret
8000f7a0:	110000ef          	jal	ra,8000f8b0 <__errno>
8000f7a4:	00c12083          	lw	ra,12(sp)
8000f7a8:	00c00793          	li	a5,12
8000f7ac:	00f52023          	sw	a5,0(a0)
8000f7b0:	fff00513          	li	a0,-1
8000f7b4:	01010113          	addi	sp,sp,16
8000f7b8:	00008067          	ret

8000f7bc <_write>:
8000f7bc:	ff010113          	addi	sp,sp,-16
8000f7c0:	00112623          	sw	ra,12(sp)
8000f7c4:	00812423          	sw	s0,8(sp)
8000f7c8:	00000693          	li	a3,0
8000f7cc:	00000713          	li	a4,0
8000f7d0:	00000793          	li	a5,0
8000f7d4:	04000893          	li	a7,64
8000f7d8:	00000073          	ecall
8000f7dc:	00050413          	mv	s0,a0
8000f7e0:	00054c63          	bltz	a0,8000f7f8 <_write+0x3c>
8000f7e4:	00c12083          	lw	ra,12(sp)
8000f7e8:	00040513          	mv	a0,s0
8000f7ec:	00812403          	lw	s0,8(sp)
8000f7f0:	01010113          	addi	sp,sp,16
8000f7f4:	00008067          	ret
8000f7f8:	40800433          	neg	s0,s0
8000f7fc:	0b4000ef          	jal	ra,8000f8b0 <__errno>
8000f800:	00852023          	sw	s0,0(a0)
8000f804:	fff00413          	li	s0,-1
8000f808:	fddff06f          	j	8000f7e4 <_write+0x28>

8000f80c <_conv_stat>:
8000f80c:	ff010113          	addi	sp,sp,-16
8000f810:	0145a383          	lw	t2,20(a1)
8000f814:	0185a283          	lw	t0,24(a1)
8000f818:	01c5af83          	lw	t6,28(a1)
8000f81c:	0205af03          	lw	t5,32(a1)
8000f820:	0305ae83          	lw	t4,48(a1)
8000f824:	0405ae03          	lw	t3,64(a1)
8000f828:	0385a303          	lw	t1,56(a1)
8000f82c:	0485a803          	lw	a6,72(a1)
8000f830:	04c5a883          	lw	a7,76(a1)
8000f834:	0585a603          	lw	a2,88(a1)
8000f838:	00812623          	sw	s0,12(sp)
8000f83c:	00912423          	sw	s1,8(sp)
8000f840:	0105a403          	lw	s0,16(a1)
8000f844:	0085a483          	lw	s1,8(a1)
8000f848:	01212223          	sw	s2,4(sp)
8000f84c:	0005a903          	lw	s2,0(a1)
8000f850:	05c5a683          	lw	a3,92(a1)
8000f854:	0685a703          	lw	a4,104(a1)
8000f858:	06c5a783          	lw	a5,108(a1)
8000f85c:	01251023          	sh	s2,0(a0)
8000f860:	00951123          	sh	s1,2(a0)
8000f864:	00852223          	sw	s0,4(a0)
8000f868:	00751423          	sh	t2,8(a0)
8000f86c:	00551523          	sh	t0,10(a0)
8000f870:	01f51623          	sh	t6,12(a0)
8000f874:	01e51723          	sh	t5,14(a0)
8000f878:	01d52823          	sw	t4,16(a0)
8000f87c:	05c52623          	sw	t3,76(a0)
8000f880:	04652423          	sw	t1,72(a0)
8000f884:	01052c23          	sw	a6,24(a0)
8000f888:	01152e23          	sw	a7,28(a0)
8000f88c:	02c52423          	sw	a2,40(a0)
8000f890:	02d52623          	sw	a3,44(a0)
8000f894:	00c12403          	lw	s0,12(sp)
8000f898:	02e52c23          	sw	a4,56(a0)
8000f89c:	02f52e23          	sw	a5,60(a0)
8000f8a0:	00812483          	lw	s1,8(sp)
8000f8a4:	00412903          	lw	s2,4(sp)
8000f8a8:	01010113          	addi	sp,sp,16
8000f8ac:	00008067          	ret

8000f8b0 <__errno>:
8000f8b0:	800167b7          	lui	a5,0x80016
8000f8b4:	99c7a503          	lw	a0,-1636(a5) # 8001599c <heap_end.1814+0xffffffb8>
8000f8b8:	00008067          	ret

8000f8bc <__udivdi3>:
8000f8bc:	00050893          	mv	a7,a0
8000f8c0:	00058793          	mv	a5,a1
8000f8c4:	00060813          	mv	a6,a2
8000f8c8:	00068513          	mv	a0,a3
8000f8cc:	00088313          	mv	t1,a7
8000f8d0:	28069463          	bnez	a3,8000fb58 <__udivdi3+0x29c>
8000f8d4:	800156b7          	lui	a3,0x80015
8000f8d8:	aac68693          	addi	a3,a3,-1364 # 80014aac <heap_end.1814+0xfffff0c8>
8000f8dc:	0ec5f663          	bgeu	a1,a2,8000f9c8 <__udivdi3+0x10c>
8000f8e0:	00010737          	lui	a4,0x10
8000f8e4:	0ce67863          	bgeu	a2,a4,8000f9b4 <__udivdi3+0xf8>
8000f8e8:	0ff00713          	li	a4,255
8000f8ec:	00c73733          	sltu	a4,a4,a2
8000f8f0:	00371713          	slli	a4,a4,0x3
8000f8f4:	00e65533          	srl	a0,a2,a4
8000f8f8:	00a686b3          	add	a3,a3,a0
8000f8fc:	0006c683          	lbu	a3,0(a3)
8000f900:	02000513          	li	a0,32
8000f904:	00e68733          	add	a4,a3,a4
8000f908:	40e506b3          	sub	a3,a0,a4
8000f90c:	00e50c63          	beq	a0,a4,8000f924 <__udivdi3+0x68>
8000f910:	00d797b3          	sll	a5,a5,a3
8000f914:	00e8d733          	srl	a4,a7,a4
8000f918:	00d61833          	sll	a6,a2,a3
8000f91c:	00f765b3          	or	a1,a4,a5
8000f920:	00d89333          	sll	t1,a7,a3
8000f924:	01085893          	srli	a7,a6,0x10
8000f928:	0315d7b3          	divu	a5,a1,a7
8000f92c:	01081613          	slli	a2,a6,0x10
8000f930:	01065613          	srli	a2,a2,0x10
8000f934:	01035713          	srli	a4,t1,0x10
8000f938:	0315f6b3          	remu	a3,a1,a7
8000f93c:	00078513          	mv	a0,a5
8000f940:	02f605b3          	mul	a1,a2,a5
8000f944:	01069693          	slli	a3,a3,0x10
8000f948:	00e6e733          	or	a4,a3,a4
8000f94c:	00b77e63          	bgeu	a4,a1,8000f968 <__udivdi3+0xac>
8000f950:	01070733          	add	a4,a4,a6
8000f954:	fff78513          	addi	a0,a5,-1
8000f958:	01076863          	bltu	a4,a6,8000f968 <__udivdi3+0xac>
8000f95c:	00b77663          	bgeu	a4,a1,8000f968 <__udivdi3+0xac>
8000f960:	ffe78513          	addi	a0,a5,-2
8000f964:	01070733          	add	a4,a4,a6
8000f968:	40b70733          	sub	a4,a4,a1
8000f96c:	031777b3          	remu	a5,a4,a7
8000f970:	01031313          	slli	t1,t1,0x10
8000f974:	01035313          	srli	t1,t1,0x10
8000f978:	03175733          	divu	a4,a4,a7
8000f97c:	01079793          	slli	a5,a5,0x10
8000f980:	0067e333          	or	t1,a5,t1
8000f984:	02e606b3          	mul	a3,a2,a4
8000f988:	00070613          	mv	a2,a4
8000f98c:	00d37c63          	bgeu	t1,a3,8000f9a4 <__udivdi3+0xe8>
8000f990:	00680333          	add	t1,a6,t1
8000f994:	fff70613          	addi	a2,a4,-1 # ffff <_printf_r-0x7fff0001>
8000f998:	01036663          	bltu	t1,a6,8000f9a4 <__udivdi3+0xe8>
8000f99c:	00d37463          	bgeu	t1,a3,8000f9a4 <__udivdi3+0xe8>
8000f9a0:	ffe70613          	addi	a2,a4,-2
8000f9a4:	01051513          	slli	a0,a0,0x10
8000f9a8:	00c56533          	or	a0,a0,a2
8000f9ac:	00000593          	li	a1,0
8000f9b0:	0e40006f          	j	8000fa94 <__udivdi3+0x1d8>
8000f9b4:	01000537          	lui	a0,0x1000
8000f9b8:	01000713          	li	a4,16
8000f9bc:	f2a66ce3          	bltu	a2,a0,8000f8f4 <__udivdi3+0x38>
8000f9c0:	01800713          	li	a4,24
8000f9c4:	f31ff06f          	j	8000f8f4 <__udivdi3+0x38>
8000f9c8:	00061663          	bnez	a2,8000f9d4 <__udivdi3+0x118>
8000f9cc:	00100713          	li	a4,1
8000f9d0:	02c75833          	divu	a6,a4,a2
8000f9d4:	00010737          	lui	a4,0x10
8000f9d8:	0ce87063          	bgeu	a6,a4,8000fa98 <__udivdi3+0x1dc>
8000f9dc:	0ff00713          	li	a4,255
8000f9e0:	01077463          	bgeu	a4,a6,8000f9e8 <__udivdi3+0x12c>
8000f9e4:	00800513          	li	a0,8
8000f9e8:	00a85733          	srl	a4,a6,a0
8000f9ec:	00e686b3          	add	a3,a3,a4
8000f9f0:	0006c703          	lbu	a4,0(a3)
8000f9f4:	02000613          	li	a2,32
8000f9f8:	00a70733          	add	a4,a4,a0
8000f9fc:	40e606b3          	sub	a3,a2,a4
8000fa00:	0ae61663          	bne	a2,a4,8000faac <__udivdi3+0x1f0>
8000fa04:	410787b3          	sub	a5,a5,a6
8000fa08:	00100593          	li	a1,1
8000fa0c:	01085893          	srli	a7,a6,0x10
8000fa10:	01081613          	slli	a2,a6,0x10
8000fa14:	01065613          	srli	a2,a2,0x10
8000fa18:	01035713          	srli	a4,t1,0x10
8000fa1c:	0317f6b3          	remu	a3,a5,a7
8000fa20:	0317d7b3          	divu	a5,a5,a7
8000fa24:	01069693          	slli	a3,a3,0x10
8000fa28:	00e6e733          	or	a4,a3,a4
8000fa2c:	02f60e33          	mul	t3,a2,a5
8000fa30:	00078513          	mv	a0,a5
8000fa34:	01c77e63          	bgeu	a4,t3,8000fa50 <__udivdi3+0x194>
8000fa38:	01070733          	add	a4,a4,a6
8000fa3c:	fff78513          	addi	a0,a5,-1
8000fa40:	01076863          	bltu	a4,a6,8000fa50 <__udivdi3+0x194>
8000fa44:	01c77663          	bgeu	a4,t3,8000fa50 <__udivdi3+0x194>
8000fa48:	ffe78513          	addi	a0,a5,-2
8000fa4c:	01070733          	add	a4,a4,a6
8000fa50:	41c70733          	sub	a4,a4,t3
8000fa54:	031777b3          	remu	a5,a4,a7
8000fa58:	01031313          	slli	t1,t1,0x10
8000fa5c:	01035313          	srli	t1,t1,0x10
8000fa60:	03175733          	divu	a4,a4,a7
8000fa64:	01079793          	slli	a5,a5,0x10
8000fa68:	0067e333          	or	t1,a5,t1
8000fa6c:	02e606b3          	mul	a3,a2,a4
8000fa70:	00070613          	mv	a2,a4
8000fa74:	00d37c63          	bgeu	t1,a3,8000fa8c <__udivdi3+0x1d0>
8000fa78:	00680333          	add	t1,a6,t1
8000fa7c:	fff70613          	addi	a2,a4,-1 # ffff <_printf_r-0x7fff0001>
8000fa80:	01036663          	bltu	t1,a6,8000fa8c <__udivdi3+0x1d0>
8000fa84:	00d37463          	bgeu	t1,a3,8000fa8c <__udivdi3+0x1d0>
8000fa88:	ffe70613          	addi	a2,a4,-2
8000fa8c:	01051513          	slli	a0,a0,0x10
8000fa90:	00c56533          	or	a0,a0,a2
8000fa94:	00008067          	ret
8000fa98:	01000737          	lui	a4,0x1000
8000fa9c:	01000513          	li	a0,16
8000faa0:	f4e864e3          	bltu	a6,a4,8000f9e8 <__udivdi3+0x12c>
8000faa4:	01800513          	li	a0,24
8000faa8:	f41ff06f          	j	8000f9e8 <__udivdi3+0x12c>
8000faac:	00d81833          	sll	a6,a6,a3
8000fab0:	00e7d5b3          	srl	a1,a5,a4
8000fab4:	00d89333          	sll	t1,a7,a3
8000fab8:	00d797b3          	sll	a5,a5,a3
8000fabc:	00e8d733          	srl	a4,a7,a4
8000fac0:	01085893          	srli	a7,a6,0x10
8000fac4:	00f76633          	or	a2,a4,a5
8000fac8:	0315f733          	remu	a4,a1,a7
8000facc:	01081793          	slli	a5,a6,0x10
8000fad0:	0107d793          	srli	a5,a5,0x10
8000fad4:	01065513          	srli	a0,a2,0x10
8000fad8:	0315d5b3          	divu	a1,a1,a7
8000fadc:	01071713          	slli	a4,a4,0x10
8000fae0:	00a76733          	or	a4,a4,a0
8000fae4:	02b786b3          	mul	a3,a5,a1
8000fae8:	00058513          	mv	a0,a1
8000faec:	00d77e63          	bgeu	a4,a3,8000fb08 <__udivdi3+0x24c>
8000faf0:	01070733          	add	a4,a4,a6
8000faf4:	fff58513          	addi	a0,a1,-1
8000faf8:	01076863          	bltu	a4,a6,8000fb08 <__udivdi3+0x24c>
8000fafc:	00d77663          	bgeu	a4,a3,8000fb08 <__udivdi3+0x24c>
8000fb00:	ffe58513          	addi	a0,a1,-2
8000fb04:	01070733          	add	a4,a4,a6
8000fb08:	40d706b3          	sub	a3,a4,a3
8000fb0c:	0316f733          	remu	a4,a3,a7
8000fb10:	01061613          	slli	a2,a2,0x10
8000fb14:	01065613          	srli	a2,a2,0x10
8000fb18:	0316d6b3          	divu	a3,a3,a7
8000fb1c:	01071713          	slli	a4,a4,0x10
8000fb20:	02d788b3          	mul	a7,a5,a3
8000fb24:	00c767b3          	or	a5,a4,a2
8000fb28:	00068713          	mv	a4,a3
8000fb2c:	0117fe63          	bgeu	a5,a7,8000fb48 <__udivdi3+0x28c>
8000fb30:	010787b3          	add	a5,a5,a6
8000fb34:	fff68713          	addi	a4,a3,-1
8000fb38:	0107e863          	bltu	a5,a6,8000fb48 <__udivdi3+0x28c>
8000fb3c:	0117f663          	bgeu	a5,a7,8000fb48 <__udivdi3+0x28c>
8000fb40:	ffe68713          	addi	a4,a3,-2
8000fb44:	010787b3          	add	a5,a5,a6
8000fb48:	01051593          	slli	a1,a0,0x10
8000fb4c:	411787b3          	sub	a5,a5,a7
8000fb50:	00e5e5b3          	or	a1,a1,a4
8000fb54:	eb9ff06f          	j	8000fa0c <__udivdi3+0x150>
8000fb58:	18d5e663          	bltu	a1,a3,8000fce4 <__udivdi3+0x428>
8000fb5c:	00010737          	lui	a4,0x10
8000fb60:	04e6f463          	bgeu	a3,a4,8000fba8 <__udivdi3+0x2ec>
8000fb64:	0ff00713          	li	a4,255
8000fb68:	00d735b3          	sltu	a1,a4,a3
8000fb6c:	00359593          	slli	a1,a1,0x3
8000fb70:	80015737          	lui	a4,0x80015
8000fb74:	00b6d533          	srl	a0,a3,a1
8000fb78:	aac70713          	addi	a4,a4,-1364 # 80014aac <heap_end.1814+0xfffff0c8>
8000fb7c:	00a70733          	add	a4,a4,a0
8000fb80:	00074703          	lbu	a4,0(a4)
8000fb84:	02000513          	li	a0,32
8000fb88:	00b70733          	add	a4,a4,a1
8000fb8c:	40e505b3          	sub	a1,a0,a4
8000fb90:	02e51663          	bne	a0,a4,8000fbbc <__udivdi3+0x300>
8000fb94:	00100513          	li	a0,1
8000fb98:	eef6eee3          	bltu	a3,a5,8000fa94 <__udivdi3+0x1d8>
8000fb9c:	00c8b533          	sltu	a0,a7,a2
8000fba0:	00154513          	xori	a0,a0,1
8000fba4:	ef1ff06f          	j	8000fa94 <__udivdi3+0x1d8>
8000fba8:	01000737          	lui	a4,0x1000
8000fbac:	01000593          	li	a1,16
8000fbb0:	fce6e0e3          	bltu	a3,a4,8000fb70 <__udivdi3+0x2b4>
8000fbb4:	01800593          	li	a1,24
8000fbb8:	fb9ff06f          	j	8000fb70 <__udivdi3+0x2b4>
8000fbbc:	00e65333          	srl	t1,a2,a4
8000fbc0:	00b696b3          	sll	a3,a3,a1
8000fbc4:	00d36333          	or	t1,t1,a3
8000fbc8:	01035513          	srli	a0,t1,0x10
8000fbcc:	00b61eb3          	sll	t4,a2,a1
8000fbd0:	00e7d633          	srl	a2,a5,a4
8000fbd4:	02a676b3          	remu	a3,a2,a0
8000fbd8:	00b797b3          	sll	a5,a5,a1
8000fbdc:	00e8d733          	srl	a4,a7,a4
8000fbe0:	00f76833          	or	a6,a4,a5
8000fbe4:	01031793          	slli	a5,t1,0x10
8000fbe8:	0107d793          	srli	a5,a5,0x10
8000fbec:	01085713          	srli	a4,a6,0x10
8000fbf0:	02a65633          	divu	a2,a2,a0
8000fbf4:	01069693          	slli	a3,a3,0x10
8000fbf8:	00e6e733          	or	a4,a3,a4
8000fbfc:	02c78f33          	mul	t5,a5,a2
8000fc00:	00060e13          	mv	t3,a2
8000fc04:	01e77e63          	bgeu	a4,t5,8000fc20 <__udivdi3+0x364>
8000fc08:	00670733          	add	a4,a4,t1
8000fc0c:	fff60e13          	addi	t3,a2,-1
8000fc10:	00676863          	bltu	a4,t1,8000fc20 <__udivdi3+0x364>
8000fc14:	01e77663          	bgeu	a4,t5,8000fc20 <__udivdi3+0x364>
8000fc18:	ffe60e13          	addi	t3,a2,-2
8000fc1c:	00670733          	add	a4,a4,t1
8000fc20:	41e70733          	sub	a4,a4,t5
8000fc24:	02a776b3          	remu	a3,a4,a0
8000fc28:	02a75733          	divu	a4,a4,a0
8000fc2c:	01069693          	slli	a3,a3,0x10
8000fc30:	02e78633          	mul	a2,a5,a4
8000fc34:	01081793          	slli	a5,a6,0x10
8000fc38:	0107d793          	srli	a5,a5,0x10
8000fc3c:	00f6e7b3          	or	a5,a3,a5
8000fc40:	00070693          	mv	a3,a4
8000fc44:	00c7fe63          	bgeu	a5,a2,8000fc60 <__udivdi3+0x3a4>
8000fc48:	006787b3          	add	a5,a5,t1
8000fc4c:	fff70693          	addi	a3,a4,-1 # ffffff <_printf_r-0x7f000001>
8000fc50:	0067e863          	bltu	a5,t1,8000fc60 <__udivdi3+0x3a4>
8000fc54:	00c7f663          	bgeu	a5,a2,8000fc60 <__udivdi3+0x3a4>
8000fc58:	ffe70693          	addi	a3,a4,-2
8000fc5c:	006787b3          	add	a5,a5,t1
8000fc60:	010e1513          	slli	a0,t3,0x10
8000fc64:	00010e37          	lui	t3,0x10
8000fc68:	00d56533          	or	a0,a0,a3
8000fc6c:	fffe0693          	addi	a3,t3,-1 # ffff <_printf_r-0x7fff0001>
8000fc70:	00d57833          	and	a6,a0,a3
8000fc74:	40c787b3          	sub	a5,a5,a2
8000fc78:	00def6b3          	and	a3,t4,a3
8000fc7c:	01055613          	srli	a2,a0,0x10
8000fc80:	010ede93          	srli	t4,t4,0x10
8000fc84:	02d80333          	mul	t1,a6,a3
8000fc88:	02d606b3          	mul	a3,a2,a3
8000fc8c:	01035713          	srli	a4,t1,0x10
8000fc90:	03d80833          	mul	a6,a6,t4
8000fc94:	00d80833          	add	a6,a6,a3
8000fc98:	01070733          	add	a4,a4,a6
8000fc9c:	03d60633          	mul	a2,a2,t4
8000fca0:	00d77463          	bgeu	a4,a3,8000fca8 <__udivdi3+0x3ec>
8000fca4:	01c60633          	add	a2,a2,t3
8000fca8:	01075693          	srli	a3,a4,0x10
8000fcac:	00c68633          	add	a2,a3,a2
8000fcb0:	02c7e663          	bltu	a5,a2,8000fcdc <__udivdi3+0x420>
8000fcb4:	cec79ce3          	bne	a5,a2,8000f9ac <__udivdi3+0xf0>
8000fcb8:	000107b7          	lui	a5,0x10
8000fcbc:	fff78793          	addi	a5,a5,-1 # ffff <_printf_r-0x7fff0001>
8000fcc0:	00f77733          	and	a4,a4,a5
8000fcc4:	01071713          	slli	a4,a4,0x10
8000fcc8:	00f37333          	and	t1,t1,a5
8000fccc:	00b898b3          	sll	a7,a7,a1
8000fcd0:	00670733          	add	a4,a4,t1
8000fcd4:	00000593          	li	a1,0
8000fcd8:	dae8fee3          	bgeu	a7,a4,8000fa94 <__udivdi3+0x1d8>
8000fcdc:	fff50513          	addi	a0,a0,-1 # ffffff <_printf_r-0x7f000001>
8000fce0:	ccdff06f          	j	8000f9ac <__udivdi3+0xf0>
8000fce4:	00000593          	li	a1,0
8000fce8:	00000513          	li	a0,0
8000fcec:	da9ff06f          	j	8000fa94 <__udivdi3+0x1d8>

8000fcf0 <__umoddi3>:
8000fcf0:	00060893          	mv	a7,a2
8000fcf4:	00068713          	mv	a4,a3
8000fcf8:	00050793          	mv	a5,a0
8000fcfc:	00058813          	mv	a6,a1
8000fd00:	22069c63          	bnez	a3,8000ff38 <__umoddi3+0x248>
8000fd04:	800156b7          	lui	a3,0x80015
8000fd08:	aac68693          	addi	a3,a3,-1364 # 80014aac <heap_end.1814+0xfffff0c8>
8000fd0c:	0cc5fc63          	bgeu	a1,a2,8000fde4 <__umoddi3+0xf4>
8000fd10:	00010337          	lui	t1,0x10
8000fd14:	0a667e63          	bgeu	a2,t1,8000fdd0 <__umoddi3+0xe0>
8000fd18:	0ff00313          	li	t1,255
8000fd1c:	00c37463          	bgeu	t1,a2,8000fd24 <__umoddi3+0x34>
8000fd20:	00800713          	li	a4,8
8000fd24:	00e65333          	srl	t1,a2,a4
8000fd28:	006686b3          	add	a3,a3,t1
8000fd2c:	0006ce03          	lbu	t3,0(a3)
8000fd30:	00ee0e33          	add	t3,t3,a4
8000fd34:	02000713          	li	a4,32
8000fd38:	41c70333          	sub	t1,a4,t3
8000fd3c:	01c70c63          	beq	a4,t3,8000fd54 <__umoddi3+0x64>
8000fd40:	006595b3          	sll	a1,a1,t1
8000fd44:	01c55e33          	srl	t3,a0,t3
8000fd48:	006618b3          	sll	a7,a2,t1
8000fd4c:	00be6833          	or	a6,t3,a1
8000fd50:	006517b3          	sll	a5,a0,t1
8000fd54:	0108d613          	srli	a2,a7,0x10
8000fd58:	02c87733          	remu	a4,a6,a2
8000fd5c:	01089513          	slli	a0,a7,0x10
8000fd60:	01055513          	srli	a0,a0,0x10
8000fd64:	0107d693          	srli	a3,a5,0x10
8000fd68:	02c85833          	divu	a6,a6,a2
8000fd6c:	01071713          	slli	a4,a4,0x10
8000fd70:	00d766b3          	or	a3,a4,a3
8000fd74:	03050833          	mul	a6,a0,a6
8000fd78:	0106fa63          	bgeu	a3,a6,8000fd8c <__umoddi3+0x9c>
8000fd7c:	011686b3          	add	a3,a3,a7
8000fd80:	0116e663          	bltu	a3,a7,8000fd8c <__umoddi3+0x9c>
8000fd84:	0106f463          	bgeu	a3,a6,8000fd8c <__umoddi3+0x9c>
8000fd88:	011686b3          	add	a3,a3,a7
8000fd8c:	410686b3          	sub	a3,a3,a6
8000fd90:	02c6f733          	remu	a4,a3,a2
8000fd94:	01079793          	slli	a5,a5,0x10
8000fd98:	0107d793          	srli	a5,a5,0x10
8000fd9c:	02c6d6b3          	divu	a3,a3,a2
8000fda0:	02d506b3          	mul	a3,a0,a3
8000fda4:	01071513          	slli	a0,a4,0x10
8000fda8:	00f567b3          	or	a5,a0,a5
8000fdac:	00d7fa63          	bgeu	a5,a3,8000fdc0 <__umoddi3+0xd0>
8000fdb0:	011787b3          	add	a5,a5,a7
8000fdb4:	0117e663          	bltu	a5,a7,8000fdc0 <__umoddi3+0xd0>
8000fdb8:	00d7f463          	bgeu	a5,a3,8000fdc0 <__umoddi3+0xd0>
8000fdbc:	011787b3          	add	a5,a5,a7
8000fdc0:	40d787b3          	sub	a5,a5,a3
8000fdc4:	0067d533          	srl	a0,a5,t1
8000fdc8:	00000593          	li	a1,0
8000fdcc:	00008067          	ret
8000fdd0:	01000337          	lui	t1,0x1000
8000fdd4:	01000713          	li	a4,16
8000fdd8:	f46666e3          	bltu	a2,t1,8000fd24 <__umoddi3+0x34>
8000fddc:	01800713          	li	a4,24
8000fde0:	f45ff06f          	j	8000fd24 <__umoddi3+0x34>
8000fde4:	00061663          	bnez	a2,8000fdf0 <__umoddi3+0x100>
8000fde8:	00100613          	li	a2,1
8000fdec:	031658b3          	divu	a7,a2,a7
8000fdf0:	00010637          	lui	a2,0x10
8000fdf4:	0ac8f263          	bgeu	a7,a2,8000fe98 <__umoddi3+0x1a8>
8000fdf8:	0ff00613          	li	a2,255
8000fdfc:	01167463          	bgeu	a2,a7,8000fe04 <__umoddi3+0x114>
8000fe00:	00800713          	li	a4,8
8000fe04:	00e8d633          	srl	a2,a7,a4
8000fe08:	00c686b3          	add	a3,a3,a2
8000fe0c:	0006ce03          	lbu	t3,0(a3)
8000fe10:	00ee0e33          	add	t3,t3,a4
8000fe14:	02000713          	li	a4,32
8000fe18:	41c70333          	sub	t1,a4,t3
8000fe1c:	09c71863          	bne	a4,t3,8000feac <__umoddi3+0x1bc>
8000fe20:	411585b3          	sub	a1,a1,a7
8000fe24:	0108d713          	srli	a4,a7,0x10
8000fe28:	01089513          	slli	a0,a7,0x10
8000fe2c:	01055513          	srli	a0,a0,0x10
8000fe30:	0107d613          	srli	a2,a5,0x10
8000fe34:	02e5f6b3          	remu	a3,a1,a4
8000fe38:	02e5d5b3          	divu	a1,a1,a4
8000fe3c:	01069693          	slli	a3,a3,0x10
8000fe40:	00c6e6b3          	or	a3,a3,a2
8000fe44:	02b505b3          	mul	a1,a0,a1
8000fe48:	00b6fa63          	bgeu	a3,a1,8000fe5c <__umoddi3+0x16c>
8000fe4c:	011686b3          	add	a3,a3,a7
8000fe50:	0116e663          	bltu	a3,a7,8000fe5c <__umoddi3+0x16c>
8000fe54:	00b6f463          	bgeu	a3,a1,8000fe5c <__umoddi3+0x16c>
8000fe58:	011686b3          	add	a3,a3,a7
8000fe5c:	40b685b3          	sub	a1,a3,a1
8000fe60:	02e5f6b3          	remu	a3,a1,a4
8000fe64:	01079793          	slli	a5,a5,0x10
8000fe68:	0107d793          	srli	a5,a5,0x10
8000fe6c:	02e5d5b3          	divu	a1,a1,a4
8000fe70:	02b505b3          	mul	a1,a0,a1
8000fe74:	01069513          	slli	a0,a3,0x10
8000fe78:	00f567b3          	or	a5,a0,a5
8000fe7c:	00b7fa63          	bgeu	a5,a1,8000fe90 <__umoddi3+0x1a0>
8000fe80:	011787b3          	add	a5,a5,a7
8000fe84:	0117e663          	bltu	a5,a7,8000fe90 <__umoddi3+0x1a0>
8000fe88:	00b7f463          	bgeu	a5,a1,8000fe90 <__umoddi3+0x1a0>
8000fe8c:	011787b3          	add	a5,a5,a7
8000fe90:	40b787b3          	sub	a5,a5,a1
8000fe94:	f31ff06f          	j	8000fdc4 <__umoddi3+0xd4>
8000fe98:	01000637          	lui	a2,0x1000
8000fe9c:	01000713          	li	a4,16
8000fea0:	f6c8e2e3          	bltu	a7,a2,8000fe04 <__umoddi3+0x114>
8000fea4:	01800713          	li	a4,24
8000fea8:	f5dff06f          	j	8000fe04 <__umoddi3+0x114>
8000feac:	006898b3          	sll	a7,a7,t1
8000feb0:	01c5d733          	srl	a4,a1,t3
8000feb4:	006517b3          	sll	a5,a0,t1
8000feb8:	01c55e33          	srl	t3,a0,t3
8000febc:	0108d513          	srli	a0,a7,0x10
8000fec0:	02a776b3          	remu	a3,a4,a0
8000fec4:	006595b3          	sll	a1,a1,t1
8000fec8:	00be6e33          	or	t3,t3,a1
8000fecc:	01089593          	slli	a1,a7,0x10
8000fed0:	0105d593          	srli	a1,a1,0x10
8000fed4:	010e5613          	srli	a2,t3,0x10
8000fed8:	02a75733          	divu	a4,a4,a0
8000fedc:	01069693          	slli	a3,a3,0x10
8000fee0:	00c6e6b3          	or	a3,a3,a2
8000fee4:	02e58733          	mul	a4,a1,a4
8000fee8:	00e6fa63          	bgeu	a3,a4,8000fefc <__umoddi3+0x20c>
8000feec:	011686b3          	add	a3,a3,a7
8000fef0:	0116e663          	bltu	a3,a7,8000fefc <__umoddi3+0x20c>
8000fef4:	00e6f463          	bgeu	a3,a4,8000fefc <__umoddi3+0x20c>
8000fef8:	011686b3          	add	a3,a3,a7
8000fefc:	40e68633          	sub	a2,a3,a4
8000ff00:	02a676b3          	remu	a3,a2,a0
8000ff04:	010e1e13          	slli	t3,t3,0x10
8000ff08:	010e5e13          	srli	t3,t3,0x10
8000ff0c:	02a65633          	divu	a2,a2,a0
8000ff10:	01069693          	slli	a3,a3,0x10
8000ff14:	02c58633          	mul	a2,a1,a2
8000ff18:	01c6e5b3          	or	a1,a3,t3
8000ff1c:	00c5fa63          	bgeu	a1,a2,8000ff30 <__umoddi3+0x240>
8000ff20:	011585b3          	add	a1,a1,a7
8000ff24:	0115e663          	bltu	a1,a7,8000ff30 <__umoddi3+0x240>
8000ff28:	00c5f463          	bgeu	a1,a2,8000ff30 <__umoddi3+0x240>
8000ff2c:	011585b3          	add	a1,a1,a7
8000ff30:	40c585b3          	sub	a1,a1,a2
8000ff34:	ef1ff06f          	j	8000fe24 <__umoddi3+0x134>
8000ff38:	e8d5eae3          	bltu	a1,a3,8000fdcc <__umoddi3+0xdc>
8000ff3c:	00010737          	lui	a4,0x10
8000ff40:	04e6fc63          	bgeu	a3,a4,8000ff98 <__umoddi3+0x2a8>
8000ff44:	0ff00e13          	li	t3,255
8000ff48:	00de3733          	sltu	a4,t3,a3
8000ff4c:	00371713          	slli	a4,a4,0x3
8000ff50:	800158b7          	lui	a7,0x80015
8000ff54:	00e6d333          	srl	t1,a3,a4
8000ff58:	aac88893          	addi	a7,a7,-1364 # 80014aac <heap_end.1814+0xfffff0c8>
8000ff5c:	006888b3          	add	a7,a7,t1
8000ff60:	0008ce03          	lbu	t3,0(a7)
8000ff64:	00ee0e33          	add	t3,t3,a4
8000ff68:	02000713          	li	a4,32
8000ff6c:	41c70333          	sub	t1,a4,t3
8000ff70:	03c71e63          	bne	a4,t3,8000ffac <__umoddi3+0x2bc>
8000ff74:	00b6e463          	bltu	a3,a1,8000ff7c <__umoddi3+0x28c>
8000ff78:	00c56a63          	bltu	a0,a2,8000ff8c <__umoddi3+0x29c>
8000ff7c:	40c507b3          	sub	a5,a0,a2
8000ff80:	40d585b3          	sub	a1,a1,a3
8000ff84:	00f53533          	sltu	a0,a0,a5
8000ff88:	40a58833          	sub	a6,a1,a0
8000ff8c:	00078513          	mv	a0,a5
8000ff90:	00080593          	mv	a1,a6
8000ff94:	e39ff06f          	j	8000fdcc <__umoddi3+0xdc>
8000ff98:	010008b7          	lui	a7,0x1000
8000ff9c:	01000713          	li	a4,16
8000ffa0:	fb16e8e3          	bltu	a3,a7,8000ff50 <__umoddi3+0x260>
8000ffa4:	01800713          	li	a4,24
8000ffa8:	fa9ff06f          	j	8000ff50 <__umoddi3+0x260>
8000ffac:	01c65733          	srl	a4,a2,t3
8000ffb0:	006696b3          	sll	a3,a3,t1
8000ffb4:	00d76f33          	or	t5,a4,a3
8000ffb8:	01c5d7b3          	srl	a5,a1,t3
8000ffbc:	010f5713          	srli	a4,t5,0x10
8000ffc0:	02e7f8b3          	remu	a7,a5,a4
8000ffc4:	006595b3          	sll	a1,a1,t1
8000ffc8:	01c55833          	srl	a6,a0,t3
8000ffcc:	00b86833          	or	a6,a6,a1
8000ffd0:	010f1593          	slli	a1,t5,0x10
8000ffd4:	0105d593          	srli	a1,a1,0x10
8000ffd8:	01085693          	srli	a3,a6,0x10
8000ffdc:	00661633          	sll	a2,a2,t1
8000ffe0:	00651533          	sll	a0,a0,t1
8000ffe4:	02e7d7b3          	divu	a5,a5,a4
8000ffe8:	01089893          	slli	a7,a7,0x10
8000ffec:	00d8e6b3          	or	a3,a7,a3
8000fff0:	02f58eb3          	mul	t4,a1,a5
8000fff4:	00078893          	mv	a7,a5
8000fff8:	01d6fe63          	bgeu	a3,t4,80010014 <__umoddi3+0x324>
8000fffc:	01e686b3          	add	a3,a3,t5
80010000:	fff78893          	addi	a7,a5,-1
80010004:	01e6e863          	bltu	a3,t5,80010014 <__umoddi3+0x324>
80010008:	01d6f663          	bgeu	a3,t4,80010014 <__umoddi3+0x324>
8001000c:	ffe78893          	addi	a7,a5,-2
80010010:	01e686b3          	add	a3,a3,t5
80010014:	41d686b3          	sub	a3,a3,t4
80010018:	02e6feb3          	remu	t4,a3,a4
8001001c:	01081813          	slli	a6,a6,0x10
80010020:	01085813          	srli	a6,a6,0x10
80010024:	02e6d6b3          	divu	a3,a3,a4
80010028:	010e9e93          	slli	t4,t4,0x10
8001002c:	010eeeb3          	or	t4,t4,a6
80010030:	02d585b3          	mul	a1,a1,a3
80010034:	00068793          	mv	a5,a3
80010038:	00befe63          	bgeu	t4,a1,80010054 <__umoddi3+0x364>
8001003c:	01ee8eb3          	add	t4,t4,t5
80010040:	fff68793          	addi	a5,a3,-1
80010044:	01eee863          	bltu	t4,t5,80010054 <__umoddi3+0x364>
80010048:	00bef663          	bgeu	t4,a1,80010054 <__umoddi3+0x364>
8001004c:	ffe68793          	addi	a5,a3,-2
80010050:	01ee8eb3          	add	t4,t4,t5
80010054:	40be85b3          	sub	a1,t4,a1
80010058:	01089893          	slli	a7,a7,0x10
8001005c:	00010eb7          	lui	t4,0x10
80010060:	00f8e8b3          	or	a7,a7,a5
80010064:	fffe8793          	addi	a5,t4,-1 # ffff <_printf_r-0x7fff0001>
80010068:	00f8f833          	and	a6,a7,a5
8001006c:	01065693          	srli	a3,a2,0x10
80010070:	0108d893          	srli	a7,a7,0x10
80010074:	00f677b3          	and	a5,a2,a5
80010078:	02f80733          	mul	a4,a6,a5
8001007c:	02f887b3          	mul	a5,a7,a5
80010080:	02d80833          	mul	a6,a6,a3
80010084:	02d888b3          	mul	a7,a7,a3
80010088:	00f80833          	add	a6,a6,a5
8001008c:	01075693          	srli	a3,a4,0x10
80010090:	010686b3          	add	a3,a3,a6
80010094:	00f6f463          	bgeu	a3,a5,8001009c <__umoddi3+0x3ac>
80010098:	01d888b3          	add	a7,a7,t4
8001009c:	000107b7          	lui	a5,0x10
800100a0:	fff78793          	addi	a5,a5,-1 # ffff <_printf_r-0x7fff0001>
800100a4:	0106d813          	srli	a6,a3,0x10
800100a8:	00f6f6b3          	and	a3,a3,a5
800100ac:	01069693          	slli	a3,a3,0x10
800100b0:	00f77733          	and	a4,a4,a5
800100b4:	011808b3          	add	a7,a6,a7
800100b8:	00e68733          	add	a4,a3,a4
800100bc:	0115e663          	bltu	a1,a7,800100c8 <__umoddi3+0x3d8>
800100c0:	01159e63          	bne	a1,a7,800100dc <__umoddi3+0x3ec>
800100c4:	00e57c63          	bgeu	a0,a4,800100dc <__umoddi3+0x3ec>
800100c8:	40c70633          	sub	a2,a4,a2
800100cc:	00c73733          	sltu	a4,a4,a2
800100d0:	01e70733          	add	a4,a4,t5
800100d4:	40e888b3          	sub	a7,a7,a4
800100d8:	00060713          	mv	a4,a2
800100dc:	40e50733          	sub	a4,a0,a4
800100e0:	00e53533          	sltu	a0,a0,a4
800100e4:	411585b3          	sub	a1,a1,a7
800100e8:	40a585b3          	sub	a1,a1,a0
800100ec:	01c597b3          	sll	a5,a1,t3
800100f0:	00675733          	srl	a4,a4,t1
800100f4:	00e7e533          	or	a0,a5,a4
800100f8:	0065d5b3          	srl	a1,a1,t1
800100fc:	cd1ff06f          	j	8000fdcc <__umoddi3+0xdc>

80010100 <__divdf3>:
80010100:	fd010113          	addi	sp,sp,-48
80010104:	0145d793          	srli	a5,a1,0x14
80010108:	02912223          	sw	s1,36(sp)
8001010c:	03212023          	sw	s2,32(sp)
80010110:	01412c23          	sw	s4,24(sp)
80010114:	01612823          	sw	s6,16(sp)
80010118:	01812423          	sw	s8,8(sp)
8001011c:	00c59493          	slli	s1,a1,0xc
80010120:	02112623          	sw	ra,44(sp)
80010124:	02812423          	sw	s0,40(sp)
80010128:	01312e23          	sw	s3,28(sp)
8001012c:	01512a23          	sw	s5,20(sp)
80010130:	01712623          	sw	s7,12(sp)
80010134:	01579713          	slli	a4,a5,0x15
80010138:	00050913          	mv	s2,a0
8001013c:	00060b13          	mv	s6,a2
80010140:	00068c13          	mv	s8,a3
80010144:	00c4d493          	srli	s1,s1,0xc
80010148:	01f5da13          	srli	s4,a1,0x1f
8001014c:	0a070463          	beqz	a4,800101f4 <__divdf3+0xf4>
80010150:	7ff7fa93          	andi	s5,a5,2047
80010154:	7ff00793          	li	a5,2047
80010158:	10fa8063          	beq	s5,a5,80010258 <__divdf3+0x158>
8001015c:	01d55993          	srli	s3,a0,0x1d
80010160:	00349493          	slli	s1,s1,0x3
80010164:	0099e4b3          	or	s1,s3,s1
80010168:	008009b7          	lui	s3,0x800
8001016c:	0134e9b3          	or	s3,s1,s3
80010170:	00351413          	slli	s0,a0,0x3
80010174:	c01a8a93          	addi	s5,s5,-1023
80010178:	00000b93          	li	s7,0
8001017c:	014c5793          	srli	a5,s8,0x14
80010180:	00cc1513          	slli	a0,s8,0xc
80010184:	01579713          	slli	a4,a5,0x15
80010188:	00c55493          	srli	s1,a0,0xc
8001018c:	7ff7f593          	andi	a1,a5,2047
80010190:	01fc5c13          	srli	s8,s8,0x1f
80010194:	10070063          	beqz	a4,80010294 <__divdf3+0x194>
80010198:	7ff00793          	li	a5,2047
8001019c:	16f58263          	beq	a1,a5,80010300 <__divdf3+0x200>
800101a0:	00349513          	slli	a0,s1,0x3
800101a4:	01db5793          	srli	a5,s6,0x1d
800101a8:	00a7e533          	or	a0,a5,a0
800101ac:	008004b7          	lui	s1,0x800
800101b0:	009564b3          	or	s1,a0,s1
800101b4:	003b1f93          	slli	t6,s6,0x3
800101b8:	c0158513          	addi	a0,a1,-1023
800101bc:	00000613          	li	a2,0
800101c0:	002b9793          	slli	a5,s7,0x2
800101c4:	00c7e7b3          	or	a5,a5,a2
800101c8:	fff78793          	addi	a5,a5,-1
800101cc:	00e00713          	li	a4,14
800101d0:	018a46b3          	xor	a3,s4,s8
800101d4:	40aa85b3          	sub	a1,s5,a0
800101d8:	16f76063          	bltu	a4,a5,80010338 <__divdf3+0x238>
800101dc:	80015737          	lui	a4,0x80015
800101e0:	00279793          	slli	a5,a5,0x2
800101e4:	9f870713          	addi	a4,a4,-1544 # 800149f8 <heap_end.1814+0xfffff014>
800101e8:	00e787b3          	add	a5,a5,a4
800101ec:	0007a783          	lw	a5,0(a5)
800101f0:	00078067          	jr	a5
800101f4:	00a4e9b3          	or	s3,s1,a0
800101f8:	06098e63          	beqz	s3,80010274 <__divdf3+0x174>
800101fc:	04048063          	beqz	s1,8001023c <__divdf3+0x13c>
80010200:	00048513          	mv	a0,s1
80010204:	3bd030ef          	jal	ra,80013dc0 <__clzsi2>
80010208:	ff550793          	addi	a5,a0,-11
8001020c:	01c00713          	li	a4,28
80010210:	02f74c63          	blt	a4,a5,80010248 <__divdf3+0x148>
80010214:	01d00993          	li	s3,29
80010218:	ff850413          	addi	s0,a0,-8
8001021c:	40f989b3          	sub	s3,s3,a5
80010220:	008494b3          	sll	s1,s1,s0
80010224:	013959b3          	srl	s3,s2,s3
80010228:	0099e9b3          	or	s3,s3,s1
8001022c:	00891433          	sll	s0,s2,s0
80010230:	c0d00593          	li	a1,-1011
80010234:	40a58ab3          	sub	s5,a1,a0
80010238:	f41ff06f          	j	80010178 <__divdf3+0x78>
8001023c:	385030ef          	jal	ra,80013dc0 <__clzsi2>
80010240:	02050513          	addi	a0,a0,32
80010244:	fc5ff06f          	j	80010208 <__divdf3+0x108>
80010248:	fd850493          	addi	s1,a0,-40
8001024c:	009919b3          	sll	s3,s2,s1
80010250:	00000413          	li	s0,0
80010254:	fddff06f          	j	80010230 <__divdf3+0x130>
80010258:	00a4e9b3          	or	s3,s1,a0
8001025c:	02098463          	beqz	s3,80010284 <__divdf3+0x184>
80010260:	00050413          	mv	s0,a0
80010264:	00048993          	mv	s3,s1
80010268:	7ff00a93          	li	s5,2047
8001026c:	00300b93          	li	s7,3
80010270:	f0dff06f          	j	8001017c <__divdf3+0x7c>
80010274:	00000413          	li	s0,0
80010278:	00000a93          	li	s5,0
8001027c:	00100b93          	li	s7,1
80010280:	efdff06f          	j	8001017c <__divdf3+0x7c>
80010284:	00000413          	li	s0,0
80010288:	7ff00a93          	li	s5,2047
8001028c:	00200b93          	li	s7,2
80010290:	eedff06f          	j	8001017c <__divdf3+0x7c>
80010294:	0164efb3          	or	t6,s1,s6
80010298:	080f8063          	beqz	t6,80010318 <__divdf3+0x218>
8001029c:	04048263          	beqz	s1,800102e0 <__divdf3+0x1e0>
800102a0:	00048513          	mv	a0,s1
800102a4:	31d030ef          	jal	ra,80013dc0 <__clzsi2>
800102a8:	00050593          	mv	a1,a0
800102ac:	ff558793          	addi	a5,a1,-11
800102b0:	01c00713          	li	a4,28
800102b4:	02f74e63          	blt	a4,a5,800102f0 <__divdf3+0x1f0>
800102b8:	01d00693          	li	a3,29
800102bc:	ff858f93          	addi	t6,a1,-8
800102c0:	40f686b3          	sub	a3,a3,a5
800102c4:	01f49533          	sll	a0,s1,t6
800102c8:	00db56b3          	srl	a3,s6,a3
800102cc:	00a6e4b3          	or	s1,a3,a0
800102d0:	01fb1fb3          	sll	t6,s6,t6
800102d4:	c0d00713          	li	a4,-1011
800102d8:	40b70533          	sub	a0,a4,a1
800102dc:	ee1ff06f          	j	800101bc <__divdf3+0xbc>
800102e0:	000b0513          	mv	a0,s6
800102e4:	2dd030ef          	jal	ra,80013dc0 <__clzsi2>
800102e8:	02050593          	addi	a1,a0,32
800102ec:	fc1ff06f          	j	800102ac <__divdf3+0x1ac>
800102f0:	fd858513          	addi	a0,a1,-40
800102f4:	00ab14b3          	sll	s1,s6,a0
800102f8:	00000f93          	li	t6,0
800102fc:	fd9ff06f          	j	800102d4 <__divdf3+0x1d4>
80010300:	0164efb3          	or	t6,s1,s6
80010304:	020f8263          	beqz	t6,80010328 <__divdf3+0x228>
80010308:	000b0f93          	mv	t6,s6
8001030c:	7ff00513          	li	a0,2047
80010310:	00300613          	li	a2,3
80010314:	eadff06f          	j	800101c0 <__divdf3+0xc0>
80010318:	00000493          	li	s1,0
8001031c:	00000513          	li	a0,0
80010320:	00100613          	li	a2,1
80010324:	e9dff06f          	j	800101c0 <__divdf3+0xc0>
80010328:	00000493          	li	s1,0
8001032c:	7ff00513          	li	a0,2047
80010330:	00200613          	li	a2,2
80010334:	e8dff06f          	j	800101c0 <__divdf3+0xc0>
80010338:	0134e663          	bltu	s1,s3,80010344 <__divdf3+0x244>
8001033c:	34999c63          	bne	s3,s1,80010694 <__divdf3+0x594>
80010340:	35f46a63          	bltu	s0,t6,80010694 <__divdf3+0x594>
80010344:	01f99613          	slli	a2,s3,0x1f
80010348:	00145713          	srli	a4,s0,0x1
8001034c:	01f41793          	slli	a5,s0,0x1f
80010350:	0019d993          	srli	s3,s3,0x1
80010354:	00e66433          	or	s0,a2,a4
80010358:	00849513          	slli	a0,s1,0x8
8001035c:	018fd893          	srli	a7,t6,0x18
80010360:	00a8e8b3          	or	a7,a7,a0
80010364:	01055513          	srli	a0,a0,0x10
80010368:	02a9d833          	divu	a6,s3,a0
8001036c:	01089e93          	slli	t4,a7,0x10
80010370:	010ede93          	srli	t4,t4,0x10
80010374:	01045713          	srli	a4,s0,0x10
80010378:	008f9313          	slli	t1,t6,0x8
8001037c:	02a9f4b3          	remu	s1,s3,a0
80010380:	00080f93          	mv	t6,a6
80010384:	030e8633          	mul	a2,t4,a6
80010388:	01049993          	slli	s3,s1,0x10
8001038c:	01376733          	or	a4,a4,s3
80010390:	00c77e63          	bgeu	a4,a2,800103ac <__divdf3+0x2ac>
80010394:	01170733          	add	a4,a4,a7
80010398:	fff80f93          	addi	t6,a6,-1
8001039c:	01176863          	bltu	a4,a7,800103ac <__divdf3+0x2ac>
800103a0:	00c77663          	bgeu	a4,a2,800103ac <__divdf3+0x2ac>
800103a4:	ffe80f93          	addi	t6,a6,-2
800103a8:	01170733          	add	a4,a4,a7
800103ac:	40c70733          	sub	a4,a4,a2
800103b0:	02a75e33          	divu	t3,a4,a0
800103b4:	01041413          	slli	s0,s0,0x10
800103b8:	01045413          	srli	s0,s0,0x10
800103bc:	02a77733          	remu	a4,a4,a0
800103c0:	000e0613          	mv	a2,t3
800103c4:	03ce8833          	mul	a6,t4,t3
800103c8:	01071713          	slli	a4,a4,0x10
800103cc:	00e46733          	or	a4,s0,a4
800103d0:	01077e63          	bgeu	a4,a6,800103ec <__divdf3+0x2ec>
800103d4:	01170733          	add	a4,a4,a7
800103d8:	fffe0613          	addi	a2,t3,-1
800103dc:	01176863          	bltu	a4,a7,800103ec <__divdf3+0x2ec>
800103e0:	01077663          	bgeu	a4,a6,800103ec <__divdf3+0x2ec>
800103e4:	ffee0613          	addi	a2,t3,-2
800103e8:	01170733          	add	a4,a4,a7
800103ec:	41070433          	sub	s0,a4,a6
800103f0:	010f9f93          	slli	t6,t6,0x10
800103f4:	00010837          	lui	a6,0x10
800103f8:	00cfefb3          	or	t6,t6,a2
800103fc:	fff80e13          	addi	t3,a6,-1 # ffff <_printf_r-0x7fff0001>
80010400:	010fd613          	srli	a2,t6,0x10
80010404:	01cff733          	and	a4,t6,t3
80010408:	01035f13          	srli	t5,t1,0x10
8001040c:	01c37e33          	and	t3,t1,t3
80010410:	02ee03b3          	mul	t2,t3,a4
80010414:	03c604b3          	mul	s1,a2,t3
80010418:	02ef0733          	mul	a4,t5,a4
8001041c:	03e602b3          	mul	t0,a2,t5
80010420:	00970633          	add	a2,a4,s1
80010424:	0103d713          	srli	a4,t2,0x10
80010428:	00c70733          	add	a4,a4,a2
8001042c:	00977463          	bgeu	a4,s1,80010434 <__divdf3+0x334>
80010430:	010282b3          	add	t0,t0,a6
80010434:	01075613          	srli	a2,a4,0x10
80010438:	00560633          	add	a2,a2,t0
8001043c:	000102b7          	lui	t0,0x10
80010440:	fff28293          	addi	t0,t0,-1 # ffff <_printf_r-0x7fff0001>
80010444:	00577833          	and	a6,a4,t0
80010448:	01081813          	slli	a6,a6,0x10
8001044c:	0053f3b3          	and	t2,t2,t0
80010450:	00780833          	add	a6,a6,t2
80010454:	00c46863          	bltu	s0,a2,80010464 <__divdf3+0x364>
80010458:	000f8493          	mv	s1,t6
8001045c:	04c41463          	bne	s0,a2,800104a4 <__divdf3+0x3a4>
80010460:	0507f263          	bgeu	a5,a6,800104a4 <__divdf3+0x3a4>
80010464:	006787b3          	add	a5,a5,t1
80010468:	0067b733          	sltu	a4,a5,t1
8001046c:	01170733          	add	a4,a4,a7
80010470:	00e40433          	add	s0,s0,a4
80010474:	ffff8493          	addi	s1,t6,-1
80010478:	0088e663          	bltu	a7,s0,80010484 <__divdf3+0x384>
8001047c:	02889463          	bne	a7,s0,800104a4 <__divdf3+0x3a4>
80010480:	0267e263          	bltu	a5,t1,800104a4 <__divdf3+0x3a4>
80010484:	00c46663          	bltu	s0,a2,80010490 <__divdf3+0x390>
80010488:	00861e63          	bne	a2,s0,800104a4 <__divdf3+0x3a4>
8001048c:	0107fc63          	bgeu	a5,a6,800104a4 <__divdf3+0x3a4>
80010490:	006787b3          	add	a5,a5,t1
80010494:	0067b733          	sltu	a4,a5,t1
80010498:	01170733          	add	a4,a4,a7
8001049c:	ffef8493          	addi	s1,t6,-2
800104a0:	00e40433          	add	s0,s0,a4
800104a4:	41078833          	sub	a6,a5,a6
800104a8:	40c40433          	sub	s0,s0,a2
800104ac:	0107b7b3          	sltu	a5,a5,a6
800104b0:	40f40433          	sub	s0,s0,a5
800104b4:	fff00f93          	li	t6,-1
800104b8:	12888463          	beq	a7,s0,800105e0 <__divdf3+0x4e0>
800104bc:	02a45fb3          	divu	t6,s0,a0
800104c0:	01085713          	srli	a4,a6,0x10
800104c4:	02a47433          	remu	s0,s0,a0
800104c8:	000f8613          	mv	a2,t6
800104cc:	03fe87b3          	mul	a5,t4,t6
800104d0:	01041413          	slli	s0,s0,0x10
800104d4:	00876433          	or	s0,a4,s0
800104d8:	00f47e63          	bgeu	s0,a5,800104f4 <__divdf3+0x3f4>
800104dc:	01140433          	add	s0,s0,a7
800104e0:	ffff8613          	addi	a2,t6,-1
800104e4:	01146863          	bltu	s0,a7,800104f4 <__divdf3+0x3f4>
800104e8:	00f47663          	bgeu	s0,a5,800104f4 <__divdf3+0x3f4>
800104ec:	ffef8613          	addi	a2,t6,-2
800104f0:	01140433          	add	s0,s0,a7
800104f4:	40f40433          	sub	s0,s0,a5
800104f8:	02a45733          	divu	a4,s0,a0
800104fc:	01081813          	slli	a6,a6,0x10
80010500:	01085813          	srli	a6,a6,0x10
80010504:	02a47433          	remu	s0,s0,a0
80010508:	00070793          	mv	a5,a4
8001050c:	02ee8eb3          	mul	t4,t4,a4
80010510:	01041413          	slli	s0,s0,0x10
80010514:	00886433          	or	s0,a6,s0
80010518:	01d47e63          	bgeu	s0,t4,80010534 <__divdf3+0x434>
8001051c:	01140433          	add	s0,s0,a7
80010520:	fff70793          	addi	a5,a4,-1
80010524:	01146863          	bltu	s0,a7,80010534 <__divdf3+0x434>
80010528:	01d47663          	bgeu	s0,t4,80010534 <__divdf3+0x434>
8001052c:	ffe70793          	addi	a5,a4,-2
80010530:	01140433          	add	s0,s0,a7
80010534:	01061613          	slli	a2,a2,0x10
80010538:	00f66633          	or	a2,a2,a5
8001053c:	01061793          	slli	a5,a2,0x10
80010540:	0107d793          	srli	a5,a5,0x10
80010544:	01065713          	srli	a4,a2,0x10
80010548:	02ef0833          	mul	a6,t5,a4
8001054c:	41d40433          	sub	s0,s0,t4
80010550:	02ff0f33          	mul	t5,t5,a5
80010554:	03c78eb3          	mul	t4,a5,t3
80010558:	03c70e33          	mul	t3,a4,t3
8001055c:	010ed793          	srli	a5,t4,0x10
80010560:	01cf0f33          	add	t5,t5,t3
80010564:	01e787b3          	add	a5,a5,t5
80010568:	01c7f663          	bgeu	a5,t3,80010574 <__divdf3+0x474>
8001056c:	00010737          	lui	a4,0x10
80010570:	00e80833          	add	a6,a6,a4
80010574:	0107d713          	srli	a4,a5,0x10
80010578:	01070733          	add	a4,a4,a6
8001057c:	00010837          	lui	a6,0x10
80010580:	fff80813          	addi	a6,a6,-1 # ffff <_printf_r-0x7fff0001>
80010584:	0107f533          	and	a0,a5,a6
80010588:	01051513          	slli	a0,a0,0x10
8001058c:	010efeb3          	and	t4,t4,a6
80010590:	01d50533          	add	a0,a0,t4
80010594:	00e46863          	bltu	s0,a4,800105a4 <__divdf3+0x4a4>
80010598:	24e41063          	bne	s0,a4,800107d8 <__divdf3+0x6d8>
8001059c:	00060f93          	mv	t6,a2
800105a0:	04050063          	beqz	a0,800105e0 <__divdf3+0x4e0>
800105a4:	00888433          	add	s0,a7,s0
800105a8:	fff60f93          	addi	t6,a2,-1 # ffffff <_printf_r-0x7f000001>
800105ac:	03146463          	bltu	s0,a7,800105d4 <__divdf3+0x4d4>
800105b0:	00e46663          	bltu	s0,a4,800105bc <__divdf3+0x4bc>
800105b4:	22e41063          	bne	s0,a4,800107d4 <__divdf3+0x6d4>
800105b8:	02a37063          	bgeu	t1,a0,800105d8 <__divdf3+0x4d8>
800105bc:	00131793          	slli	a5,t1,0x1
800105c0:	0067b333          	sltu	t1,a5,t1
800105c4:	011308b3          	add	a7,t1,a7
800105c8:	ffe60f93          	addi	t6,a2,-2
800105cc:	01140433          	add	s0,s0,a7
800105d0:	00078313          	mv	t1,a5
800105d4:	00e41463          	bne	s0,a4,800105dc <__divdf3+0x4dc>
800105d8:	00650463          	beq	a0,t1,800105e0 <__divdf3+0x4e0>
800105dc:	001fef93          	ori	t6,t6,1
800105e0:	3ff58793          	addi	a5,a1,1023
800105e4:	10f05863          	blez	a5,800106f4 <__divdf3+0x5f4>
800105e8:	007ff713          	andi	a4,t6,7
800105ec:	02070063          	beqz	a4,8001060c <__divdf3+0x50c>
800105f0:	00fff713          	andi	a4,t6,15
800105f4:	00400613          	li	a2,4
800105f8:	00c70a63          	beq	a4,a2,8001060c <__divdf3+0x50c>
800105fc:	004f8613          	addi	a2,t6,4
80010600:	01f63fb3          	sltu	t6,a2,t6
80010604:	01f484b3          	add	s1,s1,t6
80010608:	00060f93          	mv	t6,a2
8001060c:	00749713          	slli	a4,s1,0x7
80010610:	00075a63          	bgez	a4,80010624 <__divdf3+0x524>
80010614:	ff0007b7          	lui	a5,0xff000
80010618:	fff78793          	addi	a5,a5,-1 # feffffff <heap_end.1814+0x7efea61b>
8001061c:	00f4f4b3          	and	s1,s1,a5
80010620:	40058793          	addi	a5,a1,1024
80010624:	7fe00713          	li	a4,2046
80010628:	0af74063          	blt	a4,a5,800106c8 <__divdf3+0x5c8>
8001062c:	003fdf93          	srli	t6,t6,0x3
80010630:	01d49713          	slli	a4,s1,0x1d
80010634:	01f76733          	or	a4,a4,t6
80010638:	0034d513          	srli	a0,s1,0x3
8001063c:	01479793          	slli	a5,a5,0x14
80010640:	7ff00637          	lui	a2,0x7ff00
80010644:	00c51513          	slli	a0,a0,0xc
80010648:	02c12083          	lw	ra,44(sp)
8001064c:	02812403          	lw	s0,40(sp)
80010650:	00c7f7b3          	and	a5,a5,a2
80010654:	00c55513          	srli	a0,a0,0xc
80010658:	00a7e533          	or	a0,a5,a0
8001065c:	01f69693          	slli	a3,a3,0x1f
80010660:	00d567b3          	or	a5,a0,a3
80010664:	02412483          	lw	s1,36(sp)
80010668:	02012903          	lw	s2,32(sp)
8001066c:	01c12983          	lw	s3,28(sp)
80010670:	01812a03          	lw	s4,24(sp)
80010674:	01412a83          	lw	s5,20(sp)
80010678:	01012b03          	lw	s6,16(sp)
8001067c:	00c12b83          	lw	s7,12(sp)
80010680:	00812c03          	lw	s8,8(sp)
80010684:	00070513          	mv	a0,a4
80010688:	00078593          	mv	a1,a5
8001068c:	03010113          	addi	sp,sp,48
80010690:	00008067          	ret
80010694:	fff58593          	addi	a1,a1,-1
80010698:	00000793          	li	a5,0
8001069c:	cbdff06f          	j	80010358 <__divdf3+0x258>
800106a0:	000a0693          	mv	a3,s4
800106a4:	00098493          	mv	s1,s3
800106a8:	00040f93          	mv	t6,s0
800106ac:	000b8613          	mv	a2,s7
800106b0:	00300793          	li	a5,3
800106b4:	0ef60863          	beq	a2,a5,800107a4 <__divdf3+0x6a4>
800106b8:	00100793          	li	a5,1
800106bc:	0ef60e63          	beq	a2,a5,800107b8 <__divdf3+0x6b8>
800106c0:	00200793          	li	a5,2
800106c4:	f0f61ee3          	bne	a2,a5,800105e0 <__divdf3+0x4e0>
800106c8:	00000513          	li	a0,0
800106cc:	00000713          	li	a4,0
800106d0:	7ff00793          	li	a5,2047
800106d4:	f69ff06f          	j	8001063c <__divdf3+0x53c>
800106d8:	000c0693          	mv	a3,s8
800106dc:	fd5ff06f          	j	800106b0 <__divdf3+0x5b0>
800106e0:	000804b7          	lui	s1,0x80
800106e4:	00000f93          	li	t6,0
800106e8:	00000693          	li	a3,0
800106ec:	00300613          	li	a2,3
800106f0:	fc1ff06f          	j	800106b0 <__divdf3+0x5b0>
800106f4:	00100513          	li	a0,1
800106f8:	40f50533          	sub	a0,a0,a5
800106fc:	03800713          	li	a4,56
80010700:	0aa74c63          	blt	a4,a0,800107b8 <__divdf3+0x6b8>
80010704:	01f00713          	li	a4,31
80010708:	06a74463          	blt	a4,a0,80010770 <__divdf3+0x670>
8001070c:	41e58593          	addi	a1,a1,1054
80010710:	00b497b3          	sll	a5,s1,a1
80010714:	00afd733          	srl	a4,t6,a0
80010718:	00bf95b3          	sll	a1,t6,a1
8001071c:	00e7e7b3          	or	a5,a5,a4
80010720:	00b035b3          	snez	a1,a1
80010724:	00b7e7b3          	or	a5,a5,a1
80010728:	00a4d533          	srl	a0,s1,a0
8001072c:	0077f713          	andi	a4,a5,7
80010730:	02070063          	beqz	a4,80010750 <__divdf3+0x650>
80010734:	00f7f713          	andi	a4,a5,15
80010738:	00400613          	li	a2,4
8001073c:	00c70a63          	beq	a4,a2,80010750 <__divdf3+0x650>
80010740:	00478713          	addi	a4,a5,4
80010744:	00f737b3          	sltu	a5,a4,a5
80010748:	00f50533          	add	a0,a0,a5
8001074c:	00070793          	mv	a5,a4
80010750:	00851713          	slli	a4,a0,0x8
80010754:	06074863          	bltz	a4,800107c4 <__divdf3+0x6c4>
80010758:	01d51713          	slli	a4,a0,0x1d
8001075c:	0037d793          	srli	a5,a5,0x3
80010760:	00f76733          	or	a4,a4,a5
80010764:	00355513          	srli	a0,a0,0x3
80010768:	00000793          	li	a5,0
8001076c:	ed1ff06f          	j	8001063c <__divdf3+0x53c>
80010770:	fe100713          	li	a4,-31
80010774:	40f707b3          	sub	a5,a4,a5
80010778:	02000613          	li	a2,32
8001077c:	00f4d7b3          	srl	a5,s1,a5
80010780:	00000713          	li	a4,0
80010784:	00c50663          	beq	a0,a2,80010790 <__divdf3+0x690>
80010788:	43e58593          	addi	a1,a1,1086
8001078c:	00b49733          	sll	a4,s1,a1
80010790:	01f76fb3          	or	t6,a4,t6
80010794:	01f03fb3          	snez	t6,t6
80010798:	01f7e7b3          	or	a5,a5,t6
8001079c:	00000513          	li	a0,0
800107a0:	f8dff06f          	j	8001072c <__divdf3+0x62c>
800107a4:	00080537          	lui	a0,0x80
800107a8:	00000713          	li	a4,0
800107ac:	7ff00793          	li	a5,2047
800107b0:	00000693          	li	a3,0
800107b4:	e89ff06f          	j	8001063c <__divdf3+0x53c>
800107b8:	00000513          	li	a0,0
800107bc:	00000713          	li	a4,0
800107c0:	fa9ff06f          	j	80010768 <__divdf3+0x668>
800107c4:	00000513          	li	a0,0
800107c8:	00000713          	li	a4,0
800107cc:	00100793          	li	a5,1
800107d0:	e6dff06f          	j	8001063c <__divdf3+0x53c>
800107d4:	000f8613          	mv	a2,t6
800107d8:	00060f93          	mv	t6,a2
800107dc:	e01ff06f          	j	800105dc <__divdf3+0x4dc>

800107e0 <__muldf3>:
800107e0:	fd010113          	addi	sp,sp,-48
800107e4:	0145d793          	srli	a5,a1,0x14
800107e8:	02812423          	sw	s0,40(sp)
800107ec:	02912223          	sw	s1,36(sp)
800107f0:	01312e23          	sw	s3,28(sp)
800107f4:	01412c23          	sw	s4,24(sp)
800107f8:	01512a23          	sw	s5,20(sp)
800107fc:	00c59493          	slli	s1,a1,0xc
80010800:	02112623          	sw	ra,44(sp)
80010804:	03212023          	sw	s2,32(sp)
80010808:	01612823          	sw	s6,16(sp)
8001080c:	01712623          	sw	s7,12(sp)
80010810:	01579713          	slli	a4,a5,0x15
80010814:	00050413          	mv	s0,a0
80010818:	00060993          	mv	s3,a2
8001081c:	00068a93          	mv	s5,a3
80010820:	00c4d493          	srli	s1,s1,0xc
80010824:	01f5da13          	srli	s4,a1,0x1f
80010828:	0a070663          	beqz	a4,800108d4 <__muldf3+0xf4>
8001082c:	7ff7fb13          	andi	s6,a5,2047
80010830:	7ff00793          	li	a5,2047
80010834:	10fb0263          	beq	s6,a5,80010938 <__muldf3+0x158>
80010838:	01d55793          	srli	a5,a0,0x1d
8001083c:	00349493          	slli	s1,s1,0x3
80010840:	0097e4b3          	or	s1,a5,s1
80010844:	008007b7          	lui	a5,0x800
80010848:	00f4e4b3          	or	s1,s1,a5
8001084c:	00351913          	slli	s2,a0,0x3
80010850:	c01b0b13          	addi	s6,s6,-1023
80010854:	00000b93          	li	s7,0
80010858:	014ad793          	srli	a5,s5,0x14
8001085c:	00ca9413          	slli	s0,s5,0xc
80010860:	01579713          	slli	a4,a5,0x15
80010864:	00c45413          	srli	s0,s0,0xc
80010868:	7ff7f513          	andi	a0,a5,2047
8001086c:	01fada93          	srli	s5,s5,0x1f
80010870:	10070063          	beqz	a4,80010970 <__muldf3+0x190>
80010874:	7ff00793          	li	a5,2047
80010878:	16f50063          	beq	a0,a5,800109d8 <__muldf3+0x1f8>
8001087c:	01d9d793          	srli	a5,s3,0x1d
80010880:	00341413          	slli	s0,s0,0x3
80010884:	0087e433          	or	s0,a5,s0
80010888:	008007b7          	lui	a5,0x800
8001088c:	00f46433          	or	s0,s0,a5
80010890:	c0150513          	addi	a0,a0,-1023 # 7fc01 <_printf_r-0x7ff803ff>
80010894:	00399793          	slli	a5,s3,0x3
80010898:	00000713          	li	a4,0
8001089c:	002b9693          	slli	a3,s7,0x2
800108a0:	00e6e6b3          	or	a3,a3,a4
800108a4:	00ab0533          	add	a0,s6,a0
800108a8:	fff68693          	addi	a3,a3,-1
800108ac:	00e00813          	li	a6,14
800108b0:	015a4633          	xor	a2,s4,s5
800108b4:	00150593          	addi	a1,a0,1
800108b8:	14d86c63          	bltu	a6,a3,80010a10 <__muldf3+0x230>
800108bc:	80015537          	lui	a0,0x80015
800108c0:	00269693          	slli	a3,a3,0x2
800108c4:	a3450513          	addi	a0,a0,-1484 # 80014a34 <heap_end.1814+0xfffff050>
800108c8:	00a686b3          	add	a3,a3,a0
800108cc:	0006a683          	lw	a3,0(a3)
800108d0:	00068067          	jr	a3
800108d4:	00a4e933          	or	s2,s1,a0
800108d8:	06090c63          	beqz	s2,80010950 <__muldf3+0x170>
800108dc:	04048063          	beqz	s1,8001091c <__muldf3+0x13c>
800108e0:	00048513          	mv	a0,s1
800108e4:	4dc030ef          	jal	ra,80013dc0 <__clzsi2>
800108e8:	ff550713          	addi	a4,a0,-11
800108ec:	01c00793          	li	a5,28
800108f0:	02e7cc63          	blt	a5,a4,80010928 <__muldf3+0x148>
800108f4:	01d00793          	li	a5,29
800108f8:	ff850913          	addi	s2,a0,-8
800108fc:	40e787b3          	sub	a5,a5,a4
80010900:	012494b3          	sll	s1,s1,s2
80010904:	00f457b3          	srl	a5,s0,a5
80010908:	0097e4b3          	or	s1,a5,s1
8001090c:	01241933          	sll	s2,s0,s2
80010910:	c0d00b13          	li	s6,-1011
80010914:	40ab0b33          	sub	s6,s6,a0
80010918:	f3dff06f          	j	80010854 <__muldf3+0x74>
8001091c:	4a4030ef          	jal	ra,80013dc0 <__clzsi2>
80010920:	02050513          	addi	a0,a0,32
80010924:	fc5ff06f          	j	800108e8 <__muldf3+0x108>
80010928:	fd850493          	addi	s1,a0,-40
8001092c:	009414b3          	sll	s1,s0,s1
80010930:	00000913          	li	s2,0
80010934:	fddff06f          	j	80010910 <__muldf3+0x130>
80010938:	00a4e933          	or	s2,s1,a0
8001093c:	02090263          	beqz	s2,80010960 <__muldf3+0x180>
80010940:	00050913          	mv	s2,a0
80010944:	7ff00b13          	li	s6,2047
80010948:	00300b93          	li	s7,3
8001094c:	f0dff06f          	j	80010858 <__muldf3+0x78>
80010950:	00000493          	li	s1,0
80010954:	00000b13          	li	s6,0
80010958:	00100b93          	li	s7,1
8001095c:	efdff06f          	j	80010858 <__muldf3+0x78>
80010960:	00000493          	li	s1,0
80010964:	7ff00b13          	li	s6,2047
80010968:	00200b93          	li	s7,2
8001096c:	eedff06f          	j	80010858 <__muldf3+0x78>
80010970:	013467b3          	or	a5,s0,s3
80010974:	06078e63          	beqz	a5,800109f0 <__muldf3+0x210>
80010978:	04040063          	beqz	s0,800109b8 <__muldf3+0x1d8>
8001097c:	00040513          	mv	a0,s0
80010980:	440030ef          	jal	ra,80013dc0 <__clzsi2>
80010984:	ff550693          	addi	a3,a0,-11
80010988:	01c00793          	li	a5,28
8001098c:	02d7ce63          	blt	a5,a3,800109c8 <__muldf3+0x1e8>
80010990:	01d00713          	li	a4,29
80010994:	ff850793          	addi	a5,a0,-8
80010998:	40d70733          	sub	a4,a4,a3
8001099c:	00f41433          	sll	s0,s0,a5
800109a0:	00e9d733          	srl	a4,s3,a4
800109a4:	00876433          	or	s0,a4,s0
800109a8:	00f997b3          	sll	a5,s3,a5
800109ac:	c0d00713          	li	a4,-1011
800109b0:	40a70533          	sub	a0,a4,a0
800109b4:	ee5ff06f          	j	80010898 <__muldf3+0xb8>
800109b8:	00098513          	mv	a0,s3
800109bc:	404030ef          	jal	ra,80013dc0 <__clzsi2>
800109c0:	02050513          	addi	a0,a0,32
800109c4:	fc1ff06f          	j	80010984 <__muldf3+0x1a4>
800109c8:	fd850413          	addi	s0,a0,-40
800109cc:	00899433          	sll	s0,s3,s0
800109d0:	00000793          	li	a5,0
800109d4:	fd9ff06f          	j	800109ac <__muldf3+0x1cc>
800109d8:	013467b3          	or	a5,s0,s3
800109dc:	02078263          	beqz	a5,80010a00 <__muldf3+0x220>
800109e0:	00098793          	mv	a5,s3
800109e4:	7ff00513          	li	a0,2047
800109e8:	00300713          	li	a4,3
800109ec:	eb1ff06f          	j	8001089c <__muldf3+0xbc>
800109f0:	00000413          	li	s0,0
800109f4:	00000513          	li	a0,0
800109f8:	00100713          	li	a4,1
800109fc:	ea1ff06f          	j	8001089c <__muldf3+0xbc>
80010a00:	00000413          	li	s0,0
80010a04:	7ff00513          	li	a0,2047
80010a08:	00200713          	li	a4,2
80010a0c:	e91ff06f          	j	8001089c <__muldf3+0xbc>
80010a10:	00010f37          	lui	t5,0x10
80010a14:	ffff0713          	addi	a4,t5,-1 # ffff <_printf_r-0x7fff0001>
80010a18:	01095693          	srli	a3,s2,0x10
80010a1c:	0107d313          	srli	t1,a5,0x10
80010a20:	00e97933          	and	s2,s2,a4
80010a24:	00e7f7b3          	and	a5,a5,a4
80010a28:	032308b3          	mul	a7,t1,s2
80010a2c:	02f90833          	mul	a6,s2,a5
80010a30:	02f68fb3          	mul	t6,a3,a5
80010a34:	01f88eb3          	add	t4,a7,t6
80010a38:	01085893          	srli	a7,a6,0x10
80010a3c:	01d888b3          	add	a7,a7,t4
80010a40:	02668e33          	mul	t3,a3,t1
80010a44:	01f8f463          	bgeu	a7,t6,80010a4c <__muldf3+0x26c>
80010a48:	01ee0e33          	add	t3,t3,t5
80010a4c:	0108d293          	srli	t0,a7,0x10
80010a50:	00e8f8b3          	and	a7,a7,a4
80010a54:	00e87833          	and	a6,a6,a4
80010a58:	01045f13          	srli	t5,s0,0x10
80010a5c:	01089893          	slli	a7,a7,0x10
80010a60:	00e47433          	and	s0,s0,a4
80010a64:	010888b3          	add	a7,a7,a6
80010a68:	02868733          	mul	a4,a3,s0
80010a6c:	02890833          	mul	a6,s2,s0
80010a70:	032f0933          	mul	s2,t5,s2
80010a74:	00e90eb3          	add	t4,s2,a4
80010a78:	01085913          	srli	s2,a6,0x10
80010a7c:	01d90933          	add	s2,s2,t4
80010a80:	03e686b3          	mul	a3,a3,t5
80010a84:	00e97663          	bgeu	s2,a4,80010a90 <__muldf3+0x2b0>
80010a88:	00010737          	lui	a4,0x10
80010a8c:	00e686b3          	add	a3,a3,a4
80010a90:	01095e93          	srli	t4,s2,0x10
80010a94:	00de8eb3          	add	t4,t4,a3
80010a98:	000106b7          	lui	a3,0x10
80010a9c:	fff68f93          	addi	t6,a3,-1 # ffff <_printf_r-0x7fff0001>
80010aa0:	01f97933          	and	s2,s2,t6
80010aa4:	01f87833          	and	a6,a6,t6
80010aa8:	0104d713          	srli	a4,s1,0x10
80010aac:	01091913          	slli	s2,s2,0x10
80010ab0:	01f4f4b3          	and	s1,s1,t6
80010ab4:	029783b3          	mul	t2,a5,s1
80010ab8:	01090933          	add	s2,s2,a6
80010abc:	012282b3          	add	t0,t0,s2
80010ac0:	02930833          	mul	a6,t1,s1
80010ac4:	02f707b3          	mul	a5,a4,a5
80010ac8:	02e30fb3          	mul	t6,t1,a4
80010acc:	00f80333          	add	t1,a6,a5
80010ad0:	0103d813          	srli	a6,t2,0x10
80010ad4:	00680833          	add	a6,a6,t1
80010ad8:	00f87463          	bgeu	a6,a5,80010ae0 <__muldf3+0x300>
80010adc:	00df8fb3          	add	t6,t6,a3
80010ae0:	01085793          	srli	a5,a6,0x10
80010ae4:	000106b7          	lui	a3,0x10
80010ae8:	01f78fb3          	add	t6,a5,t6
80010aec:	fff68793          	addi	a5,a3,-1 # ffff <_printf_r-0x7fff0001>
80010af0:	00f87833          	and	a6,a6,a5
80010af4:	00f3f7b3          	and	a5,t2,a5
80010af8:	029403b3          	mul	t2,s0,s1
80010afc:	01081813          	slli	a6,a6,0x10
80010b00:	00f80833          	add	a6,a6,a5
80010b04:	02870433          	mul	s0,a4,s0
80010b08:	029f04b3          	mul	s1,t5,s1
80010b0c:	02ef0333          	mul	t1,t5,a4
80010b10:	008484b3          	add	s1,s1,s0
80010b14:	0103d713          	srli	a4,t2,0x10
80010b18:	009704b3          	add	s1,a4,s1
80010b1c:	0084f463          	bgeu	s1,s0,80010b24 <__muldf3+0x344>
80010b20:	00d30333          	add	t1,t1,a3
80010b24:	000107b7          	lui	a5,0x10
80010b28:	fff78793          	addi	a5,a5,-1 # ffff <_printf_r-0x7fff0001>
80010b2c:	00f4f6b3          	and	a3,s1,a5
80010b30:	01069693          	slli	a3,a3,0x10
80010b34:	00f3f7b3          	and	a5,t2,a5
80010b38:	005e0e33          	add	t3,t3,t0
80010b3c:	00f686b3          	add	a3,a3,a5
80010b40:	012e3933          	sltu	s2,t3,s2
80010b44:	01d686b3          	add	a3,a3,t4
80010b48:	01268733          	add	a4,a3,s2
80010b4c:	010e0e33          	add	t3,t3,a6
80010b50:	010e3833          	sltu	a6,t3,a6
80010b54:	01f70f33          	add	t5,a4,t6
80010b58:	010f02b3          	add	t0,t5,a6
80010b5c:	01d6b6b3          	sltu	a3,a3,t4
80010b60:	01273733          	sltu	a4,a4,s2
80010b64:	00e6e733          	or	a4,a3,a4
80010b68:	0102b833          	sltu	a6,t0,a6
80010b6c:	0104d493          	srli	s1,s1,0x10
80010b70:	01ff3fb3          	sltu	t6,t5,t6
80010b74:	00970733          	add	a4,a4,s1
80010b78:	010fe833          	or	a6,t6,a6
80010b7c:	009e1793          	slli	a5,t3,0x9
80010b80:	01070733          	add	a4,a4,a6
80010b84:	00670733          	add	a4,a4,t1
80010b88:	0117e7b3          	or	a5,a5,a7
80010b8c:	00971713          	slli	a4,a4,0x9
80010b90:	00f037b3          	snez	a5,a5
80010b94:	017e5e13          	srli	t3,t3,0x17
80010b98:	0172d413          	srli	s0,t0,0x17
80010b9c:	01c7e7b3          	or	a5,a5,t3
80010ba0:	00929293          	slli	t0,t0,0x9
80010ba4:	00771693          	slli	a3,a4,0x7
80010ba8:	00876433          	or	s0,a4,s0
80010bac:	0057e7b3          	or	a5,a5,t0
80010bb0:	1006d463          	bgez	a3,80010cb8 <__muldf3+0x4d8>
80010bb4:	0017d713          	srli	a4,a5,0x1
80010bb8:	0017f793          	andi	a5,a5,1
80010bbc:	00f767b3          	or	a5,a4,a5
80010bc0:	01f41713          	slli	a4,s0,0x1f
80010bc4:	00e7e7b3          	or	a5,a5,a4
80010bc8:	00145413          	srli	s0,s0,0x1
80010bcc:	3ff58693          	addi	a3,a1,1023
80010bd0:	0ed05863          	blez	a3,80010cc0 <__muldf3+0x4e0>
80010bd4:	0077f713          	andi	a4,a5,7
80010bd8:	02070063          	beqz	a4,80010bf8 <__muldf3+0x418>
80010bdc:	00f7f713          	andi	a4,a5,15
80010be0:	00400513          	li	a0,4
80010be4:	00a70a63          	beq	a4,a0,80010bf8 <__muldf3+0x418>
80010be8:	00478713          	addi	a4,a5,4
80010bec:	00f737b3          	sltu	a5,a4,a5
80010bf0:	00f40433          	add	s0,s0,a5
80010bf4:	00070793          	mv	a5,a4
80010bf8:	00741713          	slli	a4,s0,0x7
80010bfc:	00075a63          	bgez	a4,80010c10 <__muldf3+0x430>
80010c00:	ff000737          	lui	a4,0xff000
80010c04:	fff70713          	addi	a4,a4,-1 # feffffff <heap_end.1814+0x7efea61b>
80010c08:	00e47433          	and	s0,s0,a4
80010c0c:	40058693          	addi	a3,a1,1024
80010c10:	7fe00713          	li	a4,2046
80010c14:	16d74863          	blt	a4,a3,80010d84 <__muldf3+0x5a4>
80010c18:	0037d713          	srli	a4,a5,0x3
80010c1c:	01d41793          	slli	a5,s0,0x1d
80010c20:	00e7e7b3          	or	a5,a5,a4
80010c24:	00345413          	srli	s0,s0,0x3
80010c28:	01469713          	slli	a4,a3,0x14
80010c2c:	00c41413          	slli	s0,s0,0xc
80010c30:	7ff006b7          	lui	a3,0x7ff00
80010c34:	00d77733          	and	a4,a4,a3
80010c38:	00c45413          	srli	s0,s0,0xc
80010c3c:	00876433          	or	s0,a4,s0
80010c40:	01f61613          	slli	a2,a2,0x1f
80010c44:	02c12083          	lw	ra,44(sp)
80010c48:	00c46733          	or	a4,s0,a2
80010c4c:	02812403          	lw	s0,40(sp)
80010c50:	02412483          	lw	s1,36(sp)
80010c54:	02012903          	lw	s2,32(sp)
80010c58:	01c12983          	lw	s3,28(sp)
80010c5c:	01812a03          	lw	s4,24(sp)
80010c60:	01412a83          	lw	s5,20(sp)
80010c64:	01012b03          	lw	s6,16(sp)
80010c68:	00c12b83          	lw	s7,12(sp)
80010c6c:	00078513          	mv	a0,a5
80010c70:	00070593          	mv	a1,a4
80010c74:	03010113          	addi	sp,sp,48
80010c78:	00008067          	ret
80010c7c:	000a0613          	mv	a2,s4
80010c80:	00048413          	mv	s0,s1
80010c84:	00090793          	mv	a5,s2
80010c88:	000b8713          	mv	a4,s7
80010c8c:	00200693          	li	a3,2
80010c90:	0ed70a63          	beq	a4,a3,80010d84 <__muldf3+0x5a4>
80010c94:	00300693          	li	a3,3
80010c98:	0cd70c63          	beq	a4,a3,80010d70 <__muldf3+0x590>
80010c9c:	00100693          	li	a3,1
80010ca0:	f2d716e3          	bne	a4,a3,80010bcc <__muldf3+0x3ec>
80010ca4:	00000413          	li	s0,0
80010ca8:	00000793          	li	a5,0
80010cac:	0880006f          	j	80010d34 <__muldf3+0x554>
80010cb0:	000a8613          	mv	a2,s5
80010cb4:	fd9ff06f          	j	80010c8c <__muldf3+0x4ac>
80010cb8:	00050593          	mv	a1,a0
80010cbc:	f11ff06f          	j	80010bcc <__muldf3+0x3ec>
80010cc0:	00100513          	li	a0,1
80010cc4:	40d50533          	sub	a0,a0,a3
80010cc8:	03800713          	li	a4,56
80010ccc:	fca74ce3          	blt	a4,a0,80010ca4 <__muldf3+0x4c4>
80010cd0:	01f00713          	li	a4,31
80010cd4:	06a74463          	blt	a4,a0,80010d3c <__muldf3+0x55c>
80010cd8:	41e58593          	addi	a1,a1,1054
80010cdc:	00b41733          	sll	a4,s0,a1
80010ce0:	00a7d6b3          	srl	a3,a5,a0
80010ce4:	00b797b3          	sll	a5,a5,a1
80010ce8:	00d76733          	or	a4,a4,a3
80010cec:	00f037b3          	snez	a5,a5
80010cf0:	00f767b3          	or	a5,a4,a5
80010cf4:	00a45433          	srl	s0,s0,a0
80010cf8:	0077f713          	andi	a4,a5,7
80010cfc:	02070063          	beqz	a4,80010d1c <__muldf3+0x53c>
80010d00:	00f7f713          	andi	a4,a5,15
80010d04:	00400693          	li	a3,4
80010d08:	00d70a63          	beq	a4,a3,80010d1c <__muldf3+0x53c>
80010d0c:	00478713          	addi	a4,a5,4
80010d10:	00f737b3          	sltu	a5,a4,a5
80010d14:	00f40433          	add	s0,s0,a5
80010d18:	00070793          	mv	a5,a4
80010d1c:	00841713          	slli	a4,s0,0x8
80010d20:	06074a63          	bltz	a4,80010d94 <__muldf3+0x5b4>
80010d24:	01d41713          	slli	a4,s0,0x1d
80010d28:	0037d793          	srli	a5,a5,0x3
80010d2c:	00f767b3          	or	a5,a4,a5
80010d30:	00345413          	srli	s0,s0,0x3
80010d34:	00000693          	li	a3,0
80010d38:	ef1ff06f          	j	80010c28 <__muldf3+0x448>
80010d3c:	fe100713          	li	a4,-31
80010d40:	40d70733          	sub	a4,a4,a3
80010d44:	02000813          	li	a6,32
80010d48:	00e45733          	srl	a4,s0,a4
80010d4c:	00000693          	li	a3,0
80010d50:	01050663          	beq	a0,a6,80010d5c <__muldf3+0x57c>
80010d54:	43e58593          	addi	a1,a1,1086
80010d58:	00b416b3          	sll	a3,s0,a1
80010d5c:	00f6e7b3          	or	a5,a3,a5
80010d60:	00f037b3          	snez	a5,a5
80010d64:	00f767b3          	or	a5,a4,a5
80010d68:	00000413          	li	s0,0
80010d6c:	f8dff06f          	j	80010cf8 <__muldf3+0x518>
80010d70:	00080437          	lui	s0,0x80
80010d74:	00000793          	li	a5,0
80010d78:	7ff00693          	li	a3,2047
80010d7c:	00000613          	li	a2,0
80010d80:	ea9ff06f          	j	80010c28 <__muldf3+0x448>
80010d84:	00000413          	li	s0,0
80010d88:	00000793          	li	a5,0
80010d8c:	7ff00693          	li	a3,2047
80010d90:	e99ff06f          	j	80010c28 <__muldf3+0x448>
80010d94:	00000413          	li	s0,0
80010d98:	00000793          	li	a5,0
80010d9c:	00100693          	li	a3,1
80010da0:	e89ff06f          	j	80010c28 <__muldf3+0x448>

80010da4 <__eqtf2>:
80010da4:	00c52783          	lw	a5,12(a0)
80010da8:	0005af03          	lw	t5,0(a1)
80010dac:	0045af83          	lw	t6,4(a1)
80010db0:	0085a283          	lw	t0,8(a1)
80010db4:	00c5a583          	lw	a1,12(a1)
80010db8:	00008737          	lui	a4,0x8
80010dbc:	0107d693          	srli	a3,a5,0x10
80010dc0:	fff70713          	addi	a4,a4,-1 # 7fff <_printf_r-0x7fff8001>
80010dc4:	01079813          	slli	a6,a5,0x10
80010dc8:	01059e93          	slli	t4,a1,0x10
80010dcc:	01f7d613          	srli	a2,a5,0x1f
80010dd0:	00e6f6b3          	and	a3,a3,a4
80010dd4:	0105d793          	srli	a5,a1,0x10
80010dd8:	00052883          	lw	a7,0(a0)
80010ddc:	00452303          	lw	t1,4(a0)
80010de0:	00852e03          	lw	t3,8(a0)
80010de4:	ff010113          	addi	sp,sp,-16
80010de8:	01085813          	srli	a6,a6,0x10
80010dec:	010ede93          	srli	t4,t4,0x10
80010df0:	00e7f7b3          	and	a5,a5,a4
80010df4:	01f5d593          	srli	a1,a1,0x1f
80010df8:	02e69063          	bne	a3,a4,80010e18 <__eqtf2+0x74>
80010dfc:	0068e733          	or	a4,a7,t1
80010e00:	01c76733          	or	a4,a4,t3
80010e04:	01076733          	or	a4,a4,a6
80010e08:	00100513          	li	a0,1
80010e0c:	04071a63          	bnez	a4,80010e60 <__eqtf2+0xbc>
80010e10:	04d79863          	bne	a5,a3,80010e60 <__eqtf2+0xbc>
80010e14:	0080006f          	j	80010e1c <__eqtf2+0x78>
80010e18:	00e79c63          	bne	a5,a4,80010e30 <__eqtf2+0x8c>
80010e1c:	01ff6733          	or	a4,t5,t6
80010e20:	00576733          	or	a4,a4,t0
80010e24:	01d76733          	or	a4,a4,t4
80010e28:	00100513          	li	a0,1
80010e2c:	02071a63          	bnez	a4,80010e60 <__eqtf2+0xbc>
80010e30:	00100513          	li	a0,1
80010e34:	02d79663          	bne	a5,a3,80010e60 <__eqtf2+0xbc>
80010e38:	03e89463          	bne	a7,t5,80010e60 <__eqtf2+0xbc>
80010e3c:	03f31263          	bne	t1,t6,80010e60 <__eqtf2+0xbc>
80010e40:	025e1063          	bne	t3,t0,80010e60 <__eqtf2+0xbc>
80010e44:	01d81e63          	bne	a6,t4,80010e60 <__eqtf2+0xbc>
80010e48:	02b60063          	beq	a2,a1,80010e68 <__eqtf2+0xc4>
80010e4c:	00079a63          	bnez	a5,80010e60 <__eqtf2+0xbc>
80010e50:	0068e533          	or	a0,a7,t1
80010e54:	01c56533          	or	a0,a0,t3
80010e58:	01056533          	or	a0,a0,a6
80010e5c:	00a03533          	snez	a0,a0
80010e60:	01010113          	addi	sp,sp,16
80010e64:	00008067          	ret
80010e68:	00000513          	li	a0,0
80010e6c:	ff5ff06f          	j	80010e60 <__eqtf2+0xbc>

80010e70 <__getf2>:
80010e70:	00052f83          	lw	t6,0(a0)
80010e74:	00452803          	lw	a6,4(a0)
80010e78:	00852e03          	lw	t3,8(a0)
80010e7c:	00c52503          	lw	a0,12(a0)
80010e80:	00c5a683          	lw	a3,12(a1)
80010e84:	000087b7          	lui	a5,0x8
80010e88:	01055613          	srli	a2,a0,0x10
80010e8c:	fff78793          	addi	a5,a5,-1 # 7fff <_printf_r-0x7fff8001>
80010e90:	01069313          	slli	t1,a3,0x10
80010e94:	0106d713          	srli	a4,a3,0x10
80010e98:	0005a283          	lw	t0,0(a1)
80010e9c:	0045a883          	lw	a7,4(a1)
80010ea0:	0085ae83          	lw	t4,8(a1)
80010ea4:	00f67633          	and	a2,a2,a5
80010ea8:	01051593          	slli	a1,a0,0x10
80010eac:	ff010113          	addi	sp,sp,-16
80010eb0:	0105d593          	srli	a1,a1,0x10
80010eb4:	01f55513          	srli	a0,a0,0x1f
80010eb8:	01035313          	srli	t1,t1,0x10
80010ebc:	00f77733          	and	a4,a4,a5
80010ec0:	01f6d693          	srli	a3,a3,0x1f
80010ec4:	00f61e63          	bne	a2,a5,80010ee0 <__getf2+0x70>
80010ec8:	010fe7b3          	or	a5,t6,a6
80010ecc:	01c7e7b3          	or	a5,a5,t3
80010ed0:	00b7e7b3          	or	a5,a5,a1
80010ed4:	0c078863          	beqz	a5,80010fa4 <__getf2+0x134>
80010ed8:	ffe00513          	li	a0,-2
80010edc:	0640006f          	j	80010f40 <__getf2+0xd0>
80010ee0:	00f71a63          	bne	a4,a5,80010ef4 <__getf2+0x84>
80010ee4:	0112e7b3          	or	a5,t0,a7
80010ee8:	01d7e7b3          	or	a5,a5,t4
80010eec:	0067e7b3          	or	a5,a5,t1
80010ef0:	fe0794e3          	bnez	a5,80010ed8 <__getf2+0x68>
80010ef4:	0a061a63          	bnez	a2,80010fa8 <__getf2+0x138>
80010ef8:	010fe7b3          	or	a5,t6,a6
80010efc:	01c7e7b3          	or	a5,a5,t3
80010f00:	00b7e7b3          	or	a5,a5,a1
80010f04:	0017b793          	seqz	a5,a5
80010f08:	00071a63          	bnez	a4,80010f1c <__getf2+0xac>
80010f0c:	0112ef33          	or	t5,t0,a7
80010f10:	01df6f33          	or	t5,t5,t4
80010f14:	006f6f33          	or	t5,t5,t1
80010f18:	060f0a63          	beqz	t5,80010f8c <__getf2+0x11c>
80010f1c:	00079c63          	bnez	a5,80010f34 <__getf2+0xc4>
80010f20:	00a69463          	bne	a3,a0,80010f28 <__getf2+0xb8>
80010f24:	02c75263          	bge	a4,a2,80010f48 <__getf2+0xd8>
80010f28:	04050e63          	beqz	a0,80010f84 <__getf2+0x114>
80010f2c:	fff00513          	li	a0,-1
80010f30:	0100006f          	j	80010f40 <__getf2+0xd0>
80010f34:	fff00513          	li	a0,-1
80010f38:	00068463          	beqz	a3,80010f40 <__getf2+0xd0>
80010f3c:	00068513          	mv	a0,a3
80010f40:	01010113          	addi	sp,sp,16
80010f44:	00008067          	ret
80010f48:	00e65663          	bge	a2,a4,80010f54 <__getf2+0xe4>
80010f4c:	fe051ae3          	bnez	a0,80010f40 <__getf2+0xd0>
80010f50:	fddff06f          	j	80010f2c <__getf2+0xbc>
80010f54:	fcb36ae3          	bltu	t1,a1,80010f28 <__getf2+0xb8>
80010f58:	02659e63          	bne	a1,t1,80010f94 <__getf2+0x124>
80010f5c:	fdcee6e3          	bltu	t4,t3,80010f28 <__getf2+0xb8>
80010f60:	03de1e63          	bne	t3,t4,80010f9c <__getf2+0x12c>
80010f64:	fd08e2e3          	bltu	a7,a6,80010f28 <__getf2+0xb8>
80010f68:	01181463          	bne	a6,a7,80010f70 <__getf2+0x100>
80010f6c:	fbf2eee3          	bltu	t0,t6,80010f28 <__getf2+0xb8>
80010f70:	fd186ee3          	bltu	a6,a7,80010f4c <__getf2+0xdc>
80010f74:	01181463          	bne	a6,a7,80010f7c <__getf2+0x10c>
80010f78:	fc5feae3          	bltu	t6,t0,80010f4c <__getf2+0xdc>
80010f7c:	00000513          	li	a0,0
80010f80:	fc1ff06f          	j	80010f40 <__getf2+0xd0>
80010f84:	00100513          	li	a0,1
80010f88:	fb9ff06f          	j	80010f40 <__getf2+0xd0>
80010f8c:	fe0798e3          	bnez	a5,80010f7c <__getf2+0x10c>
80010f90:	f99ff06f          	j	80010f28 <__getf2+0xb8>
80010f94:	fa65ece3          	bltu	a1,t1,80010f4c <__getf2+0xdc>
80010f98:	fe5ff06f          	j	80010f7c <__getf2+0x10c>
80010f9c:	fbde68e3          	bltu	t3,t4,80010f4c <__getf2+0xdc>
80010fa0:	fddff06f          	j	80010f7c <__getf2+0x10c>
80010fa4:	f4c700e3          	beq	a4,a2,80010ee4 <__getf2+0x74>
80010fa8:	f6071ce3          	bnez	a4,80010f20 <__getf2+0xb0>
80010fac:	00000793          	li	a5,0
80010fb0:	f5dff06f          	j	80010f0c <__getf2+0x9c>

80010fb4 <__letf2>:
80010fb4:	00052f83          	lw	t6,0(a0)
80010fb8:	00452803          	lw	a6,4(a0)
80010fbc:	00852e03          	lw	t3,8(a0)
80010fc0:	00c52503          	lw	a0,12(a0)
80010fc4:	00c5a683          	lw	a3,12(a1)
80010fc8:	000087b7          	lui	a5,0x8
80010fcc:	01055613          	srli	a2,a0,0x10
80010fd0:	fff78793          	addi	a5,a5,-1 # 7fff <_printf_r-0x7fff8001>
80010fd4:	01069313          	slli	t1,a3,0x10
80010fd8:	0106d713          	srli	a4,a3,0x10
80010fdc:	0005a283          	lw	t0,0(a1)
80010fe0:	0045a883          	lw	a7,4(a1)
80010fe4:	0085ae83          	lw	t4,8(a1)
80010fe8:	00f67633          	and	a2,a2,a5
80010fec:	01051593          	slli	a1,a0,0x10
80010ff0:	ff010113          	addi	sp,sp,-16
80010ff4:	0105d593          	srli	a1,a1,0x10
80010ff8:	01f55513          	srli	a0,a0,0x1f
80010ffc:	01035313          	srli	t1,t1,0x10
80011000:	00f77733          	and	a4,a4,a5
80011004:	01f6d693          	srli	a3,a3,0x1f
80011008:	00f61e63          	bne	a2,a5,80011024 <__letf2+0x70>
8001100c:	010fe7b3          	or	a5,t6,a6
80011010:	01c7e7b3          	or	a5,a5,t3
80011014:	00b7e7b3          	or	a5,a5,a1
80011018:	0c078863          	beqz	a5,800110e8 <__letf2+0x134>
8001101c:	00200513          	li	a0,2
80011020:	0640006f          	j	80011084 <__letf2+0xd0>
80011024:	00f71a63          	bne	a4,a5,80011038 <__letf2+0x84>
80011028:	0112e7b3          	or	a5,t0,a7
8001102c:	01d7e7b3          	or	a5,a5,t4
80011030:	0067e7b3          	or	a5,a5,t1
80011034:	fe0794e3          	bnez	a5,8001101c <__letf2+0x68>
80011038:	0a061a63          	bnez	a2,800110ec <__letf2+0x138>
8001103c:	010fe7b3          	or	a5,t6,a6
80011040:	01c7e7b3          	or	a5,a5,t3
80011044:	00b7e7b3          	or	a5,a5,a1
80011048:	0017b793          	seqz	a5,a5
8001104c:	00071a63          	bnez	a4,80011060 <__letf2+0xac>
80011050:	0112ef33          	or	t5,t0,a7
80011054:	01df6f33          	or	t5,t5,t4
80011058:	006f6f33          	or	t5,t5,t1
8001105c:	060f0a63          	beqz	t5,800110d0 <__letf2+0x11c>
80011060:	00079c63          	bnez	a5,80011078 <__letf2+0xc4>
80011064:	00a69463          	bne	a3,a0,8001106c <__letf2+0xb8>
80011068:	02c75263          	bge	a4,a2,8001108c <__letf2+0xd8>
8001106c:	04050e63          	beqz	a0,800110c8 <__letf2+0x114>
80011070:	fff00513          	li	a0,-1
80011074:	0100006f          	j	80011084 <__letf2+0xd0>
80011078:	fff00513          	li	a0,-1
8001107c:	00068463          	beqz	a3,80011084 <__letf2+0xd0>
80011080:	00068513          	mv	a0,a3
80011084:	01010113          	addi	sp,sp,16
80011088:	00008067          	ret
8001108c:	00e65663          	bge	a2,a4,80011098 <__letf2+0xe4>
80011090:	fe051ae3          	bnez	a0,80011084 <__letf2+0xd0>
80011094:	fddff06f          	j	80011070 <__letf2+0xbc>
80011098:	fcb36ae3          	bltu	t1,a1,8001106c <__letf2+0xb8>
8001109c:	02659e63          	bne	a1,t1,800110d8 <__letf2+0x124>
800110a0:	fdcee6e3          	bltu	t4,t3,8001106c <__letf2+0xb8>
800110a4:	03de1e63          	bne	t3,t4,800110e0 <__letf2+0x12c>
800110a8:	fd08e2e3          	bltu	a7,a6,8001106c <__letf2+0xb8>
800110ac:	01181463          	bne	a6,a7,800110b4 <__letf2+0x100>
800110b0:	fbf2eee3          	bltu	t0,t6,8001106c <__letf2+0xb8>
800110b4:	fd186ee3          	bltu	a6,a7,80011090 <__letf2+0xdc>
800110b8:	01181463          	bne	a6,a7,800110c0 <__letf2+0x10c>
800110bc:	fc5feae3          	bltu	t6,t0,80011090 <__letf2+0xdc>
800110c0:	00000513          	li	a0,0
800110c4:	fc1ff06f          	j	80011084 <__letf2+0xd0>
800110c8:	00100513          	li	a0,1
800110cc:	fb9ff06f          	j	80011084 <__letf2+0xd0>
800110d0:	fe0798e3          	bnez	a5,800110c0 <__letf2+0x10c>
800110d4:	f99ff06f          	j	8001106c <__letf2+0xb8>
800110d8:	fa65ece3          	bltu	a1,t1,80011090 <__letf2+0xdc>
800110dc:	fe5ff06f          	j	800110c0 <__letf2+0x10c>
800110e0:	fbde68e3          	bltu	t3,t4,80011090 <__letf2+0xdc>
800110e4:	fddff06f          	j	800110c0 <__letf2+0x10c>
800110e8:	f4c700e3          	beq	a4,a2,80011028 <__letf2+0x74>
800110ec:	f6071ce3          	bnez	a4,80011064 <__letf2+0xb0>
800110f0:	00000793          	li	a5,0
800110f4:	f5dff06f          	j	80011050 <__letf2+0x9c>

800110f8 <__multf3>:
800110f8:	f4010113          	addi	sp,sp,-192
800110fc:	0a912a23          	sw	s1,180(sp)
80011100:	00c5a483          	lw	s1,12(a1)
80011104:	0005a683          	lw	a3,0(a1)
80011108:	0045a783          	lw	a5,4(a1)
8001110c:	00a12423          	sw	a0,8(sp)
80011110:	0085a503          	lw	a0,8(a1)
80011114:	01049713          	slli	a4,s1,0x10
80011118:	0b212823          	sw	s2,176(sp)
8001111c:	0b312623          	sw	s3,172(sp)
80011120:	00c62903          	lw	s2,12(a2) # 7ff0000c <_printf_r-0xffff4>
80011124:	00062983          	lw	s3,0(a2)
80011128:	0b412423          	sw	s4,168(sp)
8001112c:	0b512223          	sw	s5,164(sp)
80011130:	00862a03          	lw	s4,8(a2)
80011134:	00462a83          	lw	s5,4(a2)
80011138:	00008637          	lui	a2,0x8
8001113c:	0a812c23          	sw	s0,184(sp)
80011140:	01075713          	srli	a4,a4,0x10
80011144:	0104d413          	srli	s0,s1,0x10
80011148:	fff60613          	addi	a2,a2,-1 # 7fff <_printf_r-0x7fff8001>
8001114c:	06912623          	sw	s1,108(sp)
80011150:	0a112e23          	sw	ra,188(sp)
80011154:	0b612023          	sw	s6,160(sp)
80011158:	09712e23          	sw	s7,156(sp)
8001115c:	09812c23          	sw	s8,152(sp)
80011160:	09912a23          	sw	s9,148(sp)
80011164:	09a12823          	sw	s10,144(sp)
80011168:	09b12623          	sw	s11,140(sp)
8001116c:	06d12023          	sw	a3,96(sp)
80011170:	06f12223          	sw	a5,100(sp)
80011174:	06a12423          	sw	a0,104(sp)
80011178:	02d12823          	sw	a3,48(sp)
8001117c:	02f12a23          	sw	a5,52(sp)
80011180:	02a12c23          	sw	a0,56(sp)
80011184:	02e12e23          	sw	a4,60(sp)
80011188:	00c47433          	and	s0,s0,a2
8001118c:	01f4d493          	srli	s1,s1,0x1f
80011190:	12040863          	beqz	s0,800112c0 <__multf3+0x1c8>
80011194:	24c40663          	beq	s0,a2,800113e0 <__multf3+0x2e8>
80011198:	000107b7          	lui	a5,0x10
8001119c:	00f767b3          	or	a5,a4,a5
800111a0:	02f12e23          	sw	a5,60(sp)
800111a4:	03010613          	addi	a2,sp,48
800111a8:	03c10793          	addi	a5,sp,60
800111ac:	0007a703          	lw	a4,0(a5) # 10000 <_printf_r-0x7fff0000>
800111b0:	ffc7a683          	lw	a3,-4(a5)
800111b4:	ffc78793          	addi	a5,a5,-4
800111b8:	00371713          	slli	a4,a4,0x3
800111bc:	01d6d693          	srli	a3,a3,0x1d
800111c0:	00d76733          	or	a4,a4,a3
800111c4:	00e7a223          	sw	a4,4(a5)
800111c8:	fef612e3          	bne	a2,a5,800111ac <__multf3+0xb4>
800111cc:	03012783          	lw	a5,48(sp)
800111d0:	ffffc537          	lui	a0,0xffffc
800111d4:	00150513          	addi	a0,a0,1 # ffffc001 <heap_end.1814+0x7ffe661d>
800111d8:	00379793          	slli	a5,a5,0x3
800111dc:	02f12823          	sw	a5,48(sp)
800111e0:	00a40433          	add	s0,s0,a0
800111e4:	00000b13          	li	s6,0
800111e8:	01091513          	slli	a0,s2,0x10
800111ec:	00008737          	lui	a4,0x8
800111f0:	01095793          	srli	a5,s2,0x10
800111f4:	01055513          	srli	a0,a0,0x10
800111f8:	fff70713          	addi	a4,a4,-1 # 7fff <_printf_r-0x7fff8001>
800111fc:	07212623          	sw	s2,108(sp)
80011200:	07312023          	sw	s3,96(sp)
80011204:	07512223          	sw	s5,100(sp)
80011208:	07412423          	sw	s4,104(sp)
8001120c:	05312023          	sw	s3,64(sp)
80011210:	05512223          	sw	s5,68(sp)
80011214:	05412423          	sw	s4,72(sp)
80011218:	04a12623          	sw	a0,76(sp)
8001121c:	00e7f7b3          	and	a5,a5,a4
80011220:	01f95913          	srli	s2,s2,0x1f
80011224:	1e078263          	beqz	a5,80011408 <__multf3+0x310>
80011228:	30e78063          	beq	a5,a4,80011528 <__multf3+0x430>
8001122c:	00010a37          	lui	s4,0x10
80011230:	01456a33          	or	s4,a0,s4
80011234:	05412623          	sw	s4,76(sp)
80011238:	04010593          	addi	a1,sp,64
8001123c:	04c10713          	addi	a4,sp,76
80011240:	00072683          	lw	a3,0(a4)
80011244:	ffc72603          	lw	a2,-4(a4)
80011248:	ffc70713          	addi	a4,a4,-4
8001124c:	00369693          	slli	a3,a3,0x3
80011250:	01d65613          	srli	a2,a2,0x1d
80011254:	00c6e6b3          	or	a3,a3,a2
80011258:	00d72223          	sw	a3,4(a4)
8001125c:	fee592e3          	bne	a1,a4,80011240 <__multf3+0x148>
80011260:	04012703          	lw	a4,64(sp)
80011264:	ffffc537          	lui	a0,0xffffc
80011268:	00150513          	addi	a0,a0,1 # ffffc001 <heap_end.1814+0x7ffe661d>
8001126c:	00371713          	slli	a4,a4,0x3
80011270:	04e12023          	sw	a4,64(sp)
80011274:	00a787b3          	add	a5,a5,a0
80011278:	00000713          	li	a4,0
8001127c:	008787b3          	add	a5,a5,s0
80011280:	00f12e23          	sw	a5,28(sp)
80011284:	00178793          	addi	a5,a5,1
80011288:	00f12c23          	sw	a5,24(sp)
8001128c:	002b1793          	slli	a5,s6,0x2
80011290:	0124c6b3          	xor	a3,s1,s2
80011294:	00e7e7b3          	or	a5,a5,a4
80011298:	00d12623          	sw	a3,12(sp)
8001129c:	fff78793          	addi	a5,a5,-1
800112a0:	00e00693          	li	a3,14
800112a4:	2af6e663          	bltu	a3,a5,80011550 <__multf3+0x458>
800112a8:	800156b7          	lui	a3,0x80015
800112ac:	00279793          	slli	a5,a5,0x2
800112b0:	a7068693          	addi	a3,a3,-1424 # 80014a70 <heap_end.1814+0xfffff08c>
800112b4:	00d787b3          	add	a5,a5,a3
800112b8:	0007a783          	lw	a5,0(a5)
800112bc:	00078067          	jr	a5
800112c0:	00d7e633          	or	a2,a5,a3
800112c4:	00a66633          	or	a2,a2,a0
800112c8:	00e66633          	or	a2,a2,a4
800112cc:	12060863          	beqz	a2,800113fc <__multf3+0x304>
800112d0:	06070063          	beqz	a4,80011330 <__multf3+0x238>
800112d4:	00070513          	mv	a0,a4
800112d8:	2e9020ef          	jal	ra,80013dc0 <__clzsi2>
800112dc:	ff450693          	addi	a3,a0,-12
800112e0:	4056d793          	srai	a5,a3,0x5
800112e4:	01f6f693          	andi	a3,a3,31
800112e8:	06068e63          	beqz	a3,80011364 <__multf3+0x26c>
800112ec:	ffc00713          	li	a4,-4
800112f0:	02e78733          	mul	a4,a5,a4
800112f4:	03010313          	addi	t1,sp,48
800112f8:	02000813          	li	a6,32
800112fc:	00279593          	slli	a1,a5,0x2
80011300:	40d80833          	sub	a6,a6,a3
80011304:	00c70713          	addi	a4,a4,12
80011308:	00e30733          	add	a4,t1,a4
8001130c:	08e31463          	bne	t1,a4,80011394 <__multf3+0x29c>
80011310:	08010713          	addi	a4,sp,128
80011314:	00b705b3          	add	a1,a4,a1
80011318:	03012703          	lw	a4,48(sp)
8001131c:	fff78793          	addi	a5,a5,-1
80011320:	00d716b3          	sll	a3,a4,a3
80011324:	fad5a823          	sw	a3,-80(a1)
80011328:	fff00693          	li	a3,-1
8001132c:	0a00006f          	j	800113cc <__multf3+0x2d4>
80011330:	00050863          	beqz	a0,80011340 <__multf3+0x248>
80011334:	28d020ef          	jal	ra,80013dc0 <__clzsi2>
80011338:	02050513          	addi	a0,a0,32
8001133c:	fa1ff06f          	j	800112dc <__multf3+0x1e4>
80011340:	00078a63          	beqz	a5,80011354 <__multf3+0x25c>
80011344:	00078513          	mv	a0,a5
80011348:	279020ef          	jal	ra,80013dc0 <__clzsi2>
8001134c:	04050513          	addi	a0,a0,64
80011350:	f8dff06f          	j	800112dc <__multf3+0x1e4>
80011354:	00068513          	mv	a0,a3
80011358:	269020ef          	jal	ra,80013dc0 <__clzsi2>
8001135c:	06050513          	addi	a0,a0,96
80011360:	f7dff06f          	j	800112dc <__multf3+0x1e4>
80011364:	ffc00613          	li	a2,-4
80011368:	02c78633          	mul	a2,a5,a2
8001136c:	03c10713          	addi	a4,sp,60
80011370:	00300693          	li	a3,3
80011374:	00c705b3          	add	a1,a4,a2
80011378:	0005a583          	lw	a1,0(a1)
8001137c:	fff68693          	addi	a3,a3,-1
80011380:	ffc70713          	addi	a4,a4,-4
80011384:	00b72223          	sw	a1,4(a4)
80011388:	fef6d6e3          	bge	a3,a5,80011374 <__multf3+0x27c>
8001138c:	fff78793          	addi	a5,a5,-1
80011390:	f99ff06f          	j	80011328 <__multf3+0x230>
80011394:	ffc72603          	lw	a2,-4(a4)
80011398:	00072883          	lw	a7,0(a4)
8001139c:	00b70e33          	add	t3,a4,a1
800113a0:	01065633          	srl	a2,a2,a6
800113a4:	00d898b3          	sll	a7,a7,a3
800113a8:	01166633          	or	a2,a2,a7
800113ac:	00ce2023          	sw	a2,0(t3)
800113b0:	ffc70713          	addi	a4,a4,-4
800113b4:	f59ff06f          	j	8001130c <__multf3+0x214>
800113b8:	00279713          	slli	a4,a5,0x2
800113bc:	03010613          	addi	a2,sp,48
800113c0:	00e60733          	add	a4,a2,a4
800113c4:	00072023          	sw	zero,0(a4)
800113c8:	fff78793          	addi	a5,a5,-1
800113cc:	fed796e3          	bne	a5,a3,800113b8 <__multf3+0x2c0>
800113d0:	ffffc437          	lui	s0,0xffffc
800113d4:	01140413          	addi	s0,s0,17 # ffffc011 <heap_end.1814+0x7ffe662d>
800113d8:	40a40433          	sub	s0,s0,a0
800113dc:	e09ff06f          	j	800111e4 <__multf3+0xec>
800113e0:	00d7e7b3          	or	a5,a5,a3
800113e4:	00a7e7b3          	or	a5,a5,a0
800113e8:	00e7e7b3          	or	a5,a5,a4
800113ec:	00300b13          	li	s6,3
800113f0:	de079ce3          	bnez	a5,800111e8 <__multf3+0xf0>
800113f4:	00200b13          	li	s6,2
800113f8:	df1ff06f          	j	800111e8 <__multf3+0xf0>
800113fc:	00000413          	li	s0,0
80011400:	00100b13          	li	s6,1
80011404:	de5ff06f          	j	800111e8 <__multf3+0xf0>
80011408:	0159e7b3          	or	a5,s3,s5
8001140c:	0147e7b3          	or	a5,a5,s4
80011410:	00a7e7b3          	or	a5,a5,a0
80011414:	12078863          	beqz	a5,80011544 <__multf3+0x44c>
80011418:	04050e63          	beqz	a0,80011474 <__multf3+0x37c>
8001141c:	1a5020ef          	jal	ra,80013dc0 <__clzsi2>
80011420:	ff450693          	addi	a3,a0,-12
80011424:	4056d793          	srai	a5,a3,0x5
80011428:	01f6f693          	andi	a3,a3,31
8001142c:	08068063          	beqz	a3,800114ac <__multf3+0x3b4>
80011430:	ffc00713          	li	a4,-4
80011434:	02e78733          	mul	a4,a5,a4
80011438:	04010313          	addi	t1,sp,64
8001143c:	02000813          	li	a6,32
80011440:	00279593          	slli	a1,a5,0x2
80011444:	40d80833          	sub	a6,a6,a3
80011448:	00c70713          	addi	a4,a4,12
8001144c:	00e30733          	add	a4,t1,a4
80011450:	08e31663          	bne	t1,a4,800114dc <__multf3+0x3e4>
80011454:	08010713          	addi	a4,sp,128
80011458:	00b705b3          	add	a1,a4,a1
8001145c:	04012703          	lw	a4,64(sp)
80011460:	fff78793          	addi	a5,a5,-1
80011464:	00d716b3          	sll	a3,a4,a3
80011468:	fcd5a023          	sw	a3,-64(a1)
8001146c:	fff00693          	li	a3,-1
80011470:	0a40006f          	j	80011514 <__multf3+0x41c>
80011474:	000a0a63          	beqz	s4,80011488 <__multf3+0x390>
80011478:	000a0513          	mv	a0,s4
8001147c:	145020ef          	jal	ra,80013dc0 <__clzsi2>
80011480:	02050513          	addi	a0,a0,32
80011484:	f9dff06f          	j	80011420 <__multf3+0x328>
80011488:	000a8a63          	beqz	s5,8001149c <__multf3+0x3a4>
8001148c:	000a8513          	mv	a0,s5
80011490:	131020ef          	jal	ra,80013dc0 <__clzsi2>
80011494:	04050513          	addi	a0,a0,64
80011498:	f89ff06f          	j	80011420 <__multf3+0x328>
8001149c:	00098513          	mv	a0,s3
800114a0:	121020ef          	jal	ra,80013dc0 <__clzsi2>
800114a4:	06050513          	addi	a0,a0,96
800114a8:	f79ff06f          	j	80011420 <__multf3+0x328>
800114ac:	ffc00613          	li	a2,-4
800114b0:	02c78633          	mul	a2,a5,a2
800114b4:	04c10713          	addi	a4,sp,76
800114b8:	00300693          	li	a3,3
800114bc:	00c705b3          	add	a1,a4,a2
800114c0:	0005a583          	lw	a1,0(a1)
800114c4:	fff68693          	addi	a3,a3,-1
800114c8:	ffc70713          	addi	a4,a4,-4
800114cc:	00b72223          	sw	a1,4(a4)
800114d0:	fef6d6e3          	bge	a3,a5,800114bc <__multf3+0x3c4>
800114d4:	fff78793          	addi	a5,a5,-1
800114d8:	f95ff06f          	j	8001146c <__multf3+0x374>
800114dc:	ffc72603          	lw	a2,-4(a4)
800114e0:	00072883          	lw	a7,0(a4)
800114e4:	00b70e33          	add	t3,a4,a1
800114e8:	01065633          	srl	a2,a2,a6
800114ec:	00d898b3          	sll	a7,a7,a3
800114f0:	01166633          	or	a2,a2,a7
800114f4:	00ce2023          	sw	a2,0(t3)
800114f8:	ffc70713          	addi	a4,a4,-4
800114fc:	f55ff06f          	j	80011450 <__multf3+0x358>
80011500:	00279713          	slli	a4,a5,0x2
80011504:	04010613          	addi	a2,sp,64
80011508:	00e60733          	add	a4,a2,a4
8001150c:	00072023          	sw	zero,0(a4)
80011510:	fff78793          	addi	a5,a5,-1
80011514:	fed796e3          	bne	a5,a3,80011500 <__multf3+0x408>
80011518:	ffffc7b7          	lui	a5,0xffffc
8001151c:	01178793          	addi	a5,a5,17 # ffffc011 <heap_end.1814+0x7ffe662d>
80011520:	40a787b3          	sub	a5,a5,a0
80011524:	d55ff06f          	j	80011278 <__multf3+0x180>
80011528:	0159e9b3          	or	s3,s3,s5
8001152c:	0149ea33          	or	s4,s3,s4
80011530:	00aa6a33          	or	s4,s4,a0
80011534:	00300713          	li	a4,3
80011538:	d40a12e3          	bnez	s4,8001127c <__multf3+0x184>
8001153c:	00200713          	li	a4,2
80011540:	d3dff06f          	j	8001127c <__multf3+0x184>
80011544:	00000793          	li	a5,0
80011548:	00100713          	li	a4,1
8001154c:	d31ff06f          	j	8001127c <__multf3+0x184>
80011550:	03012703          	lw	a4,48(sp)
80011554:	04012e03          	lw	t3,64(sp)
80011558:	00010537          	lui	a0,0x10
8001155c:	fff50693          	addi	a3,a0,-1 # ffff <_printf_r-0x7fff0001>
80011560:	01075f93          	srli	t6,a4,0x10
80011564:	010e5a93          	srli	s5,t3,0x10
80011568:	00d77733          	and	a4,a4,a3
8001156c:	00de7e33          	and	t3,t3,a3
80011570:	02ea87b3          	mul	a5,s5,a4
80011574:	02ee0633          	mul	a2,t3,a4
80011578:	03cf8833          	mul	a6,t6,t3
8001157c:	010785b3          	add	a1,a5,a6
80011580:	01065793          	srli	a5,a2,0x10
80011584:	00b787b3          	add	a5,a5,a1
80011588:	035f8bb3          	mul	s7,t6,s5
8001158c:	0107f463          	bgeu	a5,a6,80011594 <__multf3+0x49c>
80011590:	00ab8bb3          	add	s7,s7,a0
80011594:	04412f03          	lw	t5,68(sp)
80011598:	0107d993          	srli	s3,a5,0x10
8001159c:	00d7f7b3          	and	a5,a5,a3
800115a0:	00d67633          	and	a2,a2,a3
800115a4:	01079793          	slli	a5,a5,0x10
800115a8:	00c787b3          	add	a5,a5,a2
800115ac:	010f5493          	srli	s1,t5,0x10
800115b0:	00df7f33          	and	t5,t5,a3
800115b4:	02ef06b3          	mul	a3,t5,a4
800115b8:	02f12023          	sw	a5,32(sp)
800115bc:	06f12023          	sw	a5,96(sp)
800115c0:	03ef8633          	mul	a2,t6,t5
800115c4:	02e487b3          	mul	a5,s1,a4
800115c8:	00c78533          	add	a0,a5,a2
800115cc:	0106d793          	srli	a5,a3,0x10
800115d0:	00a787b3          	add	a5,a5,a0
800115d4:	029f8b33          	mul	s6,t6,s1
800115d8:	00c7f663          	bgeu	a5,a2,800115e4 <__multf3+0x4ec>
800115dc:	00010637          	lui	a2,0x10
800115e0:	00cb0b33          	add	s6,s6,a2
800115e4:	00010637          	lui	a2,0x10
800115e8:	fff60593          	addi	a1,a2,-1 # ffff <_printf_r-0x7fff0001>
800115ec:	00b7f533          	and	a0,a5,a1
800115f0:	0107d293          	srli	t0,a5,0x10
800115f4:	03412783          	lw	a5,52(sp)
800115f8:	00b6f6b3          	and	a3,a3,a1
800115fc:	01051513          	slli	a0,a0,0x10
80011600:	0107d913          	srli	s2,a5,0x10
80011604:	00b7f5b3          	and	a1,a5,a1
80011608:	02ba87b3          	mul	a5,s5,a1
8001160c:	00d50533          	add	a0,a0,a3
80011610:	00a989b3          	add	s3,s3,a0
80011614:	03c586b3          	mul	a3,a1,t3
80011618:	03c90333          	mul	t1,s2,t3
8001161c:	00678833          	add	a6,a5,t1
80011620:	0106d793          	srli	a5,a3,0x10
80011624:	010787b3          	add	a5,a5,a6
80011628:	032a88b3          	mul	a7,s5,s2
8001162c:	0067f463          	bgeu	a5,t1,80011634 <__multf3+0x53c>
80011630:	00c888b3          	add	a7,a7,a2
80011634:	0107da13          	srli	s4,a5,0x10
80011638:	011a0a33          	add	s4,s4,a7
8001163c:	000108b7          	lui	a7,0x10
80011640:	fff88613          	addi	a2,a7,-1 # ffff <_printf_r-0x7fff0001>
80011644:	00c7f833          	and	a6,a5,a2
80011648:	00c6f6b3          	and	a3,a3,a2
8001164c:	01081813          	slli	a6,a6,0x10
80011650:	03e58633          	mul	a2,a1,t5
80011654:	00d80833          	add	a6,a6,a3
80011658:	03e907b3          	mul	a5,s2,t5
8001165c:	01065e93          	srli	t4,a2,0x10
80011660:	02b486b3          	mul	a3,s1,a1
80011664:	00f686b3          	add	a3,a3,a5
80011668:	00de86b3          	add	a3,t4,a3
8001166c:	03248333          	mul	t1,s1,s2
80011670:	00f6f463          	bgeu	a3,a5,80011678 <__multf3+0x580>
80011674:	01130333          	add	t1,t1,a7
80011678:	04812e83          	lw	t4,72(sp)
8001167c:	0106d793          	srli	a5,a3,0x10
80011680:	006787b3          	add	a5,a5,t1
80011684:	00010437          	lui	s0,0x10
80011688:	02f12223          	sw	a5,36(sp)
8001168c:	fff40793          	addi	a5,s0,-1 # ffff <_printf_r-0x7fff0001>
80011690:	010ed393          	srli	t2,t4,0x10
80011694:	00fefeb3          	and	t4,t4,a5
80011698:	02e388b3          	mul	a7,t2,a4
8001169c:	00f67633          	and	a2,a2,a5
800116a0:	00f6f6b3          	and	a3,a3,a5
800116a4:	01069693          	slli	a3,a3,0x10
800116a8:	00c686b3          	add	a3,a3,a2
800116ac:	02ee8333          	mul	t1,t4,a4
800116b0:	03df8c33          	mul	s8,t6,t4
800116b4:	018887b3          	add	a5,a7,s8
800116b8:	01035893          	srli	a7,t1,0x10
800116bc:	00f888b3          	add	a7,a7,a5
800116c0:	027f8633          	mul	a2,t6,t2
800116c4:	0188f463          	bgeu	a7,s8,800116cc <__multf3+0x5d4>
800116c8:	00860633          	add	a2,a2,s0
800116cc:	0108d793          	srli	a5,a7,0x10
800116d0:	00010cb7          	lui	s9,0x10
800116d4:	00c787b3          	add	a5,a5,a2
800116d8:	fffc8613          	addi	a2,s9,-1 # ffff <_printf_r-0x7fff0001>
800116dc:	02f12423          	sw	a5,40(sp)
800116e0:	00c8f7b3          	and	a5,a7,a2
800116e4:	03812883          	lw	a7,56(sp)
800116e8:	00c37333          	and	t1,t1,a2
800116ec:	01079793          	slli	a5,a5,0x10
800116f0:	0108d413          	srli	s0,a7,0x10
800116f4:	00c8f633          	and	a2,a7,a2
800116f8:	03c608b3          	mul	a7,a2,t3
800116fc:	006787b3          	add	a5,a5,t1
80011700:	03c40d33          	mul	s10,s0,t3
80011704:	0108dd93          	srli	s11,a7,0x10
80011708:	02ca8333          	mul	t1,s5,a2
8001170c:	01a30333          	add	t1,t1,s10
80011710:	006d8333          	add	t1,s11,t1
80011714:	028a8c33          	mul	s8,s5,s0
80011718:	01a37463          	bgeu	t1,s10,80011720 <__multf3+0x628>
8001171c:	019c0c33          	add	s8,s8,s9
80011720:	01035c93          	srli	s9,t1,0x10
80011724:	018c8c33          	add	s8,s9,s8
80011728:	00010cb7          	lui	s9,0x10
8001172c:	013b89b3          	add	s3,s7,s3
80011730:	fffc8d13          	addi	s10,s9,-1 # ffff <_printf_r-0x7fff0001>
80011734:	00a9b533          	sltu	a0,s3,a0
80011738:	01a37333          	and	t1,t1,s10
8001173c:	00a282b3          	add	t0,t0,a0
80011740:	01031313          	slli	t1,t1,0x10
80011744:	01a8f8b3          	and	a7,a7,s10
80011748:	01628b33          	add	s6,t0,s6
8001174c:	011308b3          	add	a7,t1,a7
80011750:	01098333          	add	t1,s3,a6
80011754:	01033833          	sltu	a6,t1,a6
80011758:	00612823          	sw	t1,16(sp)
8001175c:	06612223          	sw	t1,100(sp)
80011760:	014b0333          	add	t1,s6,s4
80011764:	010302b3          	add	t0,t1,a6
80011768:	01433a33          	sltu	s4,t1,s4
8001176c:	0102b833          	sltu	a6,t0,a6
80011770:	00d289b3          	add	s3,t0,a3
80011774:	010a6833          	or	a6,s4,a6
80011778:	00ab3533          	sltu	a0,s6,a0
8001177c:	00d9b6b3          	sltu	a3,s3,a3
80011780:	00a80533          	add	a0,a6,a0
80011784:	00f989b3          	add	s3,s3,a5
80011788:	02412803          	lw	a6,36(sp)
8001178c:	01198333          	add	t1,s3,a7
80011790:	011338b3          	sltu	a7,t1,a7
80011794:	00612a23          	sw	t1,20(sp)
80011798:	06612423          	sw	t1,104(sp)
8001179c:	02412303          	lw	t1,36(sp)
800117a0:	01050533          	add	a0,a0,a6
800117a4:	02812803          	lw	a6,40(sp)
800117a8:	00d50db3          	add	s11,a0,a3
800117ac:	00ddb6b3          	sltu	a3,s11,a3
800117b0:	00653533          	sltu	a0,a0,t1
800117b4:	00f9b7b3          	sltu	a5,s3,a5
800117b8:	010d8bb3          	add	s7,s11,a6
800117bc:	00d566b3          	or	a3,a0,a3
800117c0:	02812503          	lw	a0,40(sp)
800117c4:	00fb8833          	add	a6,s7,a5
800117c8:	04c12303          	lw	t1,76(sp)
800117cc:	018809b3          	add	s3,a6,s8
800117d0:	01198b33          	add	s6,s3,a7
800117d4:	00abbbb3          	sltu	s7,s7,a0
800117d8:	00f837b3          	sltu	a5,a6,a5
800117dc:	00fbe7b3          	or	a5,s7,a5
800117e0:	011b38b3          	sltu	a7,s6,a7
800117e4:	0189bc33          	sltu	s8,s3,s8
800117e8:	00f686b3          	add	a3,a3,a5
800117ec:	01035293          	srli	t0,t1,0x10
800117f0:	011c6a33          	or	s4,s8,a7
800117f4:	01a37333          	and	t1,t1,s10
800117f8:	02e307b3          	mul	a5,t1,a4
800117fc:	01468a33          	add	s4,a3,s4
80011800:	02e28733          	mul	a4,t0,a4
80011804:	0107d893          	srli	a7,a5,0x10
80011808:	026f86b3          	mul	a3,t6,t1
8001180c:	00d70733          	add	a4,a4,a3
80011810:	00e888b3          	add	a7,a7,a4
80011814:	025f8fb3          	mul	t6,t6,t0
80011818:	00d8f463          	bgeu	a7,a3,80011820 <__multf3+0x728>
8001181c:	019f8fb3          	add	t6,t6,s9
80011820:	03c12983          	lw	s3,60(sp)
80011824:	000106b7          	lui	a3,0x10
80011828:	fff68513          	addi	a0,a3,-1 # ffff <_printf_r-0x7fff0001>
8001182c:	0108dd13          	srli	s10,a7,0x10
80011830:	00a8f8b3          	and	a7,a7,a0
80011834:	00a7f7b3          	and	a5,a5,a0
80011838:	01fd0d33          	add	s10,s10,t6
8001183c:	01089893          	slli	a7,a7,0x10
80011840:	0109df93          	srli	t6,s3,0x10
80011844:	00a9f9b3          	and	s3,s3,a0
80011848:	03fa8cb3          	mul	s9,s5,t6
8001184c:	00f888b3          	add	a7,a7,a5
80011850:	033a8ab3          	mul	s5,s5,s3
80011854:	03c987b3          	mul	a5,s3,t3
80011858:	03cf8e33          	mul	t3,t6,t3
8001185c:	0107d813          	srli	a6,a5,0x10
80011860:	01ca8ab3          	add	s5,s5,t3
80011864:	01580ab3          	add	s5,a6,s5
80011868:	01caf463          	bgeu	s5,t3,80011870 <__multf3+0x778>
8001186c:	00dc8cb3          	add	s9,s9,a3
80011870:	00010bb7          	lui	s7,0x10
80011874:	fffb8713          	addi	a4,s7,-1 # ffff <_printf_r-0x7fff0001>
80011878:	010ad813          	srli	a6,s5,0x10
8001187c:	01980cb3          	add	s9,a6,s9
80011880:	00eaf833          	and	a6,s5,a4
80011884:	00e7f7b3          	and	a5,a5,a4
80011888:	01081813          	slli	a6,a6,0x10
8001188c:	02be86b3          	mul	a3,t4,a1
80011890:	00f80833          	add	a6,a6,a5
80011894:	03d90e33          	mul	t3,s2,t4
80011898:	0106d513          	srli	a0,a3,0x10
8001189c:	02b387b3          	mul	a5,t2,a1
800118a0:	01c787b3          	add	a5,a5,t3
800118a4:	00f507b3          	add	a5,a0,a5
800118a8:	02790733          	mul	a4,s2,t2
800118ac:	01c7f463          	bgeu	a5,t3,800118b4 <__multf3+0x7bc>
800118b0:	01770733          	add	a4,a4,s7
800118b4:	0107d513          	srli	a0,a5,0x10
800118b8:	00e50733          	add	a4,a0,a4
800118bc:	00010bb7          	lui	s7,0x10
800118c0:	02e12223          	sw	a4,36(sp)
800118c4:	fffb8713          	addi	a4,s7,-1 # ffff <_printf_r-0x7fff0001>
800118c8:	00e7f533          	and	a0,a5,a4
800118cc:	00e6f6b3          	and	a3,a3,a4
800118d0:	03e40e33          	mul	t3,s0,t5
800118d4:	01051513          	slli	a0,a0,0x10
800118d8:	00d50533          	add	a0,a0,a3
800118dc:	03e60733          	mul	a4,a2,t5
800118e0:	02c487b3          	mul	a5,s1,a2
800118e4:	01075693          	srli	a3,a4,0x10
800118e8:	01c787b3          	add	a5,a5,t3
800118ec:	00f687b3          	add	a5,a3,a5
800118f0:	02848ab3          	mul	s5,s1,s0
800118f4:	01c7f463          	bgeu	a5,t3,800118fc <__multf3+0x804>
800118f8:	017a8ab3          	add	s5,s5,s7
800118fc:	00010db7          	lui	s11,0x10
80011900:	fffd8e13          	addi	t3,s11,-1 # ffff <_printf_r-0x7fff0001>
80011904:	01c7f6b3          	and	a3,a5,t3
80011908:	0107db93          	srli	s7,a5,0x10
8001190c:	011b07b3          	add	a5,s6,a7
80011910:	01c77733          	and	a4,a4,t3
80011914:	0117b8b3          	sltu	a7,a5,a7
80011918:	01aa0a33          	add	s4,s4,s10
8001191c:	01069693          	slli	a3,a3,0x10
80011920:	00e686b3          	add	a3,a3,a4
80011924:	011a0733          	add	a4,s4,a7
80011928:	02e12423          	sw	a4,40(sp)
8001192c:	010787b3          	add	a5,a5,a6
80011930:	01aa3a33          	sltu	s4,s4,s10
80011934:	02812d03          	lw	s10,40(sp)
80011938:	0107b833          	sltu	a6,a5,a6
8001193c:	01970b33          	add	s6,a4,s9
80011940:	010b0733          	add	a4,s6,a6
80011944:	02e12623          	sw	a4,44(sp)
80011948:	011d38b3          	sltu	a7,s10,a7
8001194c:	011a6a33          	or	s4,s4,a7
80011950:	02c12883          	lw	a7,44(sp)
80011954:	02412e03          	lw	t3,36(sp)
80011958:	00a787b3          	add	a5,a5,a0
8001195c:	0108b833          	sltu	a6,a7,a6
80011960:	019b3b33          	sltu	s6,s6,s9
80011964:	00a7b533          	sltu	a0,a5,a0
80011968:	01c70733          	add	a4,a4,t3
8001196c:	010b6b33          	or	s6,s6,a6
80011970:	02412803          	lw	a6,36(sp)
80011974:	00a70c33          	add	s8,a4,a0
80011978:	015b8bb3          	add	s7,s7,s5
8001197c:	00d787b3          	add	a5,a5,a3
80011980:	00d7b6b3          	sltu	a3,a5,a3
80011984:	017c0ab3          	add	s5,s8,s7
80011988:	00da8e33          	add	t3,s5,a3
8001198c:	01073733          	sltu	a4,a4,a6
80011990:	00ac3533          	sltu	a0,s8,a0
80011994:	00a76733          	or	a4,a4,a0
80011998:	00de36b3          	sltu	a3,t3,a3
8001199c:	016a0a33          	add	s4,s4,s6
800119a0:	017abab3          	sltu	s5,s5,s7
800119a4:	00ea0a33          	add	s4,s4,a4
800119a8:	00daeab3          	or	s5,s5,a3
800119ac:	02ce8833          	mul	a6,t4,a2
800119b0:	015a06b3          	add	a3,s4,s5
800119b4:	06f12623          	sw	a5,108(sp)
800119b8:	03d40a33          	mul	s4,s0,t4
800119bc:	01085513          	srli	a0,a6,0x10
800119c0:	02c38733          	mul	a4,t2,a2
800119c4:	01470733          	add	a4,a4,s4
800119c8:	00e50733          	add	a4,a0,a4
800119cc:	028388b3          	mul	a7,t2,s0
800119d0:	01477463          	bgeu	a4,s4,800119d8 <__multf3+0x8e0>
800119d4:	01b888b3          	add	a7,a7,s11
800119d8:	00010a37          	lui	s4,0x10
800119dc:	01075513          	srli	a0,a4,0x10
800119e0:	fffa0a93          	addi	s5,s4,-1 # ffff <_printf_r-0x7fff0001>
800119e4:	011508b3          	add	a7,a0,a7
800119e8:	01577533          	and	a0,a4,s5
800119ec:	01587833          	and	a6,a6,s5
800119f0:	01051513          	slli	a0,a0,0x10
800119f4:	02690ab3          	mul	s5,s2,t1
800119f8:	01050533          	add	a0,a0,a6
800119fc:	02b30833          	mul	a6,t1,a1
80011a00:	02b285b3          	mul	a1,t0,a1
80011a04:	01085713          	srli	a4,a6,0x10
80011a08:	015585b3          	add	a1,a1,s5
80011a0c:	00b70733          	add	a4,a4,a1
80011a10:	02590933          	mul	s2,s2,t0
80011a14:	01577463          	bgeu	a4,s5,80011a1c <__multf3+0x924>
80011a18:	01490933          	add	s2,s2,s4
80011a1c:	00010ab7          	lui	s5,0x10
80011a20:	01075593          	srli	a1,a4,0x10
80011a24:	fffa8a13          	addi	s4,s5,-1 # ffff <_printf_r-0x7fff0001>
80011a28:	01487833          	and	a6,a6,s4
80011a2c:	01258933          	add	s2,a1,s2
80011a30:	014775b3          	and	a1,a4,s4
80011a34:	01059593          	slli	a1,a1,0x10
80011a38:	03e98733          	mul	a4,s3,t5
80011a3c:	010585b3          	add	a1,a1,a6
80011a40:	03ef8f33          	mul	t5,t6,t5
80011a44:	01075813          	srli	a6,a4,0x10
80011a48:	03f48a33          	mul	s4,s1,t6
80011a4c:	033484b3          	mul	s1,s1,s3
80011a50:	01e484b3          	add	s1,s1,t5
80011a54:	009804b3          	add	s1,a6,s1
80011a58:	01e4f463          	bgeu	s1,t5,80011a60 <__multf3+0x968>
80011a5c:	015a0a33          	add	s4,s4,s5
80011a60:	0104db13          	srli	s6,s1,0x10
80011a64:	014b0b33          	add	s6,s6,s4
80011a68:	00010a37          	lui	s4,0x10
80011a6c:	fffa0f13          	addi	t5,s4,-1 # ffff <_printf_r-0x7fff0001>
80011a70:	01e4f833          	and	a6,s1,t5
80011a74:	01e77733          	and	a4,a4,t5
80011a78:	026404b3          	mul	s1,s0,t1
80011a7c:	01081813          	slli	a6,a6,0x10
80011a80:	00e80833          	add	a6,a6,a4
80011a84:	02660f33          	mul	t5,a2,t1
80011a88:	02c28633          	mul	a2,t0,a2
80011a8c:	010f5713          	srli	a4,t5,0x10
80011a90:	00960633          	add	a2,a2,s1
80011a94:	00c70633          	add	a2,a4,a2
80011a98:	02540433          	mul	s0,s0,t0
80011a9c:	00967463          	bgeu	a2,s1,80011aa4 <__multf3+0x9ac>
80011aa0:	01440433          	add	s0,s0,s4
80011aa4:	00010a37          	lui	s4,0x10
80011aa8:	01065713          	srli	a4,a2,0x10
80011aac:	fffa0493          	addi	s1,s4,-1 # ffff <_printf_r-0x7fff0001>
80011ab0:	00870433          	add	s0,a4,s0
80011ab4:	00967733          	and	a4,a2,s1
80011ab8:	009f7f33          	and	t5,t5,s1
80011abc:	01071713          	slli	a4,a4,0x10
80011ac0:	03f384b3          	mul	s1,t2,t6
80011ac4:	01e70733          	add	a4,a4,t5
80011ac8:	033383b3          	mul	t2,t2,s3
80011acc:	03d98f33          	mul	t5,s3,t4
80011ad0:	03df8eb3          	mul	t4,t6,t4
80011ad4:	010f5613          	srli	a2,t5,0x10
80011ad8:	01d383b3          	add	t2,t2,t4
80011adc:	00760633          	add	a2,a2,t2
80011ae0:	01d67463          	bgeu	a2,t4,80011ae8 <__multf3+0x9f0>
80011ae4:	014484b3          	add	s1,s1,s4
80011ae8:	01065c13          	srli	s8,a2,0x10
80011aec:	00010cb7          	lui	s9,0x10
80011af0:	009c0c33          	add	s8,s8,s1
80011af4:	00ae0e33          	add	t3,t3,a0
80011af8:	fffc8493          	addi	s1,s9,-1 # ffff <_printf_r-0x7fff0001>
80011afc:	00ae3533          	sltu	a0,t3,a0
80011b00:	011686b3          	add	a3,a3,a7
80011b04:	00967633          	and	a2,a2,s1
80011b08:	00a68d33          	add	s10,a3,a0
80011b0c:	009f7f33          	and	t5,t5,s1
80011b10:	00be0e33          	add	t3,t3,a1
80011b14:	01061613          	slli	a2,a2,0x10
80011b18:	01e60633          	add	a2,a2,t5
80011b1c:	00be35b3          	sltu	a1,t3,a1
80011b20:	012d0f33          	add	t5,s10,s2
80011b24:	010e0e33          	add	t3,t3,a6
80011b28:	00bf03b3          	add	t2,t5,a1
80011b2c:	01638eb3          	add	t4,t2,s6
80011b30:	07c12823          	sw	t3,112(sp)
80011b34:	010e3e33          	sltu	t3,t3,a6
80011b38:	01ce8db3          	add	s11,t4,t3
80011b3c:	0116b6b3          	sltu	a3,a3,a7
80011b40:	00b3b5b3          	sltu	a1,t2,a1
80011b44:	00ad3533          	sltu	a0,s10,a0
80011b48:	012f3933          	sltu	s2,t5,s2
80011b4c:	00a6e533          	or	a0,a3,a0
80011b50:	00b96933          	or	s2,s2,a1
80011b54:	016ebeb3          	sltu	t4,t4,s6
80011b58:	01cdbe33          	sltu	t3,s11,t3
80011b5c:	01250533          	add	a0,a0,s2
80011b60:	01ceeeb3          	or	t4,t4,t3
80011b64:	00ed8833          	add	a6,s11,a4
80011b68:	01d50533          	add	a0,a0,t4
80011b6c:	00e83733          	sltu	a4,a6,a4
80011b70:	00850533          	add	a0,a0,s0
80011b74:	00e506b3          	add	a3,a0,a4
80011b78:	00853433          	sltu	s0,a0,s0
80011b7c:	02698533          	mul	a0,s3,t1
80011b80:	00c80833          	add	a6,a6,a2
80011b84:	00e6b733          	sltu	a4,a3,a4
80011b88:	00c83633          	sltu	a2,a6,a2
80011b8c:	018686b3          	add	a3,a3,s8
80011b90:	00c685b3          	add	a1,a3,a2
80011b94:	0186bc33          	sltu	s8,a3,s8
80011b98:	00c5b633          	sltu	a2,a1,a2
80011b9c:	07012a23          	sw	a6,116(sp)
80011ba0:	00e46733          	or	a4,s0,a4
80011ba4:	026f8333          	mul	t1,t6,t1
80011ba8:	01055693          	srli	a3,a0,0x10
80011bac:	00cc6633          	or	a2,s8,a2
80011bb0:	033289b3          	mul	s3,t0,s3
80011bb4:	006989b3          	add	s3,s3,t1
80011bb8:	03f28fb3          	mul	t6,t0,t6
80011bbc:	013682b3          	add	t0,a3,s3
80011bc0:	0062f463          	bgeu	t0,t1,80011bc8 <__multf3+0xad0>
80011bc4:	019f8fb3          	add	t6,t6,s9
80011bc8:	0092f6b3          	and	a3,t0,s1
80011bcc:	01069693          	slli	a3,a3,0x10
80011bd0:	009574b3          	and	s1,a0,s1
80011bd4:	0102d293          	srli	t0,t0,0x10
80011bd8:	009684b3          	add	s1,a3,s1
80011bdc:	00e282b3          	add	t0,t0,a4
80011be0:	01012683          	lw	a3,16(sp)
80011be4:	02012703          	lw	a4,32(sp)
80011be8:	009585b3          	add	a1,a1,s1
80011bec:	0095b4b3          	sltu	s1,a1,s1
80011bf0:	00d769b3          	or	s3,a4,a3
80011bf4:	01412703          	lw	a4,20(sp)
80011bf8:	00c282b3          	add	t0,t0,a2
80011bfc:	009282b3          	add	t0,t0,s1
80011c00:	013769b3          	or	s3,a4,s3
80011c04:	01f28fb3          	add	t6,t0,t6
80011c08:	00d79793          	slli	a5,a5,0xd
80011c0c:	06b12c23          	sw	a1,120(sp)
80011c10:	07f12e23          	sw	t6,124(sp)
80011c14:	0137e7b3          	or	a5,a5,s3
80011c18:	06010713          	addi	a4,sp,96
80011c1c:	07010593          	addi	a1,sp,112
80011c20:	00c72683          	lw	a3,12(a4)
80011c24:	01072603          	lw	a2,16(a4)
80011c28:	00470713          	addi	a4,a4,4
80011c2c:	0136d693          	srli	a3,a3,0x13
80011c30:	00d61613          	slli	a2,a2,0xd
80011c34:	00c6e6b3          	or	a3,a3,a2
80011c38:	fed72e23          	sw	a3,-4(a4)
80011c3c:	fee592e3          	bne	a1,a4,80011c20 <__multf3+0xb28>
80011c40:	06012703          	lw	a4,96(sp)
80011c44:	06812683          	lw	a3,104(sp)
80011c48:	00f037b3          	snez	a5,a5
80011c4c:	00e7e7b3          	or	a5,a5,a4
80011c50:	04d12c23          	sw	a3,88(sp)
80011c54:	06c12703          	lw	a4,108(sp)
80011c58:	06412683          	lw	a3,100(sp)
80011c5c:	04f12823          	sw	a5,80(sp)
80011c60:	04e12e23          	sw	a4,92(sp)
80011c64:	04d12a23          	sw	a3,84(sp)
80011c68:	00b71693          	slli	a3,a4,0xb
80011c6c:	2006dc63          	bgez	a3,80011e84 <__multf3+0xd8c>
80011c70:	01f79793          	slli	a5,a5,0x1f
80011c74:	05010713          	addi	a4,sp,80
80011c78:	05c10593          	addi	a1,sp,92
80011c7c:	00072683          	lw	a3,0(a4)
80011c80:	00472603          	lw	a2,4(a4)
80011c84:	00470713          	addi	a4,a4,4
80011c88:	0016d693          	srli	a3,a3,0x1
80011c8c:	01f61613          	slli	a2,a2,0x1f
80011c90:	00c6e6b3          	or	a3,a3,a2
80011c94:	fed72e23          	sw	a3,-4(a4)
80011c98:	fee592e3          	bne	a1,a4,80011c7c <__multf3+0xb84>
80011c9c:	05c12703          	lw	a4,92(sp)
80011ca0:	00f037b3          	snez	a5,a5
80011ca4:	00175713          	srli	a4,a4,0x1
80011ca8:	04e12e23          	sw	a4,92(sp)
80011cac:	05012703          	lw	a4,80(sp)
80011cb0:	00f767b3          	or	a5,a4,a5
80011cb4:	04f12823          	sw	a5,80(sp)
80011cb8:	01812703          	lw	a4,24(sp)
80011cbc:	000047b7          	lui	a5,0x4
80011cc0:	fff78793          	addi	a5,a5,-1 # 3fff <_printf_r-0x7fffc001>
80011cc4:	00f707b3          	add	a5,a4,a5
80011cc8:	1ef05063          	blez	a5,80011ea8 <__multf3+0xdb0>
80011ccc:	05012703          	lw	a4,80(sp)
80011cd0:	00777693          	andi	a3,a4,7
80011cd4:	04068463          	beqz	a3,80011d1c <__multf3+0xc24>
80011cd8:	00f77693          	andi	a3,a4,15
80011cdc:	00400613          	li	a2,4
80011ce0:	02c68e63          	beq	a3,a2,80011d1c <__multf3+0xc24>
80011ce4:	05412683          	lw	a3,84(sp)
80011ce8:	00470713          	addi	a4,a4,4
80011cec:	04e12823          	sw	a4,80(sp)
80011cf0:	00473713          	sltiu	a4,a4,4
80011cf4:	00d706b3          	add	a3,a4,a3
80011cf8:	00e6b733          	sltu	a4,a3,a4
80011cfc:	04d12a23          	sw	a3,84(sp)
80011d00:	05812683          	lw	a3,88(sp)
80011d04:	00d706b3          	add	a3,a4,a3
80011d08:	04d12c23          	sw	a3,88(sp)
80011d0c:	00e6b6b3          	sltu	a3,a3,a4
80011d10:	05c12703          	lw	a4,92(sp)
80011d14:	00e686b3          	add	a3,a3,a4
80011d18:	04d12e23          	sw	a3,92(sp)
80011d1c:	05c12703          	lw	a4,92(sp)
80011d20:	00b71693          	slli	a3,a4,0xb
80011d24:	0206d063          	bgez	a3,80011d44 <__multf3+0xc4c>
80011d28:	fff007b7          	lui	a5,0xfff00
80011d2c:	fff78793          	addi	a5,a5,-1 # ffefffff <heap_end.1814+0x7feea61b>
80011d30:	00f77733          	and	a4,a4,a5
80011d34:	04e12e23          	sw	a4,92(sp)
80011d38:	01812703          	lw	a4,24(sp)
80011d3c:	000047b7          	lui	a5,0x4
80011d40:	00f707b3          	add	a5,a4,a5
80011d44:	05010713          	addi	a4,sp,80
80011d48:	05c10593          	addi	a1,sp,92
80011d4c:	00072683          	lw	a3,0(a4)
80011d50:	00472603          	lw	a2,4(a4)
80011d54:	00470713          	addi	a4,a4,4
80011d58:	0036d693          	srli	a3,a3,0x3
80011d5c:	01d61613          	slli	a2,a2,0x1d
80011d60:	00c6e6b3          	or	a3,a3,a2
80011d64:	fed72e23          	sw	a3,-4(a4)
80011d68:	feb712e3          	bne	a4,a1,80011d4c <__multf3+0xc54>
80011d6c:	00008737          	lui	a4,0x8
80011d70:	ffe70693          	addi	a3,a4,-2 # 7ffe <_printf_r-0x7fff8002>
80011d74:	10f6ce63          	blt	a3,a5,80011e90 <__multf3+0xd98>
80011d78:	05c12703          	lw	a4,92(sp)
80011d7c:	00375713          	srli	a4,a4,0x3
80011d80:	04e12e23          	sw	a4,92(sp)
80011d84:	05c12703          	lw	a4,92(sp)
80011d88:	01179793          	slli	a5,a5,0x11
80011d8c:	0117d793          	srli	a5,a5,0x11
80011d90:	06e11623          	sh	a4,108(sp)
80011d94:	00c12703          	lw	a4,12(sp)
80011d98:	0bc12083          	lw	ra,188(sp)
80011d9c:	0b812403          	lw	s0,184(sp)
80011da0:	00f71713          	slli	a4,a4,0xf
80011da4:	00f767b3          	or	a5,a4,a5
80011da8:	06f11723          	sh	a5,110(sp)
80011dac:	00812703          	lw	a4,8(sp)
80011db0:	05012783          	lw	a5,80(sp)
80011db4:	0b412483          	lw	s1,180(sp)
80011db8:	0b012903          	lw	s2,176(sp)
80011dbc:	00f72023          	sw	a5,0(a4)
80011dc0:	05412783          	lw	a5,84(sp)
80011dc4:	0ac12983          	lw	s3,172(sp)
80011dc8:	0a812a03          	lw	s4,168(sp)
80011dcc:	00f72223          	sw	a5,4(a4)
80011dd0:	05812783          	lw	a5,88(sp)
80011dd4:	0a412a83          	lw	s5,164(sp)
80011dd8:	0a012b03          	lw	s6,160(sp)
80011ddc:	00f72423          	sw	a5,8(a4)
80011de0:	06c12783          	lw	a5,108(sp)
80011de4:	09c12b83          	lw	s7,156(sp)
80011de8:	09812c03          	lw	s8,152(sp)
80011dec:	00f72623          	sw	a5,12(a4)
80011df0:	09412c83          	lw	s9,148(sp)
80011df4:	09012d03          	lw	s10,144(sp)
80011df8:	08c12d83          	lw	s11,140(sp)
80011dfc:	00070513          	mv	a0,a4
80011e00:	0c010113          	addi	sp,sp,192
80011e04:	00008067          	ret
80011e08:	00912623          	sw	s1,12(sp)
80011e0c:	03012783          	lw	a5,48(sp)
80011e10:	04f12823          	sw	a5,80(sp)
80011e14:	03412783          	lw	a5,52(sp)
80011e18:	04f12a23          	sw	a5,84(sp)
80011e1c:	03812783          	lw	a5,56(sp)
80011e20:	04f12c23          	sw	a5,88(sp)
80011e24:	03c12783          	lw	a5,60(sp)
80011e28:	04f12e23          	sw	a5,92(sp)
80011e2c:	00200793          	li	a5,2
80011e30:	28fb0263          	beq	s6,a5,800120b4 <__multf3+0xfbc>
80011e34:	00300793          	li	a5,3
80011e38:	28fb0c63          	beq	s6,a5,800120d0 <__multf3+0xfd8>
80011e3c:	00100793          	li	a5,1
80011e40:	e6fb1ce3          	bne	s6,a5,80011cb8 <__multf3+0xbc0>
80011e44:	04012e23          	sw	zero,92(sp)
80011e48:	04012c23          	sw	zero,88(sp)
80011e4c:	04012a23          	sw	zero,84(sp)
80011e50:	04012823          	sw	zero,80(sp)
80011e54:	2200006f          	j	80012074 <__multf3+0xf7c>
80011e58:	01212623          	sw	s2,12(sp)
80011e5c:	04012783          	lw	a5,64(sp)
80011e60:	00070b13          	mv	s6,a4
80011e64:	04f12823          	sw	a5,80(sp)
80011e68:	04412783          	lw	a5,68(sp)
80011e6c:	04f12a23          	sw	a5,84(sp)
80011e70:	04812783          	lw	a5,72(sp)
80011e74:	04f12c23          	sw	a5,88(sp)
80011e78:	04c12783          	lw	a5,76(sp)
80011e7c:	04f12e23          	sw	a5,92(sp)
80011e80:	fadff06f          	j	80011e2c <__multf3+0xd34>
80011e84:	01c12783          	lw	a5,28(sp)
80011e88:	00f12c23          	sw	a5,24(sp)
80011e8c:	e2dff06f          	j	80011cb8 <__multf3+0xbc0>
80011e90:	04012e23          	sw	zero,92(sp)
80011e94:	04012c23          	sw	zero,88(sp)
80011e98:	04012a23          	sw	zero,84(sp)
80011e9c:	04012823          	sw	zero,80(sp)
80011ea0:	fff70793          	addi	a5,a4,-1
80011ea4:	ee1ff06f          	j	80011d84 <__multf3+0xc8c>
80011ea8:	00100613          	li	a2,1
80011eac:	40f60633          	sub	a2,a2,a5
80011eb0:	07400793          	li	a5,116
80011eb4:	1cc7c463          	blt	a5,a2,8001207c <__multf3+0xf84>
80011eb8:	05010713          	addi	a4,sp,80
80011ebc:	40565893          	srai	a7,a2,0x5
80011ec0:	00070593          	mv	a1,a4
80011ec4:	00000793          	li	a5,0
80011ec8:	00000693          	li	a3,0
80011ecc:	05169663          	bne	a3,a7,80011f18 <__multf3+0xe20>
80011ed0:	01f67613          	andi	a2,a2,31
80011ed4:	00289593          	slli	a1,a7,0x2
80011ed8:	04061a63          	bnez	a2,80011f2c <__multf3+0xe34>
80011edc:	00300513          	li	a0,3
80011ee0:	00070693          	mv	a3,a4
80011ee4:	41150533          	sub	a0,a0,a7
80011ee8:	00b68833          	add	a6,a3,a1
80011eec:	00082803          	lw	a6,0(a6)
80011ef0:	00160613          	addi	a2,a2,1
80011ef4:	00468693          	addi	a3,a3,4
80011ef8:	ff06ae23          	sw	a6,-4(a3)
80011efc:	fec556e3          	bge	a0,a2,80011ee8 <__multf3+0xdf0>
80011f00:	00400693          	li	a3,4
80011f04:	411688b3          	sub	a7,a3,a7
80011f08:	00100693          	li	a3,1
80011f0c:	07105c63          	blez	a7,80011f84 <__multf3+0xe8c>
80011f10:	00088693          	mv	a3,a7
80011f14:	0700006f          	j	80011f84 <__multf3+0xe8c>
80011f18:	0005a503          	lw	a0,0(a1)
80011f1c:	00168693          	addi	a3,a3,1
80011f20:	00458593          	addi	a1,a1,4
80011f24:	00a7e7b3          	or	a5,a5,a0
80011f28:	fa5ff06f          	j	80011ecc <__multf3+0xdd4>
80011f2c:	ffc00e13          	li	t3,-4
80011f30:	03c88e33          	mul	t3,a7,t3
80011f34:	08010513          	addi	a0,sp,128
80011f38:	00b50533          	add	a0,a0,a1
80011f3c:	fd052503          	lw	a0,-48(a0)
80011f40:	02000693          	li	a3,32
80011f44:	40c686b3          	sub	a3,a3,a2
80011f48:	00d51533          	sll	a0,a0,a3
80011f4c:	00a7e7b3          	or	a5,a5,a0
80011f50:	00300513          	li	a0,3
80011f54:	00b705b3          	add	a1,a4,a1
80011f58:	00000313          	li	t1,0
80011f5c:	41150533          	sub	a0,a0,a7
80011f60:	02a34663          	blt	t1,a0,80011f8c <__multf3+0xe94>
80011f64:	08010593          	addi	a1,sp,128
80011f68:	00251513          	slli	a0,a0,0x2
80011f6c:	00a58533          	add	a0,a1,a0
80011f70:	05c12583          	lw	a1,92(sp)
80011f74:	00400693          	li	a3,4
80011f78:	411686b3          	sub	a3,a3,a7
80011f7c:	00c5d633          	srl	a2,a1,a2
80011f80:	fcc52823          	sw	a2,-48(a0)
80011f84:	00400593          	li	a1,4
80011f88:	03c0006f          	j	80011fc4 <__multf3+0xecc>
80011f8c:	0005a803          	lw	a6,0(a1)
80011f90:	0045ae83          	lw	t4,4(a1)
80011f94:	01c58f33          	add	t5,a1,t3
80011f98:	00c85833          	srl	a6,a6,a2
80011f9c:	00de9eb3          	sll	t4,t4,a3
80011fa0:	01d86833          	or	a6,a6,t4
80011fa4:	010f2023          	sw	a6,0(t5)
80011fa8:	00130313          	addi	t1,t1,1 # 1000001 <_printf_r-0x7effffff>
80011fac:	00458593          	addi	a1,a1,4
80011fb0:	fb1ff06f          	j	80011f60 <__multf3+0xe68>
80011fb4:	00269613          	slli	a2,a3,0x2
80011fb8:	00c70633          	add	a2,a4,a2
80011fbc:	00062023          	sw	zero,0(a2)
80011fc0:	00168693          	addi	a3,a3,1
80011fc4:	feb698e3          	bne	a3,a1,80011fb4 <__multf3+0xebc>
80011fc8:	05012603          	lw	a2,80(sp)
80011fcc:	00f037b3          	snez	a5,a5
80011fd0:	00c7e7b3          	or	a5,a5,a2
80011fd4:	04f12823          	sw	a5,80(sp)
80011fd8:	0077f613          	andi	a2,a5,7
80011fdc:	04060263          	beqz	a2,80012020 <__multf3+0xf28>
80011fe0:	00f7f613          	andi	a2,a5,15
80011fe4:	02d60e63          	beq	a2,a3,80012020 <__multf3+0xf28>
80011fe8:	05412683          	lw	a3,84(sp)
80011fec:	00478793          	addi	a5,a5,4 # 4004 <_printf_r-0x7fffbffc>
80011ff0:	04f12823          	sw	a5,80(sp)
80011ff4:	0047b793          	sltiu	a5,a5,4
80011ff8:	00d786b3          	add	a3,a5,a3
80011ffc:	00f6b7b3          	sltu	a5,a3,a5
80012000:	04d12a23          	sw	a3,84(sp)
80012004:	05812683          	lw	a3,88(sp)
80012008:	00d786b3          	add	a3,a5,a3
8001200c:	04d12c23          	sw	a3,88(sp)
80012010:	00f6b6b3          	sltu	a3,a3,a5
80012014:	05c12783          	lw	a5,92(sp)
80012018:	00f686b3          	add	a3,a3,a5
8001201c:	04d12e23          	sw	a3,92(sp)
80012020:	05c12783          	lw	a5,92(sp)
80012024:	00c79693          	slli	a3,a5,0xc
80012028:	0006de63          	bgez	a3,80012044 <__multf3+0xf4c>
8001202c:	04012e23          	sw	zero,92(sp)
80012030:	04012c23          	sw	zero,88(sp)
80012034:	04012a23          	sw	zero,84(sp)
80012038:	04012823          	sw	zero,80(sp)
8001203c:	00100793          	li	a5,1
80012040:	d45ff06f          	j	80011d84 <__multf3+0xc8c>
80012044:	00c70613          	addi	a2,a4,12
80012048:	00072783          	lw	a5,0(a4)
8001204c:	00472683          	lw	a3,4(a4)
80012050:	00470713          	addi	a4,a4,4
80012054:	0037d793          	srli	a5,a5,0x3
80012058:	01d69693          	slli	a3,a3,0x1d
8001205c:	00d7e7b3          	or	a5,a5,a3
80012060:	fef72e23          	sw	a5,-4(a4)
80012064:	fee612e3          	bne	a2,a4,80012048 <__multf3+0xf50>
80012068:	05c12783          	lw	a5,92(sp)
8001206c:	0037d793          	srli	a5,a5,0x3
80012070:	04f12e23          	sw	a5,92(sp)
80012074:	00000793          	li	a5,0
80012078:	d0dff06f          	j	80011d84 <__multf3+0xc8c>
8001207c:	05412783          	lw	a5,84(sp)
80012080:	05012703          	lw	a4,80(sp)
80012084:	00f76733          	or	a4,a4,a5
80012088:	05812783          	lw	a5,88(sp)
8001208c:	00f76733          	or	a4,a4,a5
80012090:	05c12783          	lw	a5,92(sp)
80012094:	00f76733          	or	a4,a4,a5
80012098:	00000793          	li	a5,0
8001209c:	ce0704e3          	beqz	a4,80011d84 <__multf3+0xc8c>
800120a0:	04012e23          	sw	zero,92(sp)
800120a4:	04012c23          	sw	zero,88(sp)
800120a8:	04012a23          	sw	zero,84(sp)
800120ac:	04012823          	sw	zero,80(sp)
800120b0:	cd5ff06f          	j	80011d84 <__multf3+0xc8c>
800120b4:	000087b7          	lui	a5,0x8
800120b8:	04012e23          	sw	zero,92(sp)
800120bc:	04012c23          	sw	zero,88(sp)
800120c0:	04012a23          	sw	zero,84(sp)
800120c4:	04012823          	sw	zero,80(sp)
800120c8:	fff78793          	addi	a5,a5,-1 # 7fff <_printf_r-0x7fff8001>
800120cc:	cb9ff06f          	j	80011d84 <__multf3+0xc8c>
800120d0:	000087b7          	lui	a5,0x8
800120d4:	04f12e23          	sw	a5,92(sp)
800120d8:	04012c23          	sw	zero,88(sp)
800120dc:	04012a23          	sw	zero,84(sp)
800120e0:	04012823          	sw	zero,80(sp)
800120e4:	fff78793          	addi	a5,a5,-1 # 7fff <_printf_r-0x7fff8001>
800120e8:	00012623          	sw	zero,12(sp)
800120ec:	c99ff06f          	j	80011d84 <__multf3+0xc8c>

800120f0 <__subtf3>:
800120f0:	fa010113          	addi	sp,sp,-96
800120f4:	0085a783          	lw	a5,8(a1)
800120f8:	05212823          	sw	s2,80(sp)
800120fc:	00c5a903          	lw	s2,12(a1)
80012100:	0005a883          	lw	a7,0(a1)
80012104:	0045a703          	lw	a4,4(a1)
80012108:	04912a23          	sw	s1,84(sp)
8001210c:	02f12c23          	sw	a5,56(sp)
80012110:	00050493          	mv	s1,a0
80012114:	00f12c23          	sw	a5,24(sp)
80012118:	00062803          	lw	a6,0(a2)
8001211c:	01091793          	slli	a5,s2,0x10
80012120:	00462503          	lw	a0,4(a2)
80012124:	00862683          	lw	a3,8(a2)
80012128:	00c62e03          	lw	t3,12(a2)
8001212c:	04812c23          	sw	s0,88(sp)
80012130:	0107d793          	srli	a5,a5,0x10
80012134:	00191413          	slli	s0,s2,0x1
80012138:	03212e23          	sw	s2,60(sp)
8001213c:	04112e23          	sw	ra,92(sp)
80012140:	05312623          	sw	s3,76(sp)
80012144:	05412423          	sw	s4,72(sp)
80012148:	05512223          	sw	s5,68(sp)
8001214c:	05612023          	sw	s6,64(sp)
80012150:	03112823          	sw	a7,48(sp)
80012154:	02e12a23          	sw	a4,52(sp)
80012158:	01112823          	sw	a7,16(sp)
8001215c:	00e12a23          	sw	a4,20(sp)
80012160:	00f12e23          	sw	a5,28(sp)
80012164:	01145413          	srli	s0,s0,0x11
80012168:	01f95913          	srli	s2,s2,0x1f
8001216c:	01010f93          	addi	t6,sp,16
80012170:	01c10593          	addi	a1,sp,28
80012174:	0005a783          	lw	a5,0(a1)
80012178:	ffc5a703          	lw	a4,-4(a1)
8001217c:	ffc58593          	addi	a1,a1,-4
80012180:	00379793          	slli	a5,a5,0x3
80012184:	01d75713          	srli	a4,a4,0x1d
80012188:	00e7e7b3          	or	a5,a5,a4
8001218c:	00f5a223          	sw	a5,4(a1)
80012190:	febf92e3          	bne	t6,a1,80012174 <__subtf3+0x84>
80012194:	01012703          	lw	a4,16(sp)
80012198:	010e1793          	slli	a5,t3,0x10
8001219c:	001e1e93          	slli	t4,t3,0x1
800121a0:	00371713          	slli	a4,a4,0x3
800121a4:	0107d793          	srli	a5,a5,0x10
800121a8:	03c12e23          	sw	t3,60(sp)
800121ac:	00e12823          	sw	a4,16(sp)
800121b0:	03012823          	sw	a6,48(sp)
800121b4:	02a12a23          	sw	a0,52(sp)
800121b8:	02d12c23          	sw	a3,56(sp)
800121bc:	03012023          	sw	a6,32(sp)
800121c0:	02a12223          	sw	a0,36(sp)
800121c4:	02d12423          	sw	a3,40(sp)
800121c8:	02f12623          	sw	a5,44(sp)
800121cc:	011ede93          	srli	t4,t4,0x11
800121d0:	01fe5e13          	srli	t3,t3,0x1f
800121d4:	02010f13          	addi	t5,sp,32
800121d8:	02c10613          	addi	a2,sp,44
800121dc:	00062783          	lw	a5,0(a2)
800121e0:	ffc62683          	lw	a3,-4(a2)
800121e4:	ffc60613          	addi	a2,a2,-4
800121e8:	00379793          	slli	a5,a5,0x3
800121ec:	01d6d693          	srli	a3,a3,0x1d
800121f0:	00d7e7b3          	or	a5,a5,a3
800121f4:	00f62223          	sw	a5,4(a2)
800121f8:	fecf12e3          	bne	t5,a2,800121dc <__subtf3+0xec>
800121fc:	02012783          	lw	a5,32(sp)
80012200:	000086b7          	lui	a3,0x8
80012204:	fff68693          	addi	a3,a3,-1 # 7fff <_printf_r-0x7fff8001>
80012208:	00379793          	slli	a5,a5,0x3
8001220c:	02f12023          	sw	a5,32(sp)
80012210:	02de9063          	bne	t4,a3,80012230 <__subtf3+0x140>
80012214:	02812503          	lw	a0,40(sp)
80012218:	02412683          	lw	a3,36(sp)
8001221c:	00a6e6b3          	or	a3,a3,a0
80012220:	02c12503          	lw	a0,44(sp)
80012224:	00a6e6b3          	or	a3,a3,a0
80012228:	00f6e6b3          	or	a3,a3,a5
8001222c:	00069463          	bnez	a3,80012234 <__subtf3+0x144>
80012230:	001e4e13          	xori	t3,t3,1
80012234:	41d40333          	sub	t1,s0,t4
80012238:	112e12e3          	bne	t3,s2,80012b3c <__subtf3+0xa4c>
8001223c:	44605a63          	blez	t1,80012690 <__subtf3+0x5a0>
80012240:	01412e03          	lw	t3,20(sp)
80012244:	01812883          	lw	a7,24(sp)
80012248:	01c12803          	lw	a6,28(sp)
8001224c:	0a0e9c63          	bnez	t4,80012304 <__subtf3+0x214>
80012250:	02412503          	lw	a0,36(sp)
80012254:	02812683          	lw	a3,40(sp)
80012258:	02c12e83          	lw	t4,44(sp)
8001225c:	00d565b3          	or	a1,a0,a3
80012260:	01d5e5b3          	or	a1,a1,t4
80012264:	00f5e5b3          	or	a1,a1,a5
80012268:	00059e63          	bnez	a1,80012284 <__subtf3+0x194>
8001226c:	02e12823          	sw	a4,48(sp)
80012270:	03c12a23          	sw	t3,52(sp)
80012274:	03112c23          	sw	a7,56(sp)
80012278:	03012e23          	sw	a6,60(sp)
8001227c:	00030413          	mv	s0,t1
80012280:	0a00006f          	j	80012320 <__subtf3+0x230>
80012284:	fff30593          	addi	a1,t1,-1
80012288:	04059a63          	bnez	a1,800122dc <__subtf3+0x1ec>
8001228c:	00f707b3          	add	a5,a4,a5
80012290:	00e7b733          	sltu	a4,a5,a4
80012294:	01c50633          	add	a2,a0,t3
80012298:	02f12823          	sw	a5,48(sp)
8001229c:	00e607b3          	add	a5,a2,a4
800122a0:	00e7b733          	sltu	a4,a5,a4
800122a4:	01c63633          	sltu	a2,a2,t3
800122a8:	00e66733          	or	a4,a2,a4
800122ac:	02f12a23          	sw	a5,52(sp)
800122b0:	011687b3          	add	a5,a3,a7
800122b4:	00e786b3          	add	a3,a5,a4
800122b8:	00e6b733          	sltu	a4,a3,a4
800122bc:	0117b7b3          	sltu	a5,a5,a7
800122c0:	00e7e7b3          	or	a5,a5,a4
800122c4:	010e8833          	add	a6,t4,a6
800122c8:	010787b3          	add	a5,a5,a6
800122cc:	02d12c23          	sw	a3,56(sp)
800122d0:	02f12e23          	sw	a5,60(sp)
800122d4:	00100413          	li	s0,1
800122d8:	32c0006f          	j	80012604 <__subtf3+0x514>
800122dc:	000087b7          	lui	a5,0x8
800122e0:	fff78793          	addi	a5,a5,-1 # 7fff <_printf_r-0x7fff8001>
800122e4:	f8f304e3          	beq	t1,a5,8001226c <__subtf3+0x17c>
800122e8:	07400793          	li	a5,116
800122ec:	1ab7d463          	bge	a5,a1,80012494 <__subtf3+0x3a4>
800122f0:	02012623          	sw	zero,44(sp)
800122f4:	02012423          	sw	zero,40(sp)
800122f8:	02012223          	sw	zero,36(sp)
800122fc:	00100793          	li	a5,1
80012300:	2a80006f          	j	800125a8 <__subtf3+0x4b8>
80012304:	000087b7          	lui	a5,0x8
80012308:	fff78793          	addi	a5,a5,-1 # 7fff <_printf_r-0x7fff8001>
8001230c:	16f41663          	bne	s0,a5,80012478 <__subtf3+0x388>
80012310:	02e12823          	sw	a4,48(sp)
80012314:	03c12a23          	sw	t3,52(sp)
80012318:	03112c23          	sw	a7,56(sp)
8001231c:	03012e23          	sw	a6,60(sp)
80012320:	03012783          	lw	a5,48(sp)
80012324:	0077f713          	andi	a4,a5,7
80012328:	04070463          	beqz	a4,80012370 <__subtf3+0x280>
8001232c:	00f7f713          	andi	a4,a5,15
80012330:	00400693          	li	a3,4
80012334:	02d70e63          	beq	a4,a3,80012370 <__subtf3+0x280>
80012338:	03412703          	lw	a4,52(sp)
8001233c:	00478793          	addi	a5,a5,4
80012340:	02f12823          	sw	a5,48(sp)
80012344:	0047b793          	sltiu	a5,a5,4
80012348:	00e78733          	add	a4,a5,a4
8001234c:	00f737b3          	sltu	a5,a4,a5
80012350:	02e12a23          	sw	a4,52(sp)
80012354:	03812703          	lw	a4,56(sp)
80012358:	00e78733          	add	a4,a5,a4
8001235c:	02e12c23          	sw	a4,56(sp)
80012360:	00f73733          	sltu	a4,a4,a5
80012364:	03c12783          	lw	a5,60(sp)
80012368:	00f70733          	add	a4,a4,a5
8001236c:	02e12e23          	sw	a4,60(sp)
80012370:	03c12783          	lw	a5,60(sp)
80012374:	00c79713          	slli	a4,a5,0xc
80012378:	02075463          	bgez	a4,800123a0 <__subtf3+0x2b0>
8001237c:	00008737          	lui	a4,0x8
80012380:	00140413          	addi	s0,s0,1
80012384:	fff70713          	addi	a4,a4,-1 # 7fff <_printf_r-0x7fff8001>
80012388:	00e41463          	bne	s0,a4,80012390 <__subtf3+0x2a0>
8001238c:	2780106f          	j	80013604 <__subtf3+0x1514>
80012390:	fff80737          	lui	a4,0xfff80
80012394:	fff70713          	addi	a4,a4,-1 # fff7ffff <heap_end.1814+0x7ff6a61b>
80012398:	00e7f7b3          	and	a5,a5,a4
8001239c:	02f12e23          	sw	a5,60(sp)
800123a0:	03010793          	addi	a5,sp,48
800123a4:	03c10613          	addi	a2,sp,60
800123a8:	0007a703          	lw	a4,0(a5)
800123ac:	0047a683          	lw	a3,4(a5)
800123b0:	00478793          	addi	a5,a5,4
800123b4:	00375713          	srli	a4,a4,0x3
800123b8:	01d69693          	slli	a3,a3,0x1d
800123bc:	00d76733          	or	a4,a4,a3
800123c0:	fee7ae23          	sw	a4,-4(a5)
800123c4:	fef612e3          	bne	a2,a5,800123a8 <__subtf3+0x2b8>
800123c8:	03c12783          	lw	a5,60(sp)
800123cc:	000086b7          	lui	a3,0x8
800123d0:	0037d713          	srli	a4,a5,0x3
800123d4:	02e12e23          	sw	a4,60(sp)
800123d8:	fff68793          	addi	a5,a3,-1 # 7fff <_printf_r-0x7fff8001>
800123dc:	02f41a63          	bne	s0,a5,80012410 <__subtf3+0x320>
800123e0:	03412603          	lw	a2,52(sp)
800123e4:	03012783          	lw	a5,48(sp)
800123e8:	00c7e7b3          	or	a5,a5,a2
800123ec:	03812603          	lw	a2,56(sp)
800123f0:	00c7e7b3          	or	a5,a5,a2
800123f4:	00e7e7b3          	or	a5,a5,a4
800123f8:	00078c63          	beqz	a5,80012410 <__subtf3+0x320>
800123fc:	02d12e23          	sw	a3,60(sp)
80012400:	02012c23          	sw	zero,56(sp)
80012404:	02012a23          	sw	zero,52(sp)
80012408:	02012823          	sw	zero,48(sp)
8001240c:	00000913          	li	s2,0
80012410:	03c12783          	lw	a5,60(sp)
80012414:	01141413          	slli	s0,s0,0x11
80012418:	01145413          	srli	s0,s0,0x11
8001241c:	00f11623          	sh	a5,12(sp)
80012420:	03012783          	lw	a5,48(sp)
80012424:	00f91913          	slli	s2,s2,0xf
80012428:	00896933          	or	s2,s2,s0
8001242c:	00f4a023          	sw	a5,0(s1) # 80000 <_printf_r-0x7ff80000>
80012430:	03412783          	lw	a5,52(sp)
80012434:	01211723          	sh	s2,14(sp)
80012438:	05c12083          	lw	ra,92(sp)
8001243c:	00f4a223          	sw	a5,4(s1)
80012440:	03812783          	lw	a5,56(sp)
80012444:	05812403          	lw	s0,88(sp)
80012448:	05012903          	lw	s2,80(sp)
8001244c:	00f4a423          	sw	a5,8(s1)
80012450:	00c12783          	lw	a5,12(sp)
80012454:	04c12983          	lw	s3,76(sp)
80012458:	04812a03          	lw	s4,72(sp)
8001245c:	00f4a623          	sw	a5,12(s1)
80012460:	04412a83          	lw	s5,68(sp)
80012464:	04012b03          	lw	s6,64(sp)
80012468:	00048513          	mv	a0,s1
8001246c:	05412483          	lw	s1,84(sp)
80012470:	06010113          	addi	sp,sp,96
80012474:	00008067          	ret
80012478:	02c12783          	lw	a5,44(sp)
8001247c:	000806b7          	lui	a3,0x80
80012480:	00d7e7b3          	or	a5,a5,a3
80012484:	02f12623          	sw	a5,44(sp)
80012488:	07400793          	li	a5,116
8001248c:	e667c2e3          	blt	a5,t1,800122f0 <__subtf3+0x200>
80012490:	00030593          	mv	a1,t1
80012494:	4055d693          	srai	a3,a1,0x5
80012498:	00060313          	mv	t1,a2
8001249c:	00000793          	li	a5,0
800124a0:	00000513          	li	a0,0
800124a4:	04d51463          	bne	a0,a3,800124ec <__subtf3+0x3fc>
800124a8:	01f5f593          	andi	a1,a1,31
800124ac:	00269513          	slli	a0,a3,0x2
800124b0:	04059863          	bnez	a1,80012500 <__subtf3+0x410>
800124b4:	00300313          	li	t1,3
800124b8:	40d30333          	sub	t1,t1,a3
800124bc:	00a60eb3          	add	t4,a2,a0
800124c0:	000eae83          	lw	t4,0(t4)
800124c4:	00158593          	addi	a1,a1,1
800124c8:	00460613          	addi	a2,a2,4
800124cc:	ffd62e23          	sw	t4,-4(a2)
800124d0:	feb356e3          	bge	t1,a1,800124bc <__subtf3+0x3cc>
800124d4:	00400613          	li	a2,4
800124d8:	40d606b3          	sub	a3,a2,a3
800124dc:	00100613          	li	a2,1
800124e0:	06d05c63          	blez	a3,80012558 <__subtf3+0x468>
800124e4:	00068613          	mv	a2,a3
800124e8:	0700006f          	j	80012558 <__subtf3+0x468>
800124ec:	00032e83          	lw	t4,0(t1)
800124f0:	00150513          	addi	a0,a0,1
800124f4:	00430313          	addi	t1,t1,4
800124f8:	01d7e7b3          	or	a5,a5,t4
800124fc:	fa9ff06f          	j	800124a4 <__subtf3+0x3b4>
80012500:	ffc00293          	li	t0,-4
80012504:	025682b3          	mul	t0,a3,t0
80012508:	04010613          	addi	a2,sp,64
8001250c:	00a60633          	add	a2,a2,a0
80012510:	fe062603          	lw	a2,-32(a2)
80012514:	02000e93          	li	t4,32
80012518:	40be8eb3          	sub	t4,t4,a1
8001251c:	01d61633          	sll	a2,a2,t4
80012520:	00300313          	li	t1,3
80012524:	00c7e7b3          	or	a5,a5,a2
80012528:	00af0533          	add	a0,t5,a0
8001252c:	00000f93          	li	t6,0
80012530:	40d30333          	sub	t1,t1,a3
80012534:	026fc663          	blt	t6,t1,80012560 <__subtf3+0x470>
80012538:	00400613          	li	a2,4
8001253c:	40d60633          	sub	a2,a2,a3
80012540:	00231313          	slli	t1,t1,0x2
80012544:	04010693          	addi	a3,sp,64
80012548:	00668333          	add	t1,a3,t1
8001254c:	02c12683          	lw	a3,44(sp)
80012550:	00b6d5b3          	srl	a1,a3,a1
80012554:	feb32023          	sw	a1,-32(t1)
80012558:	00400593          	li	a1,4
8001255c:	03c0006f          	j	80012598 <__subtf3+0x4a8>
80012560:	00052603          	lw	a2,0(a0)
80012564:	00452383          	lw	t2,4(a0)
80012568:	005509b3          	add	s3,a0,t0
8001256c:	00b65633          	srl	a2,a2,a1
80012570:	01d393b3          	sll	t2,t2,t4
80012574:	00766633          	or	a2,a2,t2
80012578:	00c9a023          	sw	a2,0(s3) # 800000 <_printf_r-0x7f800000>
8001257c:	001f8f93          	addi	t6,t6,1
80012580:	00450513          	addi	a0,a0,4
80012584:	fb1ff06f          	j	80012534 <__subtf3+0x444>
80012588:	00261693          	slli	a3,a2,0x2
8001258c:	00df06b3          	add	a3,t5,a3
80012590:	0006a023          	sw	zero,0(a3) # 80000 <_printf_r-0x7ff80000>
80012594:	00160613          	addi	a2,a2,1
80012598:	feb618e3          	bne	a2,a1,80012588 <__subtf3+0x498>
8001259c:	02012683          	lw	a3,32(sp)
800125a0:	00f037b3          	snez	a5,a5
800125a4:	00f6e7b3          	or	a5,a3,a5
800125a8:	02f12023          	sw	a5,32(sp)
800125ac:	02012783          	lw	a5,32(sp)
800125b0:	02412583          	lw	a1,36(sp)
800125b4:	02812603          	lw	a2,40(sp)
800125b8:	00f707b3          	add	a5,a4,a5
800125bc:	00e7b733          	sltu	a4,a5,a4
800125c0:	00be05b3          	add	a1,t3,a1
800125c4:	00e586b3          	add	a3,a1,a4
800125c8:	00e6b733          	sltu	a4,a3,a4
800125cc:	01c5b5b3          	sltu	a1,a1,t3
800125d0:	00e5e733          	or	a4,a1,a4
800125d4:	02f12823          	sw	a5,48(sp)
800125d8:	02d12a23          	sw	a3,52(sp)
800125dc:	02c12783          	lw	a5,44(sp)
800125e0:	00c886b3          	add	a3,a7,a2
800125e4:	00e68633          	add	a2,a3,a4
800125e8:	00e63733          	sltu	a4,a2,a4
800125ec:	0116b6b3          	sltu	a3,a3,a7
800125f0:	00e6e6b3          	or	a3,a3,a4
800125f4:	00f80833          	add	a6,a6,a5
800125f8:	010686b3          	add	a3,a3,a6
800125fc:	02c12c23          	sw	a2,56(sp)
80012600:	02d12e23          	sw	a3,60(sp)
80012604:	03c12783          	lw	a5,60(sp)
80012608:	00c79713          	slli	a4,a5,0xc
8001260c:	d0075ae3          	bgez	a4,80012320 <__subtf3+0x230>
80012610:	fff80737          	lui	a4,0xfff80
80012614:	fff70713          	addi	a4,a4,-1 # fff7ffff <heap_end.1814+0x7ff6a61b>
80012618:	00e7f7b3          	and	a5,a5,a4
8001261c:	02f12e23          	sw	a5,60(sp)
80012620:	03012783          	lw	a5,48(sp)
80012624:	00140413          	addi	s0,s0,1
80012628:	03c10593          	addi	a1,sp,60
8001262c:	01f79713          	slli	a4,a5,0x1f
80012630:	03010793          	addi	a5,sp,48
80012634:	0007a683          	lw	a3,0(a5)
80012638:	0047a603          	lw	a2,4(a5)
8001263c:	00478793          	addi	a5,a5,4
80012640:	0016d693          	srli	a3,a3,0x1
80012644:	01f61613          	slli	a2,a2,0x1f
80012648:	00c6e6b3          	or	a3,a3,a2
8001264c:	fed7ae23          	sw	a3,-4(a5)
80012650:	fef592e3          	bne	a1,a5,80012634 <__subtf3+0x544>
80012654:	03c12783          	lw	a5,60(sp)
80012658:	0017d793          	srli	a5,a5,0x1
8001265c:	02f12e23          	sw	a5,60(sp)
80012660:	00e037b3          	snez	a5,a4
80012664:	03012703          	lw	a4,48(sp)
80012668:	00f767b3          	or	a5,a4,a5
8001266c:	02f12823          	sw	a5,48(sp)
80012670:	000087b7          	lui	a5,0x8
80012674:	fff78793          	addi	a5,a5,-1 # 7fff <_printf_r-0x7fff8001>
80012678:	caf414e3          	bne	s0,a5,80012320 <__subtf3+0x230>
8001267c:	02012e23          	sw	zero,60(sp)
80012680:	02012c23          	sw	zero,56(sp)
80012684:	02012a23          	sw	zero,52(sp)
80012688:	02012823          	sw	zero,48(sp)
8001268c:	c95ff06f          	j	80012320 <__subtf3+0x230>
80012690:	02412683          	lw	a3,36(sp)
80012694:	02812603          	lw	a2,40(sp)
80012698:	02c12503          	lw	a0,44(sp)
8001269c:	28030863          	beqz	t1,8001292c <__subtf3+0x83c>
800126a0:	408e8e33          	sub	t3,t4,s0
800126a4:	0a041a63          	bnez	s0,80012758 <__subtf3+0x668>
800126a8:	01412883          	lw	a7,20(sp)
800126ac:	01812803          	lw	a6,24(sp)
800126b0:	01c12f03          	lw	t5,28(sp)
800126b4:	0108e333          	or	t1,a7,a6
800126b8:	01e36333          	or	t1,t1,t5
800126bc:	00e36333          	or	t1,t1,a4
800126c0:	00031e63          	bnez	t1,800126dc <__subtf3+0x5ec>
800126c4:	02f12823          	sw	a5,48(sp)
800126c8:	02d12a23          	sw	a3,52(sp)
800126cc:	02c12c23          	sw	a2,56(sp)
800126d0:	02a12e23          	sw	a0,60(sp)
800126d4:	000e0413          	mv	s0,t3
800126d8:	c49ff06f          	j	80012320 <__subtf3+0x230>
800126dc:	fffe0313          	addi	t1,t3,-1
800126e0:	04031863          	bnez	t1,80012730 <__subtf3+0x640>
800126e4:	00f70733          	add	a4,a4,a5
800126e8:	00f737b3          	sltu	a5,a4,a5
800126ec:	00d885b3          	add	a1,a7,a3
800126f0:	02e12823          	sw	a4,48(sp)
800126f4:	00f58733          	add	a4,a1,a5
800126f8:	00f737b3          	sltu	a5,a4,a5
800126fc:	00d5b6b3          	sltu	a3,a1,a3
80012700:	00f6e6b3          	or	a3,a3,a5
80012704:	02e12a23          	sw	a4,52(sp)
80012708:	00c80733          	add	a4,a6,a2
8001270c:	00d707b3          	add	a5,a4,a3
80012710:	00d7b6b3          	sltu	a3,a5,a3
80012714:	00c73733          	sltu	a4,a4,a2
80012718:	00d76733          	or	a4,a4,a3
8001271c:	00af0533          	add	a0,t5,a0
80012720:	00a70533          	add	a0,a4,a0
80012724:	02f12c23          	sw	a5,56(sp)
80012728:	02a12e23          	sw	a0,60(sp)
8001272c:	ba9ff06f          	j	800122d4 <__subtf3+0x1e4>
80012730:	00008737          	lui	a4,0x8
80012734:	fff70713          	addi	a4,a4,-1 # 7fff <_printf_r-0x7fff8001>
80012738:	f8ee06e3          	beq	t3,a4,800126c4 <__subtf3+0x5d4>
8001273c:	07400713          	li	a4,116
80012740:	04675c63          	bge	a4,t1,80012798 <__subtf3+0x6a8>
80012744:	00012e23          	sw	zero,28(sp)
80012748:	00012c23          	sw	zero,24(sp)
8001274c:	00012a23          	sw	zero,20(sp)
80012750:	00100713          	li	a4,1
80012754:	1740006f          	j	800128c8 <__subtf3+0x7d8>
80012758:	00008737          	lui	a4,0x8
8001275c:	fff70713          	addi	a4,a4,-1 # 7fff <_printf_r-0x7fff8001>
80012760:	00ee9e63          	bne	t4,a4,8001277c <__subtf3+0x68c>
80012764:	02f12823          	sw	a5,48(sp)
80012768:	02d12a23          	sw	a3,52(sp)
8001276c:	02c12c23          	sw	a2,56(sp)
80012770:	02a12e23          	sw	a0,60(sp)
80012774:	000e8413          	mv	s0,t4
80012778:	ba9ff06f          	j	80012320 <__subtf3+0x230>
8001277c:	01c12703          	lw	a4,28(sp)
80012780:	00080837          	lui	a6,0x80
80012784:	01076733          	or	a4,a4,a6
80012788:	00e12e23          	sw	a4,28(sp)
8001278c:	07400713          	li	a4,116
80012790:	fbc74ae3          	blt	a4,t3,80012744 <__subtf3+0x654>
80012794:	000e0313          	mv	t1,t3
80012798:	02000713          	li	a4,32
8001279c:	02e34733          	div	a4,t1,a4
800127a0:	00058893          	mv	a7,a1
800127a4:	00000e13          	li	t3,0
800127a8:	00000813          	li	a6,0
800127ac:	04e84c63          	blt	a6,a4,80012804 <__subtf3+0x714>
800127b0:	00070893          	mv	a7,a4
800127b4:	00075463          	bgez	a4,800127bc <__subtf3+0x6cc>
800127b8:	00000893          	li	a7,0
800127bc:	01f37f13          	andi	t5,t1,31
800127c0:	00271813          	slli	a6,a4,0x2
800127c4:	040f1a63          	bnez	t5,80012818 <__subtf3+0x728>
800127c8:	00300313          	li	t1,3
800127cc:	00000893          	li	a7,0
800127d0:	40e30333          	sub	t1,t1,a4
800127d4:	01058f33          	add	t5,a1,a6
800127d8:	000f2f03          	lw	t5,0(t5)
800127dc:	00188893          	addi	a7,a7,1
800127e0:	00458593          	addi	a1,a1,4
800127e4:	ffe5ae23          	sw	t5,-4(a1)
800127e8:	ff1356e3          	bge	t1,a7,800127d4 <__subtf3+0x6e4>
800127ec:	00400593          	li	a1,4
800127f0:	40e585b3          	sub	a1,a1,a4
800127f4:	00100713          	li	a4,1
800127f8:	08b05063          	blez	a1,80012878 <__subtf3+0x788>
800127fc:	00058713          	mv	a4,a1
80012800:	0780006f          	j	80012878 <__subtf3+0x788>
80012804:	0008af03          	lw	t5,0(a7)
80012808:	00180813          	addi	a6,a6,1 # 80001 <_printf_r-0x7ff7ffff>
8001280c:	00488893          	addi	a7,a7,4
80012810:	01ee6e33          	or	t3,t3,t5
80012814:	f99ff06f          	j	800127ac <__subtf3+0x6bc>
80012818:	02000f13          	li	t5,32
8001281c:	03e36333          	rem	t1,t1,t5
80012820:	ffc00393          	li	t2,-4
80012824:	04010593          	addi	a1,sp,64
80012828:	00289893          	slli	a7,a7,0x2
8001282c:	011588b3          	add	a7,a1,a7
80012830:	fd08a583          	lw	a1,-48(a7)
80012834:	00000293          	li	t0,0
80012838:	027703b3          	mul	t2,a4,t2
8001283c:	406f0f33          	sub	t5,t5,t1
80012840:	01e595b3          	sll	a1,a1,t5
80012844:	00be6e33          	or	t3,t3,a1
80012848:	010f85b3          	add	a1,t6,a6
8001284c:	00300813          	li	a6,3
80012850:	40e80833          	sub	a6,a6,a4
80012854:	0302c663          	blt	t0,a6,80012880 <__subtf3+0x790>
80012858:	00400593          	li	a1,4
8001285c:	40e58733          	sub	a4,a1,a4
80012860:	00281813          	slli	a6,a6,0x2
80012864:	04010593          	addi	a1,sp,64
80012868:	01058833          	add	a6,a1,a6
8001286c:	01c12583          	lw	a1,28(sp)
80012870:	0065d333          	srl	t1,a1,t1
80012874:	fc682823          	sw	t1,-48(a6)
80012878:	00300813          	li	a6,3
8001287c:	03c0006f          	j	800128b8 <__subtf3+0x7c8>
80012880:	0005a883          	lw	a7,0(a1)
80012884:	0045a403          	lw	s0,4(a1)
80012888:	007589b3          	add	s3,a1,t2
8001288c:	0068d8b3          	srl	a7,a7,t1
80012890:	01e41433          	sll	s0,s0,t5
80012894:	0088e8b3          	or	a7,a7,s0
80012898:	0119a023          	sw	a7,0(s3)
8001289c:	00128293          	addi	t0,t0,1
800128a0:	00458593          	addi	a1,a1,4
800128a4:	fb1ff06f          	j	80012854 <__subtf3+0x764>
800128a8:	00271593          	slli	a1,a4,0x2
800128ac:	00bf85b3          	add	a1,t6,a1
800128b0:	0005a023          	sw	zero,0(a1)
800128b4:	00170713          	addi	a4,a4,1
800128b8:	fee858e3          	bge	a6,a4,800128a8 <__subtf3+0x7b8>
800128bc:	01012583          	lw	a1,16(sp)
800128c0:	01c03733          	snez	a4,t3
800128c4:	00e5e733          	or	a4,a1,a4
800128c8:	00e12823          	sw	a4,16(sp)
800128cc:	01012703          	lw	a4,16(sp)
800128d0:	01412583          	lw	a1,20(sp)
800128d4:	000e8413          	mv	s0,t4
800128d8:	00e78733          	add	a4,a5,a4
800128dc:	00f737b3          	sltu	a5,a4,a5
800128e0:	00b685b3          	add	a1,a3,a1
800128e4:	02e12823          	sw	a4,48(sp)
800128e8:	00f58733          	add	a4,a1,a5
800128ec:	00f737b3          	sltu	a5,a4,a5
800128f0:	02e12a23          	sw	a4,52(sp)
800128f4:	01812703          	lw	a4,24(sp)
800128f8:	00d5b6b3          	sltu	a3,a1,a3
800128fc:	00f6e6b3          	or	a3,a3,a5
80012900:	00e60733          	add	a4,a2,a4
80012904:	00d707b3          	add	a5,a4,a3
80012908:	00c73733          	sltu	a4,a4,a2
8001290c:	01c12603          	lw	a2,28(sp)
80012910:	00d7b6b3          	sltu	a3,a5,a3
80012914:	00d76733          	or	a4,a4,a3
80012918:	00c50533          	add	a0,a0,a2
8001291c:	00a70533          	add	a0,a4,a0
80012920:	02f12c23          	sw	a5,56(sp)
80012924:	02a12e23          	sw	a0,60(sp)
80012928:	cddff06f          	j	80012604 <__subtf3+0x514>
8001292c:	00008fb7          	lui	t6,0x8
80012930:	00140593          	addi	a1,s0,1
80012934:	ffef8813          	addi	a6,t6,-2 # 7ffe <_printf_r-0x7fff8002>
80012938:	0105f833          	and	a6,a1,a6
8001293c:	01412f03          	lw	t5,20(sp)
80012940:	01812e83          	lw	t4,24(sp)
80012944:	01c12e03          	lw	t3,28(sp)
80012948:	03010893          	addi	a7,sp,48
8001294c:	03c10313          	addi	t1,sp,60
80012950:	14081663          	bnez	a6,80012a9c <__subtf3+0x9ac>
80012954:	01df6833          	or	a6,t5,t4
80012958:	01c86833          	or	a6,a6,t3
8001295c:	00e86833          	or	a6,a6,a4
80012960:	0a041663          	bnez	s0,80012a0c <__subtf3+0x91c>
80012964:	00081c63          	bnez	a6,8001297c <__subtf3+0x88c>
80012968:	02f12823          	sw	a5,48(sp)
8001296c:	02d12a23          	sw	a3,52(sp)
80012970:	02c12c23          	sw	a2,56(sp)
80012974:	02a12e23          	sw	a0,60(sp)
80012978:	9a9ff06f          	j	80012320 <__subtf3+0x230>
8001297c:	00c6e5b3          	or	a1,a3,a2
80012980:	00a5e5b3          	or	a1,a1,a0
80012984:	00f5e5b3          	or	a1,a1,a5
80012988:	00059c63          	bnez	a1,800129a0 <__subtf3+0x8b0>
8001298c:	02e12823          	sw	a4,48(sp)
80012990:	03e12a23          	sw	t5,52(sp)
80012994:	03d12c23          	sw	t4,56(sp)
80012998:	03c12e23          	sw	t3,60(sp)
8001299c:	985ff06f          	j	80012320 <__subtf3+0x230>
800129a0:	00f707b3          	add	a5,a4,a5
800129a4:	00e7b733          	sltu	a4,a5,a4
800129a8:	00df05b3          	add	a1,t5,a3
800129ac:	02f12823          	sw	a5,48(sp)
800129b0:	00e587b3          	add	a5,a1,a4
800129b4:	01e5b6b3          	sltu	a3,a1,t5
800129b8:	00e7b733          	sltu	a4,a5,a4
800129bc:	00e6e733          	or	a4,a3,a4
800129c0:	00ce8633          	add	a2,t4,a2
800129c4:	00e606b3          	add	a3,a2,a4
800129c8:	00e6b733          	sltu	a4,a3,a4
800129cc:	01d63633          	sltu	a2,a2,t4
800129d0:	00e66633          	or	a2,a2,a4
800129d4:	00ae0533          	add	a0,t3,a0
800129d8:	00a60633          	add	a2,a2,a0
800129dc:	02f12a23          	sw	a5,52(sp)
800129e0:	02d12c23          	sw	a3,56(sp)
800129e4:	00c61793          	slli	a5,a2,0xc
800129e8:	0007c663          	bltz	a5,800129f4 <__subtf3+0x904>
800129ec:	02c12e23          	sw	a2,60(sp)
800129f0:	931ff06f          	j	80012320 <__subtf3+0x230>
800129f4:	fff807b7          	lui	a5,0xfff80
800129f8:	fff78793          	addi	a5,a5,-1 # fff7ffff <heap_end.1814+0x7ff6a61b>
800129fc:	00f67633          	and	a2,a2,a5
80012a00:	02c12e23          	sw	a2,60(sp)
80012a04:	00100413          	li	s0,1
80012a08:	919ff06f          	j	80012320 <__subtf3+0x230>
80012a0c:	00081e63          	bnez	a6,80012a28 <__subtf3+0x938>
80012a10:	02f12823          	sw	a5,48(sp)
80012a14:	02d12a23          	sw	a3,52(sp)
80012a18:	02c12c23          	sw	a2,56(sp)
80012a1c:	02a12e23          	sw	a0,60(sp)
80012a20:	ffff8413          	addi	s0,t6,-1
80012a24:	8fdff06f          	j	80012320 <__subtf3+0x230>
80012a28:	00c6e6b3          	or	a3,a3,a2
80012a2c:	00a6e533          	or	a0,a3,a0
80012a30:	00f567b3          	or	a5,a0,a5
80012a34:	00079c63          	bnez	a5,80012a4c <__subtf3+0x95c>
80012a38:	02e12823          	sw	a4,48(sp)
80012a3c:	03e12a23          	sw	t5,52(sp)
80012a40:	03d12c23          	sw	t4,56(sp)
80012a44:	03c12e23          	sw	t3,60(sp)
80012a48:	fd9ff06f          	j	80012a20 <__subtf3+0x930>
80012a4c:	03f12e23          	sw	t6,60(sp)
80012a50:	02012c23          	sw	zero,56(sp)
80012a54:	02012a23          	sw	zero,52(sp)
80012a58:	02012823          	sw	zero,48(sp)
80012a5c:	00030713          	mv	a4,t1
80012a60:	00072783          	lw	a5,0(a4)
80012a64:	ffc72683          	lw	a3,-4(a4)
80012a68:	ffc70713          	addi	a4,a4,-4
80012a6c:	00379793          	slli	a5,a5,0x3
80012a70:	01d6d693          	srli	a3,a3,0x1d
80012a74:	00d7e7b3          	or	a5,a5,a3
80012a78:	00f72223          	sw	a5,4(a4)
80012a7c:	fee892e3          	bne	a7,a4,80012a60 <__subtf3+0x970>
80012a80:	03012783          	lw	a5,48(sp)
80012a84:	00008437          	lui	s0,0x8
80012a88:	00000913          	li	s2,0
80012a8c:	00379793          	slli	a5,a5,0x3
80012a90:	02f12823          	sw	a5,48(sp)
80012a94:	fff40413          	addi	s0,s0,-1 # 7fff <_printf_r-0x7fff8001>
80012a98:	889ff06f          	j	80012320 <__subtf3+0x230>
80012a9c:	00f707b3          	add	a5,a4,a5
80012aa0:	00e7b733          	sltu	a4,a5,a4
80012aa4:	00df06b3          	add	a3,t5,a3
80012aa8:	02f12823          	sw	a5,48(sp)
80012aac:	00e687b3          	add	a5,a3,a4
80012ab0:	00e7b733          	sltu	a4,a5,a4
80012ab4:	01e6b6b3          	sltu	a3,a3,t5
80012ab8:	00e6e733          	or	a4,a3,a4
80012abc:	00ce86b3          	add	a3,t4,a2
80012ac0:	02f12a23          	sw	a5,52(sp)
80012ac4:	00e687b3          	add	a5,a3,a4
80012ac8:	01d6b633          	sltu	a2,a3,t4
80012acc:	00e7b6b3          	sltu	a3,a5,a4
80012ad0:	00d666b3          	or	a3,a2,a3
80012ad4:	00ae0533          	add	a0,t3,a0
80012ad8:	00a68533          	add	a0,a3,a0
80012adc:	02f12c23          	sw	a5,56(sp)
80012ae0:	02a12e23          	sw	a0,60(sp)
80012ae4:	00088793          	mv	a5,a7
80012ae8:	0007a703          	lw	a4,0(a5)
80012aec:	0047a683          	lw	a3,4(a5)
80012af0:	00478793          	addi	a5,a5,4
80012af4:	00175713          	srli	a4,a4,0x1
80012af8:	01f69693          	slli	a3,a3,0x1f
80012afc:	00d76733          	or	a4,a4,a3
80012b00:	fee7ae23          	sw	a4,-4(a5)
80012b04:	fef312e3          	bne	t1,a5,80012ae8 <__subtf3+0x9f8>
80012b08:	000087b7          	lui	a5,0x8
80012b0c:	fff78793          	addi	a5,a5,-1 # 7fff <_printf_r-0x7fff8001>
80012b10:	00f58c63          	beq	a1,a5,80012b28 <__subtf3+0xa38>
80012b14:	03c12783          	lw	a5,60(sp)
80012b18:	0017d793          	srli	a5,a5,0x1
80012b1c:	02f12e23          	sw	a5,60(sp)
80012b20:	00058413          	mv	s0,a1
80012b24:	ffcff06f          	j	80012320 <__subtf3+0x230>
80012b28:	02012e23          	sw	zero,60(sp)
80012b2c:	02012c23          	sw	zero,56(sp)
80012b30:	02012a23          	sw	zero,52(sp)
80012b34:	02012823          	sw	zero,48(sp)
80012b38:	fe9ff06f          	j	80012b20 <__subtf3+0xa30>
80012b3c:	2a605e63          	blez	t1,80012df8 <__subtf3+0xd08>
80012b40:	01412803          	lw	a6,20(sp)
80012b44:	01812883          	lw	a7,24(sp)
80012b48:	01c12e03          	lw	t3,28(sp)
80012b4c:	0c0e9463          	bnez	t4,80012c14 <__subtf3+0xb24>
80012b50:	02412e83          	lw	t4,36(sp)
80012b54:	02812503          	lw	a0,40(sp)
80012b58:	02c12583          	lw	a1,44(sp)
80012b5c:	00aee6b3          	or	a3,t4,a0
80012b60:	00b6e6b3          	or	a3,a3,a1
80012b64:	00f6e6b3          	or	a3,a3,a5
80012b68:	00069c63          	bnez	a3,80012b80 <__subtf3+0xa90>
80012b6c:	02e12823          	sw	a4,48(sp)
80012b70:	03012a23          	sw	a6,52(sp)
80012b74:	03112c23          	sw	a7,56(sp)
80012b78:	03c12e23          	sw	t3,60(sp)
80012b7c:	f00ff06f          	j	8001227c <__subtf3+0x18c>
80012b80:	fff30693          	addi	a3,t1,-1
80012b84:	06069463          	bnez	a3,80012bec <__subtf3+0xafc>
80012b88:	40f707b3          	sub	a5,a4,a5
80012b8c:	41d80633          	sub	a2,a6,t4
80012b90:	00f73333          	sltu	t1,a4,a5
80012b94:	00c83f33          	sltu	t5,a6,a2
80012b98:	40660333          	sub	t1,a2,t1
80012b9c:	00000613          	li	a2,0
80012ba0:	00f77663          	bgeu	a4,a5,80012bac <__subtf3+0xabc>
80012ba4:	410e8833          	sub	a6,t4,a6
80012ba8:	00183613          	seqz	a2,a6
80012bac:	01e66833          	or	a6,a2,t5
80012bb0:	40a88733          	sub	a4,a7,a0
80012bb4:	00e8b633          	sltu	a2,a7,a4
80012bb8:	41070733          	sub	a4,a4,a6
80012bbc:	00080663          	beqz	a6,80012bc8 <__subtf3+0xad8>
80012bc0:	411508b3          	sub	a7,a0,a7
80012bc4:	0018b693          	seqz	a3,a7
80012bc8:	40be05b3          	sub	a1,t3,a1
80012bcc:	00c6e6b3          	or	a3,a3,a2
80012bd0:	40d585b3          	sub	a1,a1,a3
80012bd4:	02b12e23          	sw	a1,60(sp)
80012bd8:	02e12c23          	sw	a4,56(sp)
80012bdc:	02612a23          	sw	t1,52(sp)
80012be0:	02f12823          	sw	a5,48(sp)
80012be4:	00100413          	li	s0,1
80012be8:	1f00006f          	j	80012dd8 <__subtf3+0xce8>
80012bec:	000087b7          	lui	a5,0x8
80012bf0:	fff78793          	addi	a5,a5,-1 # 7fff <_printf_r-0x7fff8001>
80012bf4:	f6f30ce3          	beq	t1,a5,80012b6c <__subtf3+0xa7c>
80012bf8:	07400793          	li	a5,116
80012bfc:	04d7d863          	bge	a5,a3,80012c4c <__subtf3+0xb5c>
80012c00:	02012623          	sw	zero,44(sp)
80012c04:	02012423          	sw	zero,40(sp)
80012c08:	02012223          	sw	zero,36(sp)
80012c0c:	00100793          	li	a5,1
80012c10:	1540006f          	j	80012d64 <__subtf3+0xc74>
80012c14:	000087b7          	lui	a5,0x8
80012c18:	fff78793          	addi	a5,a5,-1 # 7fff <_printf_r-0x7fff8001>
80012c1c:	00f41a63          	bne	s0,a5,80012c30 <__subtf3+0xb40>
80012c20:	02e12823          	sw	a4,48(sp)
80012c24:	03012a23          	sw	a6,52(sp)
80012c28:	03112c23          	sw	a7,56(sp)
80012c2c:	d6dff06f          	j	80012998 <__subtf3+0x8a8>
80012c30:	02c12783          	lw	a5,44(sp)
80012c34:	000806b7          	lui	a3,0x80
80012c38:	00d7e7b3          	or	a5,a5,a3
80012c3c:	02f12623          	sw	a5,44(sp)
80012c40:	07400793          	li	a5,116
80012c44:	fa67cee3          	blt	a5,t1,80012c00 <__subtf3+0xb10>
80012c48:	00030693          	mv	a3,t1
80012c4c:	4056d513          	srai	a0,a3,0x5
80012c50:	00060593          	mv	a1,a2
80012c54:	00000313          	li	t1,0
80012c58:	00000793          	li	a5,0
80012c5c:	04a79663          	bne	a5,a0,80012ca8 <__subtf3+0xbb8>
80012c60:	01f6f593          	andi	a1,a3,31
80012c64:	00251693          	slli	a3,a0,0x2
80012c68:	04059a63          	bnez	a1,80012cbc <__subtf3+0xbcc>
80012c6c:	00300593          	li	a1,3
80012c70:	00000793          	li	a5,0
80012c74:	40a585b3          	sub	a1,a1,a0
80012c78:	00d60eb3          	add	t4,a2,a3
80012c7c:	000eae83          	lw	t4,0(t4)
80012c80:	00178793          	addi	a5,a5,1
80012c84:	00460613          	addi	a2,a2,4
80012c88:	ffd62e23          	sw	t4,-4(a2)
80012c8c:	fef5d6e3          	bge	a1,a5,80012c78 <__subtf3+0xb88>
80012c90:	00400793          	li	a5,4
80012c94:	40a78533          	sub	a0,a5,a0
80012c98:	00100793          	li	a5,1
80012c9c:	06a05c63          	blez	a0,80012d14 <__subtf3+0xc24>
80012ca0:	00050793          	mv	a5,a0
80012ca4:	0700006f          	j	80012d14 <__subtf3+0xc24>
80012ca8:	0005ae83          	lw	t4,0(a1)
80012cac:	00178793          	addi	a5,a5,1
80012cb0:	00458593          	addi	a1,a1,4
80012cb4:	01d36333          	or	t1,t1,t4
80012cb8:	fa5ff06f          	j	80012c5c <__subtf3+0xb6c>
80012cbc:	ffc00293          	li	t0,-4
80012cc0:	025502b3          	mul	t0,a0,t0
80012cc4:	04010793          	addi	a5,sp,64
80012cc8:	00d787b3          	add	a5,a5,a3
80012ccc:	fe07a783          	lw	a5,-32(a5)
80012cd0:	02000e93          	li	t4,32
80012cd4:	40be8eb3          	sub	t4,t4,a1
80012cd8:	01d797b3          	sll	a5,a5,t4
80012cdc:	00300613          	li	a2,3
80012ce0:	00f36333          	or	t1,t1,a5
80012ce4:	00df06b3          	add	a3,t5,a3
80012ce8:	00000f93          	li	t6,0
80012cec:	40a60633          	sub	a2,a2,a0
80012cf0:	02cfc663          	blt	t6,a2,80012d1c <__subtf3+0xc2c>
80012cf4:	04010693          	addi	a3,sp,64
80012cf8:	00261613          	slli	a2,a2,0x2
80012cfc:	00c68633          	add	a2,a3,a2
80012d00:	02c12683          	lw	a3,44(sp)
80012d04:	00400793          	li	a5,4
80012d08:	40a787b3          	sub	a5,a5,a0
80012d0c:	00b6d6b3          	srl	a3,a3,a1
80012d10:	fed62023          	sw	a3,-32(a2)
80012d14:	00400613          	li	a2,4
80012d18:	03c0006f          	j	80012d54 <__subtf3+0xc64>
80012d1c:	0006a783          	lw	a5,0(a3) # 80000 <_printf_r-0x7ff80000>
80012d20:	0046a383          	lw	t2,4(a3)
80012d24:	005689b3          	add	s3,a3,t0
80012d28:	00b7d7b3          	srl	a5,a5,a1
80012d2c:	01d393b3          	sll	t2,t2,t4
80012d30:	0077e7b3          	or	a5,a5,t2
80012d34:	00f9a023          	sw	a5,0(s3)
80012d38:	001f8f93          	addi	t6,t6,1
80012d3c:	00468693          	addi	a3,a3,4
80012d40:	fb1ff06f          	j	80012cf0 <__subtf3+0xc00>
80012d44:	00279693          	slli	a3,a5,0x2
80012d48:	00df06b3          	add	a3,t5,a3
80012d4c:	0006a023          	sw	zero,0(a3)
80012d50:	00178793          	addi	a5,a5,1
80012d54:	fec798e3          	bne	a5,a2,80012d44 <__subtf3+0xc54>
80012d58:	02012683          	lw	a3,32(sp)
80012d5c:	006037b3          	snez	a5,t1
80012d60:	00f6e7b3          	or	a5,a3,a5
80012d64:	02f12023          	sw	a5,32(sp)
80012d68:	02012783          	lw	a5,32(sp)
80012d6c:	02412583          	lw	a1,36(sp)
80012d70:	40f707b3          	sub	a5,a4,a5
80012d74:	40b80633          	sub	a2,a6,a1
80012d78:	00f736b3          	sltu	a3,a4,a5
80012d7c:	00c83533          	sltu	a0,a6,a2
80012d80:	40d60633          	sub	a2,a2,a3
80012d84:	00000693          	li	a3,0
80012d88:	00f77663          	bgeu	a4,a5,80012d94 <__subtf3+0xca4>
80012d8c:	41058833          	sub	a6,a1,a6
80012d90:	00183693          	seqz	a3,a6
80012d94:	00a6e833          	or	a6,a3,a0
80012d98:	02812503          	lw	a0,40(sp)
80012d9c:	00000693          	li	a3,0
80012da0:	40a88733          	sub	a4,a7,a0
80012da4:	00e8b333          	sltu	t1,a7,a4
80012da8:	41070733          	sub	a4,a4,a6
80012dac:	00080663          	beqz	a6,80012db8 <__subtf3+0xcc8>
80012db0:	411508b3          	sub	a7,a0,a7
80012db4:	0018b693          	seqz	a3,a7
80012db8:	02c12583          	lw	a1,44(sp)
80012dbc:	0066e6b3          	or	a3,a3,t1
80012dc0:	02e12c23          	sw	a4,56(sp)
80012dc4:	40be05b3          	sub	a1,t3,a1
80012dc8:	40d585b3          	sub	a1,a1,a3
80012dcc:	02b12e23          	sw	a1,60(sp)
80012dd0:	02c12a23          	sw	a2,52(sp)
80012dd4:	02f12823          	sw	a5,48(sp)
80012dd8:	03c12783          	lw	a5,60(sp)
80012ddc:	00c79713          	slli	a4,a5,0xc
80012de0:	d4075063          	bgez	a4,80012320 <__subtf3+0x230>
80012de4:	00080737          	lui	a4,0x80
80012de8:	fff70713          	addi	a4,a4,-1 # 7ffff <_printf_r-0x7ff80001>
80012dec:	00e7f7b3          	and	a5,a5,a4
80012df0:	02f12e23          	sw	a5,60(sp)
80012df4:	5880006f          	j	8001337c <__subtf3+0x128c>
80012df8:	02412503          	lw	a0,36(sp)
80012dfc:	02812803          	lw	a6,40(sp)
80012e00:	02c12683          	lw	a3,44(sp)
80012e04:	2c030463          	beqz	t1,800130cc <__subtf3+0xfdc>
80012e08:	408e8333          	sub	t1,t4,s0
80012e0c:	0c041263          	bnez	s0,80012ed0 <__subtf3+0xde0>
80012e10:	01412283          	lw	t0,20(sp)
80012e14:	01812f03          	lw	t5,24(sp)
80012e18:	01c12883          	lw	a7,28(sp)
80012e1c:	01e2e633          	or	a2,t0,t5
80012e20:	01166633          	or	a2,a2,a7
80012e24:	00e66633          	or	a2,a2,a4
80012e28:	02061063          	bnez	a2,80012e48 <__subtf3+0xd58>
80012e2c:	02f12823          	sw	a5,48(sp)
80012e30:	02a12a23          	sw	a0,52(sp)
80012e34:	03012c23          	sw	a6,56(sp)
80012e38:	02d12e23          	sw	a3,60(sp)
80012e3c:	00030413          	mv	s0,t1
80012e40:	000e0913          	mv	s2,t3
80012e44:	cdcff06f          	j	80012320 <__subtf3+0x230>
80012e48:	fff30613          	addi	a2,t1,-1
80012e4c:	06061463          	bnez	a2,80012eb4 <__subtf3+0xdc4>
80012e50:	40e78733          	sub	a4,a5,a4
80012e54:	405505b3          	sub	a1,a0,t0
80012e58:	00e7b333          	sltu	t1,a5,a4
80012e5c:	00b53eb3          	sltu	t4,a0,a1
80012e60:	40658333          	sub	t1,a1,t1
80012e64:	00000593          	li	a1,0
80012e68:	00e7f663          	bgeu	a5,a4,80012e74 <__subtf3+0xd84>
80012e6c:	40a28533          	sub	a0,t0,a0
80012e70:	00153593          	seqz	a1,a0
80012e74:	01d5e533          	or	a0,a1,t4
80012e78:	41e805b3          	sub	a1,a6,t5
80012e7c:	00b837b3          	sltu	a5,a6,a1
80012e80:	40a585b3          	sub	a1,a1,a0
80012e84:	00050663          	beqz	a0,80012e90 <__subtf3+0xda0>
80012e88:	410f0833          	sub	a6,t5,a6
80012e8c:	00183613          	seqz	a2,a6
80012e90:	411688b3          	sub	a7,a3,a7
80012e94:	00f66633          	or	a2,a2,a5
80012e98:	40c888b3          	sub	a7,a7,a2
80012e9c:	03112e23          	sw	a7,60(sp)
80012ea0:	02b12c23          	sw	a1,56(sp)
80012ea4:	02612a23          	sw	t1,52(sp)
80012ea8:	02e12823          	sw	a4,48(sp)
80012eac:	000e0913          	mv	s2,t3
80012eb0:	d35ff06f          	j	80012be4 <__subtf3+0xaf4>
80012eb4:	00008737          	lui	a4,0x8
80012eb8:	fff70713          	addi	a4,a4,-1 # 7fff <_printf_r-0x7fff8001>
80012ebc:	f6e308e3          	beq	t1,a4,80012e2c <__subtf3+0xd3c>
80012ec0:	07400713          	li	a4,116
80012ec4:	1ec74a63          	blt	a4,a2,800130b8 <__subtf3+0xfc8>
80012ec8:	00060313          	mv	t1,a2
80012ecc:	0400006f          	j	80012f0c <__subtf3+0xe1c>
80012ed0:	00008737          	lui	a4,0x8
80012ed4:	fff70713          	addi	a4,a4,-1 # 7fff <_printf_r-0x7fff8001>
80012ed8:	00ee9e63          	bne	t4,a4,80012ef4 <__subtf3+0xe04>
80012edc:	02f12823          	sw	a5,48(sp)
80012ee0:	02a12a23          	sw	a0,52(sp)
80012ee4:	03012c23          	sw	a6,56(sp)
80012ee8:	02d12e23          	sw	a3,60(sp)
80012eec:	000e8413          	mv	s0,t4
80012ef0:	f51ff06f          	j	80012e40 <__subtf3+0xd50>
80012ef4:	01c12703          	lw	a4,28(sp)
80012ef8:	00080637          	lui	a2,0x80
80012efc:	00c76733          	or	a4,a4,a2
80012f00:	00e12e23          	sw	a4,28(sp)
80012f04:	07400713          	li	a4,116
80012f08:	1a674863          	blt	a4,t1,800130b8 <__subtf3+0xfc8>
80012f0c:	02000713          	li	a4,32
80012f10:	02e348b3          	div	a7,t1,a4
80012f14:	00058613          	mv	a2,a1
80012f18:	00000293          	li	t0,0
80012f1c:	00000713          	li	a4,0
80012f20:	05174a63          	blt	a4,a7,80012f74 <__subtf3+0xe84>
80012f24:	00088f13          	mv	t5,a7
80012f28:	0008d463          	bgez	a7,80012f30 <__subtf3+0xe40>
80012f2c:	00000f13          	li	t5,0
80012f30:	01f37713          	andi	a4,t1,31
80012f34:	00289613          	slli	a2,a7,0x2
80012f38:	04071863          	bnez	a4,80012f88 <__subtf3+0xe98>
80012f3c:	00300313          	li	t1,3
80012f40:	41130333          	sub	t1,t1,a7
80012f44:	00c58f33          	add	t5,a1,a2
80012f48:	000f2f03          	lw	t5,0(t5)
80012f4c:	00170713          	addi	a4,a4,1
80012f50:	00458593          	addi	a1,a1,4
80012f54:	ffe5ae23          	sw	t5,-4(a1)
80012f58:	fee356e3          	bge	t1,a4,80012f44 <__subtf3+0xe54>
80012f5c:	00400713          	li	a4,4
80012f60:	411708b3          	sub	a7,a4,a7
80012f64:	00100713          	li	a4,1
80012f68:	09105063          	blez	a7,80012fe8 <__subtf3+0xef8>
80012f6c:	00088713          	mv	a4,a7
80012f70:	0780006f          	j	80012fe8 <__subtf3+0xef8>
80012f74:	00062f03          	lw	t5,0(a2) # 80000 <_printf_r-0x7ff80000>
80012f78:	00170713          	addi	a4,a4,1
80012f7c:	00460613          	addi	a2,a2,4
80012f80:	01e2e2b3          	or	t0,t0,t5
80012f84:	f9dff06f          	j	80012f20 <__subtf3+0xe30>
80012f88:	02000713          	li	a4,32
80012f8c:	02e36333          	rem	t1,t1,a4
80012f90:	ffc00413          	li	s0,-4
80012f94:	04010593          	addi	a1,sp,64
80012f98:	002f1f13          	slli	t5,t5,0x2
80012f9c:	01e58f33          	add	t5,a1,t5
80012fa0:	fd0f2583          	lw	a1,-48(t5)
80012fa4:	00000393          	li	t2,0
80012fa8:	02888433          	mul	s0,a7,s0
80012fac:	40670733          	sub	a4,a4,t1
80012fb0:	00e595b3          	sll	a1,a1,a4
80012fb4:	00b2e2b3          	or	t0,t0,a1
80012fb8:	00cf85b3          	add	a1,t6,a2
80012fbc:	00300613          	li	a2,3
80012fc0:	41160633          	sub	a2,a2,a7
80012fc4:	02c3c663          	blt	t2,a2,80012ff0 <__subtf3+0xf00>
80012fc8:	04010593          	addi	a1,sp,64
80012fcc:	00261613          	slli	a2,a2,0x2
80012fd0:	00c58633          	add	a2,a1,a2
80012fd4:	01c12583          	lw	a1,28(sp)
80012fd8:	00400713          	li	a4,4
80012fdc:	41170733          	sub	a4,a4,a7
80012fe0:	0065d333          	srl	t1,a1,t1
80012fe4:	fc662823          	sw	t1,-48(a2)
80012fe8:	00300593          	li	a1,3
80012fec:	03c0006f          	j	80013028 <__subtf3+0xf38>
80012ff0:	0005af03          	lw	t5,0(a1)
80012ff4:	0045a903          	lw	s2,4(a1)
80012ff8:	008589b3          	add	s3,a1,s0
80012ffc:	006f5f33          	srl	t5,t5,t1
80013000:	00e91933          	sll	s2,s2,a4
80013004:	012f6f33          	or	t5,t5,s2
80013008:	01e9a023          	sw	t5,0(s3)
8001300c:	00138393          	addi	t2,t2,1
80013010:	00458593          	addi	a1,a1,4
80013014:	fb1ff06f          	j	80012fc4 <__subtf3+0xed4>
80013018:	00271613          	slli	a2,a4,0x2
8001301c:	00cf8633          	add	a2,t6,a2
80013020:	00062023          	sw	zero,0(a2)
80013024:	00170713          	addi	a4,a4,1
80013028:	fee5d8e3          	bge	a1,a4,80013018 <__subtf3+0xf28>
8001302c:	01012603          	lw	a2,16(sp)
80013030:	00503733          	snez	a4,t0
80013034:	00e66733          	or	a4,a2,a4
80013038:	00e12823          	sw	a4,16(sp)
8001303c:	01012703          	lw	a4,16(sp)
80013040:	01412883          	lw	a7,20(sp)
80013044:	40e78733          	sub	a4,a5,a4
80013048:	411505b3          	sub	a1,a0,a7
8001304c:	00e7b633          	sltu	a2,a5,a4
80013050:	00b53333          	sltu	t1,a0,a1
80013054:	40c585b3          	sub	a1,a1,a2
80013058:	00000613          	li	a2,0
8001305c:	00e7f663          	bgeu	a5,a4,80013068 <__subtf3+0xf78>
80013060:	40a88533          	sub	a0,a7,a0
80013064:	00153613          	seqz	a2,a0
80013068:	01812883          	lw	a7,24(sp)
8001306c:	00666533          	or	a0,a2,t1
80013070:	00000613          	li	a2,0
80013074:	411807b3          	sub	a5,a6,a7
80013078:	00f83333          	sltu	t1,a6,a5
8001307c:	40a787b3          	sub	a5,a5,a0
80013080:	00050663          	beqz	a0,8001308c <__subtf3+0xf9c>
80013084:	41088833          	sub	a6,a7,a6
80013088:	00183613          	seqz	a2,a6
8001308c:	01c12883          	lw	a7,28(sp)
80013090:	00666633          	or	a2,a2,t1
80013094:	02f12c23          	sw	a5,56(sp)
80013098:	411686b3          	sub	a3,a3,a7
8001309c:	40c686b3          	sub	a3,a3,a2
800130a0:	02d12e23          	sw	a3,60(sp)
800130a4:	02b12a23          	sw	a1,52(sp)
800130a8:	02e12823          	sw	a4,48(sp)
800130ac:	000e8413          	mv	s0,t4
800130b0:	000e0913          	mv	s2,t3
800130b4:	d25ff06f          	j	80012dd8 <__subtf3+0xce8>
800130b8:	00012e23          	sw	zero,28(sp)
800130bc:	00012c23          	sw	zero,24(sp)
800130c0:	00012a23          	sw	zero,20(sp)
800130c4:	00100713          	li	a4,1
800130c8:	f71ff06f          	j	80013038 <__subtf3+0xf48>
800130cc:	00008f37          	lui	t5,0x8
800130d0:	ffef0613          	addi	a2,t5,-2 # 7ffe <_printf_r-0x7fff8002>
800130d4:	00140e93          	addi	t4,s0,1
800130d8:	00cefeb3          	and	t4,t4,a2
800130dc:	01812583          	lw	a1,24(sp)
800130e0:	01412603          	lw	a2,20(sp)
800130e4:	01c12883          	lw	a7,28(sp)
800130e8:	1c0e9e63          	bnez	t4,800132c4 <__subtf3+0x11d4>
800130ec:	01056333          	or	t1,a0,a6
800130f0:	00b66eb3          	or	t4,a2,a1
800130f4:	00d36333          	or	t1,t1,a3
800130f8:	011eeeb3          	or	t4,t4,a7
800130fc:	00f36333          	or	t1,t1,a5
80013100:	00eeeeb3          	or	t4,t4,a4
80013104:	10041863          	bnez	s0,80013214 <__subtf3+0x1124>
80013108:	020e9463          	bnez	t4,80013130 <__subtf3+0x1040>
8001310c:	02f12823          	sw	a5,48(sp)
80013110:	02a12a23          	sw	a0,52(sp)
80013114:	03012c23          	sw	a6,56(sp)
80013118:	02d12e23          	sw	a3,60(sp)
8001311c:	000e0913          	mv	s2,t3
80013120:	a0031063          	bnez	t1,80012320 <__subtf3+0x230>
80013124:	00000413          	li	s0,0
80013128:	00000913          	li	s2,0
8001312c:	9f4ff06f          	j	80012320 <__subtf3+0x230>
80013130:	00031c63          	bnez	t1,80013148 <__subtf3+0x1058>
80013134:	02e12823          	sw	a4,48(sp)
80013138:	02c12a23          	sw	a2,52(sp)
8001313c:	02b12c23          	sw	a1,56(sp)
80013140:	03112e23          	sw	a7,60(sp)
80013144:	9dcff06f          	j	80012320 <__subtf3+0x230>
80013148:	40f70333          	sub	t1,a4,a5
8001314c:	40a603b3          	sub	t2,a2,a0
80013150:	00673fb3          	sltu	t6,a4,t1
80013154:	00763eb3          	sltu	t4,a2,t2
80013158:	41f38fb3          	sub	t6,t2,t6
8001315c:	00000f13          	li	t5,0
80013160:	00677463          	bgeu	a4,t1,80013168 <__subtf3+0x1078>
80013164:	0013bf13          	seqz	t5,t2
80013168:	410582b3          	sub	t0,a1,a6
8001316c:	01df6f33          	or	t5,t5,t4
80013170:	0055bab3          	sltu	s5,a1,t0
80013174:	41e28a33          	sub	s4,t0,t5
80013178:	00000993          	li	s3,0
8001317c:	000f0463          	beqz	t5,80013184 <__subtf3+0x1094>
80013180:	0012b993          	seqz	s3,t0
80013184:	40d88eb3          	sub	t4,a7,a3
80013188:	0159e9b3          	or	s3,s3,s5
8001318c:	413e8eb3          	sub	t4,t4,s3
80013190:	03d12e23          	sw	t4,60(sp)
80013194:	03412c23          	sw	s4,56(sp)
80013198:	03f12a23          	sw	t6,52(sp)
8001319c:	02612823          	sw	t1,48(sp)
800131a0:	00ce9f13          	slli	t5,t4,0xc
800131a4:	060f5063          	bgez	t5,80013204 <__subtf3+0x1114>
800131a8:	40c50633          	sub	a2,a0,a2
800131ac:	40e78733          	sub	a4,a5,a4
800131b0:	00c53333          	sltu	t1,a0,a2
800131b4:	00e7b533          	sltu	a0,a5,a4
800131b8:	40a60633          	sub	a2,a2,a0
800131bc:	00000513          	li	a0,0
800131c0:	00e7f463          	bgeu	a5,a4,800131c8 <__subtf3+0x10d8>
800131c4:	0013b513          	seqz	a0,t2
800131c8:	00656533          	or	a0,a0,t1
800131cc:	40b805b3          	sub	a1,a6,a1
800131d0:	00b83833          	sltu	a6,a6,a1
800131d4:	00000313          	li	t1,0
800131d8:	40a585b3          	sub	a1,a1,a0
800131dc:	00050463          	beqz	a0,800131e4 <__subtf3+0x10f4>
800131e0:	0012b313          	seqz	t1,t0
800131e4:	411688b3          	sub	a7,a3,a7
800131e8:	01036333          	or	t1,t1,a6
800131ec:	40688333          	sub	t1,a7,t1
800131f0:	02612e23          	sw	t1,60(sp)
800131f4:	02b12c23          	sw	a1,56(sp)
800131f8:	02c12a23          	sw	a2,52(sp)
800131fc:	02e12823          	sw	a4,48(sp)
80013200:	c41ff06f          	j	80012e40 <__subtf3+0xd50>
80013204:	01f36333          	or	t1,t1,t6
80013208:	01436333          	or	t1,t1,s4
8001320c:	01d36333          	or	t1,t1,t4
80013210:	f11ff06f          	j	80013120 <__subtf3+0x1030>
80013214:	03010f93          	addi	t6,sp,48
80013218:	040e9e63          	bnez	t4,80013274 <__subtf3+0x1184>
8001321c:	02031e63          	bnez	t1,80013258 <__subtf3+0x1168>
80013220:	03e12e23          	sw	t5,60(sp)
80013224:	02012c23          	sw	zero,56(sp)
80013228:	02012a23          	sw	zero,52(sp)
8001322c:	02012823          	sw	zero,48(sp)
80013230:	03c10793          	addi	a5,sp,60
80013234:	0007a703          	lw	a4,0(a5)
80013238:	ffc7a683          	lw	a3,-4(a5)
8001323c:	ffc78793          	addi	a5,a5,-4
80013240:	00371713          	slli	a4,a4,0x3
80013244:	01d6d693          	srli	a3,a3,0x1d
80013248:	00d76733          	or	a4,a4,a3
8001324c:	00e7a223          	sw	a4,4(a5)
80013250:	feff92e3          	bne	t6,a5,80013234 <__subtf3+0x1144>
80013254:	82dff06f          	j	80012a80 <__subtf3+0x990>
80013258:	02f12823          	sw	a5,48(sp)
8001325c:	02a12a23          	sw	a0,52(sp)
80013260:	03012c23          	sw	a6,56(sp)
80013264:	02d12e23          	sw	a3,60(sp)
80013268:	000e0913          	mv	s2,t3
8001326c:	ffff0413          	addi	s0,t5,-1
80013270:	8b0ff06f          	j	80012320 <__subtf3+0x230>
80013274:	00031c63          	bnez	t1,8001328c <__subtf3+0x119c>
80013278:	02e12823          	sw	a4,48(sp)
8001327c:	02c12a23          	sw	a2,52(sp)
80013280:	02b12c23          	sw	a1,56(sp)
80013284:	03112e23          	sw	a7,60(sp)
80013288:	fe5ff06f          	j	8001326c <__subtf3+0x117c>
8001328c:	03e12e23          	sw	t5,60(sp)
80013290:	02012c23          	sw	zero,56(sp)
80013294:	02012a23          	sw	zero,52(sp)
80013298:	02012823          	sw	zero,48(sp)
8001329c:	03c10793          	addi	a5,sp,60
800132a0:	0007a703          	lw	a4,0(a5)
800132a4:	ffc7a683          	lw	a3,-4(a5)
800132a8:	ffc78793          	addi	a5,a5,-4
800132ac:	00371713          	slli	a4,a4,0x3
800132b0:	01d6d693          	srli	a3,a3,0x1d
800132b4:	00d76733          	or	a4,a4,a3
800132b8:	00e7a223          	sw	a4,4(a5)
800132bc:	feff92e3          	bne	t6,a5,800132a0 <__subtf3+0x11b0>
800132c0:	fc0ff06f          	j	80012a80 <__subtf3+0x990>
800132c4:	40f70eb3          	sub	t4,a4,a5
800132c8:	40a609b3          	sub	s3,a2,a0
800132cc:	01d732b3          	sltu	t0,a4,t4
800132d0:	01363f33          	sltu	t5,a2,s3
800132d4:	405982b3          	sub	t0,s3,t0
800132d8:	00000f93          	li	t6,0
800132dc:	01d77463          	bgeu	a4,t4,800132e4 <__subtf3+0x11f4>
800132e0:	0019bf93          	seqz	t6,s3
800132e4:	410583b3          	sub	t2,a1,a6
800132e8:	01efefb3          	or	t6,t6,t5
800132ec:	0075bb33          	sltu	s6,a1,t2
800132f0:	41f38ab3          	sub	s5,t2,t6
800132f4:	00000a13          	li	s4,0
800132f8:	000f8463          	beqz	t6,80013300 <__subtf3+0x1210>
800132fc:	0013ba13          	seqz	s4,t2
80013300:	40d88f33          	sub	t5,a7,a3
80013304:	016a6a33          	or	s4,s4,s6
80013308:	414f0f33          	sub	t5,t5,s4
8001330c:	03e12e23          	sw	t5,60(sp)
80013310:	03512c23          	sw	s5,56(sp)
80013314:	02512a23          	sw	t0,52(sp)
80013318:	03d12823          	sw	t4,48(sp)
8001331c:	00cf1f93          	slli	t6,t5,0xc
80013320:	0c0fd063          	bgez	t6,800133e0 <__subtf3+0x12f0>
80013324:	40c50633          	sub	a2,a0,a2
80013328:	40e78733          	sub	a4,a5,a4
8001332c:	00c53eb3          	sltu	t4,a0,a2
80013330:	00e7b533          	sltu	a0,a5,a4
80013334:	40a60633          	sub	a2,a2,a0
80013338:	00000513          	li	a0,0
8001333c:	00e7f463          	bgeu	a5,a4,80013344 <__subtf3+0x1254>
80013340:	0019b513          	seqz	a0,s3
80013344:	40b805b3          	sub	a1,a6,a1
80013348:	01d56533          	or	a0,a0,t4
8001334c:	00b83833          	sltu	a6,a6,a1
80013350:	40a585b3          	sub	a1,a1,a0
80013354:	00050463          	beqz	a0,8001335c <__subtf3+0x126c>
80013358:	0013b313          	seqz	t1,t2
8001335c:	411688b3          	sub	a7,a3,a7
80013360:	010366b3          	or	a3,t1,a6
80013364:	40d886b3          	sub	a3,a7,a3
80013368:	02d12e23          	sw	a3,60(sp)
8001336c:	02b12c23          	sw	a1,56(sp)
80013370:	02c12a23          	sw	a2,52(sp)
80013374:	02e12823          	sw	a4,48(sp)
80013378:	000e0913          	mv	s2,t3
8001337c:	03c12503          	lw	a0,60(sp)
80013380:	06050a63          	beqz	a0,800133f4 <__subtf3+0x1304>
80013384:	23d000ef          	jal	ra,80013dc0 <__clzsi2>
80013388:	ff450793          	addi	a5,a0,-12
8001338c:	02000613          	li	a2,32
80013390:	01f7f693          	andi	a3,a5,31
80013394:	02c7c733          	div	a4,a5,a2
80013398:	08068a63          	beqz	a3,8001342c <__subtf3+0x133c>
8001339c:	ffc00693          	li	a3,-4
800133a0:	03010313          	addi	t1,sp,48
800133a4:	00271513          	slli	a0,a4,0x2
800133a8:	02c7e833          	rem	a6,a5,a2
800133ac:	02d706b3          	mul	a3,a4,a3
800133b0:	41060633          	sub	a2,a2,a6
800133b4:	00c68693          	addi	a3,a3,12
800133b8:	00d306b3          	add	a3,t1,a3
800133bc:	0ad31063          	bne	t1,a3,8001345c <__subtf3+0x136c>
800133c0:	04010693          	addi	a3,sp,64
800133c4:	00a68533          	add	a0,a3,a0
800133c8:	03012683          	lw	a3,48(sp)
800133cc:	fff70713          	addi	a4,a4,-1
800133d0:	010696b3          	sll	a3,a3,a6
800133d4:	fed52823          	sw	a3,-16(a0)
800133d8:	fff00613          	li	a2,-1
800133dc:	0b80006f          	j	80013494 <__subtf3+0x13a4>
800133e0:	005eeeb3          	or	t4,t4,t0
800133e4:	015eeeb3          	or	t4,t4,s5
800133e8:	01eeeeb3          	or	t4,t4,t5
800133ec:	d20e8ce3          	beqz	t4,80013124 <__subtf3+0x1034>
800133f0:	f8dff06f          	j	8001337c <__subtf3+0x128c>
800133f4:	03812503          	lw	a0,56(sp)
800133f8:	00050863          	beqz	a0,80013408 <__subtf3+0x1318>
800133fc:	1c5000ef          	jal	ra,80013dc0 <__clzsi2>
80013400:	02050513          	addi	a0,a0,32
80013404:	f85ff06f          	j	80013388 <__subtf3+0x1298>
80013408:	03412503          	lw	a0,52(sp)
8001340c:	00050863          	beqz	a0,8001341c <__subtf3+0x132c>
80013410:	1b1000ef          	jal	ra,80013dc0 <__clzsi2>
80013414:	04050513          	addi	a0,a0,64
80013418:	f71ff06f          	j	80013388 <__subtf3+0x1298>
8001341c:	03012503          	lw	a0,48(sp)
80013420:	1a1000ef          	jal	ra,80013dc0 <__clzsi2>
80013424:	06050513          	addi	a0,a0,96
80013428:	f61ff06f          	j	80013388 <__subtf3+0x1298>
8001342c:	ffc00593          	li	a1,-4
80013430:	02b705b3          	mul	a1,a4,a1
80013434:	03c10693          	addi	a3,sp,60
80013438:	00300613          	li	a2,3
8001343c:	00b68533          	add	a0,a3,a1
80013440:	00052503          	lw	a0,0(a0)
80013444:	fff60613          	addi	a2,a2,-1
80013448:	ffc68693          	addi	a3,a3,-4
8001344c:	00a6a223          	sw	a0,4(a3)
80013450:	fee656e3          	bge	a2,a4,8001343c <__subtf3+0x134c>
80013454:	fff70713          	addi	a4,a4,-1
80013458:	f81ff06f          	j	800133d8 <__subtf3+0x12e8>
8001345c:	ffc6a583          	lw	a1,-4(a3)
80013460:	0006a883          	lw	a7,0(a3)
80013464:	00a68e33          	add	t3,a3,a0
80013468:	00c5d5b3          	srl	a1,a1,a2
8001346c:	010898b3          	sll	a7,a7,a6
80013470:	0115e5b3          	or	a1,a1,a7
80013474:	00be2023          	sw	a1,0(t3)
80013478:	ffc68693          	addi	a3,a3,-4
8001347c:	f41ff06f          	j	800133bc <__subtf3+0x12cc>
80013480:	00271693          	slli	a3,a4,0x2
80013484:	03010593          	addi	a1,sp,48
80013488:	00d586b3          	add	a3,a1,a3
8001348c:	0006a023          	sw	zero,0(a3)
80013490:	fff70713          	addi	a4,a4,-1
80013494:	fec716e3          	bne	a4,a2,80013480 <__subtf3+0x1390>
80013498:	1487c863          	blt	a5,s0,800135e8 <__subtf3+0x14f8>
8001349c:	40878433          	sub	s0,a5,s0
800134a0:	02000713          	li	a4,32
800134a4:	00140413          	addi	s0,s0,1
800134a8:	03010793          	addi	a5,sp,48
800134ac:	02e44533          	div	a0,s0,a4
800134b0:	00078693          	mv	a3,a5
800134b4:	00000813          	li	a6,0
800134b8:	00000713          	li	a4,0
800134bc:	04a74a63          	blt	a4,a0,80013510 <__subtf3+0x1420>
800134c0:	00050613          	mv	a2,a0
800134c4:	00055463          	bgez	a0,800134cc <__subtf3+0x13dc>
800134c8:	00000613          	li	a2,0
800134cc:	01f47713          	andi	a4,s0,31
800134d0:	00251693          	slli	a3,a0,0x2
800134d4:	04071863          	bnez	a4,80013524 <__subtf3+0x1434>
800134d8:	00300613          	li	a2,3
800134dc:	40a60633          	sub	a2,a2,a0
800134e0:	00d785b3          	add	a1,a5,a3
800134e4:	0005a583          	lw	a1,0(a1)
800134e8:	00170713          	addi	a4,a4,1
800134ec:	00478793          	addi	a5,a5,4
800134f0:	feb7ae23          	sw	a1,-4(a5)
800134f4:	fee656e3          	bge	a2,a4,800134e0 <__subtf3+0x13f0>
800134f8:	00400713          	li	a4,4
800134fc:	40a70533          	sub	a0,a4,a0
80013500:	00100713          	li	a4,1
80013504:	08a05263          	blez	a0,80013588 <__subtf3+0x1498>
80013508:	00050713          	mv	a4,a0
8001350c:	07c0006f          	j	80013588 <__subtf3+0x1498>
80013510:	0006a603          	lw	a2,0(a3)
80013514:	00170713          	addi	a4,a4,1
80013518:	00468693          	addi	a3,a3,4
8001351c:	00c86833          	or	a6,a6,a2
80013520:	f9dff06f          	j	800134bc <__subtf3+0x13cc>
80013524:	02000593          	li	a1,32
80013528:	02b46433          	rem	s0,s0,a1
8001352c:	ffc00893          	li	a7,-4
80013530:	04010793          	addi	a5,sp,64
80013534:	00261613          	slli	a2,a2,0x2
80013538:	00c78633          	add	a2,a5,a2
8001353c:	ff062783          	lw	a5,-16(a2)
80013540:	00000713          	li	a4,0
80013544:	031508b3          	mul	a7,a0,a7
80013548:	408585b3          	sub	a1,a1,s0
8001354c:	00b797b3          	sll	a5,a5,a1
80013550:	00f86833          	or	a6,a6,a5
80013554:	03010793          	addi	a5,sp,48
80013558:	00d786b3          	add	a3,a5,a3
8001355c:	00300793          	li	a5,3
80013560:	40a787b3          	sub	a5,a5,a0
80013564:	02f74663          	blt	a4,a5,80013590 <__subtf3+0x14a0>
80013568:	04010693          	addi	a3,sp,64
8001356c:	00279793          	slli	a5,a5,0x2
80013570:	00f687b3          	add	a5,a3,a5
80013574:	03c12683          	lw	a3,60(sp)
80013578:	00400713          	li	a4,4
8001357c:	40a70733          	sub	a4,a4,a0
80013580:	0086d433          	srl	s0,a3,s0
80013584:	fe87a823          	sw	s0,-16(a5)
80013588:	00300693          	li	a3,3
8001358c:	0400006f          	j	800135cc <__subtf3+0x14dc>
80013590:	0006a603          	lw	a2,0(a3)
80013594:	0046a303          	lw	t1,4(a3)
80013598:	01168e33          	add	t3,a3,a7
8001359c:	00865633          	srl	a2,a2,s0
800135a0:	00b31333          	sll	t1,t1,a1
800135a4:	00666633          	or	a2,a2,t1
800135a8:	00ce2023          	sw	a2,0(t3)
800135ac:	00170713          	addi	a4,a4,1
800135b0:	00468693          	addi	a3,a3,4
800135b4:	fb1ff06f          	j	80013564 <__subtf3+0x1474>
800135b8:	00271793          	slli	a5,a4,0x2
800135bc:	03010613          	addi	a2,sp,48
800135c0:	00f607b3          	add	a5,a2,a5
800135c4:	0007a023          	sw	zero,0(a5)
800135c8:	00170713          	addi	a4,a4,1
800135cc:	fee6d6e3          	bge	a3,a4,800135b8 <__subtf3+0x14c8>
800135d0:	03012703          	lw	a4,48(sp)
800135d4:	010037b3          	snez	a5,a6
800135d8:	00000413          	li	s0,0
800135dc:	00f767b3          	or	a5,a4,a5
800135e0:	02f12823          	sw	a5,48(sp)
800135e4:	d3dfe06f          	j	80012320 <__subtf3+0x230>
800135e8:	40f40433          	sub	s0,s0,a5
800135ec:	03c12783          	lw	a5,60(sp)
800135f0:	fff80737          	lui	a4,0xfff80
800135f4:	fff70713          	addi	a4,a4,-1 # fff7ffff <heap_end.1814+0x7ff6a61b>
800135f8:	00e7f7b3          	and	a5,a5,a4
800135fc:	02f12e23          	sw	a5,60(sp)
80013600:	d21fe06f          	j	80012320 <__subtf3+0x230>
80013604:	02012e23          	sw	zero,60(sp)
80013608:	02012c23          	sw	zero,56(sp)
8001360c:	02012a23          	sw	zero,52(sp)
80013610:	02012823          	sw	zero,48(sp)
80013614:	d8dfe06f          	j	800123a0 <__subtf3+0x2b0>

80013618 <__fixtfsi>:
80013618:	00852783          	lw	a5,8(a0)
8001361c:	00452703          	lw	a4,4(a0)
80013620:	00c52683          	lw	a3,12(a0)
80013624:	00052603          	lw	a2,0(a0)
80013628:	fe010113          	addi	sp,sp,-32
8001362c:	00e12223          	sw	a4,4(sp)
80013630:	00f12423          	sw	a5,8(sp)
80013634:	00f12c23          	sw	a5,24(sp)
80013638:	00004737          	lui	a4,0x4
8001363c:	00169793          	slli	a5,a3,0x1
80013640:	0117d593          	srli	a1,a5,0x11
80013644:	00c12023          	sw	a2,0(sp)
80013648:	00d12623          	sw	a3,12(sp)
8001364c:	00c12823          	sw	a2,16(sp)
80013650:	ffe70793          	addi	a5,a4,-2 # 3ffe <_printf_r-0x7fffc002>
80013654:	00000513          	li	a0,0
80013658:	00b7de63          	bge	a5,a1,80013674 <__fixtfsi+0x5c>
8001365c:	01d70793          	addi	a5,a4,29
80013660:	01f6d813          	srli	a6,a3,0x1f
80013664:	00b7dc63          	bge	a5,a1,8001367c <__fixtfsi+0x64>
80013668:	80000537          	lui	a0,0x80000
8001366c:	fff54513          	not	a0,a0
80013670:	00a80533          	add	a0,a6,a0
80013674:	02010113          	addi	sp,sp,32
80013678:	00008067          	ret
8001367c:	01069693          	slli	a3,a3,0x10
80013680:	000107b7          	lui	a5,0x10
80013684:	0106d693          	srli	a3,a3,0x10
80013688:	00f6e6b3          	or	a3,a3,a5
8001368c:	06f70793          	addi	a5,a4,111
80013690:	40b787b3          	sub	a5,a5,a1
80013694:	4057d713          	srai	a4,a5,0x5
80013698:	00d12e23          	sw	a3,28(sp)
8001369c:	01f7f793          	andi	a5,a5,31
800136a0:	04078863          	beqz	a5,800136f0 <__fixtfsi+0xd8>
800136a4:	02000513          	li	a0,32
800136a8:	ffe70893          	addi	a7,a4,-2
800136ac:	40f50533          	sub	a0,a0,a5
800136b0:	00271713          	slli	a4,a4,0x2
800136b4:	02010e13          	addi	t3,sp,32
800136b8:	00a69533          	sll	a0,a3,a0
800136bc:	00000313          	li	t1,0
800136c0:	00000593          	li	a1,0
800136c4:	0018b893          	seqz	a7,a7
800136c8:	00ee0733          	add	a4,t3,a4
800136cc:	0515c463          	blt	a1,a7,80013714 <__fixtfsi+0xfc>
800136d0:	00030463          	beqz	t1,800136d8 <__fixtfsi+0xc0>
800136d4:	00c12823          	sw	a2,16(sp)
800136d8:	00259593          	slli	a1,a1,0x2
800136dc:	02010713          	addi	a4,sp,32
800136e0:	00b705b3          	add	a1,a4,a1
800136e4:	00f6d6b3          	srl	a3,a3,a5
800136e8:	fed5a823          	sw	a3,-16(a1)
800136ec:	0180006f          	j	80013704 <__fixtfsi+0xec>
800136f0:	02010793          	addi	a5,sp,32
800136f4:	00271713          	slli	a4,a4,0x2
800136f8:	00e78733          	add	a4,a5,a4
800136fc:	ff072783          	lw	a5,-16(a4)
80013700:	00f12823          	sw	a5,16(sp)
80013704:	01012503          	lw	a0,16(sp)
80013708:	f60806e3          	beqz	a6,80013674 <__fixtfsi+0x5c>
8001370c:	40a00533          	neg	a0,a0
80013710:	f65ff06f          	j	80013674 <__fixtfsi+0x5c>
80013714:	ff072603          	lw	a2,-16(a4)
80013718:	00100313          	li	t1,1
8001371c:	00100593          	li	a1,1
80013720:	00f65633          	srl	a2,a2,a5
80013724:	00a66633          	or	a2,a2,a0
80013728:	fa5ff06f          	j	800136cc <__fixtfsi+0xb4>

8001372c <__floatsitf>:
8001372c:	fd010113          	addi	sp,sp,-48
80013730:	02912223          	sw	s1,36(sp)
80013734:	02112623          	sw	ra,44(sp)
80013738:	02812423          	sw	s0,40(sp)
8001373c:	03212023          	sw	s2,32(sp)
80013740:	00050493          	mv	s1,a0
80013744:	12058063          	beqz	a1,80013864 <__floatsitf+0x138>
80013748:	41f5d793          	srai	a5,a1,0x1f
8001374c:	00b7c433          	xor	s0,a5,a1
80013750:	40f40433          	sub	s0,s0,a5
80013754:	00040513          	mv	a0,s0
80013758:	01f5d913          	srli	s2,a1,0x1f
8001375c:	664000ef          	jal	ra,80013dc0 <__clzsi2>
80013760:	00004737          	lui	a4,0x4
80013764:	01e70713          	addi	a4,a4,30 # 401e <_printf_r-0x7fffbfe2>
80013768:	05150793          	addi	a5,a0,81 # 80000051 <heap_end.1814+0xfffea66d>
8001376c:	40a705b3          	sub	a1,a4,a0
80013770:	00812823          	sw	s0,16(sp)
80013774:	4057d713          	srai	a4,a5,0x5
80013778:	00012a23          	sw	zero,20(sp)
8001377c:	00012c23          	sw	zero,24(sp)
80013780:	00012e23          	sw	zero,28(sp)
80013784:	01f7f793          	andi	a5,a5,31
80013788:	02078c63          	beqz	a5,800137c0 <__floatsitf+0x94>
8001378c:	00200693          	li	a3,2
80013790:	0cd71663          	bne	a4,a3,8001385c <__floatsitf+0x130>
80013794:	02000693          	li	a3,32
80013798:	40f686b3          	sub	a3,a3,a5
8001379c:	00d456b3          	srl	a3,s0,a3
800137a0:	00d12e23          	sw	a3,28(sp)
800137a4:	fff70693          	addi	a3,a4,-1
800137a8:	02010613          	addi	a2,sp,32
800137ac:	00271713          	slli	a4,a4,0x2
800137b0:	00e60733          	add	a4,a2,a4
800137b4:	00f417b3          	sll	a5,s0,a5
800137b8:	fef72823          	sw	a5,-16(a4)
800137bc:	0340006f          	j	800137f0 <__floatsitf+0xc4>
800137c0:	00300793          	li	a5,3
800137c4:	40e787b3          	sub	a5,a5,a4
800137c8:	02010693          	addi	a3,sp,32
800137cc:	00279793          	slli	a5,a5,0x2
800137d0:	00f687b3          	add	a5,a3,a5
800137d4:	ff07a783          	lw	a5,-16(a5) # fff0 <_printf_r-0x7fff0010>
800137d8:	00200693          	li	a3,2
800137dc:	00f12e23          	sw	a5,28(sp)
800137e0:	00200793          	li	a5,2
800137e4:	00f71663          	bne	a4,a5,800137f0 <__floatsitf+0xc4>
800137e8:	00812c23          	sw	s0,24(sp)
800137ec:	00100693          	li	a3,1
800137f0:	fff00793          	li	a5,-1
800137f4:	00269713          	slli	a4,a3,0x2
800137f8:	01010613          	addi	a2,sp,16
800137fc:	00e60733          	add	a4,a2,a4
80013800:	00072023          	sw	zero,0(a4)
80013804:	fff68693          	addi	a3,a3,-1
80013808:	fef696e3          	bne	a3,a5,800137f4 <__floatsitf+0xc8>
8001380c:	01c12783          	lw	a5,28(sp)
80013810:	02c12083          	lw	ra,44(sp)
80013814:	02812403          	lw	s0,40(sp)
80013818:	00f11623          	sh	a5,12(sp)
8001381c:	00f91793          	slli	a5,s2,0xf
80013820:	00b7e5b3          	or	a1,a5,a1
80013824:	01012783          	lw	a5,16(sp)
80013828:	00b11723          	sh	a1,14(sp)
8001382c:	02012903          	lw	s2,32(sp)
80013830:	00f4a023          	sw	a5,0(s1)
80013834:	01412783          	lw	a5,20(sp)
80013838:	00048513          	mv	a0,s1
8001383c:	00f4a223          	sw	a5,4(s1)
80013840:	01812783          	lw	a5,24(sp)
80013844:	00f4a423          	sw	a5,8(s1)
80013848:	00c12783          	lw	a5,12(sp)
8001384c:	00f4a623          	sw	a5,12(s1)
80013850:	02412483          	lw	s1,36(sp)
80013854:	03010113          	addi	sp,sp,48
80013858:	00008067          	ret
8001385c:	00300713          	li	a4,3
80013860:	f45ff06f          	j	800137a4 <__floatsitf+0x78>
80013864:	00012e23          	sw	zero,28(sp)
80013868:	00012c23          	sw	zero,24(sp)
8001386c:	00012a23          	sw	zero,20(sp)
80013870:	00012823          	sw	zero,16(sp)
80013874:	00000913          	li	s2,0
80013878:	f95ff06f          	j	8001380c <__floatsitf+0xe0>

8001387c <__extenddftf2>:
8001387c:	01465793          	srli	a5,a2,0x14
80013880:	00c61713          	slli	a4,a2,0xc
80013884:	7ff7f793          	andi	a5,a5,2047
80013888:	fd010113          	addi	sp,sp,-48
8001388c:	00c75713          	srli	a4,a4,0xc
80013890:	00178693          	addi	a3,a5,1
80013894:	02812423          	sw	s0,40(sp)
80013898:	02912223          	sw	s1,36(sp)
8001389c:	03212023          	sw	s2,32(sp)
800138a0:	02112623          	sw	ra,44(sp)
800138a4:	00b12823          	sw	a1,16(sp)
800138a8:	00e12a23          	sw	a4,20(sp)
800138ac:	00012e23          	sw	zero,28(sp)
800138b0:	00012c23          	sw	zero,24(sp)
800138b4:	7fe6f693          	andi	a3,a3,2046
800138b8:	00050913          	mv	s2,a0
800138bc:	00058413          	mv	s0,a1
800138c0:	01f65493          	srli	s1,a2,0x1f
800138c4:	08068263          	beqz	a3,80013948 <__extenddftf2+0xcc>
800138c8:	000046b7          	lui	a3,0x4
800138cc:	c0068693          	addi	a3,a3,-1024 # 3c00 <_printf_r-0x7fffc400>
800138d0:	00d787b3          	add	a5,a5,a3
800138d4:	0045d513          	srli	a0,a1,0x4
800138d8:	00475693          	srli	a3,a4,0x4
800138dc:	01c71713          	slli	a4,a4,0x1c
800138e0:	00a76733          	or	a4,a4,a0
800138e4:	01c59413          	slli	s0,a1,0x1c
800138e8:	00d12e23          	sw	a3,28(sp)
800138ec:	00e12c23          	sw	a4,24(sp)
800138f0:	00812a23          	sw	s0,20(sp)
800138f4:	00012823          	sw	zero,16(sp)
800138f8:	00f49493          	slli	s1,s1,0xf
800138fc:	00f4e7b3          	or	a5,s1,a5
80013900:	00f11723          	sh	a5,14(sp)
80013904:	01012783          	lw	a5,16(sp)
80013908:	01c12703          	lw	a4,28(sp)
8001390c:	02c12083          	lw	ra,44(sp)
80013910:	00f92023          	sw	a5,0(s2)
80013914:	01412783          	lw	a5,20(sp)
80013918:	00e11623          	sh	a4,12(sp)
8001391c:	02812403          	lw	s0,40(sp)
80013920:	00f92223          	sw	a5,4(s2)
80013924:	01812783          	lw	a5,24(sp)
80013928:	02412483          	lw	s1,36(sp)
8001392c:	00090513          	mv	a0,s2
80013930:	00f92423          	sw	a5,8(s2)
80013934:	00c12783          	lw	a5,12(sp)
80013938:	00f92623          	sw	a5,12(s2)
8001393c:	02012903          	lw	s2,32(sp)
80013940:	03010113          	addi	sp,sp,48
80013944:	00008067          	ret
80013948:	00b76533          	or	a0,a4,a1
8001394c:	0e079463          	bnez	a5,80013a34 <__extenddftf2+0x1b8>
80013950:	fa0504e3          	beqz	a0,800138f8 <__extenddftf2+0x7c>
80013954:	04070c63          	beqz	a4,800139ac <__extenddftf2+0x130>
80013958:	00070513          	mv	a0,a4
8001395c:	464000ef          	jal	ra,80013dc0 <__clzsi2>
80013960:	03150593          	addi	a1,a0,49
80013964:	4055d713          	srai	a4,a1,0x5
80013968:	01f5f593          	andi	a1,a1,31
8001396c:	04058663          	beqz	a1,800139b8 <__extenddftf2+0x13c>
80013970:	ffc00693          	li	a3,-4
80013974:	02d706b3          	mul	a3,a4,a3
80013978:	01010313          	addi	t1,sp,16
8001397c:	02000813          	li	a6,32
80013980:	00271613          	slli	a2,a4,0x2
80013984:	40b80833          	sub	a6,a6,a1
80013988:	00c68693          	addi	a3,a3,12
8001398c:	00d306b3          	add	a3,t1,a3
80013990:	08d31063          	bne	t1,a3,80013a10 <__extenddftf2+0x194>
80013994:	02010793          	addi	a5,sp,32
80013998:	00c78633          	add	a2,a5,a2
8001399c:	00b415b3          	sll	a1,s0,a1
800139a0:	fff70713          	addi	a4,a4,-1
800139a4:	feb62823          	sw	a1,-16(a2)
800139a8:	03c0006f          	j	800139e4 <__extenddftf2+0x168>
800139ac:	414000ef          	jal	ra,80013dc0 <__clzsi2>
800139b0:	02050513          	addi	a0,a0,32
800139b4:	fadff06f          	j	80013960 <__extenddftf2+0xe4>
800139b8:	ffc00613          	li	a2,-4
800139bc:	02c70633          	mul	a2,a4,a2
800139c0:	01c10793          	addi	a5,sp,28
800139c4:	00300693          	li	a3,3
800139c8:	00c785b3          	add	a1,a5,a2
800139cc:	0005a583          	lw	a1,0(a1)
800139d0:	fff68693          	addi	a3,a3,-1
800139d4:	ffc78793          	addi	a5,a5,-4
800139d8:	00b7a223          	sw	a1,4(a5)
800139dc:	fee6d6e3          	bge	a3,a4,800139c8 <__extenddftf2+0x14c>
800139e0:	fff70713          	addi	a4,a4,-1
800139e4:	fff00693          	li	a3,-1
800139e8:	00271793          	slli	a5,a4,0x2
800139ec:	01010613          	addi	a2,sp,16
800139f0:	00f607b3          	add	a5,a2,a5
800139f4:	0007a023          	sw	zero,0(a5)
800139f8:	fff70713          	addi	a4,a4,-1
800139fc:	fed716e3          	bne	a4,a3,800139e8 <__extenddftf2+0x16c>
80013a00:	000047b7          	lui	a5,0x4
80013a04:	c0c78793          	addi	a5,a5,-1012 # 3c0c <_printf_r-0x7fffc3f4>
80013a08:	40a787b3          	sub	a5,a5,a0
80013a0c:	eedff06f          	j	800138f8 <__extenddftf2+0x7c>
80013a10:	ffc6a783          	lw	a5,-4(a3)
80013a14:	0006a883          	lw	a7,0(a3)
80013a18:	00c68e33          	add	t3,a3,a2
80013a1c:	0107d7b3          	srl	a5,a5,a6
80013a20:	00b898b3          	sll	a7,a7,a1
80013a24:	0117e7b3          	or	a5,a5,a7
80013a28:	00fe2023          	sw	a5,0(t3)
80013a2c:	ffc68693          	addi	a3,a3,-4
80013a30:	f61ff06f          	j	80013990 <__extenddftf2+0x114>
80013a34:	000087b7          	lui	a5,0x8
80013a38:	02050863          	beqz	a0,80013a68 <__extenddftf2+0x1ec>
80013a3c:	01c71793          	slli	a5,a4,0x1c
80013a40:	0045d693          	srli	a3,a1,0x4
80013a44:	00d7e7b3          	or	a5,a5,a3
80013a48:	00f12c23          	sw	a5,24(sp)
80013a4c:	00475713          	srli	a4,a4,0x4
80013a50:	000087b7          	lui	a5,0x8
80013a54:	01c59413          	slli	s0,a1,0x1c
80013a58:	00f76733          	or	a4,a4,a5
80013a5c:	00812a23          	sw	s0,20(sp)
80013a60:	00012823          	sw	zero,16(sp)
80013a64:	00e12e23          	sw	a4,28(sp)
80013a68:	fff78793          	addi	a5,a5,-1 # 7fff <_printf_r-0x7fff8001>
80013a6c:	e8dff06f          	j	800138f8 <__extenddftf2+0x7c>

80013a70 <__trunctfdf2>:
80013a70:	00c52583          	lw	a1,12(a0)
80013a74:	00852783          	lw	a5,8(a0)
80013a78:	00452703          	lw	a4,4(a0)
80013a7c:	fe010113          	addi	sp,sp,-32
80013a80:	00052683          	lw	a3,0(a0)
80013a84:	00f12423          	sw	a5,8(sp)
80013a88:	00f12c23          	sw	a5,24(sp)
80013a8c:	01059793          	slli	a5,a1,0x10
80013a90:	00e12223          	sw	a4,4(sp)
80013a94:	00e12a23          	sw	a4,20(sp)
80013a98:	0107d793          	srli	a5,a5,0x10
80013a9c:	00159713          	slli	a4,a1,0x1
80013aa0:	00b12623          	sw	a1,12(sp)
80013aa4:	00d12023          	sw	a3,0(sp)
80013aa8:	00d12823          	sw	a3,16(sp)
80013aac:	00f12e23          	sw	a5,28(sp)
80013ab0:	01175713          	srli	a4,a4,0x11
80013ab4:	01f5d593          	srli	a1,a1,0x1f
80013ab8:	01010813          	addi	a6,sp,16
80013abc:	01c10613          	addi	a2,sp,28
80013ac0:	00062783          	lw	a5,0(a2)
80013ac4:	ffc62683          	lw	a3,-4(a2)
80013ac8:	ffc60613          	addi	a2,a2,-4
80013acc:	00379793          	slli	a5,a5,0x3
80013ad0:	01d6d693          	srli	a3,a3,0x1d
80013ad4:	00d7e7b3          	or	a5,a5,a3
80013ad8:	00f62223          	sw	a5,4(a2)
80013adc:	fec812e3          	bne	a6,a2,80013ac0 <__trunctfdf2+0x50>
80013ae0:	01012683          	lw	a3,16(sp)
80013ae4:	00170793          	addi	a5,a4,1
80013ae8:	00369513          	slli	a0,a3,0x3
80013aec:	000086b7          	lui	a3,0x8
80013af0:	ffe68693          	addi	a3,a3,-2 # 7ffe <_printf_r-0x7fff8002>
80013af4:	00a12823          	sw	a0,16(sp)
80013af8:	00d7f7b3          	and	a5,a5,a3
80013afc:	1c078663          	beqz	a5,80013cc8 <__trunctfdf2+0x258>
80013b00:	ffffc7b7          	lui	a5,0xffffc
80013b04:	40078793          	addi	a5,a5,1024 # ffffc400 <heap_end.1814+0x7ffe6a1c>
80013b08:	00f70733          	add	a4,a4,a5
80013b0c:	7fe00793          	li	a5,2046
80013b10:	20e7c863          	blt	a5,a4,80013d20 <__trunctfdf2+0x2b0>
80013b14:	06e05863          	blez	a4,80013b84 <__trunctfdf2+0x114>
80013b18:	01812803          	lw	a6,24(sp)
80013b1c:	01c12603          	lw	a2,28(sp)
80013b20:	01412783          	lw	a5,20(sp)
80013b24:	01c85693          	srli	a3,a6,0x1c
80013b28:	00461613          	slli	a2,a2,0x4
80013b2c:	00d66633          	or	a2,a2,a3
80013b30:	00479693          	slli	a3,a5,0x4
80013b34:	00a6e6b3          	or	a3,a3,a0
80013b38:	01c7d793          	srli	a5,a5,0x1c
80013b3c:	00481813          	slli	a6,a6,0x4
80013b40:	00d036b3          	snez	a3,a3
80013b44:	0107e7b3          	or	a5,a5,a6
80013b48:	00f6e6b3          	or	a3,a3,a5
80013b4c:	00c12a23          	sw	a2,20(sp)
80013b50:	00d12823          	sw	a3,16(sp)
80013b54:	01012683          	lw	a3,16(sp)
80013b58:	01412783          	lw	a5,20(sp)
80013b5c:	0076f613          	andi	a2,a3,7
80013b60:	1c060663          	beqz	a2,80013d2c <__trunctfdf2+0x2bc>
80013b64:	00f6f613          	andi	a2,a3,15
80013b68:	00400513          	li	a0,4
80013b6c:	1ca60063          	beq	a2,a0,80013d2c <__trunctfdf2+0x2bc>
80013b70:	00468613          	addi	a2,a3,4
80013b74:	00d636b3          	sltu	a3,a2,a3
80013b78:	00d787b3          	add	a5,a5,a3
80013b7c:	00060693          	mv	a3,a2
80013b80:	1ac0006f          	j	80013d2c <__trunctfdf2+0x2bc>
80013b84:	fcc00793          	li	a5,-52
80013b88:	00f75c63          	bge	a4,a5,80013ba0 <__trunctfdf2+0x130>
80013b8c:	00012a23          	sw	zero,20(sp)
80013b90:	00100793          	li	a5,1
80013b94:	00f12823          	sw	a5,16(sp)
80013b98:	00000713          	li	a4,0
80013b9c:	fb9ff06f          	j	80013b54 <__trunctfdf2+0xe4>
80013ba0:	01c12783          	lw	a5,28(sp)
80013ba4:	00080eb7          	lui	t4,0x80
80013ba8:	03d00693          	li	a3,61
80013bac:	00feeeb3          	or	t4,t4,a5
80013bb0:	40e686b3          	sub	a3,a3,a4
80013bb4:	01d12e23          	sw	t4,28(sp)
80013bb8:	4056de13          	srai	t3,a3,0x5
80013bbc:	00080713          	mv	a4,a6
80013bc0:	00000793          	li	a5,0
80013bc4:	00000313          	li	t1,0
80013bc8:	00072503          	lw	a0,0(a4)
80013bcc:	00178793          	addi	a5,a5,1
80013bd0:	00470713          	addi	a4,a4,4
80013bd4:	00a36333          	or	t1,t1,a0
80013bd8:	fefe18e3          	bne	t3,a5,80013bc8 <__trunctfdf2+0x158>
80013bdc:	01f6f713          	andi	a4,a3,31
80013be0:	002e1693          	slli	a3,t3,0x2
80013be4:	04071063          	bnez	a4,80013c24 <__trunctfdf2+0x1b4>
80013be8:	00300713          	li	a4,3
80013bec:	00000793          	li	a5,0
80013bf0:	41c70733          	sub	a4,a4,t3
80013bf4:	00d60533          	add	a0,a2,a3
80013bf8:	00052503          	lw	a0,0(a0)
80013bfc:	00178793          	addi	a5,a5,1
80013c00:	00460613          	addi	a2,a2,4
80013c04:	fea62e23          	sw	a0,-4(a2)
80013c08:	fef756e3          	bge	a4,a5,80013bf4 <__trunctfdf2+0x184>
80013c0c:	00400713          	li	a4,4
80013c10:	41c70733          	sub	a4,a4,t3
80013c14:	00100793          	li	a5,1
80013c18:	06e05063          	blez	a4,80013c78 <__trunctfdf2+0x208>
80013c1c:	00070793          	mv	a5,a4
80013c20:	0580006f          	j	80013c78 <__trunctfdf2+0x208>
80013c24:	ffc00f13          	li	t5,-4
80013c28:	03ee0f33          	mul	t5,t3,t5
80013c2c:	02010793          	addi	a5,sp,32
80013c30:	00d787b3          	add	a5,a5,a3
80013c34:	ff07a783          	lw	a5,-16(a5)
80013c38:	02000893          	li	a7,32
80013c3c:	40e888b3          	sub	a7,a7,a4
80013c40:	011797b3          	sll	a5,a5,a7
80013c44:	00300613          	li	a2,3
80013c48:	00f36333          	or	t1,t1,a5
80013c4c:	00d806b3          	add	a3,a6,a3
80013c50:	00000793          	li	a5,0
80013c54:	41c60633          	sub	a2,a2,t3
80013c58:	04c7c463          	blt	a5,a2,80013ca0 <__trunctfdf2+0x230>
80013c5c:	00261613          	slli	a2,a2,0x2
80013c60:	02010693          	addi	a3,sp,32
80013c64:	00400793          	li	a5,4
80013c68:	00c68633          	add	a2,a3,a2
80013c6c:	00eed733          	srl	a4,t4,a4
80013c70:	41c787b3          	sub	a5,a5,t3
80013c74:	fee62823          	sw	a4,-16(a2)
80013c78:	00400693          	li	a3,4
80013c7c:	00279713          	slli	a4,a5,0x2
80013c80:	00e80733          	add	a4,a6,a4
80013c84:	00072023          	sw	zero,0(a4)
80013c88:	00178793          	addi	a5,a5,1
80013c8c:	fed798e3          	bne	a5,a3,80013c7c <__trunctfdf2+0x20c>
80013c90:	01012703          	lw	a4,16(sp)
80013c94:	006037b3          	snez	a5,t1
80013c98:	00f767b3          	or	a5,a4,a5
80013c9c:	ef9ff06f          	j	80013b94 <__trunctfdf2+0x124>
80013ca0:	0006a503          	lw	a0,0(a3)
80013ca4:	0046af83          	lw	t6,4(a3)
80013ca8:	01e682b3          	add	t0,a3,t5
80013cac:	00e55533          	srl	a0,a0,a4
80013cb0:	011f9fb3          	sll	t6,t6,a7
80013cb4:	01f56533          	or	a0,a0,t6
80013cb8:	00a2a023          	sw	a0,0(t0)
80013cbc:	00178793          	addi	a5,a5,1
80013cc0:	00468693          	addi	a3,a3,4
80013cc4:	f95ff06f          	j	80013c58 <__trunctfdf2+0x1e8>
80013cc8:	01412603          	lw	a2,20(sp)
80013ccc:	01812783          	lw	a5,24(sp)
80013cd0:	01c12803          	lw	a6,28(sp)
80013cd4:	00f666b3          	or	a3,a2,a5
80013cd8:	0106e6b3          	or	a3,a3,a6
80013cdc:	00a6e6b3          	or	a3,a3,a0
80013ce0:	00071863          	bnez	a4,80013cf0 <__trunctfdf2+0x280>
80013ce4:	00d036b3          	snez	a3,a3
80013ce8:	00000793          	li	a5,0
80013cec:	e71ff06f          	j	80013b5c <__trunctfdf2+0xec>
80013cf0:	0a068e63          	beqz	a3,80013dac <__trunctfdf2+0x33c>
80013cf4:	01c65693          	srli	a3,a2,0x1c
80013cf8:	00481813          	slli	a6,a6,0x4
80013cfc:	00479613          	slli	a2,a5,0x4
80013d00:	01c7d793          	srli	a5,a5,0x1c
80013d04:	00400737          	lui	a4,0x400
80013d08:	00c6e6b3          	or	a3,a3,a2
80013d0c:	0107e7b3          	or	a5,a5,a6
80013d10:	00e7e7b3          	or	a5,a5,a4
80013d14:	ff86f693          	andi	a3,a3,-8
80013d18:	7ff00713          	li	a4,2047
80013d1c:	e41ff06f          	j	80013b5c <__trunctfdf2+0xec>
80013d20:	00000793          	li	a5,0
80013d24:	00000693          	li	a3,0
80013d28:	7ff00713          	li	a4,2047
80013d2c:	00879613          	slli	a2,a5,0x8
80013d30:	00065e63          	bgez	a2,80013d4c <__trunctfdf2+0x2dc>
80013d34:	00170713          	addi	a4,a4,1 # 400001 <_printf_r-0x7fbfffff>
80013d38:	7ff00613          	li	a2,2047
80013d3c:	06c70c63          	beq	a4,a2,80013db4 <__trunctfdf2+0x344>
80013d40:	ff800637          	lui	a2,0xff800
80013d44:	fff60613          	addi	a2,a2,-1 # ff7fffff <heap_end.1814+0x7f7ea61b>
80013d48:	00c7f7b3          	and	a5,a5,a2
80013d4c:	01d79613          	slli	a2,a5,0x1d
80013d50:	0036d693          	srli	a3,a3,0x3
80013d54:	00d666b3          	or	a3,a2,a3
80013d58:	7ff00613          	li	a2,2047
80013d5c:	0037d793          	srli	a5,a5,0x3
80013d60:	00c71e63          	bne	a4,a2,80013d7c <__trunctfdf2+0x30c>
80013d64:	00f6e6b3          	or	a3,a3,a5
80013d68:	00000793          	li	a5,0
80013d6c:	00068863          	beqz	a3,80013d7c <__trunctfdf2+0x30c>
80013d70:	000807b7          	lui	a5,0x80
80013d74:	00000693          	li	a3,0
80013d78:	00000593          	li	a1,0
80013d7c:	01471713          	slli	a4,a4,0x14
80013d80:	7ff00637          	lui	a2,0x7ff00
80013d84:	00c79793          	slli	a5,a5,0xc
80013d88:	00c77733          	and	a4,a4,a2
80013d8c:	00c7d793          	srli	a5,a5,0xc
80013d90:	01f59593          	slli	a1,a1,0x1f
80013d94:	00f767b3          	or	a5,a4,a5
80013d98:	00b7e733          	or	a4,a5,a1
80013d9c:	00068513          	mv	a0,a3
80013da0:	00070593          	mv	a1,a4
80013da4:	02010113          	addi	sp,sp,32
80013da8:	00008067          	ret
80013dac:	00000793          	li	a5,0
80013db0:	f79ff06f          	j	80013d28 <__trunctfdf2+0x2b8>
80013db4:	00000793          	li	a5,0
80013db8:	00000693          	li	a3,0
80013dbc:	f91ff06f          	j	80013d4c <__trunctfdf2+0x2dc>

80013dc0 <__clzsi2>:
80013dc0:	000107b7          	lui	a5,0x10
80013dc4:	02f57a63          	bgeu	a0,a5,80013df8 <__clzsi2+0x38>
80013dc8:	0ff00793          	li	a5,255
80013dcc:	00a7b7b3          	sltu	a5,a5,a0
80013dd0:	00379793          	slli	a5,a5,0x3
80013dd4:	80015737          	lui	a4,0x80015
80013dd8:	02000693          	li	a3,32
80013ddc:	40f686b3          	sub	a3,a3,a5
80013de0:	00f55533          	srl	a0,a0,a5
80013de4:	aac70793          	addi	a5,a4,-1364 # 80014aac <heap_end.1814+0xfffff0c8>
80013de8:	00a78533          	add	a0,a5,a0
80013dec:	00054503          	lbu	a0,0(a0)
80013df0:	40a68533          	sub	a0,a3,a0
80013df4:	00008067          	ret
80013df8:	01000737          	lui	a4,0x1000
80013dfc:	01000793          	li	a5,16
80013e00:	fce56ae3          	bltu	a0,a4,80013dd4 <__clzsi2+0x14>
80013e04:	01800793          	li	a5,24
80013e08:	fcdff06f          	j	80013dd4 <__clzsi2+0x14>

Desmontagem da secção .text.startup:

80013e0c <main>:
80013e0c:	80014537          	lui	a0,0x80014
80013e10:	e1850513          	addi	a0,a0,-488 # 80013e18 <heap_end.1814+0xffffe434>
80013e14:	a2cec06f          	j	80000040 <printf>
