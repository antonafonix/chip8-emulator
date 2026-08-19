CC = clang
CFLAGS = -Wall -Wextra -std=c11 -O2
LDFLAGS = -L/opt/homebrew/lib
LIBS = -lraylib -framework OpenGL -framework Cocoa -framework IOKit -framework CoreVideo

TARGET = chip8
SRC = $(wildcard src/*.c)
OBJ = $(SRC:.c=.o)

$(TARGET): $(OBJ)
	$(CC) $(OBJ) $(LDFLAGS) -o $@ $(LIBS)

%.o: %.c
	$(CC) $(CFLAGS) -I/opt/homebrew/include -c $< -o $@

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(OBJ) $(TARGET)

rebuild: clean all

all: $(TARGET)

.PHONY: all run clean rebuild
