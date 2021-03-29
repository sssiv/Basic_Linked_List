CXX = g++
CXXFLAGS = -O2 -std=c++17

#-------------------------------------------------------------------------------

SOURCES_CPP = main.cpp node.cpp list.cpp iterator.cpp
OBJECTS = main.o node.o list.o iterator.o

#-------------------------------------------------------------------------------

DESTDIR = .
TARGET = m

#-------------------------------------------------------------------------------

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

#-------------------------------------------------------------------------------

$(TARGET): $(OBJECTS)
	$(CXX) $(OBJECTS) -o $@

#-------------------------------------------------------------------------------

all: $(TARGET)

install: all
	-mv $(DESTDIR)/$(TARGET) $(DESTDIR)/__$(TARGET)
	-mv $(TARGET) $(DESTDIR)/$(TARGET)

clean:
	-rm -f $(OBJECTS) $(TARGET)

.PHONY: all install clean

#-------------------------------------------------------------------------------
