QUERY: You are tasked with designing a database for a library system. The database should track books, members, and borrowing activities.

CREATE DATABASE

QUERY: DDL (Data Definition Language):
   * Create the following tables:
     * Books with columns: book_id, title, author, publication_year, genre.
     * Members with columns: member_id, name, address, contact_number.
     * Borrowings with columns: borrowing_id, book_id, member_id, borrow_date, due_date, returned_date.

CREATE TABLE
CREATE TABLE
                  List of relations
 Schema |         Name          |   Type   |  Owner   
--------+-----------------------+----------+----------
 public | books                 | table    | postgres
 public | books_book_id_seq     | sequence | postgres
 public | members               | table    | postgres
 public | members_member_id_seq | sequence | postgres
(4 rows)

CREATE TABLE
                     List of relations
 Schema |            Name            |   Type   |  Owner   
--------+----------------------------+----------+----------
 public | books                      | table    | postgres
 public | books_book_id_seq          | sequence | postgres
 public | borrowing                  | table    | postgres
 public | borrowing_borrowing_id_seq | sequence | postgres
 public | members                    | table    | postgres
 public | members_member_id_seq      | sequence | postgres
(6 rows)

                                           Table "public.members"
     Column     |         Type          | Collation | Nullable |                  Default                   
----------------+-----------------------+-----------+----------+--------------------------------------------
 member_id      | integer               |           | not null | nextval('members_member_id_seq'::regclass)
 name           | character varying(20) |           |          | 
 address        | character varying(30) |           |          | 
 contact_number | integer               |           |          | 
Indexes:
    "members_pkey" PRIMARY KEY, btree (member_id)
Referenced by:
    TABLE "borrowing" CONSTRAINT "borrowing_member_id_fkey" FOREIGN KEY (member_id) REFERENCES members(member_id)

                                           Table "public.books"
      Column      |         Type          | Collation | Nullable |                Default                 
------------------+-----------------------+-----------+----------+----------------------------------------
 book_id          | integer               |           | not null | nextval('books_book_id_seq'::regclass)
 title            | character varying(20) |           |          | 
 author           | character varying(20) |           |          | 
 publication_year | integer               |           |          | 
 genre            | character varying(10) |           |          | 
Indexes:
    "books_pkey" PRIMARY KEY, btree (book_id)
Referenced by:
    TABLE "borrowing" CONSTRAINT "borrowing_book_id_fkey" FOREIGN KEY (book_id) REFERENCES books(book_id)

                                    Table "public.borrowing"
    Column    |  Type   | Collation | Nullable |                     Default                     
--------------+---------+-----------+----------+-------------------------------------------------
 borrowing_id | integer |           | not null | nextval('borrowing_borrowing_id_seq'::regclass)
 book_id      | integer |           |          | 
 member_id    | integer |           |          | 
Indexes:
    "borrowing_pkey" PRIMARY KEY, btree (borrowing_id)
Foreign-key constraints:
    "borrowing_book_id_fkey" FOREIGN KEY (book_id) REFERENCES books(book_id)
    "borrowing_member_id_fkey" FOREIGN KEY (member_id) REFERENCES members(member_id)

ALTER TABLE
ALTER TABLE
ALTER TABLE
                                     Table "public.borrowing"
    Column     |  Type   | Collation | Nullable |                     Default                     
---------------+---------+-----------+----------+-------------------------------------------------
 borrowing_id  | integer |           | not null | nextval('borrowing_borrowing_id_seq'::regclass)
 book_id       | integer |           |          | 
 member_id     | integer |           |          | 
 borrow_data   | integer |           |          | 
 due_data      | integer |           |          | 
 returned_data | integer |           |          | 
Indexes:
    "borrowing_pkey" PRIMARY KEY, btree (borrowing_id)
Foreign-key constraints:
    "borrowing_book_id_fkey" FOREIGN KEY (book_id) REFERENCES books(book_id)
    "borrowing_member_id_fkey" FOREIGN KEY (member_id) REFERENCES members(member_id)

QUERY: * DML (Data Manipulation Language):
   * Insert sample data into each table (at least 5 records per table).

INSERT 0 2
INSERT 0 3
 book_id | title | author | publication_year |  genre   
---------+-------+--------+------------------+----------
       1 | book1 | a1     |             2020 | action
       2 | book2 | a2     |             2015 | friction
       3 | book3 | a1     |             2024 | action
       4 | book4 | a3     |             2019 | g5
       5 | book5 | a2     |             1999 | comedy
(5 rows)

INSERT 0 1
INSERT 0 4
 member_id | name | address  | contact_number 
-----------+------+----------+----------------
         1 | m1   | patiala  |     1111111111
         2 | m2   | batianda |      123456789
         3 | m3   | rajpura  |      287654123
         4 | m4   | banur    |      456789123
         5 | m5   | nabha    |      369258741
(5 rows)

INSERT 0 1
INSERT 0 4
 borrowing_id | book_id | member_id | borrow_data | due_data | returned_data 
--------------+---------+-----------+-------------+----------+---------------
            1 |       2 |         1 |           2 |       17 |            15
            2 |       3 |         5 |          10 |       25 |            27
            3 |       1 |         1 |           5 |       20 |            10
            4 |       3 |         1 |           8 |       23 |            25
            5 |       1 |         5 |          15 |       30 |            27
(5 rows)

Retrieve all books by a specific author.

 book_id | title | author | publication_year | genre  
---------+-------+--------+------------------+--------
       1 | book1 | a1     |             2020 | action
       3 | book3 | a1     |             2024 | action
(2 rows)




 book_id | title | author | publication_year | genre 
---------+-------+--------+------------------+-------
       4 | book4 | a3     |             2019 | g5
(1 row)

 book_id | title | author | publication_year | genre 
---------+-------+--------+------------------+-------
(0 rows)


QUERY: Find members who have borrowed a particular book.


 member_id 
-----------
         1
(1 row)

 member_id 
-----------
         5
         1
(2 rows)

 book_id 
---------
       2
       3
       1
       3
       1
(5 rows)

 book_id 
---------
       2
       1
       1
(3 rows)

COMMIT
 count 
-------
     5
(1 row)

ROLLBACK
INSERT 0 1
ROLLBACK
 borrowing_id | book_id | member_id | borrow_data | due_data | returned_data 
--------------+---------+-----------+-------------+----------+---------------
            1 |       2 |         1 |           2 |       17 |            15
            2 |       3 |         5 |          10 |       25 |            27
            3 |       1 |         1 |           5 |       20 |            10
            4 |       3 |         1 |           8 |       23 |            25
            5 |       1 |         5 |          15 |       30 |            27
            6 |       3 |         3 |           3 |       18 |            15
(6 rows)

 count 
-------
     1
     2
     3
(3 rows)

