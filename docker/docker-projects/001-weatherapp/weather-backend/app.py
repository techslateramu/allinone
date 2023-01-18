from flask import Flask, jsonify
from flask_cors import CORS
import requests

app = Flask(__name__)
CORS(app)

API_KEY = '9d9845a8f96f0ea239e5629bff8bd069'
CITY_ID = '2643743'

url = f'http://api.openweathermap.org/data/2.5/weather?id={CITY_ID}&appid={API_KEY}'

response = requests.get(url)
data = response.json()

@app.route('/weather')
def get_weather():
    # Get weather data from API
    weather_data = {'temperature': data['main']['temp'], 'humidity': data['main']['humidity']}
    return jsonify(weather_data)

if __name__ == '__main__':
    app.run()

