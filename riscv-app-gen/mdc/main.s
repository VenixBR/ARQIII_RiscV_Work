
main.elf:     formato de ficheiro elf32-littleriscv


Desmontagem da secção .text.startup:

80000000 <main>:
80000000:	075bd7b7          	lui	a5,0x75bd
80000004:	3ade7737          	lui	a4,0x3ade7
80000008:	d1578793          	addi	a5,a5,-747 # 75bcd15 <main-0x78a432eb>
8000000c:	8b170713          	addi	a4,a4,-1871 # 3ade68b1 <main-0x4521974f>
80000010:	00078693          	mv	a3,a5
80000014:	02f767b3          	rem	a5,a4,a5
80000018:	00068713          	mv	a4,a3
8000001c:	fe079ae3          	bnez	a5,80000010 <main+0x10>
80000020:	00000513          	li	a0,0
80000024:	00008067          	ret
