CREATE ROLE
GRANT
CREATE ROLE
CREATE ROLE
 usename  
----------
 postgres
 a
 b
 c
(4 rows)

CREATE ROLE
GRANT
GRANT ROLE
GRANT ROLE
GRANT ROLE
                                          List of roles
    Role name    |                         Attributes                         |     Member of     
-----------------+------------------------------------------------------------+-------------------
 a               |                                                            | {employee_insert}
 b               |                                                            | {employee_insert}
 c               |                                                            | {employee_insert}
 employee_insert | Cannot login                                               | {}
 postgres        | Superuser, Create role, Create DB, Replication, Bypass RLS | {}

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

GRANT
                                          List of roles
    Role name    |                         Attributes                         |     Member of     
-----------------+------------------------------------------------------------+-------------------
 a               |                                                            | {employee_insert}
 b               |                                                            | {employee_insert}
 c               |                                                            | {employee_insert}
 employee_insert | Cannot login                                               | {}
 postgres        | Superuser, Create role, Create DB, Replication, Bypass RLS | {}