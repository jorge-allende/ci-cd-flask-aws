FROM python:3.12.3-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY my_flask_app /app/my_flask_app

# This is the key change:
ENV FLASK_APP=my_flask_app

CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]
