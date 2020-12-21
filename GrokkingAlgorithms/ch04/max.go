package ch04

func Max(arr []int) int {
	if len(arr) == 2 {
		if arr[0] > arr[1] {
			return arr[0]
		}
		return arr[1]
	}

	subMax := Max(arr[1:])
	if arr[0] > subMax {
		return arr[0]
	}
	return subMax

}
