from flask_frozen import Freezer
from flask import Flask, render_template
app = Flask(__name__)
freezer = Freezer(app)

@app.route("/")
def default():
    return render_template('index.html')

if __name__ == "__main__":
    print('Creando el build')
    freezer.freeze()
    # app.run()
