-- Group By

SELECT gender, AVG(age)
FROM employee_demographics
group by gender
;

SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary
;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
group by gender
;

-- Order By

SELECT *
FROM employee_demographics
ORDER BY first_name ASC
;

SELECT *
FROM employee_demographics
ORDER BY first_name DESC
;

SELECT *
FROM employee_demographics
ORDER BY gender, age ASC
;