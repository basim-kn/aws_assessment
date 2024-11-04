# Use an official nginx image as the base image
FROM httpd:alpine

# Copy the HTML files to the nginx html directory
COPY . /usr/share/httpd/html

# Expose port 80
EXPOSE 80

# Start nginx when the container starts
CMD ["httpd", "-g", "daemon off;"]
