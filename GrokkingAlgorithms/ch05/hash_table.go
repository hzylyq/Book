package ch05

import "fmt"

var book = make(map[string]float64)

func Book() {
	book["apple"] = 0.67
	book["milk"] = 1.49
	book["avocado"] = 1.49
}

var voted map[string]bool

func CheckVoter(name string) {
	if voted[name] {
		fmt.Println("kick tem out!")
	} else {
		voted[name] = true
		fmt.Println("let tem vote!")
	}
}
