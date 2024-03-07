CFLAGS = -Wall -O3
CFLAGS+= $(shell pkg-config --cflags libpcap)
LIBPCAP_LIBS:= $(shell pkg-config --libs libpcap)

OBJ  = byte_order.o checkV4.o dlfunc.o md5.o mentohust.o mycheck.o myconfig.o myfunc.o myini.o mystate.o rjmd5.o rjripemd128.o rjsha1.o rjtiger_sbox.o rjtiger.o rjwhirlpool_sbox.o rjwhirlpool.o
.PHONY: all

all: mentohust

mentohust: $(OBJ)
	$(CC) $(CFLAGS) -o $@ $(OBJ) $(LIBPCAP_LIBS) $(LDFLAGS)

byte_order.o : byte_order.c
	$(CC) $(CFLAGS) -c $<

checkV4.o : checkV4.c
	$(CC) $(CFLAGS) -c $<

dlfunc.o : dlfunc.c
	$(CC) $(CFLAGS) -c $< 

md5.o : md5.c
	$(CC) $(CFLAGS) -c $<

mentohust.o : mentohust.c
	$(CC) $(CFLAGS) -c $<

mycheck.o : mycheck.c
	$(CC) $(CFLAGS) -c $<

myconfig.o : myconfig.c
	$(CC) $(CFLAGS) -c $<

myfunc.o : myfunc.c
	$(CC) $(CFLAGS) -c $<

myini.o : myini.c
	$(CC) $(CFLAGS) -c $<	

mystate.o : mystate.c
	$(CC) $(CFLAGS) -c $<

rjmd5.o : rjmd5.c
	$(CC) $(CFLAGS) -c $<

rjripemd128.o : rjripemd128.c
	$(CC) $(CFLAGS) -c $<

rjsha1.o : rjsha1.c
	$(CC) $(CFLAGS) -c $<

rjtiger_sbox.o : rjtiger_sbox.c
	$(CC) $(CFLAGS) -c $<

rjtiger.o : rjtiger.c
	$(CC) $(CFLAGS) -c $<

rjwhirlpool_sbox.o : rjwhirlpool_sbox.c
	$(CC) $(CFLAGS) -c $<

rjwhirlpool.o : rjwhirlpool.c
	$(CC) $(CFLAGS) -c $<

clean :
	rm -v $(OBJ) mentohust