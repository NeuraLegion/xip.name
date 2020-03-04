FROM golang:1.14

# Install required packages
RUN go get github.com/miekg/dns

COPY . /go/xip.name
WORKDIR /go/xip.name
RUN go build -o xip xip.go
RUN chmod +x xip.go
EXPOSE 8053
ENTRYPOINT go run xip.go --fqdn=xip.nexploit.app --ip=3.88.173.95
