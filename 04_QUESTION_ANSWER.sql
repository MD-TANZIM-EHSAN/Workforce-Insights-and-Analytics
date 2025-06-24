-- QUESTION  4:-
/*             Top Employees per Department: Identify employees with the highest tenure based
               on time spent, number of projects & average monthly hours in the company for
			   each department.                                                                            */
-- ANSWER :- 
Select * from
(select dept,
dense_rank() over(partition by dept order by time_spend_company desc,number_project desc,average_montly_hours desc) rn 
 from employee_information
 where dept <> '')t
 where rn = 1 