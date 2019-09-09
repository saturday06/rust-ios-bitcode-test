#include <stdio.h>

extern int bitcoder_add(int, int);

int main() {
    printf("Hello %d\n", bitcoder_add(1, 2));
}
