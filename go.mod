module github.com/hinet/onepower

go 1.12

replace (
	golang.org/x/net v0.0.0-20190213061140-3a22650c66bd => github.com/golang/net v0.0.0-20190213061140-3a22650c66bd
	golang.org/x/sync v0.0.0-20190227155943-e225da77a7e6 => github.com/golang/sync v0.0.0-20190227155943-e225da77a7e6
	golang.org/x/sys v0.0.0-20190222072716-a9d3bda3a223 => github.com/golang/sys v0.0.0-20190222072716-a9d3bda3a223
	golang.org/x/tools v0.0.0-20190226205152-f727befe758c => github.com/golang/tools v0.0.0-20190226205152-f727befe758c
)

require (
	github.com/go-gorp/gorp v2.0.0+incompatible
	github.com/go-sql-driver/mysql v1.4.1
	github.com/inconshreveable/log15 v0.0.0-20180818164646-67afb5ed74ec // indirect
	github.com/mattn/go-colorable v0.1.1 // indirect
	github.com/revel/config v0.21.0 // indirect
	github.com/revel/log15 v2.11.20+incompatible // indirect
	github.com/revel/pathtree v0.0.0-20140121041023-41257a1839e9 // indirect
	github.com/revel/revel v0.21.0
	github.com/twinj/uuid v1.0.0 // indirect
	github.com/xeonx/timeago v1.0.0-rc4 // indirect
	golang.org/x/net v0.0.0-20190213061140-3a22650c66bd // indirect
	gopkg.in/fsnotify/fsnotify.v1 v1.4.7 // indirect
	gopkg.in/natefinch/lumberjack.v2 v2.0.0 // indirect
	gopkg.in/stack.v0 v0.0.0-20141108040640-9b43fcefddd0 // indirect
)
