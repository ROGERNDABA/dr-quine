#include <stdio.h>

/*
	test
*/

void print(char *s){printf(s,10,9,34,s);};

int main(void){
	/*
		inside
	*/
	char *s="#include <stdio.h>%1$c%1$c/*%1$c%2$ctest%1$c*/%1$c%1$cvoid print(char *s){printf(s,10,9,34,s);};%1$c%1$cint main(void){%1$c%2$c/*%1$c%2$c%2$cinside%1$c%2$c*/%1$c%2$cchar *s=%3$c%4$s%3$c;%1$c%2$cprint(s);%1$c}%1$c";
	print(s);
}
