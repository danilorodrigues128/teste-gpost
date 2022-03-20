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
'''
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
        flag = cursor.execute("SELECT * FROM user WHERE `username` = %s AND `password` = %s", (user, password))
        data = cursor.fetchone()
        mysql.connection.commit()

        if(flag):
            json = {
                "status" : "Succeed",
                "hash" : data[4],
            }
        else:
            json = {
                "status" : "Failed",
                "error" : "Username or password incorrect!"
            }
        return jsonify(json)
    except:
        return traceback.print_exc()

@app.route("/get_page", methods=['GET'])
@cross_origin()
def get_page():
    
    cursor = mysql.connection.cursor()

    try:
        cursor.execute("SELECT * FROM page WHERE 1")
        data = cursor.fetchall()
        mysql.connection.commit()

        vec_json = "["

        for row in range(len(data)):
            aux = '{"id" : "'+ str(data[row][0]) + \
                '", "url" : "'+ str(data[row][1]) + \
                    '", "title" : "'+ str(data[row][2]) + \
                        '", "subtitle" : "'+ str(data[row][3]) + \
                            '", "language" : "'+ str(data[row][4]) + \
                                '", "urlImage" : "'+ str(data[row][5]) + '"}'

            vec_json += aux

            if not (row == len(data) - 1):
                vec_json += ","
        
        vec_json += "]"
        #print(vec_json)
        return jsonify(json.loads(vec_json))

    except:
        return traceback.print_exc()



@app.route("/get_works", methods=['GET'])
@cross_origin()
def get_works():
    
    cursor = mysql.connection.cursor()

    try:
        cursor.execute("SELECT * FROM work WHERE 1")
        data = cursor.fetchall()
        mysql.connection.commit()

        vec_json = "["

        for row in range(len(data)):
            aux = '{"id" : "'+ str(data[row][0]) + \
                '", "title" : "'+ str(data[row][1]) + \
                    '", "suport" : "'+ str(data[row][2]) + \
                        '", "date" : "'+ str(data[row][3]) + \
                            '", "editor" : "'+ str(data[row][4]) + \
                                '", "place" : "'+ str(data[row][5]) + \
                                    '", "author" : "'+ str(data[row][6]) + \
                                        '", "language" : "'+ str(data[row][7]) + \
                                            '", "keywords" : "'+ str(data[row][8]) + \
                                                '", "descriptions" : "'+ str(data[row][9]) + '"}'

            vec_json += aux

            if not (row == len(data) - 1):
                vec_json += ","
        
        vec_json += "]"
        #print(vec_json)
        return jsonify(json.loads(vec_json))

    except:
        return traceback.print_exc()


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


#---[POST]---#

@app.route("/post_user", methods=['POST'])
@cross_origin()
def post_user():

    name = request.form['name']
    username = request.form['username']
    password = request.form['password']
    hash = request.headers['hash']
    
    cursor = mysql.connection.cursor()

    if(checkHash(hash)):
        try:
            # Check if have someone with this username
            flag = cursor.execute("SELECT * FROM user WHERE `username` = %s", (username,))
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
            cursor.execute("INSERT INTO user (name, username, password, hash) VALUES (%s, %s, %s, %s)", (name, username, password, hash))
            mysql.connection.commit()

            json = {
                "status" : "Succeed",
                "hash" : hash,
                "message" : "User created with success..."
            }

            return jsonify(json)
        except:
            return traceback.print_exc()
    else:
        json = {
                "status" : "Failed",
                "message" : "Invalid hash!"
            }
        return jsonify(json)

@app.route("/post_pages", methods=['POST'])
@cross_origin()
def post_pages():
    pass

@app.route("/post_works", methods=['POST'])
@cross_origin()
def post_works():
    data = request.form['data']
    data_JSON = json.loads(data)

    hash = request.headers['hash']
    
    if(checkHash(hash)):
        try:
            for item in data_JSON :
                cursor = mysql.connection.cursor()

                action = item["action"]
                if action == "insert" or action == "update":
                    title = item["title"]
                    suport = item["suport"]
                    date = item["date"]
                    editor = item["editor"]
                    place = item["place"]
                    author = item["author"]
                    language = item["language"]
                    keywords = item["keywords"]
                    description = item["description"]

                    if (action == "insert") :
                        cursor.execute("INSERT INTO work (title, suport, date, editor, place, author, language, keywords, description) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)", (title, suport, int(date), editor, place, author, language, keywords, description))
                    else :
                        idWork = item["id"]
                        cursor.execute("UPDATE work SET title = %s, suport = %s, date = %s, editor = %s, place = %s, author = %s, language = %s, keywords = %s, description = %s WHERE id = %s", (title, suport, int(date), editor, place, author, language, keywords, description, int(idWork)))
                    mysql.connection.commit()
                    cursor.close()

            vec_json = {
                "status" : "Succeed",
                "message" : ""
            }
            return jsonify(vec_json)
        except:
            return traceback.print_exc()
    else:
        vec_json = {
                "status" : "Failed",
                "message" : "Invalid hash!"
            }
        return jsonify(vec_json)

@app.route("/post_arab", methods=['POST'])
@cross_origin()
def post_arab():
    pass

@app.route("/post_team", methods=['POST'])
@cross_origin()
def post_team():
    pass

@app.route("/post_log", methods=['POST'])
@cross_origin()
def post_log():
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

def checkHash(hash):
    try:
        # Check if have someone with this hash
        cursor = mysql.connection.cursor()
        flag = cursor.execute("SELECT * FROM `user` WHERE `hash` = %s", (hash,))
        mysql.connection.commit()

        if flag:
            return True
        else: 
            return False
    except:
        return traceback.print_exc()