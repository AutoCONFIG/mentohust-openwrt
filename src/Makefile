CFLAGS = -Wall -O3
CFLAGS+= $(shell pkg-config --cflags libpcap)
LIBPCAP_LIBS:= $(shell pkg-config --libs libpcap)

OBJ  =dlfunc.o md5.o mentohust.o mycheck.o myconfig.o myfunc.o myini.o mystate.o strnormalize.o
.PHONY: all

all: mentohust

mentohust: $(OBJ)
	$(CC) $(CFLAGS) -o $@ $(OBJ) $(LIBPCAP_LIBS) $(LDFLAGS)

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

strnormalize.o: strnormalize.c
	$(CC) $(CFLAGS) -c $<

clean :
	rm -v $(OBJ) mentohust
