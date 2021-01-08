package queue

type Record struct {
	Cap   int
	Size  int
	Front int // 队首
	Rear  int // 队尾
	Array []int
}

type Queue = *Record

func IsEmpty(q Queue) bool {
	return q.Size == 0
}

func IsFull(q Queue) bool {
	return q.Size == q.Cap
}

func CreateQueue(max int) Queue {
	var q Queue
	q = new(Record)
	q.Cap = max
	q.Array = make([]int, 0)
	return q
}

// 销毁队列
func DisposeQueue(q Queue) {
	q.Array = nil
}

func MakeEmpty(q Queue) {
	q.Size = 0
	q.Front = 1
	q.Rear = 0
	q.Array = []int{}
}

func Success(val int, q Queue) int {
	val++
	if val == q.Cap {
		val = 0
	}
	return val
}

func Enqueue(x int, q Queue) {
	if IsFull(q) {
		return
	}

	q.Size++
	q.Rear = Success(q.Rear, q)
	q.Array[q.Rear] = x
}

func Dequeue(q Queue) {
	if IsEmpty(q) {
		return
	}

	q.Size--
	q.Front = Success(q.Front, q)
}
