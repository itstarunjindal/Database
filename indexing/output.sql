 
 Customer table:
 customer_id | customer_name 
-------------+---------------
           1 | c1
           2 | c2
           3 | c3
           4 | c4
           5 | c5
           6 | c6
(6 rows)

product table:
 product_id | product_name 
------------+--------------
          1 | p1
          2 | p2
          3 | p3
          4 | p4
          5 | p5
          6 | p6
(6 rows)

order table:
 order_id | customer_id | product_id | order_date |                              review                              
----------+-------------+------------+------------+------------------------------------------------------------------
        2 |           2 |          5 | 2025-01-10 | Great product, highly recommend for its quality and performance!
        3 |           4 |          1 | 2025-01-09 | Quality product that delivers exactly what it promises
(2 rows)

Problem statement: A table storing customer orders is experiencing slow query performance, particularly when filtering by customer name or order date.

query: create index on customers(customer_name);
CREATE INDEX

Table "public.customers"
    Column     |         Type          | Collation | Nullable |                    Default                     
---------------+-----------------------+-----------+----------+------------------------------------------------
 customer_id   | integer               |           | not null | nextval('customers_customer_id_seq'::regclass)
 customer_name | character varying(20) |           |          | 
Indexes:
    "customers_pkey" PRIMARY KEY, btree (customer_id)
    "customers_customer_name_idx" btree (customer_name)
Referenced by:
    TABLE "orders" CONSTRAINT "orders_customer_id_fkey" FOREIGN KEY (customer_id) REFERENCES customers(customer_id)


query: create index id_order_data on orders(order_date);
CREATE INDEX

                                         Table "public.orders"
   Column    |          Type          | Collation | Nullable |                 Default                  
-------------+------------------------+-----------+----------+------------------------------------------
 order_id    | integer                |           | not null | nextval('orders_order_id_seq'::regclass)
 customer_id | integer                |           |          | 
 product_id  | integer                |           |          | 
 order_date  | date                   |           |          | 
 review      | character varying(100) |           |          | 
Indexes:
    "orders_pkey" PRIMARY KEY, btree (order_id)
    "id_order_data" btree (order_date)
    "orders_order_date_idx" btree (order_date)
Foreign-key constraints:
    "orders_customer_id_fkey" FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
    "orders_product_id_fkey" FOREIGN KEY (product_id) REFERENCES product(product_id)



Problem statement: A table storing product information with frequent searches on product descriptions is causing slow response times.

query: create index id_review on orders using gin (to_tsvector('english', review));
CREATE INDEX


query: select * from orders where to_tsvector('english', review) @@ to_tsquery('recommend & quality');

 order_id | customer_id | product_id | order_date |                              review                              
----------+-------------+------------+------------+------------------------------------------------------------------
        2 |           2 |          5 | 2025-01-10 | Great product, highly recommend for its quality and performance!
(1 row)



query: select * from orders where to_tsvector('english', review) @@ to_tsquery('quality');

 order_id | customer_id | product_id | order_date |                              review                              
----------+-------------+------------+------------+------------------------------------------------------------------
        2 |           2 |          5 | 2025-01-10 | Great product, highly recommend for its quality and performance!
        3 |           4 |          1 | 2025-01-09 | Quality product that delivers exactly what it promises
(2 rows)

