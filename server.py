from flask import Flask, url_for, render_template
import pymysql

connection =pymysql.connect(
    host='192.168.33.10',
    user='remote_user',
    password='123123',
    db='shop',
    charset='utf8mb4',
    cursorclass=pymysql.cursors.DictCursor
)
app = Flask(__name__)


def generate_links():
    with app.test_request_context():
        link_Anatolii = url_for('hello_user', username='Anatolii Host')
        link_index = url_for('index')
        link_Gregg = url_for('hello_user', username="Gregg")
        links = (
            ("Anatolii's", link_Anatolii),
            ("Index's", link_index),
            ("Gregg's", link_Gregg)
        )
    return links


@app.route('/')
def index():
    links = generate_links()
    return render_template('index.html', links=links)


@app.route('/user/')
@app.route('/user/<path:username>')
def hello_user(username=None):
    links = generate_links()
    return render_template(
           'user.html',
        username=username,
        links=links
    )


if __name__ == '__main__':
    app.run('0.0.0.0', debug=True)
