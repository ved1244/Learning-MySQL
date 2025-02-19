-- Limit & Aliasing

SELECT *
FROM employee_demographics
limit 3
;

SELECT *
FROM employee_demographics
ORDER BY age DESC
limit 3
;

-- Aliasing

SELECT gender, AVG(age) AS avg_age
FROM employee_demographics
Group by gender
Having avg_age > 40
;