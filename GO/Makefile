# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ndubouil <ndubouil@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/06/08 23:44:30 by ndubouil          #+#    #+#              #
#    Updated: 2020/06/11 12:11:45 by ndubouil         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Binaries and Flags

GO		=	/usr/bin/go
RM		=	/bin/rm

.PHONY: all clean fclean re Colleen

SRCS	=	Colleen.go

# Rules

all:		Colleen
		@true

Colleen:	Makefile $(SRCS)
		@echo "Building Colleen ..."
		@$(GO) build Colleen.go
		@echo "I'm READY"

fclean:		clean
		@echo "Cleaning binaries"
		@$(RM) -f Colleen

re:			fclean all

test:		all
		@./Colleen > tmp_Colleen
		@diff tmp_Colleen Colleen.go
		@rm -rf tmp_Colleen