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

	//SELECT DISTINCT customer_name FROM person;
	var Pers []Person
	client.Model(&Pers).ColumnExpr("DISTINCT customer_name").Select()
	fmt.Println(Pers)
	//SELECT COUNT(DISTINCT customer_name) FROM people;
	res, err := client.Model(&Pers).ColumnExpr("DISTINCT customer_name").Count()
	fmt.Println(res, err)

}
