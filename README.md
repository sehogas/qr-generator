# QR generator

This API returns a QR image generated from the string passed in the URL.

Parameters:
* ```data```: (Required) The string (encoded URL) that will contain the QR code
* ```size```: (Opcional) El tamaño de la imagen (predeterminado: 250)

URL Encoding: 
    ```https://www.w3schools.com/tags/ref_urlencode.ASP```

Example:
    ```http://localhost:8080/?data=Hello%2C%20world&size=300```

## Testing using Makefile

Start service:
```
$ make up
```
Stop service:
```
$ make down
```

## References and credits
* Barcode Library: https://github.com/boombuler/barcode

## Author
* [Sebastian Hogas](https://github.com/sehogas)
