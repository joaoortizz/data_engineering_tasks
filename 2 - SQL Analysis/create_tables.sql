-- CREATE TABLES
CREATE TABLE users
  (
     user_id      INT PRIMARY KEY,
     first_name   VARCHAR(255),
     last_name    VARCHAR(255),
     date_created DATE,
     email        VARCHAR(255)
  );

--
CREATE TABLE orders
  (
     order_id     INT PRIMARY KEY,
     user_id      INT,
     date_created DATE,
     order_value  FLOAT,
     city_id      INT
  );

--
CREATE TABLE city
  (
     city_id    INT PRIMARY KEY,
     city_name  VARCHAR(255),
     country_id INT
  );

--
CREATE TABLE country
  (
     country_id    INT PRIMARY KEY,
     country_name  VARCHAR(255),
     currency_code VARCHAR(255)
  ); 