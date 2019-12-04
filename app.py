from flask import Flask
app = Flask(__name__)


@app.route('/')
def hello():
    return "Hello World!"


@app.route("/about")
def about():
    return "<h1 style='color: red;'>GGPR WEB IN DOCKER!</h1>"
	
@app.route('/<name>')
def hello_name(name):
    return "Hello {}!".format(name)

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')