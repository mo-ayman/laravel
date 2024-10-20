#!/bin/bash

# Ensure the script stops if any command fails
ls -la
# Set variables
APP_DIR="laravel"  # Change this to your application's directory

# Step 1: Navigate to the application directory
cd $APP_DIR

# Step 2: Pull the latest changes from GitHub
echo "Pulling latest"
git fetch origin
git reset --hard 

# Step 3: Install PHP dependencies using Composer
echo "Installing PHP dependencies..."
composer install --no-interaction --prefer-dist --optimize-autoloader

# Step 4: Run database migrations
echo "Running database migrations..."
php artisan migrate --force

echo "Deployment complete!"
