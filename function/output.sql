
Ques1: What is the difference between a function and a stored procedure?
ans: A function returns a value and is used in SQL queries, while a stored procedure performs tasks, can modify database state, and isn''t used directly in queries.

Ques2: How do you create a function in PostgreSQL?
ans: create or replace function function_name() returns data_type as begin return expression; end; $$;

Ques3: How do you return a value from a function?
ans: return expression;

Ques4: Can a function have side effects?
ans: Functions can have side effects if declared as VOLATILE, but functions marked as IMMUTABLE or STABLE are restricted to avoid such behavior.


Ques5: What are some common data types that can be returned by a function?
ans: int, float, text, boolean, date, time, timestamp

Ques6: How can you use functions to improve code readability and maintainability?
ans: Functions improve code readability and maintainability by breaking complex logic into modular, reusable, and testable components. They reduce redundancy, centralize updates, and make the code more understandable and easier to debug.

CREATE FUNCTION calculate_total(price numeric, quantity int)
RETURNS numeric AS $$
BEGIN
    RETURN price * quantity;
END;
$$ LANGUAGE plpgsql;

-- Use the function
SELECT calculate_total(price, quantity) FROM orders WHERE id = 1;
SELECT calculate_total(price, quantity) FROM orders WHERE id = 2;


Ques7: How can you use functions to perform complex calculations?
ans:
CREATE FUNCTION calculate_compound_interest(principal numeric, rate numeric, time numeric, frequency int)
RETURNS numeric AS $$
BEGIN
    RETURN principal * POWER(1 + (rate / frequency), frequency * time);
END;
$$ LANGUAGE plpgsql;


Ques8: What are some performance considerations when using functions?
ans: Performance considerations include optimizing function execution, ensuring that functions are well-defined and have correct return types, and considering caching to improve performance.

Ques9:  How can you use functions to implement custom business logic?
ans: Functions are a powerful tool for implementing custom business logic in databases. They allow you to encapsulate and centralize logic that aligns with your business rules, making applications easier to maintain and scale.

eg: A company applies different discounts for different customer types
CREATE FUNCTION calculate_discount(customer_type text, purchase_amount numeric)
RETURNS numeric AS $$
DECLARE
    discount_rate numeric;
BEGIN
    -- Set discount rate based on customer type
    IF customer_type = 'Premium' THEN
        discount_rate := 0.2; -- 20%
    ELSIF customer_type = 'Regular' THEN
        discount_rate := 0.1; -- 10%
    ELSE
        discount_rate := 0.05; -- 5%
    END IF;
    
    -- Calculate and return the discount
    RETURN purchase_amount * discount_rate;
END;
$$ LANGUAGE plpgsql;


Ques10: What are some examples of built-in functions in PostgreSQL?
ans: 
String functions: length(text), upper(text), lower(text), concat(text, text), substring(text, int, int), replace(text, text, text)
Numeric functions: abs(numeric), round(numeric, int), ceil(numeric), floor(numeric), power(numeric, numeric)
Date functions: now(), current_date, current_time, current_timestamp, extract(field from date)
Boolean functions: true, false, not boolean, boolean OR boolean, boolean AND boolean
Aggregate functions: count(*), sum(numeric), avg(numeric), min(numeric), max(numeric), array_agg(numeric), string_agg(text, ',')