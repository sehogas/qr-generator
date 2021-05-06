build:
	docker build -t qr-generator:1.0 .

run:
	docker run -d --name qr-generator -p 8080:8080 qr-generator:1.0

stop:
	docker stop qr-generator

start:
	docker start qr-generator

remove:
	docker rm qr-generator

.PHONY: run build stop start remove