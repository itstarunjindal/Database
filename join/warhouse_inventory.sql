CREATE DATABASE
CREATE TABLE
CREATE TABLE
CREATE TABLE
INSERT 0 3
 product_id | product_name 
------------+--------------
          1 | A
          2 | B
          3 | C
(3 rows)

INSERT 0 2
 warhouse_id | warhouse_name 
-------------+---------------
           1 | X
           2 | Y
(2 rows)

                                    Table "public.inventory"
    Column    |  Type   | Collation | Nullable |                     Default                     
--------------+---------+-----------+----------+-------------------------------------------------
 inventory_id | integer |           | not null | nextval('inventory_inventory_id_seq'::regclass)
 product_id   | integer |           |          | 
 warhourse_id | integer |           |          | 
 quantity     | integer |           |          | 
Indexes:
    "inventory_pkey" PRIMARY KEY, btree (inventory_id)
Foreign-key constraints:
    "inventory_product_id_fkey" FOREIGN KEY (product_id) REFERENCES product(product_id)
    "inventory_warhourse_id_fkey" FOREIGN KEY (warhourse_id) REFERENCES warhouse(warhouse_id)

ALTER TABLE
INSERT 0 2
 inventory_id | product_id | warhouse_id | quantity 
--------------+------------+-------------+----------
            1 |          1 |           2 |       50
            2 |          3 |           1 |       20
(2 rows)

 product_id | product_name 
------------+--------------
(0 rows)

 product_id | product_name 
------------+--------------
          2 | B
(1 row)

