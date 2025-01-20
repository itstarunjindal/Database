CREATE DATABASE
CREATE TABLE
INSERT 0 4

This is my employee table

 employee_id | employee_name | salary | department 
-------------+---------------+--------+------------
           1 | e1            |  10000 | hr
           2 | e2            |  15000 | devlopment
           3 | e3            |   7000 | sales
           4 | e4            |  12000 | marketing
(4 rows)

ques1: How can you use a subquery to find employees who earn more than the average salary?

query:  select * from employees where salary>(select avg(salary) from employees);

result:

 employee_id | employee_name | salary | department 
-------------+---------------+--------+------------
           2 | e2            |  15000 | devlopment
           4 | e4            |  12000 | marketing
(2 rows)


ques2: What is the difference between EXISTS and IN subqueries?

query: select * from employees where employee_name in(select employee_name from employees where employee_name = 'e1'
or employee_name = 'e4');

result:
 employee_id | employee_name | salary | department
-------------+---------------+--------+------------
           1 | e1            |  10000 | hr
           4 | e4            |  12000 | marketing
(2 rows)


query: select * from employees where exists(select * from employees where employee_name = 'e8');

result:
 employee_id | employee_name | salary | department
-------------+---------------+--------+------------
(0 rows)


query: select * from employees where exists(select * from employees where employee_name = 'e8' or employee_name = 'e4');

result:
 employee_id | employee_name | salary | department
-------------+---------------+--------+------------
           1 | e1            |  10000 | hr
           2 | e2            |  15000 | devlopment
           3 | e3            |   7000 | sales
           4 | e4            |  12000 | marketing
(4 rows)

In keyword search employee_name get from subquery in main query while exists keyword check where a single record is present or not.


ques3: How can you use a correlated subquery to find  employees with the highest salaries in each department?
ans:

SELECT employee_id, employee_name, salary, department
FROM employees e1
WHERE salary = (
    SELECT MAX(salary)
    FROM employees e2
    WHERE e1.department = e2.department
);

ques4: Can you use a subquery in the FROM clause? If so, how?
ans: Yes, you can use a subquery in the FROM clause. This is called a derived table or an inline view. The subquery is treated as a temporary table that you can query further.

SELECT e.employee_id, e.employee_name, e.salary, e.department
FROM employees e,
     (SELECT AVG(salary) AS avg_salary FROM employees) subquery
WHERE e.salary > subquery.avg_salary;


ques5: How can you use a subquery to find the department with the highest average salary?

SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) = (
    SELECT MAX(avg_salary)
    FROM (
        SELECT AVG(salary) AS avg_salary
        FROM employees
        GROUP BY department
    ) subquery
)


ques6: What are some common performance issues with subqueries?
ans: 
1. Subqueries can be slow to execute because they require multiple passes over the data.
2. Subqueries can be difficult to understand and debug.
3. Subqueries can be difficult to optimize.
4. Subqueries can be difficult to maintain.

ques7: How can you optimize a subquery to improve performance?
ans:
1. Use indexes to speed up the subquery.
2. Use a window function to speed up the subquery.

ques8: Can you use a subquery within another subquery?
ans: Yes, you can use a subquery within another subquery.

ques9: How can you use a subquery to find duplicate records in a table?
ans:
SELECT employee_id, employee_name, salary, department
FROM employees e1
WHERE salary IN (
    SELECT salary
    FROM employees e2
    GROUP BY salary
    HAVING COUNT(*) > 1
);

ques10: What are some real-world examples of how subqueries are used in business applications?
ans: 
1. Finding the top-selling products in a store.
2. Finding the highest-paid employees in a company.
3. Finding the most recent orders in a database.
4. Finding the highest-rated movies in a movie database.