package main
import "fmt"

func main() {
    points := [3][3]int{{1, 2, 3}, {3, 4, 5}, {5, 6, 7}}
    qpoint := [3]int{3, 6, 5}
    min_i  := -1
    min_d  := 2147483647

    for i := 0; i < len(points); i++ {
        dist := 0

        for j := 0; j < len(qpoint); j++ {
            dist += (points[i][j] - qpoint[j])*(points[i][j] - qpoint[j])
        }

        if min_d > dist {
            min_d = dist
            min_i = i
        }
    }

    fmt.Println(min_i)
}
