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

	//postgresql好像没有top命令
	//SELECT * FROM Customers
	//LIMIT 3;
	per := new([]Person)
	err := client.Model(per).Column("*").Limit(3).Select()
	fmt.Println(per)
	fmt.Println(err)
	//SELECT * FROM Customers WHERE Country='Germany' LIMIT 3;
	err = client.Model(per).Column("*").Limit(3).Where("Country='Germany'").Select()
	fmt.Println(err, per)
}
