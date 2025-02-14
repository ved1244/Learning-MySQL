SELECT *
From parks_and_recreation.employee_demographics;

SELECT first_name,
last_name,
birth_date,
(age + 10) *10 + 10
FROM parks_and_recreation.employee_demographics;

SELECT DISTINCT first_name, gender
From parks_and_recreation.employee_demographics;