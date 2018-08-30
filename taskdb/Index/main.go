package main

import (
	"fmt"
	"github.com/go-pg/pg"
	"log"
	"time"
)

type Person struct {
	CustomerID   int64
	CustomerName string
	ContactName  string
	Address      string
	City         string
	PostalCode   string
	Country      string
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

	//res, err = client.Exec("CREATE INDEX hzy_test ON people") //err, index 只能给col创建
	//fmt.Println(res, err)

	//res, err := client.Exec("CREATE INDEX city_index ON people (city)")
	//fmt.Println(res, err)
	//
	//res, err = client.Exec("DROP INDEX hzy_test")
	//fmt.Println(res, err)

	//Unique index 创建时该col不能有相同的值
	//res, err := client.Exec("CREATE UNIQUE INDEX Name_unique_index ON people (address)")
	//fmt.Println(res, err)

	//res, err := client.Exec("DROP INDEX Name_unique_index")
	//res, err := client.Exec("DROP INDEX city_index")
	//fmt.Println(res, err)

	res, err := client.Exec("CREATE CLUSTERED INDEX city ON people (country DESC)")
	fmt.Println(res, err)

}
