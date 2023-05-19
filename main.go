package main

import (
	"log"
	"plugin"
)

type ExecType func(args ...string)

func main() {
	p, err := plugin.Open("./build/plugin.so")
	if err != nil {
		panic(err)
	}
	sy, err := p.Lookup("Exec")
	if err != nil {
		panic(err)
	}
	log.Println(sy)

	e := sy.(func(...string))
	e("nihao", "zhongguo")
}
