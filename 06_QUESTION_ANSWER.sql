-- QUESTION  6:-
/*            Lowest Satisfaction Departments: Which three departments have the lowest
              average satisfaction scores?                                                                           */
-- ANSWER :- 
select dept,avg(satisfaction_level) average_satisfaction_scores
from employee_information
where dept <> '' 
group by dept
order by average_satisfaction_scores asc
limit 3;