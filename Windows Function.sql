-- Windows Functions

SELECT dem.first_name,dem.last_name,gender, AVG(salary) OVER(partition by gender)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id ;
    
-- Sum
    
SELECT dem.first_name,dem.last_name,gender,
SUM(salary) OVER(partition by gender ORDER BY dem.employee_id) AS Rolling_Total
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id ;
    
SELECT dem.first_name,dem.last_name,gender,
SUM(salary) OVER(partition by gender ORDER BY dem.employee_id) AS Rolling_Total
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id ;
    
-- Row, Rank and Dense_rank    
    
SELECT dem.first_name,dem.last_name,gender,
ROW_NUMBER() OVER( partition by gender Order by salary DESC ) as row_num,
RANK() OVER(partition by gender order by salary DESC) as rank_num,
DENSE_RANK() OVER(partition by gender order by salary DESC) as dense_rank_num 
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id ;
    