-- Temporary Tables

CREATE TEMPORARY TABLE temp_table
(first_name varchar(50),
last_name varchar(50),
movies_name varchar(100)
);

select *
from temp_table;

Insert Into temp_table
values('Ved', 'Pawar', 'Fight Club');

select *
from temp_table;

create temporary table salary_over_50k
select *
from employee_salary
where salary >= 50000;

select *
from salary_over_50k
;