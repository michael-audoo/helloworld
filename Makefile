CC=gcc
CXX=g++
RM=rm -f
#CPPFLAGS=-g $(shell root-config --cflags)
#LDFLAGS=-g $(shell root-config --ldflags)
#LDLIBS=$(shell root-config --libs)

$(error $(BUILD_NUMBER))
SRCS=helloworld.c
OBJS=$(subst .c,.o,$(SRCS))

all: helloworld

helloworld: $(OBJS)
	$(CXX) $(LDFLAGS) -o helloworld $(OBJS) $(LDLIBS)

helloworld.o: helloworld.c

clean:
	$(RM) $(OBJS)

distclean: clean
	$(RM) helloworld
