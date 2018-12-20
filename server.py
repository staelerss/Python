from flask import Flask, url_for, render_template
from repository import shop

app = Flask(__name__)


@app.route('/')
def index():
    links = generate_links()

    categories = shop.find_all_categories()
    slides = list()
    for x in categories:
        slide = {
             'category_id': x.get('id'),
             'heading': x.get('title'),
             'image_title': x.get('title'),
             'subheading': x.get('description'),
             'image.src': x.get('image_url')
        }
        slides.append(slide)
    return render_template('index.html', links=links, slides=slides)


def generate_links():
    with app.test_request_context():
        link_Anatoliy = url_for('category_page', category_id=1)
        links = {"Anatoliy's": link_Anatoliy}
    return links


@app.route('/category/<int:category_id>')
def category_page(category_id):
    links = generate_links()
    category = shop.find_category(category_id)
    products = shop.find_products_by_category(category_id)
    return render_template(
        'category.html',
        products=products,
        category=category,
        links=links,
    )


if __name__ == '__main__':
    app.run('0.0.0.0', debug=True)
