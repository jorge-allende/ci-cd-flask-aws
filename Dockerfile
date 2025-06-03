FROM python:3.12.3-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY my_flask_app/ .
CMD ["python", "app.py"]
