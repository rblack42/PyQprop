FC = gfortran
FSRCS = qprop.f gvcalc.f cdfun.f tqcalc.f motor.f spline.f io.f qcget.f
FOBJS = $(FSRCS:.f=.o)
FINCS = QDEF.INC


QPROPOBJS = qprop.o gvcalc.o cdfun.o tqcalc.o motor.o spline.o io.o qcget.o

all:	qprop qpinstall

.PHONY:	qcopy
qcopy:
	cd ../Qprop/src && \
		cp $(FSRCS) ../../build && \
		cp $(FINCS) ../../build
		
qprop: $(QPROPOBJS)
	$(FC) -o qprop $(QPROPOBJS)

%.o:	%.f
	$(FC) -c $^ -o $@

.PHONY: qpinstall
qpinstall:
	cp qprop ../../bin
