FROM python:3.6-alpine

ADD . /code

WORKDIR /code

RUN pip install -r req.txt

EXPOSE 5000

CMD [ "python", "app.py" ]