/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   Grace.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rmdaba <rogerndaba@gmail.com>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/09/21 20:40:26 by rmdaba            #+#    #+#             */
/*   Updated: 2019/09/21 20:40:28 by rmdaba           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

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
