# Generador de códigos QR 

Este servicio web devuelve imagen qr generada a partir del string pasado en la URL.

Los parámetros son:
* ```data```: (Requerido) La cadena (codificada en URL) que debe codificarse en el código QR
* ```size```: (Opcional) El tamaño de la imagen (predeterminado: 250)

Ejemplo. ```http://localhost:8080/?data=Hello%2C%20world&size=300```

## Instalación

Descargue el código fuente e instálelo usando el comando `make install`.

Alternativamente, use Docker para ejecutar el servicio en un contenedor:

```
docker build -t qr-generator:1.0 .
```
```
docker run -d --name qr-generator -p 8080:8080 qr-generator:1.0
```

## Instalar en systemd como contenedor docker

sudo cp qr-generator.service /etc/systemd/system/

## Instalar en systemd como binario

sudo cp qr.service /etc/systemd/system/

## Referencias
* Barcode Library: https://github.com/boombuler/barcode

## Autor
* [Sebastian Hogas](https://github.com/sehogas)
