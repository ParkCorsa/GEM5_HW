TARGET_ISA=x86

GEM5_HOME=$(realpath ./)
$(info   GEM5_HOME is $(GEM5_HOME))

CXX=g++

CFLAGS=-I$(GEM5_HOME)/include

LDFLAGS=-L$(GEM5_HOME)/util/m5/build/$(TARGET_ISA)/out -lm5

OBJECTS= Hw4/connected-components

Hw4/connected-components:
	$(CXX) -o $(OBJECTS) Hw4/connected-components.s $(CFLAGS) $(LDFLAGS) -static -lm -O2

all: Hw4/connected-components

clean:
	rm -f $(OBJECTS)