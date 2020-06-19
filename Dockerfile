FROM python:3.6-buster  

RUN mkdir -p /app

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python", "server.py"]