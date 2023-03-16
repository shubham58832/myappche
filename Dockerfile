FROM httpd:latest

# Set the working directory to the Apache2 root directory
WORKDIR /usr/local/apache2/htdocs/

# Copy the contents of the current directory into the container at the Apache2 root directory
COPY ./index.html /var/wwwhtml

# Expose port 80, which is the default port for Apache2
EXPOSE 80

# Start the Apache2 service when the container starts
CMD ["httpd", "-D", "FOREGROUND"]
