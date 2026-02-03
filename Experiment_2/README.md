# 🔹 Experiment – 02

## **Title**

Implementation of SELECT Queries with Filtering, Grouping, and Sorting in PostgreSQL

---

## 🎯 Aim

The aim of this practical session is to implement and analyze SQL SELECT queries in PostgreSQL using filtering, sorting, grouping, and aggregation concepts for efficient data retrieval and analytical reporting.

---

## 🖥️ Software Requirements
- Oracle Database Express Edition  
- pgAdmin (PostgreSQL)

---

## 🎯 Objective

After completing this practical session, the learner will be able to:

* Retrieve specific records using filtering conditions
* Sort query results using single and multiple columns
* Perform aggregation using grouping techniques
* Apply conditions on aggregated data
* Understand analytical SQL queries used in real-world applications

---

## 🧪 Practical / Experiment Steps


* Create a database in PostgreSQL
* Create a table for storing order details
* Insert sample records into the table
* Retrieve data using filtering conditions
* Sort the data using ORDER BY clause
* Group data and perform aggregation
* Apply conditions on grouped data

---

## ⚙️ Procedure of the Practical

1. Start the system and log in
2. Start the PostgreSQL service
3. Open PostgreSQL client (psql or pgAdmin)
4. Create a new database
5. Create the required table
6. Insert sample data into the table
7. Execute SELECT queries for filtering, sorting, and grouping
8. Ensure successful execution of queries
9. Save the work for documentation

---

## 🧾 SQL Queries Used

### 🔹 Create Database

```sql
CREATE DATABASE order_management;
```

---

### 🔹 Create Table

```sql
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(50),
    product_name VARCHAR(50),
    quantity INT,
    price NUMERIC(10,2),
    order_date DATE
);
```

---

### 🔹 Insert Sample Records

```sql
INSERT INTO orders (customer_name, product_name, quantity, price, order_date)
VALUES
('Amit', 'Laptop', 1, 55000, '2024-01-10'),
('Neha', 'Mobile', 2, 30000, '2024-01-12'),
('Rahul', 'Laptop', 1, 60000, '2024-01-15'),
('Sneha', 'Tablet', 3, 15000, '2024-01-18'),
('Karan', 'Mobile', 1, 28000, '2024-01-20');
```

---

### 🔹 Filtering Data using WHERE

```sql
SELECT customer_name, product_name, price
FROM orders
WHERE price > 30000;
```

---

### 🔹 Sorting Data using ORDER BY

```sql
SELECT customer_name, product_name, price
FROM orders
ORDER BY price DESC;
```

---

### 🔹 Sorting with Multiple Columns

```sql
SELECT customer_name, product_name, price
FROM orders
ORDER BY product_name ASC, price DESC;
```

---

### 🔹 Grouping and Aggregation

```sql
SELECT product_name, SUM(price) AS total_sales
FROM orders
GROUP BY product_name;
```

---

### 🔹 Condition on Aggregated Data (HAVING)

```sql
SELECT product_name, SUM(price) AS total_sales
FROM orders
GROUP BY product_name
HAVING SUM(price) > 50000;
```

---

###  Using WHERE and HAVING Together
```sql
SELECT product, SUM(quantity * price) AS total_revenue
FROM customer_orders
WHERE order_date >= '2025-01-01'
GROUP BY product
HAVING SUM(quantity * price) > 50000;
```

---

## 📥 Input / Output Details

### Input:

* SQL commands for database creation
* Table creation and data insertion
* Filtering, sorting, grouping, and aggregation queries

### Output:
•	Table creation


 <img width="414" height="107" alt="Table Creation" src="https://github.com/user-attachments/assets/1e1656e1-2c85-4a96-a359-8f818cc7624a" />


•	Data insertion


<img width="407" height="104" alt="Data insertion" src="https://github.com/user-attachments/assets/3b24a041-2520-468b-b1e9-b8e5dfcb4f34" />

 
•	Filtering


<img width="568" height="114" alt="Filtering" src="https://github.com/user-attachments/assets/b63249cb-5314-4030-9a86-7854f7f82125" />

 
•	Sorting


<img width="572" height="203" alt="Sorting" src="https://github.com/user-attachments/assets/d661fdda-ae0f-4b49-8281-29f251dcafde" />

 
•	Grouping


<img width="357" height="139" alt="Grouping" src="https://github.com/user-attachments/assets/e164d221-24b9-4e6d-ab16-5ba964af0d12" />

 
•	Aggregation

<img width="360" height="114" alt="Aggregation" src="https://github.com/user-attachments/assets/ac29e724-e8b0-44d9-84ab-4cca3c9929ac" />


---

## 🎓 Learning Outcome

After completing this practical, the student has learned:

### ✅ Concepts Understood

* SQL SELECT query execution
* Filtering using WHERE clause
* Sorting using ORDER BY clause
* Grouping and aggregation using GROUP BY and HAVING

### ✅ Skills Developed

* Writing structured PostgreSQL queries
* Designing analytical database queries
* Logical understanding of query execution flow

### ✅ Practical Exposure Gained

* Hands-on experience with PostgreSQL
* Exposure to real-world analytical SQL use cases

---
