# syntax=docker/dockerfile:1
FROM golang:1.18.2-alpine

WORKDIR /app

COPY . .

RUN export GO111MODULE=on

RUN go mod init github.com/chosky/microservice-app-example-DevOps-Training/tree/master/auth-api

RUN go mod tidy

RUN go build

EXPOSE 8000
CMD [ "./auth-api" ]