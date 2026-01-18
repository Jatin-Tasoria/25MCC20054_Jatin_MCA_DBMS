CREATE TABLE Students (
    student_id INT,
    name VARCHAR(50),
    city VARCHAR(50),
    percentage DECIMAL(5,2)
);
INSERT INTO Students VALUES
(1, 'Amit', 'Delhi', 96.5),
(2, 'Riya', 'Mumbai', 94.2),
(3, 'Rahul', 'Delhi', 97.8),
(4, 'Sneha', 'Mumbai', 98.1),
(5, 'Ankit', 'Chandigarh', 95.6),
(6, 'Pooja', 'Delhi', 93.4),
(7, 'Karan', 'Chandigarh', 96.2);

--Without case statement
SELECT city, COUNT (*) AS Student_count from Students
where percentage > 95
Group by city;

--With case statement
SELECT city, SUM(CASE WHEN percentage > 95 THEN 1 ELSE 0 END) AS Student_count
from Students
Group by city;

--With case statement part ii
SELECT city, ROUND(AVG(CASE WHEN percentage > 95 THEN percentage ELSE NULL END),2) AS Average_case
from Students where percentage > 95
Group by city
order by Average_case DESC;