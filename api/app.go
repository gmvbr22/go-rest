package main

import (
	"log"

	"github.com/gmvbr/go-rest/api/routes"
	"github.com/gofiber/fiber/v2"
)

func main() {
	app := Setup()
	log.Fatal(app.Listen(":3000"))
}

func Setup() *fiber.App {
	app := fiber.New()
	api := app.Group("/api")
	routes.HelloRouter(api)
	return app
}
