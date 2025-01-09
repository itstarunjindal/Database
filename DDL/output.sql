CREATE DATABASE
CREATE TABLE
                                          Table "public.employees"
   Column    |         Type          | Collation | Nullable |                    Default                     
-------------+-----------------------+-----------+----------+------------------------------------------------
 employee_id | integer               |           | not null | nextval('employees_employee_id_seq'::regclass)
 first_name  | character varying(50) |           |          | 
 last_name   | character varying(50) |           |          | 
 salary      | numeric               |           |          | 
Indexes:
    "employees_pkey" PRIMARY KEY, btree (employee_id)

ALTER TABLE
                                          Table "public.employees"
   Column    |         Type          | Collation | Nullable |                    Default                     
-------------+-----------------------+-----------+----------+------------------------------------------------
 employee_id | integer               |           | not null | nextval('employees_employee_id_seq'::regclass)
 first_name  | character varying(50) |           |          | 
 last_name   | character varying(50) |           |          | 
 salary      | numeric               |           |          | 
 department  | character varying(50) |           |          | 
Indexes:
    "employees_pkey" PRIMARY KEY, btree (employee_id)

ALTER TABLE
                                          Table "public.employees"
   Column    |         Type          | Collation | Nullable |                    Default                     
-------------+-----------------------+-----------+----------+------------------------------------------------
 employee_id | integer               |           | not null | nextval('employees_employee_id_seq'::regclass)
 first_name  | character varying(50) |           |          | 
 last_name   | character varying(50) |           |          | 
 salary      | numeric               |           |          | 
 department  | character varying(50) |           |          | 
Indexes:
    "employees_pkey" PRIMARY KEY, btree (employee_id)

ALTER TABLE
                                            Table "public.staff"
   Column    |         Type          | Collation | Nullable |                    Default                     
-------------+-----------------------+-----------+----------+------------------------------------------------
 employee_id | integer               |           | not null | nextval('employees_employee_id_seq'::regclass)
 first_name  | character varying(50) |           |          | 
 last_name   | character varying(50) |           |          | 
 salary      | numeric               |           |          | 
 department  | character varying(50) |           |          | 
Indexes:
    "employees_pkey" PRIMARY KEY, btree (employee_id)

ALTER TABLE
                                            Table "public.staff"
   Column    |         Type          | Collation | Nullable |                    Default                     
-------------+-----------------------+-----------+----------+------------------------------------------------
 employee_id | integer               |           | not null | nextval('employees_employee_id_seq'::regclass)
 first_name  | character varying(50) |           |          | 
 last_name   | character varying(50) |           |          | 
 salary      | numeric               |           |          | 
Indexes:
    "employees_pkey" PRIMARY KEY, btree (employee_id)

CREATE TABLE
                      List of relations
 Schema |             Name              |   Type   |  Owner   
--------+-------------------------------+----------+----------
 public | departments                   | table    | postgres
 public | departments_department_id_seq | sequence | postgres
 public | employees_employee_id_seq     | sequence | postgres
 public | staff                         | table    | postgres
(4 rows)

                                             Table "public.departments"
     Column      |         Type          | Collation | Nullable |                      Default                       
-----------------+-----------------------+-----------+----------+----------------------------------------------------
 department_id   | integer               |           | not null | nextval('departments_department_id_seq'::regclass)
 department_name | character varying(50) |           |          | 
Indexes:
    "departments_pkey" PRIMARY KEY, btree (department_id)

CREATE DATABASE
                                                        List of databases
   Name    |  Owner   | Encoding |      Collate       |       Ctype        | ICU Locale | Locale Provider |   Access privileges   
-----------+----------+----------+--------------------+--------------------+------------+-----------------+-----------------------
 company   | postgres | UTF8     | English_India.1252 | English_India.1252 |            | libc            | 
 inventory | postgres | UTF8     | English_India.1252 | English_India.1252 |            | libc            | 
 postgres  | postgres | UTF8     | English_India.1252 | English_India.1252 |            | libc            | 
 template0 | postgres | UTF8     | English_India.1252 | English_India.1252 |            | libc            | =c/postgres          +
           |          |          |                    |                    |            |                 | postgres=CTc/postgres
 template1 | postgres | UTF8     | English_India.1252 | English_India.1252 |            | libc            | =c/postgres          +
           |          |          |                    |                    |            |                 | postgres=CTc/postgres
(5 rows)

CREATE TABLE
                   List of relations
 Schema |          Name           |   Type   |  Owner   
--------+-------------------------+----------+----------
 public | products                | table    | postgres
 public | products_product_id_seq | sequence | postgres
(2 rows)

DROP DATABASE
                                                        List of databases
   Name    |  Owner   | Encoding |      Collate       |       Ctype        | ICU Locale | Locale Provider |   Access privileges   
-----------+----------+----------+--------------------+--------------------+------------+-----------------+-----------------------
 company   | postgres | UTF8     | English_India.1252 | English_India.1252 |            | libc            | 
 postgres  | postgres | UTF8     | English_India.1252 | English_India.1252 |            | libc            | 
 template0 | postgres | UTF8     | English_India.1252 | English_India.1252 |            | libc            | =c/postgres          +
           |          |          |                    |                    |            |                 | postgres=CTc/postgres
 template1 | postgres | UTF8     | English_India.1252 | English_India.1252 |            | libc            | =c/postgres          +
           |          |          |                    |                    |            |                 | postgres=CTc/postgres
(4 rows)

