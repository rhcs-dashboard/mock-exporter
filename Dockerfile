FROM python:3.13-slim

WORKDIR /app
COPY mock_exporter.py .

RUN pip install --no-cache-dir prometheus_client

CMD ["python", "mock_exporter.py"]
