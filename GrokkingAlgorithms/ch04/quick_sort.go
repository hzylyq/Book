package ch04

func QuickSort(arr []int) []int {
	if len(arr) < 2 {
		return arr
	}

	// 基线条件
	pivot := arr[0]

	// 分成两组
	var less []int
	var greater []int
	for _, val := range arr[1:] {
		if val > pivot {
			greater = append(greater, val)
		} else {
			less = append(less, val)
		}
	}

	less = append(QuickSort(less), pivot)
	greater = QuickSort(greater)

	return append(less, greater...)
}
