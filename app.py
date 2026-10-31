from flask import Flask, jsonify
app = Flask(__name__)

@app.get("/hello")
def hello():
    return jsonify(message="Hello from my API", status="success")

app.run(host="0.0.0.0", port=8080)
