FROM golang:1.14

# Install required packages
RUN go get github.com/miekg/dns

COPY . /go/xip.name
WORKDIR /go/xip.name
RUN go build -o xip xip.go
EXPOSE 53/udp
RUN systemctl stop systemd-resolved
RUN systemctl disable systemd-resolved

ENTRYPOINT ./xip -fqdn xip.nexploit.app.
