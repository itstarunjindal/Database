CREATE DATABASE
CREATE TABLE
                                   Table "public.customer"
 Column |         Type          | Collation | Nullable |               Default                
--------+-----------------------+-----------+----------+--------------------------------------
 id     | integer               |           | not null | nextval('customer_id_seq'::regclass)
 name   | character varying(20) |           |          | 
Indexes:
    "customer_pkey" PRIMARY KEY, btree (id)

INSERT 0 3
 id |  name  
----+--------
  1 | anjali
  2 | rajesh
  3 | tarun
(3 rows)

CREATE TABLE
 id | customer_id 
----+-------------
(0 rows)

                               Table "public.orders"
   Column    |  Type   | Collation | Nullable |              Default               
-------------+---------+-----------+----------+------------------------------------
 id          | integer |           | not null | nextval('orders_id_seq'::regclass)
 customer_id | integer |           |          | 
Indexes:
    "orders_pkey" PRIMARY KEY, btree (id)
Foreign-key constraints:
    "orders_customer_id_fkey" FOREIGN KEY (customer_id) REFERENCES customer(id)

INSERT 0 1
 id | customer_id 
----+-------------
  1 |           1
(1 row)

INSERT 0 3
 id | customer_id 
----+-------------
  1 |           1
  2 |           1
  3 |           2
  4 |           1
(4 rows)

 id | name  | id | customer_id 
----+-------+----+-------------
  3 | tarun |    |            
(1 row)

 id | name  
----+-------
  3 | tarun
(1 row)

