.SUFFIXES :

.SUFFIXES : .f90

FFLAGS =

CFLAGS =

OPTIMIZ = -O 2

CPPFLAGS = 

OBJETS = filetyp.o

VER = 010

LIBRMN = rmn

default: absolu

.f90.o:
	s.f90 $(OPTIMIZ) -c $<

absolu: $(OBJETS)
	s.f90 -o r.filetype_$(VER)-$(BASE_ARCH) $(OBJETS) -l$(LIBRMN)

clean:
	rm r.filetype_$(VER)-$(BASE_ARCH) $(OBJETS)

