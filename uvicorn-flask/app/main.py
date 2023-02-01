from flask import Flask
from asgiref.wsgi import WsgiToAsgi

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "<p>Hello, World!</p>"

    if __name__ == '__main__':
        app.run()

app = WsgiToAsgi(app)
