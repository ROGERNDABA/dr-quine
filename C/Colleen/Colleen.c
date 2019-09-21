#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>

/* function to read each line and print it */

void get_file_lines(char *line, size_t len, FILE *fp)
{
	ssize_t read;
	while ((read = getline(&line, &len, fp)) != -1)
	{
		printf("%s", line);
	}
}

int main(void)
{
	FILE *fp;
	char *line = NULL;
	size_t len = 0;

	/* open Colleen.c file in read-only mode */
	fp = fopen("Colleen.c", "r");
	if (fp == NULL)
		exit(EXIT_FAILURE);
	get_file_lines(line, len, fp);
	fclose(fp);
	if (line)
		free(line);
	exit(EXIT_SUCCESS);
}
