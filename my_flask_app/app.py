from flask import Flask
import time

app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello, World from AWS CI/CD!"

@app.route("/stress")
def stress_cpu():
    # Simple CPU stress loop for ~10 seconds
    end_time = time.time() + 10
    while time.time() < end_time:
        _ = sum(i * i for i in range(10000))
    return "CPU stress test complete!"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)