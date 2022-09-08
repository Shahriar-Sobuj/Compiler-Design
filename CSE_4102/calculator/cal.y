%{
	#include <stdio.h>
	void yyerror(char *s);
	int yylex();
%}
%token NUM SUB ADD
%start cal

%%
	cal: NUM ADD SUB
%% 

int main()
{
	yyparse();
	printf("Parshing Finished\n");
	return 0;
}

void(yyerror(char *s)){
fprintf(stderr, "error:%s\n", s);
}
