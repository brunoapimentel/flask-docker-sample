FROM python:3.8

COPY . /src

WORKDIR /src

RUN pip install -r requirements.txt

ENV FLASK_APP=app

EXPOSE 5000

ENTRYPOINT ["flask", "run", "--host=0.0.0.0"]

