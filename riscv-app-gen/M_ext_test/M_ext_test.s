
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
80000040:	d91d07b7          	lui	a5,0xd91d0
80000044:	fe010113          	addi	sp,sp,-32
80000048:	71278793          	addi	a5,a5,1810 # d91d0712 <_end+0x591cf712>
8000004c:	00f12023          	sw	a5,0(sp)
80000050:	fffc27b7          	lui	a5,0xfffc2
80000054:	7c978793          	addi	a5,a5,1993 # fffc27c9 <_end+0x7ffc17c9>
80000058:	00f12223          	sw	a5,4(sp)
8000005c:	0003e7b7          	lui	a5,0x3e
80000060:	83678793          	addi	a5,a5,-1994 # 3d836 <calc_mul-0x7ffc27ca>
80000064:	00f12423          	sw	a5,8(sp)
80000068:	00f12623          	sw	a5,12(sp)
8000006c:	ff900793          	li	a5,-7
80000070:	00f12823          	sw	a5,16(sp)
80000074:	00700793          	li	a5,7
80000078:	00f12a23          	sw	a5,20(sp)
8000007c:	ffed37b7          	lui	a5,0xffed3
80000080:	97178793          	addi	a5,a5,-1679 # ffed2971 <_end+0x7fed1971>
80000084:	00f12c23          	sw	a5,24(sp)
80000088:	0012d7b7          	lui	a5,0x12d
8000008c:	68f78793          	addi	a5,a5,1679 # 12d68f <calc_mul-0x7fed2971>
80000090:	00f12e23          	sw	a5,28(sp)
80000094:	00000513          	li	a0,0
80000098:	02010113          	addi	sp,sp,32
8000009c:	00008067          	ret
