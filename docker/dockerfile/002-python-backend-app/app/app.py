from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/hello/', methods=['GET', 'POST'])
def welcome():
    return "Hello World!"


@app.route('/add/<int:a>/<int:b>')
def add(a, b):
    return str(a + b)


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=3000)