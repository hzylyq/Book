package ch07

import (
	"fmt"
	"testing"
)

func TestFindShortestPath(t *testing.T) {
	graph := make(map[string]map[string]int)
	graph["A"] = map[string]int{}
	graph["A"]["B"] = 5
	graph["A"]["C"] = 2

	graph["B"] = map[string]int{}
	graph["B"]["D"] = 4
	graph["B"]["E"] = 2

	graph["C"] = map[string]int{}
	graph["C"]["B"] = 8
	graph["C"]["E"] = 7

	graph["D"] = map[string]int{}
	graph["D"]["E"] = 6
	graph["D"]["F"] = 3

	graph["E"] = map[string]int{}
	graph["E"]["F"] = 1

	graph["F"] = map[string]int{}

	costs, parents := FindShortestPath(graph, "A", "F")
	fmt.Println(costs, parents)
}
