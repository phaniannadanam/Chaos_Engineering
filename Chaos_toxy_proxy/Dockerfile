# Use the official NGINX image as the base image
FROM nginx:latest

# Copy your HTML files to the NGINX HTML directory
COPY index.html /usr/share/nginx/html/

# Expose port 80 to the host
EXPOSE 80

# Configure NGINX to serve the index.html
RUN echo 'server { \
    listen 80; \
    server_name localhost; \
    location / { \
        root   /usr/share/nginx/html; \
        index  index.html; \
    } \
}' > /etc/nginx/conf.d/default.conf

# Start NGINX when the container runs
CMD ["nginx", "-g", "daemon off;"]
