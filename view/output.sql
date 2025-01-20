CREATE DATABASE
CREATE TABLE
INSERT 0 4
 student_id | student_name | class | address 
------------+--------------+-------+---------
          1 | s1           | 1     | patiala
          2 | s2           | 6     | rajpura
          3 | s3           | 10    | banur
          4 | s4           | 8     | ambala
(4 rows)

ALTER TABLE
 student_id | student_name | class | address | account 
------------+--------------+-------+---------+---------
          1 | s1           | 1     | patiala | 
          2 | s2           | 6     | rajpura | 
          3 | s3           | 10    | banur   | 
          4 | s4           | 8     | ambala  | 
(4 rows)


Ques: How do you create a view in PostgreSQL?
CREATE VIEW
 student_id | student_name | class | address 
------------+--------------+-------+---------
          1 | s1           | 1     | patiala
          2 | s2           | 6     | rajpura
          3 | s3           | 10    | banur
        UPDATE 1
 student_id | student_name | class | address | account 
------------+--------------+-------+---------+---------
          1 | s1           | 1     | patiala | 
          2 | s2           | 6     | rajpura | 
          4 | s4           | 8     | ambala  | 
          3 | s3           | 5     | banur   | 
(4 rows)

