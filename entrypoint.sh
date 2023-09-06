
python manage.py migrate --no-input
echo "from django.contrib.auth import get_user_model; User = get_user_model(); User.objects.create_superuser('admin', 'admin@myproject.com', 'password')" | python manage.py shell
gunicorn project.wsgi:application --bind 0.0.0.0:8000




