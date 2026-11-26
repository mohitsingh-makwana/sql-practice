-- Problem: Second Highest Salary
-- Platform: LeetCode #176
-- Link: https://leetcode.com/problems/employees-earning-more-than-their-managers/
-- Difficulty: Medium
-- Topic: Subqueries
--
-- Approach: Find the maximum salary which is less than maximum salary

SELECT MAX(salary) as second_highest_salary
FROM employee 
WHERE salary<(
    SELECT MAX(salary)
    FROM employee
);
