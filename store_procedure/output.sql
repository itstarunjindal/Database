ques1: How do you create a stored procedure in PostgreSQL?
query:

create or replace procedure update_member(id int, change_name text) as $$ begin update members set name = change_name where
 member_id = id; end; $$ language plpgsql;

call update_member(3,'arjun');     // call the stored procedure

result:
 member_id | name  | address  | contact_number
-----------+-------+----------+----------------
         1 | m1    | patiala  |     1111111111
         2 | m2    | batianda |      123456789
         4 | m4    | banur    |      456789123
         5 | m5    | nabha    |      369258741
         3 | arjun | rajpura  |      287654123
(5 rows)


ques2: How do you pass parameters to a stored procedure?
ans = You can pass parameters when calling the stored procedure by specifying them in parentheses. Parameters are defined in the procedure declaration.

ques3: How do you return a result set from a stored procedure?
ans = You can return a result set from a stored procedure by using the RETURN query.

ques4: What are the benefits of using stored procedures?
ans = The benefits of using stored procedures is improved code reusability and reduced complexity.


ques5: What are the drawbacks of using stored procedures?
ans = drawbacks of using stored procedure are portability issues, difficult in debugging and flexibility issues.


ques6: How do you debug a stored procedure?
ans:
CREATE OR REPLACE FUNCTION example_function()
RETURNS void AS $$
BEGIN
    -- Some logic
    RAISE NOTICE 'Some notice here';
EXCEPTION WHEN OTHERS THEN
    RAISE NOTICE 'Error: %', SQLERRM;
END;
$$ LANGUAGE plpgsql;

SELECT example_function();


ques7: How do you grant permissions to a stored procedure?
ans: GRANT EXECUTE ON procedure calculate_salary TO user1;

ques8: How can you use stored procedures to improve application performance?
ans: Stored procedures improve performance by reducing network traffic, optimizing execution plans, offloading complex logic to the database, and promoting code reuse and efficient transaction control.

ques9:What are some common use cases for stored procedures?
ans: Some common use cases for stored procedures include data manipulation, business logic, and reporting.

ques10: How do you handle errors within a stored procedure?
ans: 
Errors in stored procedures can be handled using the EXCEPTION block, where specific or all errors can be caught and managed with actions like logging, raising notices, or rolling back transactions.


CREATE OR REPLACE FUNCTION divide_numbers(a NUMERIC, b NUMERIC)
RETURNS NUMERIC AS $$
BEGIN
    RETURN a / b;
EXCEPTION
    WHEN division_by_zero THEN
        RAISE NOTICE 'Error: Division by zero';
        RETURN NULL;
END;
$$ LANGUAGE plpgsql;
