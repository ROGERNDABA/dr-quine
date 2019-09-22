#include <stdio.h>
#include <stdlib.h>

int main(){
	int a=5;
	char buf[1000];char bufi[1000];
	if (a<=0) return 0;
	sprintf(buf, "Sully_%d.c", a);
	FILE *f=fopen(buf, "w");
	char *s="#include <stdio.h>%1$c#include <stdlib.h>%1$c%1$cint main(){%1$c%2$cint a=%5$d;%1$c%2$cchar buf[1000];char bufi[1000];%1$c%2$cif (a<=0) return 0;%1$c%2$csprintf(buf, %3$cSully_%%d.c%3$c, a);%1$c%2$cFILE *f=fopen(buf, %3$cw%3$c);%1$c%2$cchar *s=%3$c%4$s%3$c;%1$c%2$cfprintf(f,s,10,9,34,s,a);%1$c%2$cfclose(f);%1$c%2$csprintf(bufi,%3$cgcc -Wall -Wextra -Werror -o %%.*s %%s && ./%%.*s%3$c, 7, buf, buf, 7, buf);%1$c%2$csystem(bufi);%1$c%2$creturn 0;%1$c}%1$c";
	fprintf(f,s,10,9,34,s,a);
	fclose(f);
	sprintf(bufi,"gcc -Wall -Wextra -Werror -o %.*s %s && ./%.*s", 7, buf, buf, 7, buf);
	system(bufi);
	return 0;
}
