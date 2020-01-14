.PHONY: native clean

default:
	@@echo "use 'make native'"


native:
	dune build
	dune exec ./hip.exe

clean:
	dune clean
