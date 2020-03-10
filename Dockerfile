FROM golang:1.14

# Install required packages
RUN go get github.com/miekg/dns

COPY . /go/xip.name
WORKDIR /go/xip.name
RUN go build -o xip xip.go
EXPOSE 53/udp

ENTRYPOINT ./xip -fqdn xip.nexploit.app. -ip 34.207.70.114
