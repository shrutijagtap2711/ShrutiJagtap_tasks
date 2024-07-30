Tasks: 
 
 Select the first name, last name, and salary of the top 3 employees with the highest salaries.
select firstName, lastName, salary from Employees order by salary desc ;

Select the first name, last name, and salary of the top 3 employees with the lowest salaries.
select firstName, lastName, salary from Employees order by salary asc;

Select the first name, last name, and salary of the employee with the 2nd highest salary;

select  firstName, lastName, salary from Employees order by salary Desc limit(1,1);

SELECT firstName, lastName, salary 
FROM Employees 
ORDER BY salary DESC
LIMIT 1 OFFSET 1;

SELECT FirstName, LastName, Salary 
FROM Employees 
ORDER BY Salary DESC 
LIMIT 1,1;

 Select the first name, last name, and salary of the employee with the 2nd lowest salary.
 
 select firstName, lastName, Salary
 From Employees
 order by Salary Asc
 limit 1,1;
 
Select the first name, last name, and salary of the employee with the 3rd highest salary.

SELECT FirstName, LastName, Salary 
FROM Employees
ORDER BY Salary DESC 
LIMIT 1 OFFSET 2;


- Select the first name, last name, and salary of the employee with the 3rd lowest salary.
 SELECT firstName, LastName,Salary from Employees ORDER BY Salary Asc
 LIMIT 1 OFFSET 2;
 
 - Select the first name, last name, email, and salary of employees with a salary between 65000 and 80000,
 ordered by their first name in descending order, and limit the result to 3 rows.
 give queries
 
 select firstName ,lastName, email ,salary from Employees where salary between 65000 and 80000
 order by firstName Desc Limit 3;
 