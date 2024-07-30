
Table Details
Table Name: Employees

create database Company_Employees;
use Company_Employees;

create table Employees(
EmployeeID INT PRIMARY KEY,
FirstName VARCHAR(50) NOT NULL,
LastName VARCHAR(50) Not Null,
Email VARCHAR(100) Not Null,
Salary INT Not Null,
Department VARCHAR(50));

INSERT INTO Employees VALUES(1, 'John', 'Doe', 'john.doe@company.com', 60000,'Marketing'),
 (2, 'Jane', 'Smith', 'jane.smith@company.com',  75000,'Sales'),
(3, 'Michael', 'Johnson', 'michael.johnson@company.com', 85000, 'Marketing'),
(4, 'Emily', 'Williams', 'emily.williams@company.com', 72000, 'IT'),
(5, 'David', 'Brown', 'david.brown@company.com', 65000, 'Sales'),
(6, 'Sarah', 'Davis', 'sarah.davis@company.com', 90000,  'IT'),
(7, 'Robert', 'Miller',  'robert.miller@company.com',  70000, 'Finance'),
(8, 'Jessica', 'Wilson', 'jessica.wilson@company.com', 65000, 'Finance'),
 (9, 'Daniel', 'Anderson', 'daniel.anderson@company.com', 72000,  'IT'),
 (10, 'Ashley',  'Taylor', 'ashley.taylor@company.com', 58000,  'Sales'),
 (11, 'William',  'Brown', 'william.brown@company.com',  78000,  'Marketing'),
 (12, 'Sophia', 'Davis', 'sophia.davis@company.com',  62000,'HR');


Practice Questions for Constraints, Primary Key, and Foreign Key

Create a constraint to ensure that the salary of an employee is greater than 0;
select * from Employees where salary>0;

ALTER TABLE Employees
ADD CONSTRAINT chk_salary_positive
CHECK (Salary > 0);

Create a foreign key constraint in the Employees table to reference the DepartmentID in the Departments table;

create table Department(
DepartmentID INT Primary Key,
DepartmentName VARCHAR(50) Not Null);

INSERT INTO Department values (1, 'Marketing'),
(2, 'Sales'),
(3, 'IT'),
(4, 'Finance'),
(5,  'HR');



ALTER TABLE Employees
ADD DepartmentID INT;

ALTER TABLE Employees
ADD CONSTRAINT fk_department
FOREIGN KEY (DepartmentID)
REFERENCES Department(DepartmentID);


Create a unique constraint on the Email column in the Employees table.

ALTER TABLE Employees
ADD CONSTRAINT uq_email
UNIQUE (Email);

Create a primary key constraint on the DepartmentID column in the Departments table.

ALTER TABLE Department
ADD CONSTRAINT pk_department
PRIMARY KEY (DepartmentID);

Create a foreign key constraint in the Projects table to reference the DepartmentID in the Departments table.

create table projects(
ProjectID INT Primary Key,
ProjectName VARCHAR(100) Not Null,
DepartmentID INT);

CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(100) NOT NULL,
    DepartmentID INT
);


INSERT INTO Projects VALUES (1, 'Project A', 1),
(2, 'Project B', 2),
(3, 'Project C', 3),
( 4, 'Project D', 4),
 (5, 'Project E', 5);

ALTER TABLE Projects
ADD CONSTRAINT fk_project_department
FOREIGN KEY (DepartmentID)
REFERENCES Departments(DepartmentID);

Insert a new employee with a DepartmentID that does not exist in the Departments table and observe the foreign key constraint violation;

INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, Salary, DepartmentID)
VALUES (13, 'Laura', 'King', 'laura.king@company.com', 65000, 999);


INSERT INTO employee 

Attempt to insert a duplicate email address into the Employees table and observe the unique constraint violation;

INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, Salary, DepartmentID)
VALUES (14, 'Anna', 'White', 'john.doe@company.com', 68000, 1);


Delete a department from the Departments table that is being referenced by the Employees table and observe the foreign key constraint violation;
DELETE FROM Department WHERE DepartmentID = 1;

Update the DepartmentID of an existing employee to a value that does not exist in the Departments table and observe the foreign key constraint violation.
UPDATE Employees
SET DepartmentID = 999
WHERE EmployeeID = 1;

INSERT INTO Department (DepartmentID, DepartmentName)
VALUES (999, 'New Department');
