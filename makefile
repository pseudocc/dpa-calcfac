PREFIX=/usr/local
CC = gcc
LDFLAGS=-ladvmath

DESTDIR=$(PREFIX)/bin

all: calcfac

%.o: %.c
	$(CC) -c $< -o $@

calcfac: %: %.o
	$(CC) $^ $(LDFLAGS) -o $@

install: calcfac
	install -d $(DESTDIR)
	install $< $(DESTDIR)/calcfac

clean:
	rm -f calcfac *.o

.PHONY: clean install
