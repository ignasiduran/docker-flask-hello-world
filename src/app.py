from flask import Flask
from flask import request, render_template
from datetime import datetime

app = Flask(__name__)

@app.route('/healthy')
def healthy():
      return "Healthy"

@app.route("/")
def hello():
      current_time = datetime.now()
      return render_template("index.html", content="Hello World! It's " + current_time.strftime("%Y-%m-%d %H:%M:%S"))

if __name__ == "__main__":
   app.run(host='0.0.0.0', port=8080)

