package main

import (
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

	//INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
	//VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');
	per := Person{
		CustomerName: "Cardinal",
		ContactName:  "Tom B. Erichsen",
		Address:      "Skagen 21",
		City:         "Stavanger",
		PostalCode:   "4006",
		Country:      "Norway",
	}
	client.Insert(&per)

	//INSERT INTO Customers (CustomerName, City, Country)
	//VALUES ('Cardinal', 'Stavanger', 'Norway');
	per = Person{
		CustomerName: "Cardinal",
		City:         "Stavanger",
		Country:      "Norway",
	}
	client.Insert(&per)
}
