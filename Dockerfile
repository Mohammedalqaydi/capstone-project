
FROM python:3.7


WORKDIR /app

RUN apt-get update 

COPY requirements.txt .

RUN pip install  -r requirements.txt 

COPY . .

EXPOSE 5000

CMD ["python", "app.py"]
