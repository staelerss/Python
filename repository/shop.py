import pymysql.cursors

connection = pymysql.connect(
    host='localhost',
    user='root',
    password='',
    db='shop',
    charset='utf8mb4',
    cursorclass=pymysql.cursors.DictCursor
)


def find_category(category_id):
    with connection.cursor() as cursor:
        cursor.execute('''
        SELECT 
            id,
            title,
            description,
            image_url
        FROM category
        WHERE id = %s
        ''', (category_id,))
        category = cursor.fetchone()

    return category


def find_all_categories():
    with connection.cursor() as cursor:
        cursor.execute("""
        SELECT 
            id,
            title,
            description,
            image_url
        FROM category
        """)
        categories = cursor.fetchall()

    return categories


def find_products_by_category(category_id):
    with connection.cursor() as cursor:
        cursor.execute('''
        SELECT
            p.id,
            p.title,
            description,
            price,
            cat_id,
            i.url AS image_src,
            i.title AS image_title
            FROM products p
            LEFT JOIN image i ON p.id = i.product_id
            WHERE cat_id = %s
        ''', (category_id,))
        products = cursor.fetchall()

        return products
