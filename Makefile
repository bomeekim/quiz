.SUFFIXES : .c .o .h

CC = gcc

INC = $(ROOT)/include
ROOT = /home/bomikim/aa
SRCDIR1 = $(ROOT)/a
SRCDIR2 = $(ROOT)/b
SRCDIR3 = $(ROOT)/c
OUTDIR = $(ROOT)/output

VPATH = $(SRCDIR1) $(SRCDIR2) $(SRCDIR3) ..

CFLAGS = -g -O2 -Wall \
		 -I$(INC) \
		 
TARGET = test

SOURCES = $(foreach dir, .. $(SRCDIR1) $(SRCDIR2) $(SRCDIR3) $(ROOT), $(wildcard $(dir)/*.c))
SOURCES := $(notdir $(SOURCES))

OBJECTS = $(SOURCES:.c=.o)

includes = $(wildcard $(INC)/*.h)

all: $(TARGET)
	mkdir $(OUTDIR)

$(TARGET): $(OBJECTS)
	$(CC) $(OBJECTS) -o $@

%.o: %.c ${includes}
	$(CC) $(CFLAGS) $< -c -o $@
	
clean:
	-rm -f $(OBJECTS) $(TARGET)
	-rm -rf $(OUTDIR)

install:
	cp -f $(TARGET) ~/
	mv $(TARGET) $(OBJECTS) $(OUTDIR)