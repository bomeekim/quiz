CC = gcc

INC = $(ROOT)/include
ROOT = /home/bomikim/aa
SRCDIR1 = $(ROOT)/a
SRCDIR2 = $(ROOT)/b
SRCDIR3 = $(ROOT)/c
OUTDIR = $(ROOT)/output

# make 가 검색할 디렉토리 리스트
VPATH = $(SRCDIR1) $(SRCDIR2) $(SRCDIR3) ..

CFLAGS = -g -O2 -Wall \
		 -I$(INC) \
		 
TARGET = test

# 모든 디렉토리에서 c파일을 골라내고 c파일 리스트에서 경로명을 제거.
SOURCES = $(foreach dir, .. $(SRCDIR1) $(SRCDIR2) $(SRCDIR3) $(ROOT), $(wildcard $(dir)/*.c)) 
SOURCES := $(notdir $(SOURCES)) 

# 각 c파일에 해당하는 오브젝트 파일 리스트 생성.
OBJECTS = $(SOURCES:.c=.o)

# include 디렉토리에서 헤더파일을 찾음.
includes = $(wildcard $(INC)/*.h)


# Build rule
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