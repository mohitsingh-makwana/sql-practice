-- Problem: Delete Duplicate Emails
-- Platform: LeetCode #196
-- Link: https://leetcode.com/problems/delete-duplicate-emails/
-- Difficulty: Easy
-- Topic: Basics
--
-- Approach: delete all the records except the minimum id of each email

DELETE 
FROM person
WHERE id NOT IN(
    SELECT e.*
    FROM (SELECT MIN(id)
    FROM person 
    GROUP BY email
    ) e
);