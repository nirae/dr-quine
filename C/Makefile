# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ndubouil <ndubouil@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/06/08 23:44:30 by ndubouil          #+#    #+#              #
#    Updated: 2020/06/11 12:51:09 by ndubouil         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Binaries and Flags

CC		=	/usr/bin/gcc
RM		=	/bin/rm
CFLAGS	=	-Wall -Wextra -Werror

#  Files

SRCS	=	Colleen.c						\
			Grace.c

OBJ		=	$(patsubst %.c,%.o,$(SRCS))

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
		@$(CC) $(CFLAGS) -c $< -o $@

clean:
		@echo "Cleaning Objs ..."
		@$(RM) -f $(OBJ)

fclean:		clean
		@echo "Cleaning binaries"
		@$(RM) -f Colleen Grace

re:			fclean all

test:		all
		@./Colleen > tmp_Colleen
		@diff tmp_Colleen Colleen.c
		@rm -rf tmp_Colleen