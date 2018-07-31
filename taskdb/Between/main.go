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
	//SELECT * FROM people WHERE customer_id BETWEEN 2 AND 4;
	err := client.Model(Pers).Column("*").Where("customer_id BETWEEN 2 AND 4").Select()
	fmt.Println(err, Pers)
	//SELECT * FROM people WHERE customer_id NOT BETWEEN 10 AND 20;
	err = client.Model(Pers).Column("*").Where("customer_id NOT BETWEEN 2 AND 4").Select()
	fmt.Println(err, Pers)
	//SELECT * FROM Products WHERE (customer_id BETWEEN 2 AND 4) AND NOT PostalCode IN ('4006','98128');
	err = client.Model(Pers).Column("*").Where("customer_id BETWEEN 2 AND 4").Where("NOT postal_code IN ('4006','98128')").Select()
	fmt.Println(err, Pers)

}
