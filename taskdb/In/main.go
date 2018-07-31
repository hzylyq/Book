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

	Pers := new([]Person)

	//SELECT * FROM Customers WHERE Country IN ('Germany', 'France', 'UK');
	err := client.Model(Pers).Column("*").WhereIn("Country IN (?)", "Germany", "France", "UK").Select()
	fmt.Println(err, Pers)
	//SELECT * FROM Customers WHERE Country NOT IN ('Germany', 'France', 'UK');
	err = client.Model(Pers).Column("*").WhereIn("Country NOT IN (?)", "Germany", "France", "UK").Select()
	fmt.Println(err, Pers)
}
