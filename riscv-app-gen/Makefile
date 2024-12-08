
SRC ?= main.c

CC = riscv64-unknown-elf-gcc
LD = riscv64-unknown-elf-ld
OBJDUMP = riscv64-unknown-elf-objdump
READELF = riscv64-unknown-elf-readelf

CFLAGS = -march=rv32im -mabi=ilp32 -O0
LDFLAGS = -b elf32-littleriscv -T link.ld -entry=main
GCC_LDFLAGS = -T link.ld -nostartfiles -e main -O2

OBJ = $(SRC:.c=.o)
ELF = $(SRC:.c=.elf)
ASM = $(SRC:.c=.s)


# Regras
all: $(ELF) $(ASM) info

$(OBJ): $(SRC)
	$(CC) $(CFLAGS) -o $@ -c $<

$(ELF): $(OBJ)
	$(LD) $(OBJ) -o $@ $(LDFLAGS)

$(ASM): $(ELF)
	$(OBJDUMP) -d $< > $@

info:
	$(READELF) -h $(ELF)

gcc_elf: $(SRC)
	$(CC) $(CFLAGS) $(GCC_LDFLAGS) -o $(ELF) $<
	$(OBJDUMP) -d $(ELF) > $(ASM)
	$(READELF) -h $(ELF)

clean:
	rm -f *.o *.elf *.s *.bin

.PHONY: all clean info