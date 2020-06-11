# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ndubouil <ndubouil@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/06/08 23:44:30 by ndubouil          #+#    #+#              #
#    Updated: 2020/06/11 22:22:48 by ndubouil         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Binaries and Flags

CC		=	/usr/bin/gcc
RM		=	/bin/rm
CFLAGS	=	-m64 -Wall -Wextra -Werror
NASM	= 	/usr/bin/nasm
ASMFLAGS=	-felf64

#  Files

SRCS	=	Colleen.s						\
			Grace.s

OBJ		=	$(patsubst %.s,%.o,$(SRCS))

.PHONY: all clean fclean re Colleen Grace

# Rules

all:		Colleen Grace
		@true

Colleen:	Makefile $(OBJ)
		@echo "Building Colleen ..."
		@$(CC) $(CFLAGS) Colleen.o -o Colleen
		@echo "I'm READY"

Grace:	Makefile $(OBJ)
		@echo "Building Grace ..."
		@$(CC) $(CFLAGS) Grace.o -o Grace
		@echo "I'm READY"

%.o:		%.s $(SRCS)
		@echo "Creating $@ ..."
		@$(NASM) $(ASMFLAGS) $< -o $@

clean:
		@echo "Cleaning Objs ..."
		@$(RM) -f $(OBJ)

fclean:		clean
		@echo "Cleaning binaries"
		@$(RM) -f Colleen Grace

re:			fclean all