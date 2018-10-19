from flask import Flask, url_for, render_template

app = Flask(__name__)


@app.route('/')
def index():
    with app.test_request_context():
        link = url_for('hello_user', username='Anatolii Host')
        return render_template('index.html', link=link)

@app.route('/user/')
@app.route('/user/<path:username>')
def hello_user(username=None):
    numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
    return render_template(
            'user.html',
            username=username,
            numbers=numbers
    )

    if __name__ == '__main__':
        app.run('0.0.0.0', debug=True)
