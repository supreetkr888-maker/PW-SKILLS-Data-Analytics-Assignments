USE company_db;
SELECT * FROM employee_data;
SET SQL_SAFE_UPDATES = 0;

--- QUESTION 1
SELECT *
FROM employee_data
WHERE Position IS NULL
   OR Salary IS NULL;
   
--- QUESTION 2
UPDATE employee_data
SET Position = COALESCE(Position, 'Unknown');

--- QUESTION 3
UPDATE employees
SET Salary = (
    SELECT AVG(Salary) FROM employee_data
)
WHERE Salary IS NULL;

--- QUESTION 4
UPDATE employee_data
SET Position = LOWER(POsition);

--- QUESTION 5
ALTER TABLE employee_data
CHANGE `Experience (Years)` Experience_years INT;

SELECT Gender, Experience_years, Position, Salary, COUNT(*) as duplicate_count
FROM employee_data
GROUP BY Gender,Experience_years, Position, Salary
HAVING COUNT(*) > 1;

--- QUESTION 6
DELETE e1
FROM employee_data e1
JOIN employee_data e2
ON e1.Gender = e2.Gender
AND e1.experience_years = e2.experience_years
AND e1.Position = e2.Position
AND e1.Salary = e2.Salary
AND e1.ID > e2.ID;

--- QUESTION 7
UPDATE employee_data e1
JOIN (
    SELECT experience_years, ROUND(AVG(Salary)) AS avg_salary
    FROM employee_data
    WHERE Salary IS NOT NULL
    GROUP BY experience_years
) e2
ON e1.experience_years = e2.experience_years
SET e1.Salary = e2.avg_salary
WHERE e1.Salary IS NULL;

--- QUESTION 8
SELECT *
FROM employee_data
WHERE Salary <= 0;

--- QUESTION 9
ALTER TABLE employee_data
ADD Salary_Band VARCHAR(10);

UPDATE employee_data
SET Salary_Band =
CASE
    WHEN Salary < 50000 THEN 'Low'
    WHEN Salary BETWEEN 50000 AND 100000 THEN 'Medium'
    WHEN Salary > 100000 THEN 'High'
END;

--- QUESTION 10
SELECT *
FROM employee_data
WHERE Position NOT LIKE '%dev%';

--- QUESTION 11
SELECT *
FROM employee_data
WHERE experience_years < 0;

UPDATE employee_data
SET experience_years = 0
WHERE experience_years < 0;

--- QUESTION 12
SELECT *
FROM (
    SELECT *,
           NTILE(100) OVER (ORDER BY Salary) AS percentile_rank
    FROM employee_data
) t
WHERE percentile_rank <= 5
   OR percentile_rank >= 95;
