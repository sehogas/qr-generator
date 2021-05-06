run:
	PORT=8080 go run main.go

build:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -ldflags="-s -w" -o qr-generator .

install: 
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go install -ldflags="-s -w" 

dbuild:
	docker build -t qr-generator:1.0 .

drun:
	docker run -d --name qr-generator -p 8080:8080 qr-generator:1.0

dstop:
	docker stop qr-generator

dstart:
	docker start -a qr-generator

dremove:
	docker rm qr-generator

.PHONY: run build install dbuild drun dstop dstart dremove