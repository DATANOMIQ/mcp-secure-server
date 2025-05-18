# Use Python base image
FROM python:3.10-slim-bookworm

# Install Node.js & nginx
RUN apt-get update && apt-get install -y \
    curl \
    nginx \
    apache2-utils \
    && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs \
    && rm -rf /var/lib/apt/lists/*


# Copy nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Create password file (replace 'password' with your desired password)
RUN htpasswd -bc /etc/nginx/.htpasswd user testuser1234!

# Create log directories
RUN mkdir -p /var/log/nginx && \
    touch /var/log/nginx/error.log && \
    touch /var/log/nginx/access.log && \
    chown -R www-data:www-data /var/log/nginx

# Expose ports
EXPOSE 8000 5000

CMD nginx && npx -y supergateway --stdio "npx -y @openbnb/mcp-server-airbnb