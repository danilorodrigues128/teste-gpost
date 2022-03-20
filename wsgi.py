from flask import Flask, jsonify, request
from flask_cors import CORS, cross_origin

app = Flask(__name__)
cors = CORS(app)
app.config['CORS_HEADERS'] = 'Content-Type'

blog_post = {
    "title": "oi"
}
@app.route("/get_blog")
@cross_origin()
def get_blog():
    global blog_post
    return jsonify(blog_post)

@app.route("/post_blog")
@cross_origin()
def post_blog():
    print(request.args.get("text"))
    return jsonify(success=True)