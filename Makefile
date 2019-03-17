##
## EPITECH PROJECT, 2019
## ASM_minilibc_2018
## File description:
## Makefile
##

NAME		=	libasm.so

SRCS		=		src/memcpy.asm		\
						src/memset.asm		\
						src/rindex.asm		\
						src/strlen.asm		\
						src/strcmp.asm		\
						src/memmove.asm		\
						src/strchr.asm		\
						src/strncmp.asm		\
						src/strstr.asm		

ASMFLAGS	=	-f elf64

LDFLAGS		=	-shared -fPIC -fno-builtin

ASM		=		nasm

LD		=	ld

RM		=	rm -f

OBJS		=	$(SRCS:.asm=.o)

%.o: %.asm
			$(ASM) -o $@ $< $(ASMFLAGS)

all:		$(NAME)

$(NAME):	$(OBJS)
			$(LD) $(LDFLAGS) -o $(NAME) $(OBJS)

clean:
		$(RM) $(OBJS)

fclean:		clean
		$(RM) $(NAME)

re: fclean all
