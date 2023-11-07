CREATE TABLE customer (
  customer_id SERIAL PRIMARY KEY,
  email VARCHAR(50),
  phone VARCHAR(30),
  address VARCHAR(100)
);

CREATE TABLE cart (
  cart_id SERIAL PRIMARY KEY,
  customer_id INTEGER,
  sub_total NUMERIC(6,2),
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

CREATE TABLE concessions (
  concession_id SERIAL PRIMARY KEY,
  product VARCHAR(50),
  quantity INTEGER,
  price NUMERIC(6,2),
  cart_id INTEGER,
  FOREIGN KEY (cart_id) REFERENCES Cart(cart_id)
);

CREATE TABLE billing (
  billing_id SERIAL PRIMARY KEY,
  billing_address VARCHAR(100),
  full_name VARCHAR(100),
  card_number VARCHAR(50),
  payment_method VARCHAR(50),
  customer_id INTEGER,
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

CREATE TABLE screen (
  screen_id SERIAL PRIMARY KEY,
  theater_row VARCHAR(20),
  seats INTEGER
);

CREATE TABLE movies (
  movie_id SERIAL PRIMARY KEY,
  movie_title VARCHAR(50),
  showtimes VARCHAR(50),
  runtime VARCHAR(50)
);

CREATE TABLE tickets (
  ticket_id SERIAL PRIMARY KEY,
  movie_id INTEGER,
  price NUMERIC(6,2),
  quantity INTEGER,
  movie_date DATE,
  showtime VARCHAR(50),
  screen_id INTEGER,
  seats VARCHAR(50),
  theater_location INTEGER,
  cart_id INTEGER,
  FOREIGN KEY (screen_id) REFERENCES Screen(screen_id),
  FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
  FOREIGN KEY (cart_id) REFERENCES Cart(cart_id)
);

