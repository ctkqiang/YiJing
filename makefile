CXX = g++
CXXFLAGS = -std=c++11 -Wall
LDFLAGS = -lncurses
TARGET = bin/main
SRCS = main.cpp

all: $(TARGET)

$(TARGET): $(SRCS)
	@mkdir -p bin
	$(CXX) $(CXXFLAGS) $(SRCS) -o $(TARGET) $(LDFLAGS)

clean:
	rm -rf bin

run: $(TARGET)
	./$(TARGET)

build:
	- mkdir -p bin && g++ -std=c++11 main.cpp -o bin/main