
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
80000020:	43a545b7          	lui	a1,0x43a54
80000024:	6d73e537          	lui	a0,0x6d73e
80000028:	fe010113          	addi	sp,sp,-32
8000002c:	f8258593          	addi	a1,a1,-126 # 43a53f82 <mdc-0x3c5ac07e>
80000030:	55f50513          	addi	a0,a0,1375 # 6d73e55f <mdc-0x128c1aa1>
80000034:	00112e23          	sw	ra,28(sp)
80000038:	fc9ff0ef          	jal	ra,80000000 <mdc>
8000003c:	01c12083          	lw	ra,28(sp)
80000040:	00a12623          	sw	a0,12(sp)
80000044:	00c12503          	lw	a0,12(sp)
80000048:	02010113          	addi	sp,sp,32
8000004c:	00008067          	ret
