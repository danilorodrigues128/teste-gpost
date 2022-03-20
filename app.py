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
from flask_mysqldb import MySQL
from flask_cors import CORS, cross_origin
import random

app = Flask(__name__)
cors = CORS(app)

# Path of MySQL Database (localhost)
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'root'
app.config['MYSQL_DB'] = 'mydb_v2'
mysql = MySQL(app)

app.config['CORS_HEADERS'] = 'Content-Type'

blog_post = {
    "title": "oi"
}

## Render Layouts
#
##
@app.route('/', methods=['GET', 'POST'])
@cross_origin()
def index():
    return "Welcome !!"


# API Functions
#---[GET]---#

@app.route("/get_page")
@cross_origin()
def get_page():
    pass

@app.route("/get_works")
@cross_origin()
def get_works():
    pass

@app.route("/get_arab")
@cross_origin()
def get_arab():
    pass

@app.route("/get_team")
@cross_origin()
def get_team():
    pass

@app.route("/get_log")
@cross_origin()
def get_log():
    pass

@app.route("/get_blog", methods=['GET'])
@cross_origin()
def get_blog():
    global blog_post
    return jsonify(blog_post)

@app.route("/get_user")
@cross_origin()
def get_user():
    pass


#---[POST]---#

@app.route("/post_page")
@cross_origin()
def post_page():
    pass

@app.route("/post_works")
@cross_origin()
def post_works():
    pass

@app.route("/post_arab")
@cross_origin()
def post_arab():
    pass

@app.route("/post_team")
@cross_origin()
def post_team():
    pass

@app.route("/post_log")
@cross_origin()
def post_log():
    pass

@app.route("/post_user")
@cross_origin()
def post_user():
    pass

# Looping Flask
if __name__ == '__main__':
    app.run(debug=True)


#-----------------------------------------------------------------------------------------------------#
#------------------------------------------ Python Scripts -------------------------------------------#

def generateHash():
    hash = random.getrandbits(128)
    hash = '%032x' % hash
    return hash

def includeHash(user, hash, cursor):
    try:
        cursor.execute("INSERT INTO `hash` (user, hash) VALUES (%s, %s)", (user, hash))
        mysql.connection.commit()
        cursor.close()
        return True
    except:
        return False

def checkHash(user, hash, cursor):
    try:
        # Check if have someone with this hash
        flag = cursor.execute("SELECT * FROM `hash` WHERE `user` = %s AND `hash` = %s", (user,hash))
        mysql.connection.commit()

        if flag:
            return True
        else: 
            return False
    except:
        return "error"