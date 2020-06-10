# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ndubouil <ndubouil@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/06/08 23:44:30 by ndubouil          #+#    #+#              #
#    Updated: 2020/06/10 18:24:42 by ndubouil         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Binaries and Flags

CC		=	/usr/bin/gcc
RM		=	/bin/rm
CFLAGS	=	-m64 -Wall -Wextra -Werror
NASM	= 	/usr/bin/nasm
ASMFLAGS=	-felf64

#  Files

SRCS	=	Colleen.s

OBJ		=	$(patsubst %.s,%.o,$(SRCS))

.PHONY: all clean fclean re Colleen

# Rules

all:		Colleen
		@true

Colleen:	Makefile $(OBJ)
		@echo "Building Colleen ..."
		@$(CC) $(CFLAGS) $(OBJ) -o Colleen
		@echo "I'm READY"

%.o:		%.s $(SRCS)
		@echo "Creating $@ ..."
		@$(NASM) $(ASMFLAGS) $< -o $@

clean:
		@echo "Cleaning Objs ..."
		@$(RM) -f $(OBJ)

fclean:		clean
		@echo "Cleaning binaries"
		@$(RM) -f Colleen

re:			fclean all