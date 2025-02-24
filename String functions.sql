-- Strings functions

SELECT first_name, length(first_name)
FROM employee_demographics
order by 2
;

-- Upper and Lower case

SELECT upper('sky');
SELECT lower('SKY');

-- Trim method

SELECT trim('       sky       ');
SELECT Ltrim('      sky       ');
SELECT Rtrim('      sky       ');

-- Substring method

SELECT first_name,
LEFT(first_name, 4) as _left,
RIGHT(first_name, 4) as _right,
SUBSTRING(first_name, 3, 2),
birth_date,
substring(birth_date, 6,2)
FROM employee_demographics
;

-- Replace

SELECT first_name, replace(first_name, 'a', 'z')
FROM employee_demographics
;

-- Locate

SELECT Locate('ed', 'Vedant');

SELECT first_name, locate('AN', first_name)
FROM employee_demographics
;

-- Concat

SELECT first_name, last_name,
concat(first_name,'',last_name) AS Full_name
FROM employee_demographics
;