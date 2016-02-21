RUN until netcat -z -v localhost 5432; do
  echo "$(date) - waiting for postgres...";
sleep 1;

python ./manage.py makemigrations
python ./manage.py migrate auth
python ./manage.py migrate
python ./manage.py runserver 0.0.0.0:8000
