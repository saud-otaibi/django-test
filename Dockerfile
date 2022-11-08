FROM ubuntu:22.04

RUN apt update && apt install -y python3 python3-pip

RUN pip install Django tzdata

COPY . /app

WORKDIR /app

RUN tar -zxf mysite.tar.gz

CMD ["python3", "mysite/manage.py", "runserver", "0.0.0.0:8000"]
