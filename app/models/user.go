package models

import (
	"time"
)

type User struct {
	Id int `db:"id, primarykey, autoincrement"`
	Username string
	Password string
	FullName string `db:"full_name"`
	CreatedAt time.Time `db:"created_at"`
}
