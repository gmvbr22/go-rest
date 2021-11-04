run:
	go run src/main.go

build:
	go build -o go_app src/main.go

test:
	cd src
	go test ./...

format:
	cd src
	go fmt ./...