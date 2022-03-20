# from flask import Flask
 
# app = Flask(__name__)
 
# @app.route("/")
# def home_view():
#         return "<h1>Welcome to Geeks for Geeks</h1>"

# Commands in PorwerShell (Windows)
# venv\Script\activate
# $env:FLASK_APP = "main"
# flask run

import json
from flask import Flask, jsonify, request
from flask_mysqldb import MySQL
from flask_cors import CORS, cross_origin
import random
import traceback

app = Flask(__name__)
cors = CORS(app)

# Path of MySQL Database (localhost)
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'root'
app.config['MYSQL_DB'] = 'mydb_v2'
mysql = MySQL(app)

'''
# Path of MySQL Database (heroku)
app.config['MYSQL_HOST'] = 'eu-cdbr-west-02.cleardb.net'
app.config['MYSQL_USER'] = 'ba0cee386b45a4'
app.config['MYSQL_PASSWORD'] = '2e6e7e7f'
app.config['MYSQL_DB'] = 'heroku_c78f6c3eaaf5da1'
mysql = MySQL(app)
'''

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


## API Functions
#
#------------------------------[GET]------------------------------#

@app.route("/get_user", methods=['GET'])
@cross_origin()
def get_user():
    user = request.args.get('username')
    password = request.args.get('password')

    cursor = mysql.connection.cursor()

    try:
        flag = cursor.execute("SELECT * FROM users WHERE `username` = %s AND `password` = %s", (user, password))
        data = cursor.fetchone()
        mysql.connection.commit()

        if(flag):
            json = {
                "status" : "Succeed",
                "hash" : data[4],
                "class" : "User"
            }
        else:
            json = {
                "status" : "Failed",
                "error" : "Username or password incorrect!"
            }
            return jsonify(json)
    except:
        return traceback.print_exc() 

@app.route("/get_blog", methods=['GET'])
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

@app.route("/post_user", methods=['POST'])
@cross_origin()
def post_user():

    name = request.form['name']
    username = request.form['username']
    password = request.form['password']
    
    cursor = mysql.connection.cursor()

    try:
        # Check if have someone with this username
        flag = cursor.execute("SELECT * FROM users WHERE `username` = %s", (username,))
        mysql.connection.commit()

        if flag:
            json = {
                "status" : "Failed",
                "error" : "Username already in use..."
            }
            return jsonify(json)
    except:
        return traceback.print_exc()

    try:
        hash = generateHash()
        cursor.execute("INSERT INTO users (name, username, password, hash) VALUES (%s, %s, %s, %s)", (name, username, password, hash))
        mysql.connection.commit()

        json = {
            "status" : "Succeed",
            "hash" : hash,
            "message" : "User created with success..."
        }

        return jsonify(json)
    except:
        return traceback.print_exc()

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