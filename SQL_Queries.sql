CREATE DATABASE employee_salary_analysis;
USE employee_salary_analysis;

CREATE TABLE Employees (
    Emp_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(20),
    Salary INT,
    Experience INT
);

INSERT INTO Employees VALUES
(1,'Amit','Sales',45000,2),
(2,'Rahul','IT',65000,4),
(3,'Neha','HR',50000,3),
(4,'Vikas','IT',70000,5),
(5,'Pooja','Sales',55000,4),
(6,'Ankit','HR',48000,2),
(7,'Riya','IT',80000,6),
(8,'Mohit','Sales',60000,5);

SELECT * FROM Employees;

----- Employees earning more than 50,000

SELECT *
FROM Employees
WHERE Salary > 50000;

----- Average Salary by Department

SELECT Department,
AVG(Salary) AS Avg_Salary
FROM Employees
GROUP BY Department;


----- Highest Salary Employee

SELECT *
FROM Employees
ORDER BY Salary DESC
LIMIT 1;

----- Total Employees by Department

SELECT Department,
COUNT(*) AS Total_Employees
FROM Employees
GROUP BY Department;


----- Salary Category
SELECT Name,
Salary,
CASE
WHEN Salary > 60000 THEN 'High'
WHEN Salary >= 50000 THEN 'Medium'
ELSE 'Low'
END AS Salary_Category
FROM Employees;

----- INSIGHTS -----
# IT department has the highest average salary.
# Riya is the highest-paid employee.
# Sales and IT have the highest employee count.
# 3 employees fall into the High Salary category.


