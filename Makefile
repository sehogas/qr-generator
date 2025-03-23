########################################################
override TARGET=qr-generator
VERSION=1.2
OS=linux
ARCH=amd64
FLAGS="-s -w"
CGO=0
########################################################

up:
	docker compose --file docker-compose.yml up -d --build

down:
	docker compose --file docker-compose.yml down

run:
	go run main.go

bin:
	CGO_ENABLED=$(CGO) GOOS=$(OS) GOARCH=$(ARCH) go build -ldflags=$(FLAGS) -o $(TARGET) .

install: 
	CGO_ENABLED=$(CGO) GOOS=$(OS) GOARCH=$(ARCH) go install -ldflags=$(FLAGS) 

build:
	docker build -t $(TARGET):$(VERSION) .
	docker tag $(TARGET):$(VERSION) $(TARGET):latest

start:
	docker run --rm -d --name $(TARGET) -p 8080:8080 $(TARGET):latest

stop:
	docker stop $(TARGET)

clean:
	rm -rf $(TARGET)

.PHONY: up down run bin install build start stop clean
