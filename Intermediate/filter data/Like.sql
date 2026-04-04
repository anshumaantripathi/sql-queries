-- Retrieve customers whose first name starts with 'M'
-- 'M%' → M followed by any number of characters
SELECT *
FROM customers
WHERE first_name LIKE 'M%';

-- Retrieve customers whose first name ends with 'n'
-- '%n' → any characters ending with n
SELECT *
FROM customers
WHERE first_name LIKE '%n';

-- Retrieve customers whose first name contains 'r'
-- '%r%' → r can appear anywhere in the string
SELECT *
FROM customers
WHERE first_name LIKE '%r%';

-- Retrieve customers whose first name has 'r' as the third character
-- '__r%' → exactly two characters, then 'r', followed by anything
SELECT *
FROM customers
WHERE first_name LIKE '__r%';