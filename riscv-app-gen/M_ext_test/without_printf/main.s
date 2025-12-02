
main.elf:     formato de ficheiro elf32-littleriscv


Desmontagem da secção .text:

80000000 <calc_mul>:
80000000:	02b50533          	mul	a0,a0,a1
80000004:	00008067          	ret

80000008 <calc_mulh>:
80000008:	02b51533          	mulh	a0,a0,a1
8000000c:	00008067          	ret

80000010 <calc_mulhu>:
80000010:	02b53533          	mulhu	a0,a0,a1
80000014:	00008067          	ret

80000018 <calc_mulhsu>:
80000018:	02b52533          	mulhsu	a0,a0,a1
8000001c:	00008067          	ret

80000020 <calc_div>:
80000020:	02b54533          	div	a0,a0,a1
80000024:	00008067          	ret

80000028 <calc_divu>:
80000028:	02b55533          	divu	a0,a0,a1
8000002c:	00008067          	ret

80000030 <calc_rem>:
80000030:	02b56533          	rem	a0,a0,a1
80000034:	00008067          	ret

80000038 <calc_remu>:
80000038:	02b57533          	remu	a0,a0,a1
8000003c:	00008067          	ret

Desmontagem da secção .text.startup:

80000040 <main>:
80000040:	fd010113          	addi	sp,sp,-48
80000044:	02812423          	sw	s0,40(sp)
80000048:	03212023          	sw	s2,32(sp)
8000004c:	00bc6437          	lui	s0,0xbc6
80000050:	fac68937          	lui	s2,0xfac68
80000054:	04f90593          	addi	a1,s2,79 # fac6804f <_end+0x7ac6704f>
80000058:	14e40513          	addi	a0,s0,334 # bc614e <calc_mul-0x7f439eb2>
8000005c:	02112623          	sw	ra,44(sp)
80000060:	02912223          	sw	s1,36(sp)
80000064:	f9dff0ef          	jal	ra,80000000 <calc_mul>
80000068:	00050793          	mv	a5,a0
8000006c:	04f90593          	addi	a1,s2,79
80000070:	14e40513          	addi	a0,s0,334
80000074:	053984b7          	lui	s1,0x5398
80000078:	00f12023          	sw	a5,0(sp)
8000007c:	f8dff0ef          	jal	ra,80000008 <calc_mulh>
80000080:	00050793          	mv	a5,a0
80000084:	fb148593          	addi	a1,s1,-79 # 5397fb1 <calc_mul-0x7ac6804f>
80000088:	14e40513          	addi	a0,s0,334
8000008c:	00f12223          	sw	a5,4(sp)
80000090:	f81ff0ef          	jal	ra,80000010 <calc_mulhu>
80000094:	00050793          	mv	a5,a0
80000098:	fb148593          	addi	a1,s1,-79
8000009c:	14e40513          	addi	a0,s0,334
800000a0:	00f12423          	sw	a5,8(sp)
800000a4:	f75ff0ef          	jal	ra,80000018 <calc_mulhsu>
800000a8:	00050793          	mv	a5,a0
800000ac:	14e40593          	addi	a1,s0,334
800000b0:	04f90513          	addi	a0,s2,79
800000b4:	00f12623          	sw	a5,12(sp)
800000b8:	f69ff0ef          	jal	ra,80000020 <calc_div>
800000bc:	00050793          	mv	a5,a0
800000c0:	14e40593          	addi	a1,s0,334
800000c4:	fb148513          	addi	a0,s1,-79
800000c8:	00f12823          	sw	a5,16(sp)
800000cc:	f5dff0ef          	jal	ra,80000028 <calc_divu>
800000d0:	00050793          	mv	a5,a0
800000d4:	14e40593          	addi	a1,s0,334
800000d8:	04f90513          	addi	a0,s2,79
800000dc:	00f12a23          	sw	a5,20(sp)
800000e0:	f51ff0ef          	jal	ra,80000030 <calc_rem>
800000e4:	00050793          	mv	a5,a0
800000e8:	14e40593          	addi	a1,s0,334
800000ec:	fb148513          	addi	a0,s1,-79
800000f0:	00f12c23          	sw	a5,24(sp)
800000f4:	f45ff0ef          	jal	ra,80000038 <calc_remu>
800000f8:	02c12083          	lw	ra,44(sp)
800000fc:	02812403          	lw	s0,40(sp)
80000100:	00a12e23          	sw	a0,28(sp)
80000104:	02412483          	lw	s1,36(sp)
80000108:	02012903          	lw	s2,32(sp)
8000010c:	00000513          	li	a0,0
80000110:	03010113          	addi	sp,sp,48
80000114:	00008067          	ret
