CREATE TABLE Customers (
  customer_id SERIAL PRIMARY KEY,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  email VARCHAR(100),
  sex VARCHAR(50),
  phone_number VARCHAR(50),
  address VARCHAR(200),
  membership_date DATE,
  birthday DATE
);

CREATE TABLE Theaters (
  theater_id SERIAL PRIMARY KEY,
  "name" VARCHAR(100),
  "location" VARCHAR(200),
  capacity INTEGER
);

CREATE TABLE Movies (
  movie_id SERIAL PRIMARY KEY,
  movie_name VARCHAR(100),
  genre VARCHAR(1000),
  rating VARCHAR(20),
  release_date DATE,
  end_date DATE,
  duration NUMERIC,
  "cast" VARCHAR(10000),
  director VARCHAR(100)
);

CREATE TABLE Show_Times (
  showtime_id SERIAL PRIMARY KEY,
  start_time TIME,
  end_time TIME,
  movie_id INTEGER,
  theater_id INTEGER,
    FOREIGN KEY (theater_id)
      REFERENCES Theaters(theater_id),
	FOREIGN KEY (movie_id)
	  REFERENCES Movies(movie_id)
);

CREATE TABLE Tickets (
  ticket_id SERIAL PRIMARY KEY,
  seat_number VARCHAR(100),
  ticket_price NUMERIC(10,2),
  quantity INTEGER,
  purchase_date DATE,
  showtime_id INTEGER,
  customer_id INTEGER,
    FOREIGN KEY (showtime_id)
      REFERENCES Show_Times(showtime_id),
	FOREIGN KEY (customer_id)
	  REFERENCES Customers(customer_id)
);


CREATE TABLE Orders_History (
  order_id SERIAL PRIMARY KEY,
  customer_id INTEGER,
  "date" DATE,
  total_amount NUMERIC(10,2),
  payment_method VARCHAR(100),
    FOREIGN KEY (customer_id)
      REFERENCES Customers(customer_id)
);

CREATE TABLE Consessions (
  consession_id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  description VARCHAR(100),
  price NUMERIC(10,2)
);

CREATE TABLE Consession_Sales (
  sale_id SERIAL PRIMARY KEY,
  quantity INTEGER,
  total_payment NUMERIC(10,2),
  sale_date DATE,
  customer_id INTEGER,
  consession_id INTEGER,
    FOREIGN KEY (customer_id)
      REFERENCES Customers(customer_id),
	FOREIGN KEY (consession_id)
	  REFERENCES Consessions(consession_id)
);


