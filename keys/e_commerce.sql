CREATE TABLE
                                           Table "public.customers"
   Column    |          Type          | Collation | Nullable |                    Default                     
-------------+------------------------+-----------+----------+------------------------------------------------
 customer_id | integer                |           | not null | nextval('customers_customer_id_seq'::regclass)
 name        | character varying(20)  |           |          | 
 email       | character varying(100) |           |          | 
Indexes:
    "customers_pkey" PRIMARY KEY, btree (customer_id)
    "customers_email_key" UNIQUE CONSTRAINT, btree (email)


CREATE TABLE

                                     Table "public.orders"
    Column    |     Type      | Collation | Nullable |                 Default                  
--------------+---------------+-----------+----------+------------------------------------------
 order_id     | integer       |           | not null | nextval('orders_order_id_seq'::regclass)
 customer_id  | integer       |           |          | 
 order_date   | date          |           |          | 
 total_amount | numeric(10,2) |           |          | 
Indexes:
    "orders_pkey" PRIMARY KEY, btree (order_id)
Foreign-key constraints:
    "orders_customer_id_fkey" FOREIGN KEY (customer_id) REFERENCES customers(customer_id)