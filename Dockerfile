FROM golang:1.14

# Install required packages
RUN go get github.com/miekg/dns

COPY . /go/xip.name
WORKDIR /go/xip.name
EXPOSE 8053
CMD ["go", "run", "xip.go"]
