# Experiment 1.1 – Database Design using DDL, DML & DCL

## 🎯 Aim
To design and implement a sample database system using **DDL, DML, and DCL commands**, including database creation, data manipulation, schema modification, and role-based access control.

---

## 🖥️ Software Requirements
- Oracle Database Express Edition  
- pgAdmin (PostgreSQL)

---

## 🎓 Objectives
- Implement **DDL commands** to create and modify database objects  
- Use **DML commands** to insert, update, and delete data  
- Apply **DCL commands** for access control and security  
- Enforce data integrity using constraints  
- Provide read-only access to authorized users  

---

## 🛠️ SQL Implementation

### 1️⃣ Create Tables (DDL)
```sql
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
```

---

### 2️⃣ Insert Data (DML)

```sql
INSERT INTO Department VALUES (1, 'IT', 'Bangalore');
INSERT INTO Department VALUES (2, 'HR', 'Delhi');

INSERT INTO Employee VALUES (101, 'Rahul', 50000, 1);
INSERT INTO Employee VALUES (102, 'Anita', 45000, 2);

INSERT INTO Project VALUES (201, 'Cloud Migration', 1);
INSERT INTO Project VALUES (202, 'Recruitment System', 2);
```

---

### 3️⃣ Update & Delete Data

```sql
UPDATE Employee
SET salary = 55000
WHERE emp_id = 101;

DELETE FROM Employee
WHERE emp_id = 102;
```

---

### 4️⃣ Access Control (DCL)

```sql
CREATE ROLE Manager;

GRANT SELECT ON Department TO Manager;
GRANT SELECT ON Employee TO Manager;
GRANT SELECT ON Project TO Manager;

REVOKE CREATE FROM Manager;
```

---

### 5️⃣ Schema Modification

```sql
ALTER TABLE Employee
ADD email VARCHAR(50);
```

---

### 6️⃣ Drop Table

```sql
DROP TABLE Project;
```

---

## 📸 Output & Screenshots

•	Table creation


 <img width="427" height="101" alt="CREATE TABLE" src="https://github.com/user-attachments/assets/9d1516f2-8686-4609-b1b3-f2e9e6a4253d" />


•	Data insertion


<img width="382" height="133" alt="INSERT DATA" src="https://github.com/user-attachments/assets/69bd9a0f-9c2a-4c2a-b305-4c05364532e1" />

 
•	TABLE employee


<img width="536" height="118" alt="TABLE employee" src="https://github.com/user-attachments/assets/616f5047-305c-4a44-89be-6f74341b5dde" />

 
•	TABLE department


<img width="548" height="109" alt="TABLE DEPARTMENT" src="https://github.com/user-attachments/assets/fd3090e7-b95b-405a-8bfb-8f4f39478cb8" />

 
•	TABLE project


<img width="447" height="119" alt="TABLE PROJECT" src="https://github.com/user-attachments/assets/ce0062f3-2701-43e2-9cfb-7788120c512f" />
 

•	Updating Value


<img width="390" height="107" alt="UPDATE TABLE" src="https://github.com/user-attachments/assets/59426e79-de42-4915-acff-ff76f21f13ca" />

 
•	After Updating Value


<img width="529" height="117" alt="After Updating" src="https://github.com/user-attachments/assets/b1bd0dea-19f3-4380-b47e-a6eab7213d71" />

 
•	Deleting


 <img width="415" height="127" alt="DELETE ROW" src="https://github.com/user-attachments/assets/cf450a66-3f4c-429c-bbb7-cc4a18cd945f" />

•	After Deleting Value


<img width="536" height="101" alt="After Deleting" src="https://github.com/user-attachments/assets/94a26247-6898-46dd-869b-3c1347bbeb43" />

 
•	Access Control

<img width="413" height="105" alt="CREATE ROLE" src="https://github.com/user-attachments/assets/10bf140b-6165-4cff-9980-72a5bb66eb20" />



<img width="609" height="425" alt="Verify Role" src="https://github.com/user-attachments/assets/f3069ddf-4072-420f-acdd-c49968f0cc9c" />



 •	GRANT & REVOKE
 
<img width="393" height="108" alt="GRANTING ACCESS" src="https://github.com/user-attachments/assets/6a937b22-8c62-435e-ab40-0cac15ce1d54" />


<img width="402" height="90" alt="REVOKE ACCESS" src="https://github.com/user-attachments/assets/5c2b3ffb-bcde-42fe-9b53-a9e29cb1839f" />

 
 
•	Alter table


 <img width="385" height="107" alt="ALTER TABLE" src="https://github.com/user-attachments/assets/dbda1fc1-bf21-4e4e-8450-3475625cb203" />
 

•	After altering the table

<img width="715" height="87" alt="After altering" src="https://github.com/user-attachments/assets/0934a542-e173-430d-be44-0f877246d777" />

 
•	Drop Table

<img width="424" height="94" alt="DROP TABLE" src="https://github.com/user-attachments/assets/1ac4502c-0b3f-471a-a74d-fbec6f3d3730" />



---

## ✅ Learning Outcomes

* Practical understanding of **DDL, DML, and DCL commands**
* Experience with **constraints and referential integrity**
* Knowledge of **role-based access control**
* Hands-on exposure to **schema modification**
* Improved database design and security skills

---
