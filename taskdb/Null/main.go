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
	//SELECT ContactName, Address FROM Persons
	//WHERE CustomerID IS NULL;
	err := client.Model(&pers).Column("contact_name").Column("customer_name").Column("address").
		Where("customer_id IS NULL").Select()
	//SELECT ContactName, Address FROM Persons
	//WHERE CustomerID IS NOT NULL;
	err = client.Model(&pers).Column("contact_name").Column("customer_name").Column("address").
		Where("customer_id IS NOT NULL").Select()
	fmt.Println(err)
	fmt.Println(pers)

}
