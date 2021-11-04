run:
	go run api/app.go

build:
	go build -o go_app api/app.go

test:
	go test ./...

format:
	go fmt ./... 