#include <stdio.h>
#include <string.h>

int main() {
    char input[] = "to be or not to be";

    char words[1024][256] = {0};
    int freqs[1024] = {0};
    int size = 0;

    for (char * w = strtok(input, " "); w; w = strtok(0, " ")) {
        int i, found = 0;

        for (i = 0; i < size; ++i)
            if (!strcmp(words[i], w)) {
                found = 1;
                freqs[i]++;
                break;
            }

        if (!found) {
            strcpy(words[i], w);
            freqs[i] = 0;
            size++;
            freqs[i]++;
        }
    }

    for (int i = 0; i < size; ++i)
        printf("%s : %d\n", words[i], freqs[i]);

    return 0;
}
