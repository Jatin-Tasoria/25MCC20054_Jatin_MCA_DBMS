-- CREATE TABLE department
CREATE TABLE department(
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL,
    location VARCHAR(100)
);

--CREATE TABLE employee
CREATE TABLE employee(
    employee_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department_id INT,
    foreign key (department_id) REFERENCES department(department_id)
    mobile VARCHAR(15) UNIQUE,
    age INT CHECK (age >= 18)
);

-- CREATE TABLE project
CREATE TABLE project(
    project_id INT PRIMARY KEY,
    project_name VARCHAR(25) NOT NULL,
    start_date DATE,
    department_id INT,
    foreign KEY (department_id) REFERENCES department(department_id)
);

-- INSERT INTO department
INSERT INTO department (department_id,department_name,location)
Values
(101,"HR","New York"),
(102,"IT","San Francisco"),
(103,"Finance","Chicago");

-- INSERT INTO employee
INSERT INTO employee (employee_id,name,department_id,mobile,age)
Values
(1,"Alice",101,"1234567890",30),
(2,"Bob",102,"0987654321",25),
(3,"Charlie",103,"1122334455",28);

-- INSERT INTO project
INSERT INTO project (project_id,project_name,start_date,department_id)
Values
(201,"Project A","2023-01-15",101),
(202,"Project B","2023-02-20",102),
(203,"Project C","2023-03-10",103);

--Update employee mobile
UPDATE employee
SET mobile = "5454456445"
WHERE employee_id = 2;

--DELETE operation while maintaining referential integrity
DELETE FROM department
WHERE department_id = 103;

--GRANT access
GRANT SELECT ON employee TO Staff1;
GRANT CREATE,SELECT ON employee To Staff2;

--REVOKE access
REVOKE CREATE ON employee FROM STAFF2;

-- Drop Table 
DROP TABLE project;