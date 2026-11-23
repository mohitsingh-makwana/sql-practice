-- Problem: Employees Earning More Than Their Managers
-- Platform: LeetCode #181
-- Link: https://leetcode.com/problems/employees-earning-more-than-their-managers/
-- Difficulty: Easy
-- Topic: Self Join
--
-- Approach: Join the Employee table with itself. One copy is the
-- employee (e) and the other is the manager (m). Keep the rows where
-- the employee's salary is higher than the manager's.

SELECT e.name AS Employee
FROM Employee e
JOIN Employee m ON e.managerId = m.id
WHERE e.salary > m.salary;