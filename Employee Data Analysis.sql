#Write a query to create an employee table with the fields employee id, first name, last name, job id, salary, manager id, and department id.
Create Database employee;
Use employee;
#Write a query to find the first name and salary of the employee whose salary is higher than the employee with the last name Kumar from the employee table.
Select f_name,salary,l_name from employee_datasets where salary>(select salary from employee_datasets where l_name='kumar');
#Write a query to display the employee id and last name of the employee whose salary is greater than the average salary from the employee table
Select emp_id,l_name from employee_datasets where salary>(select Avg(salary) from employee_datasets);
#Write a query to display the employee id, first name, and salary of the employees who earn a salary that is higher than the salary of all the shipping clerks (JOB_ID = HP122). Sort the results of the salary in ascending order.
Select emp_id,f_name,salary from employee_datasets where salary>All(select salary from employee_datasets where job_id='HP122')order by salary;
#Write a query to display the first name, employee id, and salary of the first three employees with highest salaries.
Select f_name,emp_id,salary from employee_datasets where salary=(Select Max(salary)from employee_datasets limit 3);
