package main

import (
	"fmt"
	"github.com/go-pg/pg"
	"log"
	"time"
)

type Author struct {
	AuthorId int64
	BookName string
	Age      int
}

type Person struct {
	CustomerID   int64
	CustomerName string
	ContactName  string
	Address      string
	City         string
	PostalCode   string
	Country      string
}

type Result struct {
	Author
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

	//创建表的时候，结构体内名称应当大写，否则该字段不会创建
	//client.CreateTable(&Author{}, &orm.CreateTableOptions{
	//	Temp: false,
	//})

	//insert some data
	//Author1 := Author{
	//	AuthorId: 1,
	//	BookName: "恶意",
	//	Age:      33,
	//}
	//
	//client.Insert(&Author1)

	//Author2 := Author{
	//	AuthorId: 2,
	//	BookName: "黄金时代",
	//	Age:      25,
	//}
	//client.Insert(&Author2)
	//var person []Person
	var author Result

	err := (client.Model(&author).Column("*").Join("INNER JOIN people").JoinOn("people.customer_id=author.author_id")).Last()
	fmt.Println(err, author)
}
