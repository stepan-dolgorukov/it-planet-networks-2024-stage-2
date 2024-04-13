from flask import Flask
from socket import gethostname
import json

app = Flask(__name__)

@app.route("/")
def root():
    return json.dumps(
        {
            "message": "Hello world!",
            "name_host": gethostname()
        }
    )