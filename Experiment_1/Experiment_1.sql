--- Create Tables (DDL)

CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) UNIQUE NOT NULL,
    location VARCHAR(50)
);

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    salary INT CHECK (salary > 0),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);

CREATE TABLE Project (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(50) NOT NULL,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);

--- Insert Data (DML)

INSERT INTO Department VALUES (1, 'IT', 'Bangalore');
INSERT INTO Department VALUES (2, 'HR', 'Delhi');

INSERT INTO Employee VALUES (101, 'Rahul', 50000, 1);
INSERT INTO Employee VALUES (102, 'Anita', 45000, 2);

INSERT INTO Project VALUES (201, 'Cloud Migration', 1);
INSERT INTO Project VALUES (202, 'Recruitment System', 2);


--- Update & Delete Data

UPDATE Employee
SET salary = 55000
WHERE emp_id = 101;

DELETE FROM Employee
WHERE emp_id = 102;


--- Access Control (DCL)

CREATE ROLE Manager;

GRANT SELECT ON Department TO Manager;
GRANT SELECT ON Employee TO Manager;
GRANT SELECT ON Project TO Manager;

REVOKE CREATE FROM Manager;

--- Schema Modification

ALTER TABLE Employee
ADD email VARCHAR(50);


--- Drop Table

DROP TABLE Project;