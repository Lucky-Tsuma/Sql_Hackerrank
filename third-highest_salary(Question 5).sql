CREATE TABLE employees (
    employee_name VARCHAR(50),
    salary INT
);

INSERT INTO employees (employee_name, salary) 
VALUES 
    ('Evans Dzombo', 5500), 
    ('Karen Kathambi', 7800), 
    ('Jackson Jera', 4550), 
    ('Hamida Dzuya', 2750), 
    ('Wycliff Odiwor', 3500), 
    ('Anne Wanjiru', 10000);

--Query to display the 3rd highest salary.
SELECT * FROM 
(SELECT employee_name, salary, DENSE_RANK() OVER (ORDER BY salary DESC) salary_rank FROM employees) third_highest_salary
WHERE salary_rank = 3;


