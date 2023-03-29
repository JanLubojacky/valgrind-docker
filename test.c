#include <stdlib.h>
#include <stdio.h>

int main(void) {

    printf("Hello Hell\n");

    int *ptr;
    ptr = malloc(sizeof(int));

    ptr[0] = 0;

    printf("%d\n", ptr[0]);

    // This line is intentionally commented out to create a memory leak
    // free(ptr);

    return 0;
}