FROM httpd:latest

COPY src/index.html /usr/local/apache2/htdocs/index.html

EXPOSE 80
CMD ["httpd-foreground"]
