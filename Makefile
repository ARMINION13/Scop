NAME = scop

all : $(NAME)
	
CXX = g++ #for linux
CPPFLAGS = -Wall -Wextra -Werror

TRAP = -Wshadow -Wno-shadow

SRCS = main.cpp

OBJS = main.o

$(OBJS) : $(SRCS)

$(NAME) : $(OBJS)
	$(CXX) $(CPPFLAGS) $(OBJS) -o $@


# - - - - - - - - - - - - - - - - - #
# - - - - - - T E S T - - - - - - - #
# - - - - - - - - - - - - - - - - - #

test: all
	@echo "                                   "
	@echo "# - - - - - - - - - - - - - - - - - #"
	@echo "# - - - - - - T E S T - - - - - - - #"
	@echo "# - - - - - - - - - - - - - - - - - #"
	@echo "                                   "
	@./$(NAME)

# - - - - - - - - - - - - - - - - - #
# - - - - C L E A N I N G - - - - - #
# - - - - - - - - - - - - - - - - - #


make fclean:
	@rm -f $(NAME)
	@rm -f $(OBJS)

re:	fclean all

rtest: fclean test