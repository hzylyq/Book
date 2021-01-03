package ch07

import "math"

func FindShortestPath(graph map[string]map[string]int, startNode, finishNode string) (map[string]int, map[string]string) {
	costs := make(map[string]int)
	costs[finishNode] = math.MaxInt32

	parents := make(map[string]string)
	parents[finishNode] = ""

	processed := make(map[string]bool)

	// Initialization of costs and parents
	for node, cost := range graph[startNode] {
		costs[node] = cost
		parents[node] = startNode
	}

	lowestCostNode := findLowestCostNode(costs, processed)
	for lowestCostNode != "" {
		// Calculation costs for neighbours
		for node, cost := range graph[lowestCostNode] {
			if _, ok := costs[node]; !ok {
				costs[node] = math.MaxInt32
			}

			newCost := costs[lowestCostNode] + cost
			if newCost < costs[node] {
				// Set new cost for this node
				costs[node] = newCost
				parents[node] = lowestCostNode
			}
		}

		processed[lowestCostNode] = true
		lowestCostNode = findLowestCostNode(costs, processed)
	}

	return costs, parents
}

func findLowestCostNode(costs map[string]int, processed map[string]bool) string {
	lowestCost := math.MaxInt32
	lowestCostNode := ""
	for node, cost := range costs {
		if _, inProcessed := processed[node]; cost < lowestCost && !inProcessed {
			lowestCost = cost
			lowestCostNode = node
		}
	}

	return lowestCostNode
}
