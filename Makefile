CC=clang
CXX=clang++
RM=rm -f
CPPFLAGS=-g $(shell root-config --cflags)
LDFLAGS=-g $(shell root-config --ldflags)
LDLIBS=$(shell root-config --libs)

# Do not add any header files here.
SRCS=main.cpp ray.cpp
OBJS=$(subst .cpp,.o,$(SRCS))

all: craytracer

craytracer: $(OBJS)
	$(CXX) $(LDFLAGS) -o craytracer $(OBJS) $(LDLIBS)

clean:
	$(RM) $(OBJS)

dist-clean: clean
	$(RM) craytracer
