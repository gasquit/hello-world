CC=g++
CFLAGS=-c -Wall
SOURCES=$(wildcard *.cpp)
#SOURCES= *.cpp
OBJ=$(SOURCES:.cpp=.o)

EXECUTABLE1=hello1

all:  $(EXECUTABLE1) 
	echo "Current sources is " $< 

$(EXECUTABLE1):$(OBJ)
	$(CC) $(OBJ) -o $@
	echo "current obj is " $(OBJ)


%.o:%.cpp
	$(CC) $(CFLAGS) $^ -o $@

.PHONY:clean

clean:
	rm -f *.o
	echo Clean done


