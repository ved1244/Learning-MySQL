-- Unions

SELECT first_name, last_name, 'Old Man' AS Label
FROM employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION
SELECT first_name, last_name , 'Old Lady' AS Label
FROM employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION
SELECT first_name, last_name, 'Highly paid employee' AS Label
FROM employee_salary
WHERE salary >  70000 
ORDER BY first_name, last_name
;