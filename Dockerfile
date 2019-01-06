FROM httpd:2.4-alpine

RUN apk update && apk add xpdf

RUN sed -i 's|LoadModule mpm_event_module|#LoadModule mpm_event_module|' /usr/local/apache2/conf/httpd.conf \
    && sed -i 's|#LoadModule mpm_prefork_module|LoadModule mpm_prefork_module|' /usr/local/apache2/conf/httpd.conf \
    && sed -i 's|#LoadModule cgi_module|LoadModule cgi_module|' /usr/local/apache2/conf/httpd.conf

COPY ./cgi-bin ./cgi-bin
