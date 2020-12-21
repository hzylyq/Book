package ch02

func SelectSort(arr []int) []int {
	if len(arr) == 0 {
		return nil
	}

	length := len(arr)
	var newArr []int
	for i := 0; i < length; i++ {
		smallIdx := findSmallest(arr)
		newArr = append(newArr, arr[smallIdx])
		arr = append(arr[:smallIdx], arr[smallIdx+1:]...)
	}
	return newArr
}

func findSmallest(arr []int) int {
	if len(arr) == 0 {
		return -1
	}

	smallest := arr[0]
	idx := 0

	for i, val := range arr {
		if val < smallest {
			smallest = val
			idx = i
		}
	}

	return idx
}
