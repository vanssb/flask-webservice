from flask import Flask, jsonify
from application import app


@app.route('/rest', methods=['POST'])
def index():
    return jsonify('Hello world')