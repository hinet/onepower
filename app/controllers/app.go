package controllers

import (
	"fmt"
	"github.com/revel/revel"
	"onepower.net/app/models"
	"time"
)

type App struct {
	*revel.Controller
}

func (c App) Index() revel.Result {
	user, err := Dbm.Select(models.User{},
		`SELECT username FROM user`)
	if err != nil {
		panic(err)
	}
	fmt.Printf("There are %d fruits.\n", len(user))
	//以下为新增
	//此处需要添加模型到ORM
	Dbm.AddTableWithName(models.User{}, "user").SetKeys(true, "Id")
	users := new(models.User)
	users.Username = "macro"
	users.Password = "123456"
	users.FullName = "邓明"
	users.CreatedAt = time.Now()
	//users:=&models.User{2,"honfei","123456","范鸿飞",time.Now().UTC()}
	errs:=Dbm.Insert(users)
	if errs == nil {
		fmt.Printf("db error %s .\n", users.Id)
	}
	c.ViewArgs["users"] = user
	return c.Render()
}
