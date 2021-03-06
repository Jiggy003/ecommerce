FROM python:3.8

WORKDIR /API

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY ./app ./app

CMD ["python", "./app/api.py"]