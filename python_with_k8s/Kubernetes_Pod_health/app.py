from flask import Flask, jsonify

app = Flask(__name__)

# Define the liveness probe endpoint
@app.route('/healthz')
def health_check():
    return jsonify({'status': 'ok'})

# Define the readiness probe endpoint
@app.route('/ready')
def readiness_check():
    return jsonify({'status': 'ready'})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
