# Use the official PHP image as the base image
FROM php:7.4-apache

# Install the necessary PHP extensions and dependencies
RUN apt-get update && apt-get install -y \
    libicu-dev \
    libzip-dev \
    unzip \
    && docker-php-ext-install intl \
    && docker-php-ext-install zip

# Copy the PHP file browser files to the container
COPY . /var/www/html/

# Expose port 80 for web traffic
EXPOSE 80

# Set the container's entrypoint to start the Apache web server
CMD ["apache2-foreground"]
