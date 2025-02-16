# Use Nginx lightweight web server
FROM nginx:alpine

# Copy files into the web server directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80
