-->1)

CREATE TABLE countries(
country_id INT,
country_name VARCHAR(30),
region_id INT	
);

SELECT * FROM countries;
------------------------->

-->2)
CREATE TABLE Sales(
sale_id SERIAL PRIMARY KEY,
product_id INT,
quantity_sold INT,
sale_date DATE,
total_price float
);

INSERT INTO Sales(product_id, quantity_sold, sale_date,	total_price)
VALUES(2,20,'2024-06-01',200.0),
(7,20,'2024-06-12',50.7),
(4,20,'2024-06-11',300.0)

SELECT * FROM Sales;

SELECT * FROM Sales 
WHERE total_price>100;

------------------------------------------------->

-->3)

SELECT ROUND(CAST(SUM(total_price) AS numeric), 2) AS total_sales
FROM Sales;


---------------------->

-->4)
CREATE TABLE prodductss
(
product_id SERIAL PRIMARY KEY,
product_name VARCHAR(30),
category VARCHAR(30),
unit_price INT
);

SELECT * FROM prodductss;

INSERT INTO prodductss(product_name, category, unit_price )
VALUES('Laptop','electronics',7000),
('Mobile','electronics',2000),
('Headphones','electronics',500),
('soap','caustic',60)

SELECT category, SUM(unit_price) FROM prodductss
GROUP BY category
HAVING category='electronics';

---->50

SELECT product_name,category FROM prodductss
ORDER BY category ASC;







