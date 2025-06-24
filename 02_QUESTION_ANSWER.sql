-- QUESTION  2:-
--              Employees by Department: How many employees are there in each department?
-- ANSWER :-
select
    dept, count(`Emp ID`)
from employee_information
where dept <> '' 
group by dept