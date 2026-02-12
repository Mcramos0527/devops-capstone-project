FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY service service
COPY tests tests
COPY setup.cfg .
COPY Procfile .

EXPOSE 5000

CMD ["honcho", "start"]
