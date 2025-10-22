
SRC ?= main.c

CC = /opt/riscv/bin/riscv32-unknown-elf-gcc
OBJDUMP = /opt/riscv/bin/riscv32-unknown-elf-objdump
READELF = /opt/riscv/bin/riscv32-unknown-elf-readelf
OBJCOPY = /opt/riscv/bin/riscv32-unknown-elf-objcopy

CFLAGS = -march=rv32im -mabi=ilp32
GCC_LDFLAGS = -T link.ld -nostartfiles -e main -O2

OBJ = $(SRC:.c=.o)
ELF = $(SRC:.c=.elf)
ASM = $(SRC:.c=.s)
BIN = $(SRC:.c=.bin)

# Regras
all: gcc_elf

info: $(ELF)
	$(READELF) -h $(ELF)

gcc_elf: $(SRC)
	$(CC) $(CFLAGS) $(GCC_LDFLAGS) -o $(ELF) $<
	$(OBJCOPY) -O binary $(ELF) $(BIN)
	$(OBJDUMP) -d $(ELF) > $(ASM)
	$(READELF) -h $(ELF)

clean:
	rm -f *.o *.elf *.s *.bin

.PHONY: all clean info