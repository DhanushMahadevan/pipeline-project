FROM httpd
LABEL name="Dhanush Mahadevan"
COPY index.html  /usr/local/apache2/htdocs/
EXPOSE 80

