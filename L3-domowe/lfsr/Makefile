all: shift_lfsr.h test run

shift_lfsr.h : 
		lfsr-generator --length=16 --taps=16,15,14,5 --shift-amounts=1 --shift-left > shift_lfsr.h

test : main.c
	gcc main.c -o test

run : 
	./test
