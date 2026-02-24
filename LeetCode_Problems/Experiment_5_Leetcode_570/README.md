# LeetCode Problem 570
```sql
SELECT m.name
FROM Employee e
JOIN Employee m
  ON e.managerId = m.id
GROUP BY m.id, m.name
HAVING COUNT(*) >= 5;
```

![Alt Text](./570.png)