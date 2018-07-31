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

	//DELETE FROM people
	//WHERE CustomerName='Alfreds Futterkiste';
	//per := new(Person)
	//res, err := client.Model(per).Where("customer_name = 'Alfreds Futterkiste'").Delete()
	//fmt.Println(res, err)
	//DELETE * FROM people
	var pers []Person
	err := client.Model(&pers).Order("customer_id").Select()
	fmt.Println(err)
	res, err := client.Model(&pers).Column("*").Delete()
	fmt.Println(res, err)
}
