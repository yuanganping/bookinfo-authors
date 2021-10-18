FROM golang:1.17.0-alpine3.14

COPY ./bin/app /opt/microservices/app

EXPOSE 9080
WORKDIR /opt/microservices

CMD ["./app"]
