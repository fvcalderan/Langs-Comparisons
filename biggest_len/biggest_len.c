#include <stdio.h>
#include <string.h>

int main() {
    int big = 0, act = 0;
    char *words[5] = {"Here", "are", "some", "extraordinary", "words"};

    for (int i = 0; i < sizeof(words)/sizeof(*words); ++i)
        big = (act = strlen(words[i])) > big ? act : big;

    printf("%d\n", big);

    return 0;
}
