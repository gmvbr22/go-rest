# Build
FROM golang:1.17-alpine AS build
WORKDIR /app
COPY go.mod ./
COPY go.sum ./
RUN go mod download
COPY src ./
RUN go build -o go_app main.go

# Deploy
FROM gcr.io/distroless/base-debian11
WORKDIR /
COPY --from=build /app/go_app ./
USER nonroot:nonroot
EXPOSE 8080
ENTRYPOINT [ "/go_app" ]