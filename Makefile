# Author: Guilherme Henrique Rojas V. de Lima
# Email: guihen@linux.ime.usp.br

# -- MAKEFILE -- #

# -- Variaveis de Configuracao -- #
CC = gcc
#CFLAGS = -g -I. -Wall -pedantic -ansi
CFLAGS = -Wall -ansi -pedantic -O2 
LDFLAGS = -L.

RM = /bin/rm -f

# -- Geracao do executavel -- #
main: LIST.o QUEUE.o STACK.o main.o
	$(CC) $(CFLAGS) -o main main.o LIST.o QUEUE.o STACK.o

main.o: main.c
	$(CC) $(CFLAGS) -c main.c 

QUEUE.o: LIST.o
	$(CC) $(CFLAGS) -c QUEUE.c

STACK.o: LIST.o
	$(CC) $(CFLAGS) -c STACK.c

LIST.o:
	$(CC) $(CFLAGS) -c LIST.c

# -- Clean -- #
clean:
	$(RM) main *.o
