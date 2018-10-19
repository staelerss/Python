from flask import Flask, url_for, render_template

app = Flask(__name__)


@app.route('/')
def index():
    return render_template('index.html')


@app.route('/user/')
@app.route('/user/<path:username>')
def hello_user(username=None):
    numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
    return render_template('user.html', username=username, numbers=numbers)


with app.test_request_context():
    print("http://localhost" + url_for('hello_user', username='Anatolii Host'))

if __name__ == '__main__':
    app.run('0.0.0.0', debug=True)
