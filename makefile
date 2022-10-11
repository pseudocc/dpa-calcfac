CC = gcc
LDFLAGS=-ladvmath

all: calcfac

%.o: %.c
	$(CC) -c $< -o $@

calcfac: %: %.o
	$(CC) $^ $(LDFLAGS) -o $@

.PHONY:
clean:
	rm -f calcfac *.o