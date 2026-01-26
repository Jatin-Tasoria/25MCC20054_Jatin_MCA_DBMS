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

* Successful table creation
* Data insertion and modification
* Read-only role verification using SELECT
* Schema alteration output

> [ScreenShot](./assets/)

---

## ✅ Learning Outcomes

* Practical understanding of **DDL, DML, and DCL commands**
* Experience with **constraints and referential integrity**
* Knowledge of **role-based access control**
* Hands-on exposure to **schema modification**
* Improved database design and security skills

---