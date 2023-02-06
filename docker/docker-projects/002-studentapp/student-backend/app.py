from flask import Flask, request, jsonify
import pymongo

from flask_cors import CORS
app = Flask(__name__)
CORS(app)

app.config["DEBUG"] = True

# MongoDB connection config
client = pymongo.MongoClient("mongodb://studentdatabase/stu")
db = client['stu']

# Route for handling form submission
@app.route('/save-student-data', methods=['POST'])
def submit():
  # Get form data from request
  data = request.get_json()
  name = data['name']
  city = data['city']
  age = data['age']

  # Insert form data into MongoDB database
  db.students.insert_one({'name': name, 'city': city, 'age': age})

  # Return success message
  return jsonify({'result': 'success'})

# Route for retrieving student data from database
@app.route('/', methods=['GET'])
def hello():
  return "app works"

# Route for retrieving student data from database
@app.route('/get-student-data', methods=['GET'])
def get_students():
  # Get student data from database
  cursor = db.students.find()
  students = []
  for doc in cursor:
    students.append({'name': doc['name'], 'city': doc['city'], 'age': doc['age']})

  # Return student data as JSON
  return jsonify(students)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=9300, debug=True)