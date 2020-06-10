# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ndubouil <ndubouil@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/06/08 23:44:30 by ndubouil          #+#    #+#              #
#    Updated: 2020/06/10 18:25:07 by ndubouil         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Binaries and Flags

CC		=	/usr/bin/gcc
RM		=	/bin/rm
CFLAGS	=	-Wall -Wextra -Werror

#  Files

SRCS	=	Colleen.c

OBJ		=	$(patsubst %.c,%.o,$(SRCS))

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
		@$(CC) $(CFLAGS) -c $< -o $@

clean:
		@echo "Cleaning Objs ..."
		@$(RM) -f $(OBJ)

fclean:		clean
		@echo "Cleaning binaries"
		@$(RM) -f Colleen

re:			fclean all