-- QUESTION  7:-
/*            Departmental Group Comparison: Group IT and Technical as Tech_Group, and
              Marketing and Product Management as Mng_Group. Compare their average "last
              evaluation" scores                                                                          */
-- ANSWER :- 
select
avg(case when dept in('IT','technical') then last_evaluation else 0 end )Group_IT,
avg(case when dept in('marketing','product_mng') then last_evaluation else 0 end )Mng_Group
from employee_information
where dept <> ''
