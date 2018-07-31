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

	//SELECT COUNT(customer_id), country FROM "people" AS "person" GROUP BY "country"
	Pers := new([]Person)
	//err := client.Model(Pers).ColumnExpr("COUNT(customer_id), country").
	//	Group("country").Select()
	//fmt.Println(err, Pers)

	//SELECT COUNT(CustomerID), Country FROM Customers
	//GROUP BY Country ORDER BY COUNT(CustomerID) DESC;
	err := client.Model(Pers).ColumnExpr("COUNT(customer_id), country").
		OrderExpr("COUNT(customer_id) DESC").Group("country").Select()
	fmt.Println(err, Pers)
}
