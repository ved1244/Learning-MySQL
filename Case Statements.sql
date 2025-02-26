-- Case Stataments

SELECT first_name, last_name, age,
case
	WHEN age <= 30 THEN 'Young'
    WHEN age Between 30 and 50 Then 'Old'
    WHEN age >= 50 Then 'Half buried'
END AS Age_Gap
FROM employee_demographics
;

-- Pay Increase and Bonus
-- Sal < 50k = 5% 
-- Sal > 50k = 7% 
-- Finance = 10% bonus

SELECT first_name, last_name, salary,
case
	when salary < 50000 Then salary * 1.05
    When salary > 50000 then salary * 1.07
end as new_salary,
case
	when dept_id = 6 Then salary * .10
end as bonus
FROM employee_salary
;

