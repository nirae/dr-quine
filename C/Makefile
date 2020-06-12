# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ndubouil <ndubouil@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/06/08 23:44:30 by ndubouil          #+#    #+#              #
#    Updated: 2020/06/12 20:06:07 by ndubouil         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Binaries and Flags

CC		=	/usr/bin/gcc
RM		=	/bin/rm
CFLAGS	=	-Wall -Wextra -Werror

#  Files

SRCS	=	Colleen.c						\
			Grace.c							\
			Sully.c

OBJ		=	$(patsubst %.c,%.o,$(SRCS))

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
		@$(CC) $(CFLAGS) -c $< -o $@

clean:
		@echo "Cleaning Objs ..."
		@$(RM) -f $(OBJ)

fclean:		clean
		@echo "Cleaning binaries"
		@$(RM) -f Colleen Grace Sully Sully_*

re:			fclean all