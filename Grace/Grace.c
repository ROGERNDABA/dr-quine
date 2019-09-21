#include <stdio.h>

#define BUFF_SIZE 48
#define PRINT(buffer, fp)                            \
	if (fp != NULL)                                  \
	{                                                \
		while (fgets(buffer, BUFF_SIZE, fp) != NULL) \
			printf("%s", buffer);                    \
		pclose(fp);                                  \
	}

#define GRACE()                                       \
	int main()                                        \
	{                                                 \
		FILE *fp;                                     \
		char buffer[BUFF_SIZE];                       \
		fp = popen("cat Grace.c > Grace_kid.c", "r"); \
		PRINT(buffer, fp);                            \
		return 0;                                     \
	}

GRACE()
