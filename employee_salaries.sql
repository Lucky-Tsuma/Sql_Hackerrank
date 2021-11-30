CREATE TABLE employee (
    employee_id INT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    months INT NOT NULL,
    salary INT NOT NULL
);

INSERT INTO employee (employee_id,
    name,
    months,
    salary) VALUES
        ( 12228, 'Rose', 15, 1968),
        ( 33645, 'Angela', 1, 3443),
        ( 45692, 'Frank', 17, 1608),
        ( 56118, 'Patrick', 7, 1345),
        ( 59725, 'Lisa', 11, 2330),
        ( 74197, 'Kimberly', 16, 4372),
        ( 78454, 'Bonnie', 8, 1771),
        ( 83565, 'Michael', 6, 2017),
        ( 98607, 'Todd', 5, 3396),
        ( 99989, 'Joe', 9, 3573);


SELECT name FROM employee
WHERE SALARY > 2000 AND months < 10
ORDER BY employee_id ASC;
