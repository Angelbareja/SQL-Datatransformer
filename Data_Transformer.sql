
CREATE TABLE Department (
    Dept_No INT PRIMARY KEY,
    Dept_Name VARCHAR(50) NOT NULL,
    Location VARCHAR(50)
);

CREATE TABLE Employee (
    Emp_No INT PRIMARY KEY,
    Emp_Name VARCHAR(50) NOT NULL,
    Designation VARCHAR(30),
    Date_of_Join DATE,
    Salary DECIMAL(10, 2),
    Commission DECIMAL(10, 2) DEFAULT 0.00,
    Dept_No INT,
    FOREIGN KEY (Dept_No) REFERENCES Department(Dept_No)
);

INSERT INTO Department (Dept_No, Dept_Name, Location) VALUES 
(10, 'Accounting', 'New York'),
(20, 'Research', 'Dallas'),
(30, 'Sales', 'Chicago'),
(40, 'Operations', 'Boston');

INSERT INTO Employee (Emp_No, Emp_Name, Designation, Date_of_Join, Salary, Commission, Dept_No) VALUES 
(1001, 'Smith', 'Clerk', '2023-12-17', 25000.00, 0.00, 20),
(1002, 'Allen', 'Salesman', '2024-02-20', 35000.00, 3000.00, 30),
(1003, 'Ward', 'Salesman', '2024-02-22', 32000.00, 5000.00, 30),
(1004, 'Jones', 'Manager', '2022-04-02', 60000.00, 0.00, 20),
(1005, 'Martin', 'Salesman', '2024-09-28', 30000.00, 14000.00, 30),
(1006, 'Blake', 'Manager', '2022-05-01', 58000.00, 0.00, 30),
(1007, 'Clark', 'Manager', '2022-06-09', 59000.00, 0.00, 10),
(1008, 'Scott', 'Analyst', '2025-04-19', 45000.00, 0.00, 20);

SELECT * FROM Employee;
SELECT * FROM Department;

SELECT e.Emp_Name, e.Designation, d.Dept_Name 
FROM Employee e
INNER JOIN Department d ON e.Dept_No = d.Dept_No;

SELECT Emp_No, Emp_Name, Salary 
FROM Employee 
WHERE Salary > 40000.00;

SELECT 
    SUM(Salary) AS Total_Salary_Expenditure,
    AVG(Salary) AS Average_Salary,
    MAX(Salary) AS Highest_Salary,
    MIN(Salary) AS Lowest_Salary
FROM Employee;

SELECT Dept_No, COUNT(Emp_No) AS Number_of_Employees, SUM(Salary) AS Total_Dept_Salary
FROM Employee
GROUP BY Dept_No;

SELECT Emp_No, Emp_Name, Commission 
FROM Employee 
WHERE Commission > 0;