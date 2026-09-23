# Use nginx as the base image
FROM nginx:alpine

# Copy the HTML file to nginx's default public directory
COPY index.html /usr/share/nginx/html/

# Copy custom nginx configuration if needed
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]