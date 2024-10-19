
CC = gcc

CFLAGS = -g -Wall # -Wextra -pedantic -Werror # overkill

TMP_BIN_DIR_ROOT = /tmp/bin

TMP_BIN_DIR = $(TMP_BIN_DIR_ROOT)/$(shell basename $(CURDIR))

.PHONY: default clean clean-curdir

default:

$(TMP_BIN_DIR):
	mkdir -p $@

%.exe: %.c
	$(CC) $(CFLAGS) $< -o $@

%.run: %.c | $(TMP_BIN_DIR)
	@$(CC) $(CFLAGS) $< -o $(TMP_BIN_DIR)/a.exe
	@echo
	@echo
	@$(TMP_BIN_DIR)/a.exe

clean-curdir: $(shell find . -name "*.exe" -type f)
	rm -rf $^

clean: clean-curdir
	rm -rf $(TMP_BIN_DIR)


