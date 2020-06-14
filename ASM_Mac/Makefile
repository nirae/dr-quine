# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ndubouil <ndubouil@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/06/08 23:44:30 by ndubouil          #+#    #+#              #
#    Updated: 2020/06/14 18:47:00 by ndubouil         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Binaries and Flags

CC		=	/usr/bin/gcc
RM		=	/bin/rm
CFLAGS	=	-m64 -Wall -Wextra -Werror
NASM	= 	nasm
ASMFLAGS=	-fmacho64

#  Files

SRCS	=	Colleen.s						\
			Grace.s							\
			Sully.s

OBJ		=	$(patsubst %.s,%.o,$(SRCS))

.PHONY: all clean fclean re Colleen Grace Sully

# Rules

all:		Colleen Grace Sully
		@true

Colleen:	Makefile $(OBJ)
		@echo "Building Colleen ..."
		@$(CC) $(CFLAGS) Colleen.o -o Colleen
		@echo "I'm READY"

Grace:	Makefile $(OBJ)
		@echo "Building Grace ..."
		@$(CC) $(CFLAGS) Grace.o -o Grace
		@echo "I'm READY"

Sully:	Makefile $(OBJ)
		@echo "Building Sully ..."
		@$(CC) $(CFLAGS) Sully.o -o Sully
		@echo "I'm READY"

%.o:		%.s $(SRCS)
		@echo "Creating $@ ..."
		@$(NASM) $(ASMFLAGS) $< -o $@

clean:
		@echo "Cleaning Objs ..."
		@$(RM) -f $(OBJ) Grace_kid.s

fclean:		clean
		@echo "Cleaning binaries"
		@$(RM) -f Colleen Grace Sully Sully_*

re:			fclean all
