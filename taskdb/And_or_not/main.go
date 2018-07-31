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

	var Pers []Person
	//SELECT * FROM people WHERE Country='Germany' AND City='Berlin';
	//client.Model(&Pers).Column("*").Where("Country='Germany'").Where("City='Berlin'").Select()
	//SELECT * FROM people WHERE Country='Germany' OR City='Berlin';
	//client.Model(&Pers).Column("*").Where("Country='Germany'").WhereOr("City='Berlin'").Select()
	//SELECT * FROM Customers  WHERE NOT Country='Germany';
	//_ = client.Model(&Pers).Column("*").Where("NOT Country='Germany'").Select()
	//SELECT * FROM Customers WHERE Country='Germany' AND (City='Berlin' OR City='München');
	//client.Model(&Pers).Column("*").Where("Country='Germany'").Where("City='Berlin' OR City='München'").Select()
	//SELECT * FROM Customers WHERE NOT Country='Germany' AND NOT Country='USA';
	client.Model(&Pers).Column("*").Where("NOT Country='Germany'").Where("NOT Country='USA'")
	fmt.Println(Pers)
}
