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

	var pers []Person
	//SELECT * FROM Persons ORDER BY country;
	//err := client.Model(&pers).Column("*").Order("country").Select()
	//SELECT * FROM Customers ORDER BY country DESC;
	//err = client.Model(&pers).Column("*").Order("country DESC").Select()
	//SELECT * FROM Customers ORDER BY country, customer_name;
	//err = client.Model(&pers).Column("*").Order("country", "customer_name").Select()
	//SELECT * FROM Customers ORDER BY Country ASC, CustomerName DESC;
	err := client.Model(&pers).Column("*").Order("country ASC", "customer_name DESC").Select()
	fmt.Println(err)
	fmt.Println(pers)
}
