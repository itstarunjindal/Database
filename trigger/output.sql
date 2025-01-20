 product_id | product_name | price | modified_time 
------------+--------------+-------+---------------
          1 | p1           |   120 | 
          2 | p2           |   500 | 
          3 | p3           |   300 | 
(3 rows)

CREATE FUNCTION
                               List of functions
 Schema |         Name         | Result data type | Argument data types | Type 
--------+----------------------+------------------+---------------------+------
 public | update_modified_time | trigger          |                     | func
(1 row)

                               List of functions
 Schema |         Name         | Result data type | Argument data types | Type 
--------+----------------------+------------------+---------------------+------
 public | update_modified_time | trigger          |                     | func
(1 row)

CREATE TRIGGER
 product_id | product_name | price | modified_time 
------------+--------------+-------+---------------
          1 | p1           |   120 | 
          2 | p2           |   500 | 
          3 | p3           |   300 | 
(3 rows)

UPDATE 1
 product_id | product_name | price |       modified_time        
------------+--------------+-------+----------------------------
          2 | p2           |   500 | 
          3 | p3           |   300 | 
          1 | p1           |   100 | 2025-01-17 10:15:23.183111
(3 rows)

INSERT 0 2
 product_id | product_name | price |       modified_time        
------------+--------------+-------+----------------------------
          2 | p2           |   500 | 
          3 | p3           |   300 | 
          1 | p1           |   100 | 2025-01-17 10:15:23.183111
          4 | p4           |  1500 | 
          5 | p5           |  1000 | 
(5 rows)

COMMIT
COMMIT
COMMIT
COMMIT
COMMIT
COMMIT
COMMIT
COMMIT
COMMIT
COMMIT
COMMIT
COMMIT
COMMIT
COMMIT
