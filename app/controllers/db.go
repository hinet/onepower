package controllers

import (
	"github.com/go-gorp/gorp"
	"database/sql"
	_ "github.com/go-sql-driver/mysql"
)

var (
	Dbm *gorp.DbMap
)

func InitDB(){
	db, err := sql.Open("mysql", "root:123456@tcp(127.0.0.1:3306)/onepower")
	if err != nil {
		panic(err)
	}
	Dbm = &gorp.DbMap{Db: db, Dialect: gorp.MySQLDialect{}}
}
