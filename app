from flask import Flask
from flask import render_template
from flask import send_file
app=Flask(__name__)


@app.route('/')
@app.route('/index')
def index():
    return render_template('index.html')

@app.route('/img/<name>')
def img(name):
    directory = 'img/'
    return send_file(directory + name)


if __name__ == '__main__':
    app.run(debug=True)
