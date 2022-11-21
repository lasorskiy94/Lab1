#include <stdio.h>
#include <math.h>
#include "mymath.h"
#include "Show.h"

int main() {
    int a;
    printf("Enter a value A: ");
    scanf("%d", &a);

    float q = 0;
	q = SquareCircle(a);
    ShowData(a, q);
    return 0;
}