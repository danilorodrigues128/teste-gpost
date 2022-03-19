import threading
from flask import Flask, url_for, request, jsonify

app = Flask(__name__)

@app.route('/getBlog', methods=['POST', 'GET'])
def getBlog():
    results = {'processed': 'true'}
    return jsonify(results)

@app.route('/')
def getIndex():
    return "<p>Hello World!</p>"

#app.run(debug=False, host="127.0.0.1", port=500, use_reloader=False)
app.run(debug=True)
