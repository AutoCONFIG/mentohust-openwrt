CFLAGS = -Wall -O3
INC_DIR= $(STAGING_DIR)/usr/include
LINK_DIR= $(STAGING_DIR)/usr/lib
LIBS= -lpcap

OBJ  =dlfunc.o md5.o mentohust.o mycheck.o myconfig.o myfunc.o myini.o mystate.o
.PHONY: all

all: mentohust

mentohust: $(OBJ)
	$(CC) $(CFLAGS) -o $@ $(OBJ) $(LIBS) -I$(INC_DIR) -L$(LINK_DIR) $(LDFLAGS)

dlfunc.o : dlfunc.c
	$(CC) $(CFLAGS) -c $< -I$(INC_DIR) 

md5.o : md5.c
	$(CC) $(CFLAGS) -c $< -I$(INC_DIR)

mentohust.o : mentohust.c
	$(CC) $(CFLAGS) -c $< -I$(INC_DIR)

mycheck.o : mycheck.c
	$(CC) $(CFLAGS) -c $< -I$(INC_DIR)

myconfig.o : myconfig.c
	$(CC) $(CFLAGS) -c $< -I$(INC_DIR)

myfunc.o : myfunc.c
	$(CC) $(CFLAGS) -c $< -I$(INC_DIR)

myini.o : myini.c
	$(CC) $(CFLAGS) -c $< -I$(INC_DIR)	

mystate.o : mystate.c
	$(CC) $(CFLAGS) -c $< -I$(INC_DIR)

clean :
	rm -v $(OBJ) mentohust