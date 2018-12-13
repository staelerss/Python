from flask import Flask, url_for, render_template
import pymysql

app = Flask(__name__)

connection =pymysql.connect(
    host='localhost',
    user='root',
    password='',
    db='shop',
    charset='utf8mb4',
    cursorclass=pymysql.cursors.DictCursor
)

@app.route('/test/')
def test():
    with connection.cursor() as cursor:
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
    with connection.cursor() as cursor:
        cursor.execute("""
        SELECT products.title AS title, 
        products.description, products.price, 
        image.title AS image_title, image.url AS image_url
        FROM products LEFT JOIN image
        ON image.product_id = products.id    
        """)
        products = cursor.fetchall()

    links = generate_links()

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

@app.route('/category/<category_id>')
def category_page(category_id):
    links = generate_links()

    with connection.cursor() as cursor:
        sql = '''
        SELECT 
            p.title,
            description,
            price,
            i.title AS image_title,
            url AS image_url
        FROM product p
        LEFT JOIN image i
        ON p.id = i.product_id
        WHERE id = %i
         '''
        cursor.execute(sql, (category_id,))
        product = cursor.fetchall()

    return render_template('index.html', links=links, slides=product)

if __name__ == '__main__':
    app.run('0.0.0.0', debug=True)
