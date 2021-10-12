// nevesuser
#include <stdio.h>
int main(void)
{
    double points[][3] = {{1, 2, 3}, {3, 4, 5}, {5, 6, 7}},
           qpoint[] = {3, 6, 5};
    int min_i = -1, min_d = 2147483647;

    for (int i = 0; i < sizeof(points)/sizeof(*points); ++i) {
        int dist = 0;

        for (int j = 0; j < sizeof(qpoint)/sizeof(*qpoint); ++j)
            dist += (points[i][j] - qpoint[j]) * (points[i][j] - qpoint[j]);

        if (min_d > dist) {
            min_d = dist;
            min_i = i;
        }
    }

    printf("%d\n", min_i);
    return 0;
}
