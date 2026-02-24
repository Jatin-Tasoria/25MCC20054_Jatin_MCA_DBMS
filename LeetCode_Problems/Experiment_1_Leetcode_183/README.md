# LeetCode Problem 185

```sql
Select c.name as Customers
from Customers c Left join Orders o on o.customerId = c.id
where o.customerId is null;
```

![Alt Text](./183.png)