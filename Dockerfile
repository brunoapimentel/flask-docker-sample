FROM registry.access.redhat.com/ubi9/python-39

COPY . /src

WORKDIR /src

RUN pip install -r requirements.txt

ENV FLASK_APP=app

EXPOSE 5000

ENTRYPOINT ["flask", "run", "--host=0.0.0.0"]

