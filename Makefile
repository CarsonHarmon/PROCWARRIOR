# Makefile for lab 6

CC=gcc

CFLAGS= -lkvm

all: arena arenas arenar fork malloc

arena: 
	$(CC) $(CFLAGS) src/arena.c -o arena

arenas: 
	$(CC) $(CFLAGS) src/arena_s.c -o arena_s

arenar: 
	$(CC) $(CFLAGS) src/arena_r.c -o arena_r

fork: 
	$(CC) $(CFLAGS) src/fork.c -o fork

wew:
	clang -lkvm -g -o wew test.c

proto:
	clang -lkvm -g -o proto testing.c
weeb:
	clang -g -o weeb testing2.c -lkvm -lrt
attack:
	clang -g -o attack new.c -lkvm -lrt
malloc:
	clang -g -o malloc malloc.c -lkvm -lrt
clean:
	rm -f arena arena_s arena_r fork malloc
