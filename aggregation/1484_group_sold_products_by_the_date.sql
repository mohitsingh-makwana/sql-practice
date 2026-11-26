-- Problem: Group Sold Products By The Date
-- Platform: LeetCode #1484
-- Link: https://leetcode.com/problems/group-sold-products-by-the-date/
-- Difficulty: Easy
-- Topic: Aggregate function
--
-- Approach: Group the table based on sell_date and count distinct products 
-- as well as concate them using the GROUP_CONCAT() function.

SELECT sell_date,
        COUNT(DISTINCT product) as num_sold,
        GROUP_CONCAT(
            DISTINCT product
            ORDER BY product
            SEPARATOR ','
            ) as products
FROM activities
GROUP BY sell_date
ORDER BY sell_date;


