.SUFFIXES :

.SUFFIXES : .o .f90

OPTIMIZ = -O 2

OBJETS = filetyp.o

EXECUTABLE = r.filetype_$(VER)-$(BASE_ARCH)

VER = 010

LIBRMN = rmn

default: $(EXECUTABLE) magic.extra

magic.extra: magic.extra.base
	grep -v 'cmcarc file' ${ARMNLIB}/data/magic.extra >magic.extra
	cat magic.extra.base >>magic.extra

.f90.o:
	s.f90 $(OPTIMIZ) -c $<

$(EXECUTABLE): $(OBJETS)
	s.f90 -o $(EXECUTABLE) $(OBJETS) -l$(LIBRMN)

clean:
	rm -f $(EXECUTABLE) $(OBJETS) magic.extra

distclean: clean
	rm -f ../bin/* ../share/*

dist: $(EXECUTABLE) magic.extra
	mkdir -p ../bin
	mkdir -p ../share
	cp $(EXECUTABLE) ../bin
	EXECUTABLE=${EXECUTABLE} ; ln -sf $(EXECUTABLE) ../bin/$${EXECUTABLE%_*}
	cp magic.extra ../share
