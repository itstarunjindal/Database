
table details
 id | name |    dob     | is_student 
----+------+------------+------------
  1 | p1   | 2020-05-22 | Y
  2 | p2   | 2015-07-02 | Y
  3 | p3   | 2001-01-01 | N
  4 | p4   | 1990-10-15 | N
(4 rows)

Problem Statement: A table stores birthdates as strings in the format 'YYYY-MM-DD'. You need to calculate the age of customers.

Query: select *, extract (year from age(dob::date))as age from details;

Result:
 id | name |    dob     | is_student | age 
----+------+------------+------------+-----
  1 | p1   | 2020-05-22 | Y          |   4
  2 | p2   | 2015-07-02 | Y          |   9
  3 | p3   | 2001-01-01 | N          |  24
  4 | p4   | 1990-10-15 | N          |  34
(4 rows)

Problem Statement: A column stores a boolean value as 'Y' or 'N'. You need to perform logical operations on this column.

Query: select case when is_student = 'Y' then true else false end as boolean_value from details;

Result:
 boolean_value 
-----------------------
 t
 t
 f
 f
(4 rows)

