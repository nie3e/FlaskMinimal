from flask import Flask, jsonify
import logging

logger = logging.getLogger(__name__)

app = Flask(__name__)


@app.route("/")
def hello_world():
    logger.warning("Hello!")
    return jsonify({"status": "ok"})
