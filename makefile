BIN = a.out
SRC = main.cpp
CC = clang++

all: $(BIN)
	./do

$(BIN): $(SRC)
	python $(CPLUS_INCLUDE_PATH) --origname $(SRC) $(SRC)
	combined.cpp -std=c++2b -Wall -Wextra $(SRC) -o $(BIN)

precision: $(BIN)
	./precision
