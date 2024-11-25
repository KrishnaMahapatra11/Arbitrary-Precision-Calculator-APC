# Paths and flags
LFLAG := -L ../Library -lfun -lbitwise_lib -lslist -lmenu -lapc -ldlist -lastack -linfix -lstackarr -lqueue -lbsearch -lsort -lrbtree -lbstree -lhlist -lindexing
CFLAG := -I ../Include
SRCS := $(wildcard *.c)
TARGETS := $(SRCS:.c=.out) # Derive .out files from source .c files

# Primary target for creating all executables
all: ${TARGETS}

# Pattern rule to compile each .c file into its respective .out file
%.out: %.c
	gcc $^ ${LFLAG} ${CFLAG} -o $@

# Clean rule for removing generated executables
clean:
	rm -f ${TARGETS} ${TARGET}

# Shared library target
TARGET := ../Library/libapc.so

# Rule for creating the shared library
${TARGET}: ${SRCS}
	gcc -fPIC -shared ${CFLAG} $^ -o $@

