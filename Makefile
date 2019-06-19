CFLAGS := -std=c99 -g -Wall -Werror -pedantic
LDFLAGS := -lX11 -lm

fixslack: fixslack.c
	gcc -o $@ $< $(CFLAGS) $(LDFLAGS)

.PHONY: clean
clean:
	rm -fr fixslack

.PHONY: run
run: fixslack
	./fixslack
