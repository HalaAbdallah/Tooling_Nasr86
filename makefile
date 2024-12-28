FrontEnd: main.c
	gcc -E main.c -o main.i

MiddleEnd: main.c
	gcc -S main.c -o main.s

BackEnd: main.c
	gcc -c main.c -o main.o

Linker: main.c
	gcc -o main main.c

Build: main.c
	gcc -E main.c -o main.i
	gcc -S main.c -o main.s
	gcc -c main.c -o main.o
	gcc -o main main.c

Run: main.c
	.\main.exe
	
Build_Run: main.c
	make Build
	make Run