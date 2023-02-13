CFLAGS = -Wall -O3
INC_DIR= $(STAGING_DIR)/usr/include
LINK_DIR= $(STAGING_DIR)/usr/lib
LIBS= -lpcap

OBJ  = byte_order.o checkV4.o dlfunc.o md5.o mentohust.o mycheck.o myconfig.o myfunc.o myini.o mystate.o rjmd5.o rjripemd128.o rjsha1.o rjtiger_sbox.o rjtiger.o rjwhirlpool_sbox.o rjwhirlpool.o

.PHONY: all

all: mentohust

mentohust: $(OBJ)
	$(CC) $(CFLAGS) -o $@ $(OBJ) $(LIBS) -I$(INC_DIR) -L$(LINK_DIR) $(LDFLAGS)

byte_order.o : byte_order.c
	$(CC) $(CFLAGS) -c $< -I$(INC_DIR)

checkV4.o : checkV4.c
	$(CC) $(CFLAGS) -c $< -I$(INC_DIR)

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

rjmd5.o : rjmd5.c
	$(CC) $(CFLAGS) -c $< -I$(INC_DIR)

rjripemd128.o : rjripemd128.c
	$(CC) $(CFLAGS) -c $< -I$(INC_DIR)

rjsha1.o : rjsha1.c
	$(CC) $(CFLAGS) -c $< -I$(INC_DIR)

rjtiger_sbox.o : rjtiger_sbox.c
	$(CC) $(CFLAGS) -c $< -I$(INC_DIR)

rjtiger.o : rjtiger.c
	$(CC) $(CFLAGS) -c $< -I$(INC_DIR)

rjwhirlpool_sbox.o : rjwhirlpool_sbox.c
	$(CC) $(CFLAGS) -c $< -I$(INC_DIR)

rjwhirlpool.o : rjwhirlpool.c
	$(CC) $(CFLAGS) -c $< -I$(INC_DIR)

clean :
	rm -v $(OBJ) mentohust
