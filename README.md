# pdftotext

Simple web service for Xpdf's `pdftotext` command.

## Usage

``` sh
$ docker run -d -p 8080:80 joshpeek/pdftotext
$ curl -T receipt.pdf http://localhost:8080/cgi-bin/pdftotext

    Receipt - Customer Copy

    Amount:           $15.00 Sale

    Thank You!
```
