from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/hello/', methods=['GET', 'POST'])
def welcome():
    return "Hello World!"


@app.route('/add/', methods=['GET', 'POST'])
def add():
    # sum1 = 10+20;
    # return str(sum1);
    data = request.json
    return data;


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=3000)