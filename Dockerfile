FROM python:3.7-slim

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

ENV FLASK_APP=home.py \
    FLASK_RUN_HOST=0.0.0.0

EXPOSE 5000

CMD ["flask", "run"]
