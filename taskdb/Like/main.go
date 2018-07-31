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

	//%匹配任意字符,
	Pers := new([]Person)
	//SELECT * FROM people WHERE CustomerName LIKE 'a%';
	err := client.Model(Pers).Column("*").Where("customer_name LIKE 'T%'").Select()
	fmt.Println(err, Pers)
	//SELECT * FROM people WHERE CustomerName LIKE '%m';
	err = client.Model(Pers).Column("*").Where("customer_name LIKE '%m'").Select()
	fmt.Println(err, Pers)
	//SELECT * FROM people WHERE CustomerName LIKE '%rd%';
	err = client.Model(Pers).Column("*").Where("customer_name LIKE '%rd%'").Select()
	fmt.Println(err, Pers)
	//_匹配一个字符
	//SELECT * FROM people WHERE CustomerName LIKE '_a%';
	err = client.Model(Pers).Column("*").Where("customer_name LIKE '_a%'").Select()
	fmt.Println(err, Pers)
	//SELECT * FROM Customers WHERE CustomerName NOT LIKE 'a%';
	err = client.Model(Pers).Column("*").Where("customer_name NOT LIKE 'a%'").Select()
	fmt.Println(err, Pers)
}
