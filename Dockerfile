# Use lightweight nginx image
FROM nginx:alpine

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy dist files to nginx web directory
COPY dist /usr/share/nginx/html

# Expose port 3000
EXPOSE 3000

# Change nginx default port from 80 to 3000
RUN sed -i 's/listen       80;/listen 3000;/' /etc/nginx/conf.d/default.conf

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
