package ch01

func BinarySearch(list []int, item int) (int, bool) {
	low := 0
	high := len(list) - 1

	for low != high {
		mid := (low + high) / 2
		if list[mid] == item {
			return mid, true
		}
		if list[mid] > item {
			high = mid
		} else {
			low = mid
		}
	}
	return 0, false
}
