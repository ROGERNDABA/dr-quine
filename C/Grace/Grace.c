#include <stdio.h>

/* comment */

#define STR "#include <stdio.h>%1$c%1$c/* comment */%1$c%1$c#define STR %2$c%3$s%2$c%1$c#define PRINTER(f) fprintf(f,STR,10,34,STR)%1$c#define RUN() int main(){ FILE*f = fopen(%2$cGrace_kid.c%2$c, %2$cw%2$c); PRINTER(f); return 0;}%1$c%1$cRUN()%1$c"
#define PRINTER(f) fprintf(f,STR,10,34,STR)
#define RUN() int main(){ FILE*f = fopen("Grace_kid.c", "w"); PRINTER(f); return 0;}

RUN()
