-- Problem: Customers Who Never Order
-- Platform: LeetCode #183
-- Link: https://leetcode.com/problems/customers-who-never-order/
-- Difficulty: Easy
-- Topic: Aggregate function
--
-- Approach: use subquery to select the unique customerId and
-- then in outer query select all customers which are not in 
-- that inner query

SELECT c.name as Customers
FROM customers c
WHERE c.id NOT IN(
    SELECT DISTINCT o.customerId
    FROM orders o
);
