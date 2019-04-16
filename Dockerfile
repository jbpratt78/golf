FROM golang:latest
RUN mkdir /golf
ADD . /golf
WORKDIR /golf
RUN go get -d -v ./...
RUN go build -o main .
EXPOSE 8000
CMD ["/golf/main"]
