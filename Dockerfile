FROM django:1.9.2
WORKDIR /usr/src/app
ADD ./requirements.txt /usr/src/app/requirements.txt
RUN pip install -r requirements.txt
ADD ./manage.py /usr/src/app/manage.py
ADD ./init.sh /usr/src/app/init.sh
