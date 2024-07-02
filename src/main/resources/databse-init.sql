DROP TABLE IF EXISTS order_items;
DROP TABLE IF EXISTS menu_items;
DROP TABLE IF EXISTS restaurants;
DROP TABLE IF EXISTS carts;
DROP TABLE IF EXISTS authorities;
DROP TABLE IF EXISTS customers;

CREATE TABLE customers
(
    id SERIAL PRIMARY KEY  NOT NULL,
    email TEXT UNIQUE  NOT NULL,
    enabled BOOLEAN DEFAULT TRUE NOT NULL,
    password TEXT NOT NULL,
    first_name TEXT,
    last_name TEXT
);

CREATE TABLE authorities
(
    id SERIAL PRIMARY KEY  NOT NULL,
    customer_id INTEGER UNIQUE  NOT NULL,
    total_price NUMERIC NOT NULL,
);

