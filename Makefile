CC = gcc
NAME = libft.a
FLAGS = -Wall -Wextra -Werror -fsanitize=address -g
SRCS = 
OBJS = 

INC = -I .

all: $(NAME)

$(NAME): libft.h
	$(CC) $(FLAGS) -c $(SRCS) $(INC)
	ar -cr $(NAME) $(OBJS)
	ranlib $(NAME)

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re:
	@$(MAKE) fclean
	@$(MAKE) all

.PHONY: all clean fclean re
