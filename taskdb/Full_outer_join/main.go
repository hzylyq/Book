package main

import (
	"fmt"
	"github.com/go-pg/pg"
	"log"
	"time"
)

type Author struct {
	AuthorId int64 `sql:",pk"`
	BookName string
	Age      int
}

func main() {
	client := pg.Connect(&pg.Options{
		Addr:     "127.0.0.1:5432",
		User:     "postgres",
		Password: "123456",
		Database: "testdb",
	})
	defer client.Close()

	client.OnQueryProcessed(func(event *pg.QueryProcessedEvent) {
		query, err := event.FormattedQuery()
		if err != nil {
			panic(err)
		}

		log.Printf("%s %s", time.Since(event.StartTime), query)
	})

	var author []Author

	err := (client.Model(&author).Join("FULL OUTER JOIN people").JoinOn("people.customer_id=author.author_id")).Limit(3).First()
	fmt.Println(err, author)
}
