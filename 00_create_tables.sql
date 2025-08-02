-- Creating users table: 

CREATE TABLE users (
    user_id VARCHAR(10) PRIMARY KEY,
    user_pseudo_id VARCHAR(20) UNIQUE NOT NULL,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    country VARCHAR(50)
);

-- Creating products table:

CREATE TABLE products (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price NUMERIC(10,2)
);


--Creating sessions table:

CREATE TABLE sessions (
    session_id VARCHAR(10) PRIMARY KEY,
    user_id VARCHAR(10),
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    source VARCHAR(50),
    medium VARCHAR(50),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

--Creating events table:

CREATE TABLE events (
    event_id VARCHAR(10) PRIMARY KEY,
    event_type VARCHAR(20) CHECK (event_type IN ('page_view', 'add_to_cart', 'purchase')),
    event_timestamp TIMESTAMP,
    user_id VARCHAR(10),
    product_id VARCHAR(10),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
