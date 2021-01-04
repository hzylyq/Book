package ch09

func createMatrix(rows, cols int) [][]int {
	cell := make([][]int, rows)
	for i := range cell {
		cell[i] = make([]int, cols)
	}
	return cell
}

func SubString(a, b string) string {
	cell := createMatrix(len(a)+1, len(b)+1)

	lcs := 0
	lastSubIndex := 0

	for i := 1; i <= len(a); i++ {
		for j := 1; j <= len(b); j++ {
			if a[i-1] == b[j-1] {
				cell[i][j] = cell[i-1][j-1] + 1

				if cell[i][j] > lcs {
					lcs = cell[i][j]
					lastSubIndex = i
				}
			} else {
				cell[i][j] = 0
			}
		}
	}

	return a[lastSubIndex-lcs : lastSubIndex]
}
