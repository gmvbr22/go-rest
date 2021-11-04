run:
	go run src/main.go

build:
	go build -o go_app src/main.go

test:
	go test ./...

format:
	go fmt ./... 