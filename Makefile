MAINNAME	:= main
OBJDIR      := codigo
LIB_NAME    := labso

object:
	gcc	-c	$(OBJDIR)/*.c	-fPIC
	cp	*.o	$(OBJDIR)
	rm	-f	*.o

dinamic:	object
	gcc	-shared	-o	$(OBJDIR)/lib$(LIB_NAME).so.01	$(OBJDIR)/fibonacci.o	$(OBJDIR)/mult.o	$(OBJDIR)/soma.o	$(OBJDIR)/fatorial.o
	ln	-s	lib$(LIB_NAME).so.01	$(OBJDIR)/lib$(LIB_NAME).so

main:
	gcc	-c	$(MAINNAME).c
	gcc	-o	$(MAINNAME)	$(MAINNAME).o	-L$(OBJDIR)	-l$(LIB_NAME)

install:	dinamic

	sudo	cp	$(OBJDIR)/lib$(LIB_NAME).so.01	/usr/lib
	sudo	cp	$(OBJDIR)/lib$(LIB_NAME).so		/usr/lib
	sudo	cp	$(OBJDIR)/$(LIB_NAME).h	/usr/include

clean:
	rm	-f	$(OBJDIR)/*.o
	rm	-f	$(MAINNAME).o
	rm	-f	$(MAINNAME)
	rm	-f	$(OBJDIR)/*.a
	rm	-f	$(OBJDIR)/*.so
	rm	-f	$(OBJDIR)/*.so.01