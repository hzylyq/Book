package ch08

import "fmt"

func Greed() {
	statesNeeded := []string{"mt", "wa", "or", "id", "nv", "ut", "ca", "az"}

	var stations = make(map[string][]string)
	stations["kone"] = []string{"id", "nv", "ut"}
	stations["ktwo"] = []string{"wa", "id", "mt"}
	stations["kthree"] = []string{"or", "nv", "ca"}
	stations["kfour"] = []string{"nv", "ut"}
	stations["kfive"] = []string{"ca", "az"}

	stationKey := []string{"kone", "ktwo", "kthree", "kfour", "kfive"}

	var finalStations []string

	for len(statesNeeded) > 0 {
		var bestStation string
		var statesCovered []string

		for _, station := range stationKey {
			states := stations[station]
			covered := equalData(statesNeeded, states)
			if len(covered) > len(statesCovered) {
				bestStation = station
				statesCovered = covered
			}
		}

		statesNeeded = removeData(statesNeeded, statesCovered)
		finalStations = append(finalStations, bestStation)
	}

	fmt.Println(finalStations)

}

func equalData(statesNeed []string, states []string) []string {
	var covered []string
	for _, stateNeeded := range statesNeed {
		for _, state := range states {
			if stateNeeded == state {
				covered = append(covered, state)
			}
		}
	}
	return covered
}

func removeData(statesNeeded []string, statesCovered []string) []string {
	for _, stateCover := range statesCovered {
		statesNeeded = remove(statesNeeded, stateCover)
	}
	return statesNeeded
}

func remove(statesNeeded []string, stateCovered string) []string {
	for i, stateNeeded := range statesNeeded {
		if stateNeeded == stateCovered {
			return append(statesNeeded[:i], statesNeeded[i+1:]...)
		}
	}
	return statesNeeded
}
