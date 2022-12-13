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
    2, 'Maria', 'Scott', '2022-01-01', 
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

INSERT INTO users (
  user_id, first_name, last_name, date_created, 
  email
) 
VALUES 
  (
    4, 'John', 'Smith', '2022-01-01', 
    'js@email.com'
  );
  
INSERT INTO users (
  user_id, first_name, last_name, date_created, 
  email
) 
VALUES 
  (
    5, 'Jason', 'Grant', '2021-12-01', 
    'grant@email.com'
  );

INSERT INTO users (
  user_id, first_name, last_name, date_created, 
  email
) 
VALUES 
  (
    6, 'Casimiro', 'Miguel', '2021-12-01', 
    'caze@email.com'
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
  (3, 'UK', 'GBP');

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
  (4, 'London', 3);

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
  (6, 3, '2022-11-10', 1, 5);

INSERT INTO orders (
  order_id, user_id, date_created, order_value, 
  city_id
) 
VALUES 
  (7, 3, '2022-11-10', 1, 5);

INSERT INTO orders (
  order_id, user_id, date_created, order_value, 
  city_id
) 
VALUES 
  (8, 3, '2022-10-20', 1, 5);

INSERT INTO orders (
  order_id, user_id, date_created, order_value, 
  city_id
) 
VALUES 
  (9, 1, '2022-10-28', 1, 2);

INSERT INTO orders (
  order_id, user_id, date_created, order_value, 
  city_id
) 
VALUES 
  (10, 2, '2022-12-10', 21.99, 4);

INSERT INTO orders (
  order_id, user_id, date_created, order_value, 
  city_id
) 
VALUES 
  (11, 2, '2022-11-10', 11.99, 4);

INSERT INTO orders (
  order_id, user_id, date_created, order_value, 
  city_id
) 
VALUES 
  (12, 5, '2021-12-31', 39.99, 4);

INSERT INTO orders (
  order_id, user_id, date_created, order_value, 
  city_id
) 
VALUES 
  (13, 5, '2022-11-10', 71.99, 4);

INSERT INTO orders (
  order_id, user_id, date_created, order_value, 
  city_id
) 
VALUES 
  (14, 4, '2022-11-10', 71.99, 4);

INSERT INTO orders (
  order_id, user_id, date_created, order_value, 
  city_id
) 
VALUES 
  (15, 6, '2022-11-11', 41.99, 4);

INSERT INTO orders (
  order_id, user_id, date_created, order_value, 
  city_id
) 
VALUES 
  (16, 4, '2022-10-12', 21.99, 4);
