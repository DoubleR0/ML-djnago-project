FROM python:3.9.0a5-alpine3.10
RUN mkdir /code
COPY . /code/
WORKDIR /code/MLproject
RUN pip install -r requirements.txt
RUN python manage.py migrate