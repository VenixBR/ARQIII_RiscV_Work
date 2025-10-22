
main.elf:     formato de ficheiro elf32-littleriscv


Desmontagem da secção .text:

80000000 <square_root>:
80000000:	02054863          	bltz	a0,80000030 <square_root+0x30>
80000004:	00000793          	li	a5,0
80000008:	00100713          	li	a4,1
8000000c:	00171693          	slli	a3,a4,0x1
80000010:	00f687b3          	add	a5,a3,a5
80000014:	fff78793          	addi	a5,a5,-1
80000018:	40f506b3          	sub	a3,a0,a5
8000001c:	00070613          	mv	a2,a4
80000020:	00170713          	addi	a4,a4,1
80000024:	fe06d4e3          	bgez	a3,8000000c <square_root+0xc>
80000028:	fff60513          	addi	a0,a2,-1
8000002c:	00008067          	ret
80000030:	fff00513          	li	a0,-1
80000034:	00008067          	ret

Desmontagem da secção .text.startup:

80000038 <main>:
80000038:	00000513          	li	a0,0
8000003c:	00008067          	ret
