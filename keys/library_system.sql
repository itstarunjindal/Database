CREATE DATABASE
CREATE TABLE
CREATE TABLE
           List of relations
 Schema |   Name    | Type  |  Owner   
--------+-----------+-------+----------
 public | books     | table | postgres
 public | borrowers | table | postgres
(2 rows)

 id | name 
----+------
(0 rows)

 id | book_id | name 
----+---------+------
(0 rows)

                List of relations
 Schema |       Name       |   Type   |  Owner   
--------+------------------+----------+----------
 public | books            | table    | postgres
 public | books_id_seq     | sequence | postgres
 public | borrowers        | table    | postgres
 public | borrowers_id_seq | sequence | postgres
(4 rows)

                                   Table "public.books"
 Column |         Type          | Collation | Nullable |              Default              
--------+-----------------------+-----------+----------+-----------------------------------
 id     | integer               |           | not null | nextval('books_id_seq'::regclass)
 name   | character varying(20) |           |          | 
Indexes:
    "books_pkey" PRIMARY KEY, btree (id)
Referenced by:
    TABLE "borrowers" CONSTRAINT "borrowers_book_id_fkey" FOREIGN KEY (book_id) REFERENCES books(id)

                                    Table "public.borrowers"
 Column  |         Type          | Collation | Nullable |                Default                
---------+-----------------------+-----------+----------+---------------------------------------
 id      | integer               |           | not null | nextval('borrowers_id_seq'::regclass)
 book_id | integer               |           |          | 
 name    | character varying(20) |           |          | 
Indexes:
    "borrowers_pkey" PRIMARY KEY, btree (id)
Foreign-key constraints:
    "borrowers_book_id_fkey" FOREIGN KEY (book_id) REFERENCES books(id)

