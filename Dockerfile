FROM golang:1.17.0-alpine3.14

COPY ./app.go /opt/microservices/
COPY ./run.sh /opt/microservices/
COPY ./go.mod /opt/microservices/
COPY ./go.sum /opt/microservices/
COPY ./debug.sh /opt/microservices/

EXPOSE 9080
WORKDIR /opt/microservices

RUN go mod download

CMD ["go", "run", "app.go"]
