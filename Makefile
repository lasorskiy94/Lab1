main.exe: main.o mymath.o Show.o
	gcc main.o mymath.o Show.o -o main.exe
main.o: main.c mymath.h Show.h
	gcc -c main.c
mymath.o: mymath.c mymath.h
	gcc -c mymath.c
Show.o: Show.c Show.h
	gcc -c Show.c
libmy.lib: mymath.o Show.o
	ar rc libmylib.lib Show.o mymath.o
clear:
	del main.o mymath.o Show.o