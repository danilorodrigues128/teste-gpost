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
#-----------------------------------------------------------------------------------------------------------#
#--------------------------------------------------[GET]----------------------------------------------------#
#-----------------------------------------------------------------------------------------------------------#

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
                "hash" : data[7],
                "id": data[0],
            }

        else:
            json = {
                "status" : "Failed",
                "error" : "Username or password incorrect!"
            }

        return jsonify(json)
    except:
        return traceback.print_exc()

@app.route("/get_users", methods=['GET'])
@cross_origin()
def get_users():

    cursor = mysql.connection.cursor()

    try:
        cursor.execute("SELECT * FROM user")

        data = cursor.fetchall()
        mysql.connection.commit()

        json_obj = []

        for row in range(len(data)):
            aux = {}
            aux["id"] = str(data[row][0])
            aux["name"] = str(data[row][1])
            aux["username"] = str(data[row][2])
            aux["description"] = str(data[row][4])
            aux["show"] = str(data[row][5])
            aux["urlImg"] = str(data[row][6])


            json_obj.append(aux)
        
        return json.dumps(json_obj)

    except:
        return traceback.print_exc()

@app.route("/get_pages", methods=['GET'])
@cross_origin()
def get_pages():
    
    cursor = mysql.connection.cursor()

    try:
        cursor.execute("SELECT * FROM page")
        data = cursor.fetchall()
        mysql.connection.commit()

        json_obj = []
        lst_pageId = []

        for row in range(len(data)):
            aux = {}
            aux["id"] = str(data[row][0])
            aux["url"] = str(data[row][1])
            aux["title"] = str(data[row][2])
            aux["subtitle"] = str(data[row][3])
            aux["language"] = str(data[row][4])
            aux["urlImage"] = str(data[row][5])
            aux["tabs"] = []

            lst_pageId.append(int(data[row][0]))
            json_obj.append(aux)
        
        cursor.close()

        for pageId in lst_pageId :
            cursor = mysql.connection.cursor()
            cursor.execute("SELECT * FROM pagetab WHERE idPage = %s", (int(pageId), ))
            data = cursor.fetchall()
            mysql.connection.commit()

            for row in range(len(data)):
                aux = {}
                aux["idTab"] = str(data[row][0])
                aux["title"] = str(data[row][2])
                aux["content"] = str(data[row][3])

                json_obj[lst_pageId.index(pageId)]["tabs"].append(aux)

            cursor.close()
        
        return json.dumps(json_obj)

    except:
        return traceback.print_exc()

@app.route("/get_page", methods=['GET'])
@cross_origin()
def get_page():
    
    cursor = mysql.connection.cursor()
    urlPage = request.args.get('url')
    languagePage = request.args.get('language')

    try:
        cursor.execute("SELECT * FROM page p, pagetab pt WHERE p.id = pt.idPage AND url = %s AND language = %s", (urlPage, languagePage))
        data = cursor.fetchall()
        mysql.connection.commit()

        json_obj = []

        for row in range(len(data)):
            aux = {}
            aux["id"] = str(data[row][0])
            aux["url"] = str(data[row][1])
            aux["title"] = str(data[row][2])
            aux["subtitle"] = str(data[row][3])
            aux["language"] = str(data[row][4])
            aux["urlImage"] = str(data[row][5])
            aux["idTab"] = str(data[row][6])
            aux["titleTab"] = str(data[row][8])
            aux["contentTab"] = str(data[row][9])

            json_obj.append(aux)
        
        return json.dumps(json_obj)

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

        json_obj = []

        for row in range(len(data)):
            aux = {}
            aux["id"] = str(data[row][0])
            aux["title"] = str(data[row][1])
            aux["suport"] = str(data[row][2])
            aux["date"] = str(data[row][3])
            aux["editor"] = str(data[row][4])
            aux["place"] = str(data[row][5])
            aux["author"] = str(data[row][6])
            aux["language"] = str(data[row][7])
            aux["keywords"] = str(data[row][8])
            aux["descriptions"] = str(data[row][9])

            json_obj.append(aux)
        
        return json.dumps(json_obj)

    except:
        return traceback.print_exc()


@app.route("/get_arab", methods=['GET'])
@cross_origin()
def get_arab():
    cursor = mysql.connection.cursor()

    try:
        cursor.execute("SELECT * FROM arab WHERE 1")
        data = cursor.fetchall()
        mysql.connection.commit()

        json_obj = []

        for row in range(len(data)):
            aux = {}
            aux["id"] = str(data[row][0])
            aux["title"] = str(data[row][1])
            aux["suport"] = str(data[row][2])
            aux["date"] = str(data[row][3])
            aux["author"] = str(data[row][4])
            aux["language"] = str(data[row][5])
            aux["keywords"] = str(data[row][6])
            aux["descriptions"] = str(data[row][7])

            json_obj.append(aux)
        
        return json.dumps(json_obj)

    except:
        return traceback.print_exc()


@app.route("/get_log")
@cross_origin()
def get_log():
    cursor = mysql.connection.cursor()

    try:
        cursor.execute("SELECT * FROM log WHERE 1")
        data = cursor.fetchall()
        mysql.connection.commit()

        json_obj = []

        for row in range(len(data)):
            aux = {}
            aux["id"] = str(data[row][0])
            aux["url"] = str(data[row][1])
            aux["date"] = str(data[row][2])
            aux["author"] = str(data[row][3])
            aux["showAuthor"] = str(data[row][4])
            aux["title"] = str(data[row][5])
            aux["language"] = str(data[row][6])
            aux["urlImage"] = str(data[row][7])
            aux["content"] = str(data[row][8])

            json_obj.append(aux)
        
        return json.dumps(json_obj)

    except:
        return traceback.print_exc()
    

