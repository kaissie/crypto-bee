CXX           = g++-9
CFLAGS        = -std=c++2a -Wall --pedantic-errors -O4 

PROGRAM       = main

INCLUDE   = -I./include
SRCDIR    = ./src
OBJDIR    = ./obj
SOURCES   = $(wildcard $(SRCDIR)/*.cpp)
OBJECTS   = $(addprefix $(OBJDIR)/, $(notdir $(SOURCES:.cpp=.o)))
TARGET		= ./bin/$(PROGRAM)

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CXX) $^ $(CFLAGS) -o $@

$(OBJDIR)/%.o: $(SRCDIR)/%.cpp
	$(CXX) $(CFLAGS) $(INCLUDE) -o $@ -c $<

run:
	$(TARGET)

clean:
	-rm $(OBJDIR)/*.o $(TARGET)
