from flask import Flask, url_for, render_template
import pymysql

app = Flask(__name__)

connection =pymysql.connect(
    host='192.168.33.10',
    user='remote_user',
    password='123123',
    db='shop',
    charset='utf8mb4',
    cursorclass=pymysql.cursors.DictCursor
)

@app.route('/test/')
def test():
    cursor = connection.cursor()
    cursor.execute('SELECT * FROM category')
    result = cursor.fetchall()

    return str(result[0])



def generate_links():
    with app.test_request_context():
        link_Anatolii = url_for('hello_user', username='Anatolii Host')
        link_index = url_for('index')
        link_Gregg = url_for('hello_user', username="Gregg")
        links = {
            "Anatolii's": link_Anatolii,
            "Index's": link_index,
            "Gregg's": link_Gregg,
        }
    return links


@app.route('/')
def index():
    cursor = connection.cursor()
    cursor.execute("""
    SELECT products.title AS title, 
    products.description, products.price, 
    image.title AS image_title, image.url AS image_url
     FROM products INNER JOIN image
    ON image.product_id = products.id    
""")
    links = generate_links()
    products = cursor.fetchall()
    return render_template('index.html', links = links, slides = products)


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
