
main.elf:     formato de ficheiro elf32-littleriscv


Desmontagem da secção .text:

80000000 <square_root>:
80000000:	02054663          	bltz	a0,8000002c <square_root+0x2c>
80000004:	00000793          	li	a5,0
80000008:	00100713          	li	a4,1
8000000c:	00171693          	slli	a3,a4,0x1
80000010:	00f687b3          	add	a5,a3,a5
80000014:	fff78793          	addi	a5,a5,-1
80000018:	00170713          	addi	a4,a4,1
8000001c:	40f506b3          	sub	a3,a0,a5
80000020:	fe06d6e3          	bgez	a3,8000000c <square_root+0xc>
80000024:	ffe70513          	addi	a0,a4,-2
80000028:	00008067          	ret
8000002c:	00100713          	li	a4,1
80000030:	ff5ff06f          	j	80000024 <square_root+0x24>

80000034 <main>:
80000034:	ff010113          	addi	sp,sp,-16
80000038:	00112623          	sw	ra,12(sp)
8000003c:	06400513          	li	a0,100
80000040:	fc1ff0ef          	jal	ra,80000000 <square_root>
80000044:	00c12083          	lw	ra,12(sp)
80000048:	01010113          	addi	sp,sp,16
8000004c:	00008067          	ret
