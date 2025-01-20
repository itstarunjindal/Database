CREATE DATABASE
CREATE TABLE
CREATE TABLE
CREATE TABLE
INSERT 0 1
INSERT 0 3
INSERT 0 5
 student_id | firstname | lastname | enrollmentdate |    email     
------------+-----------+----------+----------------+--------------
          1 | f1        | l1       | 2024-05-15     | f1@gmail.com
          2 | f2        | l2       | 2024-10-05     | f2@gmail.com
          3 | f3        | l3       | 2025-01-05     | f3@gmail.com
          4 | f4        | l4       | 2024-09-25     | f4@gmail.com
(4 rows)

 course_id | course_name | credits 
-----------+-------------+---------
         1 | c1          |       5
         2 | c2          |       2
         3 | c3          |       3
         4 | c4          |       5
         5 | c5          |      10
(5 rows)

ques: Create a stored procedure named EnrollStudent that:
    Takes inputs: StudentID, CourseID, and an optional Grade.
    Checks if the student is already enrolled in the course using a subquery.
    If not enrolled, inserts a new record into the Enrollments table.
    If enrolled, updates the Grade if a new value is provided.


query: 
create or replace procedure enrollmentStudent(StudentID integer, CourseID integer, Grade integer default null) as $$ begin if exists (select 1 from enrollments where student_id = StudentID and course_id = courseID)then if Grade is not null then update enrollments set grade = Grade where student_id = StudentID and course_id = courseID; end if; else insert into enrollments(student_id, course_id, grade) values (StudentID, CourseID,Grade); end if; end; $$ language plpgsql;
CREATE PROCEDURE

call enrollmentStudent(2,1,5); // procedure called
result: 

student_info=# select * from enrollments;
 enrollment_id | student_id | course_id | grade
---------------+------------+-----------+-------
             1 |          2 |         1 |  5.00
(1 row)


ques: indexing

Optimize the performance of the database by:
Adding an index to improve the performance of queries on Enrollments that filter by StudentID and CourseID.
Justify why indexing is necessary for these columns.


for StudentID:
create index student_index on enrollments(student_id);

for CourseID:
create index course_index on enrollments(course_id);

result:
    Column     |     Type     | Collation | Nullable |
Default
---------------+--------------+-----------+----------+----------------------------------------------------
 enrollment_id | integer      |           | not null | nextval('enrollments_enrollment_id_seq'::regclass)
 student_id    | integer      |           |          |
 course_id     | integer      |           |          |
 grade         | numeric(3,2) |           |          |
Indexes:
    "enrollments_pkey" PRIMARY KEY, btree (enrollment_id)
    "course_index" btree (course_id)
    "student_index" btree (student_id)
Foreign-key constraints:
    "enrollments_course_id_fkey" FOREIGN KEY (course_id) REFERENCES courses(course_id)
    "enrollments_student_id_fkey" FOREIGN KEY (student_id) REFERENCES student(student_id)


Indexing will fasten the performance of queries such:
select * from enrollments where student_id = 2;
select * from enrollments where course_id = 1;
select * from enrollments where student_id = 2 and course_id = 1;

indexing is helpfull for fillering database where to find student and course information.


Subquery:
Write a query to fetch students who:
ques: Have enrolled in more than 3 courses.

select * from enrollments where 3<=(select count(course_id) as course_count, student_id from enrollments group by student_id);
