main.exe: libmy.lib
	gcc main.c -L. -lmy -o main.exe
main.o: main.c mymath.h Show.h
	gcc -c main.c
mymath.o: mymath.c mymath.h
	gcc -c mymath.c
Show.o: Show.c Show.h
	gcc -c Show.c
libmy.lib: mymath.o Show.o
	ar rc libmy.lib Show.o mymath.o
clear:
	del main.o mymath.o Show.o
