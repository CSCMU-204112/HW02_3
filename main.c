#include "T112_HW02_3.h"

int main()
{
    int num;
    int base;
    int result;

    printf("Please input an integer: ");
    scanf("%d", &num);
    printf("\nPlease input base: ");
    scanf("%d", &base);

    result = palindrome_in_base(num, base);
    if (result == 1) {
        printf("YES\n");
    } else {
        printf("NO\n");
    }

    return 0;
}

