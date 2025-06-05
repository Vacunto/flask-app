FROM python:3.9-alpine
WORKDIR /app

RUN apk add --no-cache mariadb-connector-c-dev gcc musl-dev

COPY requirements.txt .
COPY app.py .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000
CMD ["python", "app.py"]