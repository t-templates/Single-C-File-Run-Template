#include <stdio.h>

int main()
{

	int y, y0 = 0, y1 = 1;

	int loop = 12;

	while (loop-- > 0)
	{
		y = y0 + y1;
		y0 = y1;
		y1 = y;

		printf(" %3d", y);
	}

	printf("\n\n");

	return 0;
}

