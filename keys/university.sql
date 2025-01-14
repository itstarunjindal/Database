Query: CREATE TABLE students (student_id SERIAL PRIMARY KEY,first_name VARCHAR(30),last_name VARCHAR(30));
CREATE TABLE
                                         Table "public.students"
   Column   |         Type          | Collation | Nullable |                   Default                    
------------+-----------------------+-----------+----------+----------------------------------------------
 student_id | integer               |           | not null | nextval('students_student_id_seq'::regclass)
 first_name | character varying(30) |           |          | 
 last_name  | character varying(30) |           |          | 
Indexes:
    "students_pkey" PRIMARY KEY, btree (student_id)

Query: CREATE TABLE courses (course_id SERIAL PRIMARY KEY,student_id INT REFERENCES students(student_id),course_name VARCHAR(40));
CREATE TABLE
                                         Table "public.courses"
   Column    |         Type          | Collation | Nullable |                  Default                   
-------------+-----------------------+-----------+----------+--------------------------------------------
 course_id   | integer               |           | not null | nextval('courses_course_id_seq'::regclass)
 student_id  | integer               |           |          | 
 course_name | character varying(40) |           |          | 
Indexes:
    "courses_pkey" PRIMARY KEY, btree (course_id)
Foreign-key constraints:
    "courses_student_id_fkey" FOREIGN KEY (student_id) REFERENCES students(student_id)