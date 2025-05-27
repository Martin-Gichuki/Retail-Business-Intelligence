-- Drop tables if they exist (clean start)
DROP TABLE IF EXISTS order_items, orders, staffs, customers, stocks, products, brands, categories, stores;

-- 1. Customers
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    phone TEXT,
    email TEXT,
    street TEXT,
    city TEXT,
    state TEXT,
    zip_code TEXT
);

-- 2. Stores
CREATE TABLE stores (
    store_id INT PRIMARY KEY,
    store_name TEXT,
    phone TEXT,
    email TEXT,
    street TEXT,
    city TEXT,
    state TEXT,
    zip_code TEXT
);

-- 3. Staffs
CREATE TABLE staffs (
    staff_id INT PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    phone TEXT,
    active BOOLEAN,
    store_id INT,
    manager_id INT
);

-- 4. Orders
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_status TEXT,
    order_date DATE,
    required_date DATE,
    shipped_date DATE,
    store_id INT,
    staff_id INT
);

-- 5. Brands
CREATE TABLE brands (
    brand_id INT PRIMARY KEY,
    brand_name TEXT
);

-- 6. Categories
CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name TEXT
);

-- 7. Products
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name TEXT,
    brand_id INT,
    category_id INT,
    model_year INT,
    list_price NUMERIC
);

-- 8. Order Items
CREATE TABLE order_items (
    order_id INT,
    item_id INT,
    product_id INT,
    quantity INT,
    list_price NUMERIC,
    discount NUMERIC,
    PRIMARY KEY (order_id, item_id)
);

-- 9. Stocks
CREATE TABLE stocks (
    store_id INT,
    product_id INT,
    quantity INT,
    PRIMARY KEY (store_id, product_id)
);
select * from staffs limit 20