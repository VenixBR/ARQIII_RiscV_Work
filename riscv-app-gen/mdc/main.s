
main.elf:     formato de ficheiro elf32-littleriscv


Desmontagem da secção .text:

80000000 <mdc>:
80000000:	00050793          	mv	a5,a0
80000004:	00058c63          	beqz	a1,8000001c <mdc+0x1c>
80000008:	00058513          	mv	a0,a1
8000000c:	02b7f5b3          	remu	a1,a5,a1
80000010:	00050793          	mv	a5,a0
80000014:	fe059ae3          	bnez	a1,80000008 <mdc+0x8>
80000018:	00008067          	ret
8000001c:	00008067          	ret

Desmontagem da secção .text.startup:

80000020 <main>:
80000020:	001535b7          	lui	a1,0x153
80000024:	3ade7537          	lui	a0,0x3ade7
80000028:	fe010113          	addi	sp,sp,-32
8000002c:	18658593          	addi	a1,a1,390 # 153186 <mdc-0x7feace7a>
80000030:	8b150513          	addi	a0,a0,-1871 # 3ade68b1 <mdc-0x4521974f>
80000034:	00112e23          	sw	ra,28(sp)
80000038:	fc9ff0ef          	jal	ra,80000000 <mdc>
8000003c:	01c12083          	lw	ra,28(sp)
80000040:	00a12623          	sw	a0,12(sp)
80000044:	00c12503          	lw	a0,12(sp)
80000048:	02010113          	addi	sp,sp,32
8000004c:	00008067          	ret
