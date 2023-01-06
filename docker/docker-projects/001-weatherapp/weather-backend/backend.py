import requests
from flask import Flask, jsonify

app = Flask(__name__)

API_KEY = 'your_api_key'
CITY_ID = 'your_city_id'

@app.route('/weather')
def get_weather():
    # Make request to weather API
    url = f'http://api.openweathermap.org/data/2.5/weather?id={CITY_ID}&appid={API_KEY}'
    response = requests.get(url)
    data = response.json()

    # Parse response and return weather data as JSON
    weather_data = {'temperature': data['main']['temp'], 'humidity': data['main']['humidity']}
    return jsonify(weather_data)

if __name__ == '__main__':
    app.run()
