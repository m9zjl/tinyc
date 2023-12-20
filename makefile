
run: lex.yy.c
	gcc -o hide-digits lex.yy.c
	./hide-digits


lex.yy.c: hide-digitals.l
	flex $<

