package ch06

import "fmt"

func personIsSeller(name string) bool {
	if len(name) == 0 {
		return false
	}

	return name[len(name)-1] == 'm'
}

var graph = make(map[string][]string)

func fillData() {
	graph["you"] = []string{"alice", "bob", "claire"}
	graph["bob"] = []string{"anuj", "peggy"}
	graph["alice"] = []string{"peggy"}
	graph["claire"] = []string{"thom", "jonny"}
	graph["anuj"] = []string{}
	graph["peggy"] = []string{}
	graph["thom"] = []string{}
	graph["jonny"] = []string{}
}

func Search(name string) bool {
	var searchQueue []string
	searchQueue = append(searchQueue, graph[name]...)

	var searched []string
	for len(searchQueue) != 0 {
		person := searchQueue[0]
		searchQueue = searchQueue[1:]

		if isSearched(person, searched) {
			continue
		}
		if personIsSeller(person) {
			fmt.Printf("%s is a mango seller", person)
			return true
		}

		searchQueue = append(searchQueue, graph[person]...)
		searched = append(searched, person)
	}

	return false
}

func isSearched(person string, searched []string) bool {
	for _, n := range searched {
		if person == n {
			return true
		}
	}
	return false
}
