package main

import (
	"fmt"
	"io/ioutil"
	"strings"
)

func checkError(e error) {
	if e != nil {
		panic(e)
	}
}

func main() {
	dat, err := ioutil.ReadFile("input")

	checkError(err)

	fmt.Printf("A%d, C%d, G%d, T%d\n", strings.Count(string(dat), "A"),
		strings.Count(string(dat), "C"),
		strings.Count(string(dat), "G"),
		strings.Count(string(dat), "T"))
}
