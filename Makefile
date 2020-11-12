run: src/parser.ml src/lexer.ml
	dune exec ./main.exe

src/parser.ml: src/parser.mly
	menhir src/parser.mly

src/lexer.ml: src/lexer.mll
	ocamllex src/lexer.mll

.PHONY: clean
clean:
	rm -f src/parser.ml src/parser.mli src/lexer.ml *.cmi *.cmx *.cmo *.o *~ a.out
