from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World!'

if __name__ == '__main__':
    FLASK_APP=__name__
    FLASK_DEBUG=1
    app.run(host='0.0.0.0', port=80)