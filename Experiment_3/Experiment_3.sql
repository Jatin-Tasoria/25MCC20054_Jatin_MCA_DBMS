
--- Step 0: Table Creation and Sample Data


CREATE TABLE schema_violations (
    schema_id SERIAL PRIMARY KEY,
    schema_name VARCHAR(50),
    violation_count INT
);

INSERT INTO schema_violations (schema_name, violation_count) VALUES
('Finance', 0),
('HR', 2),
('Sales', 5),
('Audit', 10);


--- Step 1: Classifying Data Using CASE Expression


SELECT
    schema_name,
    violation_count,
    CASE
        WHEN violation_count = 0 THEN 'No Violation'
        WHEN violation_count BETWEEN 1 AND 3 THEN 'Minor Violation'
        WHEN violation_count BETWEEN 4 AND 6 THEN 'Moderate Violation'
        ELSE 'Critical Violation'
    END AS violation_status
FROM schema_violations;


--- Step 2: Applying CASE Logic in UPDATE Statement


ALTER TABLE schema_violations
ADD COLUMN approval_status VARCHAR(20);

UPDATE schema_violations
SET approval_status =
    CASE
        WHEN violation_count = 0 THEN 'Approved'
        WHEN violation_count BETWEEN 1 AND 3 THEN 'Needs Review'
        ELSE 'Rejected'
    END;


--- Step 3: Implementing IF–ELSE Logic Using PL/pgSQL


DO $$
DECLARE
    v_count INT := 5;
BEGIN
    IF v_count = 0 THEN
        RAISE NOTICE 'No violations found';
    ELSIF v_count BETWEEN 1 AND 3 THEN
        RAISE NOTICE 'Minor violations detected';
    ELSIF v_count BETWEEN 4 AND 6 THEN
        RAISE NOTICE 'Moderate violations detected';
    ELSE
        RAISE NOTICE 'Critical violations detected';
    END IF;
END $$;


--- Step 4: Real-World Classification Scenario


CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    student_name VARCHAR(50),
    marks INT
);

INSERT INTO students (student_name, marks) VALUES
('Amit', 85),
('Neha', 72),
('Rahul', 55),
('Sneha', 38);


SELECT
    student_name,
    marks,
    CASE
        WHEN marks >= 80 THEN 'A'
        WHEN marks >= 60 THEN 'B'
        WHEN marks >= 40 THEN 'C'
        ELSE 'Fail'
    END AS grade
FROM students;


--- Step 5: Using CASE for Custom Sorting


SELECT
    schema_name,
    violation_count
FROM schema_violations
ORDER BY
    CASE
        WHEN violation_count = 0 THEN 1
        WHEN violation_count BETWEEN 1 AND 3 THEN 2
        WHEN violation_count BETWEEN 4 AND 6 THEN 3
        ELSE 4
    END;