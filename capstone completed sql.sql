create database credit_card_approval;
use credit_card_approval;
select * from credit_card_data;
-- 1) Group the customers based on their income type and find the average of their annual income
SELECT AVG(annual_income),type_income from credit_card_data group by type_income;
-- here encoding resulted in many columns so i simply wrote a query based on raw data on this one particular 
-- query only


-- 2) Find the Female owners of cars and property

 SELECT * FROM credit_card_data
 WHERE gender = 1
 AND car_owner = 0
 AND propert_owner = 0;

-- 3) Find the male customers who are staying with their families

SELECT * FROM credit_card_data
 WHERE gender = 0 
 AND family_members > 1;


-- 4) please list the top five people having the highest income

SELECT * FROM credit_card_data
ORDER BY annual_income DESC
LIMIT 5;

-- 5) How many married people are having bad credit 

SELECT * FROM credit_card_data
WHERE married = 1
AND label = 1;

-- 6) what is the highest education level and what is the total count

SELECT COUNT(*) FROM credit_card_data
WHERE highereducation = 1;


-- 7) Between married males and females, who is having more bad creit

SELECT MAX(gender) AS 'gender having 
more bad credit' FROM credit_card_data WHERE label = 1;