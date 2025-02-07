# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lmakynen <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/18 16:08:50 by lmakynen          #+#    #+#              #
#    Updated: 2019/11/06 21:56:17 by lmakynen         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
SOURCE = ft_putchar.c ft_putchar_fd.c ft_putnbr.c ft_putnbr_fd.c ft_putstr.c \
		ft_strcat.c ft_strcmp.c ft_strcpy.c ft_strdup.c ft_strlen.c ft_strncmp.c \
		ft_strncpy.c ft_strncat.c ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c \
		ft_isprint.c ft_toupper.c ft_tolower.c ft_atoi.c ft_strchr.c ft_strrchr.c \
		ft_strstr.c ft_strclr.c ft_strnstr.c ft_putstr_fd.c ft_putendl.c ft_putendl_fd.c \
		ft_strequ.c ft_strnequ.c ft_strtrim.c ft_striter.c ft_strjoin.c ft_strmap.c \
		ft_strnew.c ft_memset.c ft_bzero.c ft_strmapi.c ft_strsplit.c ft_memalloc.c \
		ft_memdel.c ft_strdel.c ft_striteri.c ft_strsub.c ft_memcpy.c ft_memccpy.c \
		ft_memmove.c ft_memchr.c ft_memcmp.c ft_strlcat.c ft_itoa.c ft_lstnew.c \
		ft_lstdelone.c ft_lstdel.c ft_lstadd.c ft_lstiter.c ft_lstmap.c ft_isupper.c \
		ft_islower.c ft_isspace.c ft_strndup.c ft_lstaddend.c ft_isblank.c
OFILES = $(subst .c,.o,$(SOURCE))
HEADER = libft.h

.PHONY: all clean fclean re

all: $(NAME)

$(NAME):
	gcc -Wall -Wextra -Werror -c -I $(HEADER) $(SOURCE)
	ar rc $(NAME) $(OFILES)
	ranlib $(NAME)

clean:
	/bin/rm -f $(OFILES)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all
