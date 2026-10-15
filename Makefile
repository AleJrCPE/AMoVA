CC = g++

all: AMoVA

sensor.o: sensor.hpp sensor.cpp
	${CC} -c sensor.cpp

acionador.o: acionador.hpp acionador.cpp
	${CC} -c acionador.cpp

amova.o: sensor.hpp acionador.hpp amova.cpp
	${CC} -c amova.cpp

AMoVA: sensor.o acionador.o amova.o
	${CC} sensor.o acionador.o amova.o -o AMoVA

clean:
	rm -f *.o AMoVA