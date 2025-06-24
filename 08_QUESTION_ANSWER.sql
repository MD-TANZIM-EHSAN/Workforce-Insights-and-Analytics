-- QUESTION  8:-
/*           Promotional Report for IT Department: Based on project completions in the IT
             department, prepare a promotional report:
             Scenario 1 Associate Software Engineer — 1 to 3 projects.
             Scenario 2 Software Engineer — 4 to 5 projects.
             Scenario 3 Senior Software Engineer — 6 or more projects                                                                          */
-- ANSWER :- 
select `Emp ID`,number_project,
case
     when number_project between 1 and 3 then 'Associate Software Engineer'
     when number_project between 4 and 5 then 'Software Engineer'
     else 'Senior Software Engineer'
end Designation   
 from employee_information
where dept = 'IT'
