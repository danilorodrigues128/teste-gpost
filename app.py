# from flask import Flask
 
# app = Flask(__name__)
 
# @app.route("/")
# def home_view():
#         return "<h1>Welcome to Geeks for Geeks</h1>"

# Commands in PorwerShell (Windows)
# venv\Script\activate
# $env:FLASK_APP = "main"
# flask run

from flask import Flask, jsonify, request
from flask_cors import CORS, cross_origin


app = Flask(__name__)
cors = CORS(app)
app.config['CORS_HEADERS'] = 'Content-Type'

blog_post = {
    "title": "oi"
}

#---[GET]---#

@app.route("/get_blog")
@cross_origin()
def get_blog():
    global blog_post
    return jsonify(blog_post)

@app.route("/get_post")
@cross_origin()
def get_post():
    pass

@app.route("/get_pages")
@cross_origin()
def get_pages():
    pass

@app.route("/get_works")
@cross_origin()
def get_works():
    pass

#---[POST]---#

@app.route("/post_blog")
@cross_origin()
def post_blog():
    print(request.args.get("text"))
    return jsonify(success=True)

@app.route("/post_post")
@cross_origin()
def post_post():
    pass

@app.route("/post_pages")
@cross_origin()
def post_pages():
    pass

@app.route("/post_works")
@cross_origin()
def post_works():
    pass