-- QUESTION  3:-
--              Average Satisfaction Level: Calculate the average satisfaction level for each department.
-- ANSWER :- 
select dept,avg(satisfaction_level) Avg_Satisfaction_Level 
--  AVG(COALESCE(satisfaction_level, 0)) AS avg_satisfaction_with_null_as_zero
 from employee_information
 where dept <> ''
 group by dept