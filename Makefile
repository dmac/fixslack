CFLAGS := -std=c99 -g -Wall -Werror -pedantic
LDFLAGS := -lX11 -lm

fixslackicon: fixslackicon.c
	gcc -o $@ $< $(CFLAGS) $(LDFLAGS)

.PHONY: clean
clean:
	rm -fr fixslackicon

.PHONY: run
run: fixslackicon
	./fixslackicon
