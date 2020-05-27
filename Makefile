
all:
	gcc -o rfprocessor -lmosquitto rfprocessor.c
clean:
	rm rfprocessor

