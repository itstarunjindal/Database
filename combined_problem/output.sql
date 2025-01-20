
Customers table:

 customer_id | customer_name | state_code | state_name 
-------------+---------------+------------+------------
           1 | c1            |          4 | haryana
           2 | c2            |          1 | punjab
           3 | c3            |          3 | himachal
(3 rows)


States table:

 state_code | state_name 
------------+------------
          1 | punjab
          2 | up
          3 | himachal
          4 | haryana
(4 rows)


Query to create function: 
create or replace function update_state_name() returns trigger as $$begin new.state_name = (select state_name from states where state_code  = new.state_code); return new; end; $$ language plpgsql;

result: CREATE FUNCTION
 Schema |       Name       | Result data type | Argument data types | Type
--------+------------------+------------------+---------------------+------
 public | update_stae_name | trigger          |                     | func
(1 row)


Query to create trigger:
CREATE TRIGGER update_state_name BEFORE UPDATE ON customers FOR EACH ROW EXECUTE PROCEDURE update_state_name();


update_state_name Query:
update customers set state_code = 2 where customer_id = 1;

result: UPDATE 1

 customer_id | customer_name | state_code | state_name 
-------------+---------------+------------+------------
           2 | c2            |          1 | punjab
           3 | c3            |          3 | himachal
           1 | c1            |          2 | up
(3 rows)



