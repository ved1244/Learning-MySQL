-- Joins

SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
 ON dem.employee_id = sal.employee_id
 ;
 
 SELECT dem.employee_id, age, occupation
 FROM employee_demographics AS dem
 INNER JOIN employee_salary AS sal
  ON dem.employee_id = sal.employee_id
;

-- Outer joins

SELECT *
FROM employee_demographics dem
LEFT JOIN employee_salary sal
 ON dem.employee_id = sal.employee_id
 ;
 
SELECT *
FROM employee_demographics dem
RIGHT JOIN employee_salary sal
 ON dem.employee_id = sal.employee_id
 ;
 
 -- Self join
 
 
SELECT emp1.employee_id AS emp_santa,
emp1.first_name AS first_name_santa,
emp1.last_name AS last_name_santa,
emp2.employee_id AS emp_name,
emp2.first_name AS first_name_emp,
emp2.last_name AS last_name_emp
FROM employee_salary emp1
JOIN employee_salary emp2
 on emp1.employee_id + 1 = emp2.employee_id
;

-- Joining multiple tables

SELECT *
FROM employee_demographics dem
INNER JOIN employee_salary sal 
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments pd
	ON sal.dept_id = pd.department_id
;
