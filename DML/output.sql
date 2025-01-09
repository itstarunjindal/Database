CREATE TABLE
INSERT 0 5
 product_id | product_name | price  
------------+--------------+--------
          1 | Laptop       | 899.99
          2 | Smartphone   | 499.99
          3 | Tablet       | 299.99
          4 | Headphones   |  79.99
          5 | Smartwatch   | 199.99
(5 rows)

UPDATE 1
 product_id | product_name | price  
------------+--------------+--------
          1 | Laptop       | 899.99
          2 | Smartphone   | 499.99
          4 | Headphones   |  79.99
          5 | Smartwatch   | 199.99
          3 | Tablet       | 699.99
(5 rows)

 product_id | product_name | price  
------------+--------------+--------
          2 | Smartphone   | 499.99
          3 | Tablet       | 699.99
(2 rows)

DELETE 2
 product_id | product_name | price  
------------+--------------+--------
          1 | Laptop       | 899.99
          2 | Smartphone   | 499.99
          3 | Tablet       | 699.99
(3 rows)

          List of relations
 Schema |   Name   | Type  |  Owner   
--------+----------+-------+----------
 public | products | table | postgres
(1 row)

DROP TABLE
CREATE TABLE
INSERT 0 3
 employee_id | first_name | last_name |  salary  
-------------+------------+-----------+----------
             | mohan      | mital     | 45000.00
             | raman      | verma     | 62000.00
             | tarun      | jindal    |        0
(3 rows)

 first_name | last_name 
------------+-----------
 mohan      | mital
 raman      | verma
 tarun      | jindal
(3 rows)

UPDATE 1
 employee_id | first_name | last_name |  salary  
-------------+------------+-----------+----------
             | mohan      | mital     | 45000.00
             | raman      | verma     | 62000.00
             | tarun      | jindal    |    12000
(3 rows)

DELETE 0
 employee_id | first_name | last_name |  salary  
-------------+------------+-----------+----------
             | mohan      | mital     | 45000.00
             | raman      | verma     | 62000.00
             | tarun      | jindal    |    12000
(3 rows)

DELETE 1
 employee_id | first_name | last_name |  salary  
-------------+------------+-----------+----------
             | mohan      | mital     | 45000.00
             | raman      | verma     | 62000.00
(2 rows)

DELETE 1
