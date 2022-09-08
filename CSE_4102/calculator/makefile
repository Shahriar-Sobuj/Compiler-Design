main:cal.l cal.y
	bison cal.y
	flex cal.l
	gcc cal.tab.c lex.yy.c -o lex
	./lex <input.txt> output.txt
