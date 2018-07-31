package main

import (
	"fmt"
	"github.com/go-pg/pg"
	"log"
	"time"
)

type customer struct {
	CustomerId  int
	ContactName string
	City        string
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

	//UPDATE Customers
	//SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
	//WHERE CustomerID = 1;
	cus := customer{CustomerId: 1}
	err := client.Select(&cus)
	fmt.Println(err)
	cus.ContactName = "Alfred Schmidt"
	cus.City = "Frankfurt"
	err = client.Update(&cus)
	fmt.Println(err)

}
