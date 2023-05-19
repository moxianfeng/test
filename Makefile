.PHONY: plugin
plugin:
	go build -buildmode=plugin -o build/ cmd/plugin/plugin.go

.PHONY: main
main:
	go build -o build/ main.go