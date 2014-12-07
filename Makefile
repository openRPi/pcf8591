CC = gcc
CFLAGS = -Wall -g

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

test-input: test-input.o pcf8591.o bcm2835.o
	$(CC) $(CFLAGS) -o $@.exe $^

PHONY: clean

clean:
	rm -rf *.o  *~  *.exe
