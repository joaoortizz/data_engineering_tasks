-- INSERT


-- USERS
INSERT INTO users (
  user_id, first_name, last_name, date_created, 
  email
) 
VALUES 
  (
    1, 'Joao', 'Silva', '2022-12-12', 'joaosilva@email.com'
  );

INSERT INTO users (
  user_id, first_name, last_name, date_created, 
  email
) 
VALUES 
  (
    2, 'Maria', 'Scott', '2022-12-01', 
    'maria@email.com'
  );

INSERT INTO users (
  user_id, first_name, last_name, date_created, 
  email
) 
VALUES 
  (
    3, 'Bernardo', 'Andrade', '2021-12-12', 
    'andrade@email.com'
  );


-- COUNTRY
INSERT INTO country (
  country_id, country_name, currency_code
) 
VALUES 
  (1, 'USA', 'USD');

INSERT INTO country (
  country_id, country_name, currency_code
) 
VALUES 
  (2, 'Brazil', 'BRL');

INSERT INTO country (
  country_id, country_name, currency_code
) 
VALUES 
  (3, 'Argentina', 'ARS');

INSERT INTO country (
  country_id, country_name, currency_code
) 
VALUES 
  (4, 'Switzerland', 'CHF');


-- CITY
INSERT INTO city (city_id, city_name, country_id) 
VALUES 
  (1, 'São Paulo', 2);

INSERT INTO city (city_id, city_name, country_id) 
VALUES 
  (2, 'Rio de Janeiro', 2);

INSERT INTO city (city_id, city_name, country_id) 
VALUES 
  (3, 'New York', 1);

INSERT INTO city (city_id, city_name, country_id) 
VALUES 
  (4, 'Buenos Aires', 3);

INSERT INTO city (city_id, city_name, country_id) 
VALUES 
  (5, 'Geneva', 4);


-- ORDERS
INSERT INTO orders (
  order_id, user_id, date_created, order_value, 
  city_id
) 
VALUES 
  (1, 1, '2022-12-11', 3.4, 1);

INSERT INTO orders (
  order_id, user_id, date_created, order_value, 
  city_id
) 
VALUES 
  (2, 1, '2022-12-11', 4.4, 1);

INSERT INTO orders (
  order_id, user_id, date_created, order_value, 
  city_id
) 
VALUES 
  (3, 2, '2022-12-10', 1.4, 3);

INSERT INTO orders (
  order_id, user_id, date_created, order_value, 
  city_id
) 
VALUES 
  (4, 2, '2022-12-11', 1.4, 3);
  
INSERT INTO orders (
  order_id, user_id, date_created, order_value, 
  city_id
) 
VALUES 
  (5, 2, '2022-12-12', 1.4, 3);

INSERT INTO orders (
  order_id, user_id, date_created, order_value, 
  city_id
) 
VALUES 
  (6, 3, '2022-11-15', 1, 5);
  
INSERT INTO orders (
  order_id, user_id, date_created, order_value, 
  city_id
) 
VALUES 
  (7, 3, '2022-10-28', 1, 5);

INSERT INTO orders (
  order_id, user_id, date_created, order_value, 
  city_id
) 
VALUES 
  (8, 3, '2022-11-10', 1, 5);