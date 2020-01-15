.PHONY: native clean

default:
	@@echo "use 'make native'"


native:
	sh scm-conv.sh
	dune build 
	dune exec ./hip.exe

clean:
	dune clean