#-----------------------------------------------------------------------------------------------------------#
#-------------------------------------------------[POST]----------------------------------------------------#
#-----------------------------------------------------------------------------------------------------------#

@app.route("/post_user", methods=['POST'])
@cross_origin()
def post_user():
    action = request.form['action']
    hash = request.headers['hash']
    
    cursor = mysql.connection.cursor()

    if(checkHash(hash)):
        if (action == "insert") :
            try:
                username = request.form['username']
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
            if (action == "insert" or action == "update") :
                name = request.form['name']
                username = request.form['username']
                password = request.form['password']
                description = request.form['description']
                showUser = request.form['showUser']
                urlImage = request.form['urlImage']
                
                if (action == "insert") :
                    cursor.execute("INSERT INTO user (name, username, password, description, showUser, urlImage, hash) VALUES (%s, %s, %s, %s, %s, %s, %s)", (name, username, password, description, int(showUser), urlImage, hash))
                elif (action == "update") :
                    idUser = request.form['id']
                    cursor.execute("UPDATE user SET name = %s, username = %s, password = %s, description = %s, showUser = %s, urlImage = %s WHERE id = %s", (name, username, password, description, int(showUser), urlImage, idUser))
                
                
            elif (action == "delete") :
                idUser = request.form['id']
                cursor.execute("DELETE FROM user WHERE id = %s", (idUser, ))

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

@app.route("/post_page", methods=['POST'])
@cross_origin()
def post_pages():

    action = request.form['action']
    hash = request.headers['hash']
    
    if(checkHash(hash)):
        try:
            cursor = mysql.connection.cursor()

            if action == "delete" :
                idPage = request.form['idPage']

                cursor.execute("DELETE FROM page WHERE id = %s", (int(idPage), ))
                mysql.connection.commit()
                
                cursor.execute("DELETE FROM pagetab WHERE idPage = %s", (int(idPage), ))
                mysql.connection.commit()

            elif action == "insert":
                url = request.form['url']
                title = request.form['title']
                subtitle = request.form['subtitle']
                language = request.form['language']
                urlImage = request.form['urlImage']
                tabs = request.form['tabs']

                tabs_JSON = json.loads(tabs)

                cursor.execute("INSERT INTO page VALUES(0, %s, %s, %s, %s, %s)", (url, title, subtitle, language, urlImage))
                mysql.connection.commit()

                cursor.execute("SELECT MAX(id) FROM page")
                data = cursor.fetchone()
                mysql.connection.commit()

                idPage = data[0]

                for tab in tabs_JSON :
                    cursor.execute("INSERT INTO pageTab VALUES(0, %s, %s, %s);", (int(idPage), tab["title"], tab["content"]))
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
                        cursor.execute("INSERT INTO work (title, suport, date, editor, place, author, language, keywords, description) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)", (title, suport, date, editor, place, author, language, keywords, description))
                    else :
                        idWork = item["id"]
                        cursor.execute("UPDATE work SET title = %s, suport = %s, date = %s, editor = %s, place = %s, author = %s, language = %s, keywords = %s, description = %s WHERE id = %s", (title, suport, date, editor, place, author, language, keywords, description, int(idWork)))
                    mysql.connection.commit()
                    cursor.close()
                elif action == "delete":
                    idWork = item["id"]
                    cursor.execute("DELETE FROM work WHERE id = %s", (int(idWork), ))
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
                    author = item["author"]
                    language = item["language"]
                    keywords = item["keywords"]
                    description = item["description"]

                    if (action == "insert") :
                        cursor.execute("INSERT INTO arab (title, suport, date, author, language, keywords, description) VALUES (%s, %s, %s, %s, %s, %s, %s)", (title, suport, date, author, language, keywords, description))
                    else :
                        idArab = item["id"]
                        cursor.execute("UPDATE arab SET title = %s, suport = %s, date = %s, author = %s, language = %s, keywords = %s, description = %s WHERE id = %s", (title, suport, date, author, language, keywords, description, int(idArab)))
                    mysql.connection.commit()
                    cursor.close()
                elif action == "delete":
                    idArab = item["id"]
                    cursor.execute("DELETE FROM arab WHERE id = %s", (int(idArab), ))
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


@app.route("/post_log", methods=['POST'])
@cross_origin()
def post_log():
    
    hash = request.headers['hash']
    
    cursor = mysql.connection.cursor()

    if(checkHash(hash)):
        try:
            action = request.form['action']

            if (action == "insert" or action == "update"):
                url = request.form['url']
                author = request.form['author']
                showAuthor = request.form['showAuthor']
                title = request.form['title']
                language = request.form['language']
                urlImage = request.form['urlImage']
                content = request.form['content']

                if (action == "insert") :
                    cursor.execute("INSERT INTO log (url, date, author, showAuthor, title, language, urlImage, content) VALUES (%s, NOW(), %s, %s, %s, %s, %s, %s)", (url, author, showAuthor, title, language, urlImage, content))
                else :
                    idLog = request.form['id']
                    cursor.execute("UPDATE log SET url = %s, date = NOW(), author = %s, showAuthor = %s, title = %s, language = %s, urlImage = %s, content = %s WHERE id = %s", (url, author, showAuthor, title, language, urlImage, content, int(idLog)))
            elif (action == "delete") :
                idLog = request.form['id']
                cursor.execute("DELETE FROM log WHERE id = %s", (int(idLog), ))

            mysql.connection.commit()

            json = {
                "status" : "Succeed",
                "message" : "Log created with success..."
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