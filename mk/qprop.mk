QPROPURL = https://web.mit.edu/drela/Public/web/qprop/
QPROPTAR = qprop1.22.tar.gz


FC = gfortran

.PHONY: qpmaster
qpmaster:	qpfetch qpunpack

# fetch copy of master QProp codes from MIT ==========
.PHONY: qpfetch
qpfetch: master/$(QPROPTAR)

master/$(QPROPTAR):
	curl $(QPROPURL)/$(QPROPTAR) -o $@
	echo "installed Qprop"

.PHONY:	qpunpack
qpunpack:	 master/$(QPROPTAR) 
	cd master && \
		tar zxvf $(QPROPTAR)

.PHONY: qpcopy
qpcopy:
	cd master/Qprop/src && \
		cp $(FSRCS) ../../build && \
		cp $(FINCS) ../../build
		
.PHONY: qpbuild
qpbuild:	qpcopy
	cd master/build && \
		make 

