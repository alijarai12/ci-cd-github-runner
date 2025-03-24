#!/bin/sh

echo "Applying database migrations..."
python manage.py makemigrations --noinput
python manage.py migrate --noinput

# Start server
python manage.py runserver 0.0.0.0:8000
