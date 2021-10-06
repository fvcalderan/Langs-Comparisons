package main

import ("fmt" ; "strings")

func main() {
	words := "to be or not to be"

	fields := strings.Fields(words)
	m := make(map[string]int)

	for _, v := range fields {
		_, ok := m[v]
		if ok { m[v] += 1 } else { m[v] = 1	}
	}

	fmt.Println(m)
}
