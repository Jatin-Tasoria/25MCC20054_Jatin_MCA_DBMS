--- LeetCode Problem 185

Select c.name as Customers
from Customers c Left join Orders o on o.customerId = c.id
where o.customerId is null;