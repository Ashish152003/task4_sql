-- 📦 Sample Schema: employees table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    dept_id INT,
    department VARCHAR(100),
    salary DECIMAL(10, 2)
);

-- 📥 Sample Data
INSERT INTO employees (emp_id, name, dept_id, department, salary) VALUES
(1, 'Alice', 101, 'HR', 50000),
(2, 'Bob', 102, 'Finance', 60000),
(3, 'Charlie', 101, 'HR', 52000),
(4, 'David', 103, 'IT', 70000),
(5, 'Eva', 103, 'IT', 75000),
(6, 'Frank', 102, 'Finance', 62000),
(7, 'Grace', 101, 'HR', 51000),
(8, 'Hannah', 103, 'IT', 68000),
(9, 'Ian', 102, 'Finance', 63000),
(10, 'Jane', 103, 'IT', 71000);

-- 🧪 SQL Queries

-- 1. Total salary by department
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

-- 2. Average salary by department
SELECT department, ROUND(AVG(salary), 2) AS avg_salary
FROM employees
GROUP BY department;

-- 3. Number of employees in each department
SELECT department, COUNT(*) AS num_employees
FROM employees
GROUP BY department;

-- 4. Departments with more than 2 employees
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department
HAVING COUNT(*) > 2;

-- 5. Highest salary in each department
SELECT department, MAX(salary) AS max_salary
FROM employees
GROUP BY department;

-- 6. Count of distinct departments
SELECT COUNT(DISTINCT department) AS unique_departments
FROM employees;

-- 7. Total salary and number of employees grouped by department and dept_id
SELECT dept_id, department, COUNT(*) AS total_employees, SUM(salary) AS total_salary
FROM employees
GROUP BY dept_id, department;
