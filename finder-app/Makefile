# Default target: Build the "writer" application
.DEFAULT_GOAL := writer

# Compiler and flags
CC := gcc
CFLAGS := -Wall -Wextra -Werror
LDFLAGS := -lsyslog

CROSS_COMPILE_PATH := /opt/toolchain/gcc-arm-10.3-2021.07-x86_64-aarch64-none-linux-gnu/bin/
# Cross-compilation settings
ifeq ($(CROSS_COMPILE),aarch64-none-linux-gnu)
	CC := $(CROSS_COMPILE_PATH)/$(CROSS_COMPILE)-gcc
endif

# Source files
SRC := writer.c

# Object files
OBJ := $(SRC:.c=.o)

# Targets
writer: $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o $@  -I $(LDFLAGS)
	chmod +x $@

clean:
	rm -f writer $(OBJ)
