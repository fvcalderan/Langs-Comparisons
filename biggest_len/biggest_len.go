package main

import "fmt"

func main() {
	words := []string{"Here", "are", "some", "extraordinary", "words"}
	maxlen := 0
	for _, v := range words { if s := len(v) ; maxlen < s { maxlen = s } }
	fmt.Println(maxlen)
}
