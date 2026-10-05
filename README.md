## 🚀 Project Overview

**Data Transformer** is a structured SQL project that works with employee and department information.

The project demonstrates how SQL can be used to:

* Create relational database tables
* Define primary and foreign keys
* Insert structured records
* Retrieve and filter data
* Combine information using `INNER JOIN`
* Perform salary calculations
* Analyze employee distribution by department
* Identify employees receiving commissions

---

## 🛠️ Technologies Used

* **SQL**
* Relational Database Concepts
* DDL — Data Definition Language
* DML — Data Manipulation Language
* Data Filtering
* Aggregate Functions
* SQL Joins
* `GROUP BY`

---

## 🗄️ Database Structure

### Department Table

The `Department` table contains department information including department number, name, and location.

| Column      | Description              |
| ----------- | ------------------------ |
| `Dept_No`   | Unique department number |
| `Dept_Name` | Department name          |
| `Location`  | Department location      |

### Employee Table

The `Employee` table stores employee details such as name, designation, joining date, salary, commission, and department number. It uses `Dept_No` as a foreign key referencing the Department table.

| Column         | Description            |
| -------------- | ---------------------- |
| `Emp_No`       | Unique employee number |
| `Emp_Name`     | Employee name          |
| `Designation`  | Employee designation   |
| `Date_of_Join` | Joining date           |
| `Salary`       | Employee salary        |
| `Commission`   | Commission amount      |
| `Dept_No`      | Related department     |

---

## 📥 Sample Data

The project contains sample department records such as Accounting, Research, Sales, and Operations.

Employee records include different designations such as:

* Clerk
* Salesman
* Manager
* Analyst

The dataset also includes salary and commission information for analysis.

---

## 🔍 SQL Operations Demonstrated

### 1. Retrieve Employee and Department Data

The project demonstrates basic data retrieval using:

```sql
SELECT * FROM Employee;
SELECT * FROM Department;
```

---

### 2. INNER JOIN

Employee and department information is combined using an `INNER JOIN`.

```sql
SELECT e.Emp_Name, e.Designation, d.Dept_Name
FROM Employee e
INNER JOIN Department d ON e.Dept_No = d.Dept_No;
```

This demonstrates how related records can be retrieved from multiple tables.

---

### 3. Salary Filtering

Employees earning more than `40000` are identified using the `WHERE` clause.

```sql
SELECT Emp_No, Emp_Name, Salary
FROM Employee
WHERE Salary > 40000.00;
```

---

### 4. Salary Analysis

The project uses SQL aggregate functions to calculate:

* Total salary expenditure
* Average salary
* Highest salary
* Lowest salary

```sql
SELECT
    SUM(Salary) AS Total_Salary_Expenditure,
    AVG(Salary) AS Average_Salary,
    MAX(Salary) AS Highest_Salary,
    MIN(Salary) AS Lowest_Salary
FROM Employee;
```

---

### 5. Department-Wise Analysis

Employee count and total salary are calculated for each department using `GROUP BY`.

```sql
SELECT Dept_No,
       COUNT(Emp_No) AS Number_of_Employees,
       SUM(Salary) AS Total_Dept_Salary
FROM Employee
GROUP BY Dept_No;
```

---

### 6. Commission Analysis

The project also identifies employees who receive commission.

```sql
SELECT Emp_No, Emp_Name, Commission
FROM Employee
WHERE Commission > 0;
```

---

## 📚 Skills Demonstrated

This project demonstrates practical knowledge of:

* SQL syntax
* Database table creation
* Primary keys
* Foreign keys
* Data insertion
* `SELECT`
* `WHERE`
* `INNER JOIN`
* `GROUP BY`
* `COUNT()`
* `SUM()`
* `AVG()`
* `MAX()`
* `MIN()`
* Relational database design
* Basic data analysis

---

## 💼 Interview Value

This project can be used as a beginner/intermediate **SQL portfolio project** to demonstrate understanding of relational databases and SQL data analysis.

It is particularly useful for showcasing:

> **Database fundamentals + SQL querying + Data analysis**

---

## 📁 Project Structure

```text
Data-Transformer/
│
├── Data_Transformer.sql
└── README.md
```

---

## ▶️ How to Run

1. Open your preferred SQL database environment.
2. Create or select a database.
3. Open `Data_Transformer.sql`.
4. Execute the SQL statements.
5. Run the individual queries to explore the employee and department data.

---

## 🎯 Project Objective

The main objective of this project is to build practical SQL skills by working with a relational employee-management dataset and performing useful database queries and analysis.

---

## 👨‍💻 Author

**Angel Bareja**
