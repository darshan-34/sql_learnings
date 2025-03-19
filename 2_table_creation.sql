# NORMAL TABLE CREATION

CREATE TABLE employees (
employee_id INT PRIMARY KEY,
first_name 	VARCHAR(50) NOT NULL,
last_name 	VARCHAR(50) NOT NULL,
hire_date 	DATE 		NOT NULL,
salary		DECIMAL(10,2)
);

# CTAS(CREATE TABLE AS) TABLE CREATIONemployeesemployees
CREATE TABLE high_paid_employees AS
SELECT 
	employee_id,
    first_name,
    last_name,
    salary
FROM employees
WHERE salary > 60000;

# TEMPORARY TABLE -- only exists during runtime

CREATE TEMPORARY TABLE temp_high_paid_employees (
	employee_id INT,
    salary 		DECIMAL(10,2)
);
INSERT INTO temp_high_paid_employees (
SELECT
	employee_id,
    salary
FROM employees
WHERE salary > 60000
);

# CTE(Common Table Expression)
WITH high_salary_cte AS (
	SELECT employee_id, first_name, last_name, salary
    FROM employees
    WHERE salary > 70000
)
CREATE TABLE high_salary_employees_via_cte
SELECT * FROM high_salary_cte;
