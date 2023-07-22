FROM httpd
LABEL name="Dhanush Mahadevan"
COPY .  /usr/local/apache2/htdocs/
EXPOSE 80

