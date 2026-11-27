-- Problem: Duplicate Emails
-- Platform: LeetCode #182
-- Link: https://leetcode.com/problems/duplicate-emails/
-- Difficulty: Easy
-- Topic: Aggregate function
--
-- Approach: Group the table based on email and 
-- select email whose count is greater than 1.

SELECT email as Email
from person
GROUP BY email
HAVING COUNT(*)>=2;