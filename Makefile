# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: leoferre <leoferre@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/02 20:01:46 by leoferre          #+#    #+#              #
#    Updated: 2022/08/06 16:52:04 by leoferre         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

FLAGS = -Wall -Wextra -Werror

FT_DIR = utils/

SRCS = 	${FT_DIR}ft_hexa.c 		\
		${FT_DIR}ft_percent.c 	\
		${FT_DIR}ft_ptr_hexa.c 	\
		${FT_DIR}ft_putchar.c 	\
		${FT_DIR}ft_putnbr.c 	\
		${FT_DIR}ft_putstr.c 	\
		${FT_DIR}ft_uns_nbr.c 	\
		ft_printf.c 			\

OBJS = ${SRCS:.c=.o}

CC = gcc

RM = rm -f

all: ${NAME}
	
${NAME}:	${OBJS}
			ar -rc ${NAME} ${OBJS}

.c.o:
	${CC} ${FLAGS} -c $< -o ${<:.c=.o}

clean:
	${RM} ${OBJS}

fclean: clean
		${RM} ${NAME}

re: fclean all

.PHONY: re all clean fclean