.PHONY: native clean

SCM2ML=~/tools/utils/scm2ml

SCMS = $(wildcard lib/*.scm) $(wildcard native/*.scm)

MLS = $(SCMS:.scm=.ml)

%.ml: %.scm
	$(SCM2ML)  $< > $@


default: native

native: $(MLS)
	#sh scm-conv.sh
	dune build 
	dune exec ./hip.exe

clean:
	dune clean

distclean:
	rm -rf _esy
	rm -rf esy.lock
	rm -rf node_modules
	rm -rf _build
