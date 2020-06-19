FROM python:3.7.7-alpine3.11

WORKDIR /app

RUN apt-get install -y git

RUN git clone https://github.com/sboomi/salary-api.git

RUN pip install -r requirements.txt

ENV FLASK_APP server.py
ENV FLASK_RUN_HOST 0.0.0.0
EXPOSE 5000

CMD ["flask", "run"]