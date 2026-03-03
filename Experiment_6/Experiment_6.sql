--- Simple View

CREATE VIEW active_employees AS
SELECT id, name, department_id
FROM employees
WHERE status = 'Active';


--- Join View

CREATE VIEW employee_department_view AS
SELECT e.id, e.name, d.department_name
FROM employees e
JOIN departments d
ON e.department_id = d.department_id;


--- Summary View

CREATE VIEW department_summary AS
SELECT department_id,
       COUNT(*) AS total_employees,
       AVG(salary) AS average_salary
FROM employees
GROUP BY department_id;
