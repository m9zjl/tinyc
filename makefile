
scanner: lex.yy.c token.h
	gcc -o $@ $<


clean:
	rm lex.yy.c scanner out.txt y.output y.tab.c y.tab.h hide-digits calc

test: scanner samples/sample_6_function.c
	./scanner  < samples/sample_6_function.c > out.txt


y.tab.c: calc.y
	bison -vdty $<

lex.yy.c: calc.l
	flex $<

calc: y.tab.c lex.yy.c
	gcc -o $@ y.tab.c lex.yy.c


