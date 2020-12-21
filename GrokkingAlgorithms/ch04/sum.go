package ch04

func Sum(a []int) int {
	if len(a) == 0 {
		return 0
	}
	return a[0] + Sum(a[1:])
}
