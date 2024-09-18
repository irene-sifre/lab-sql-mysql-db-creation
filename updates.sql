-- Disable safe updates if needed
SET SQL_SAFE_UPDATES = 0;

-- Update customer emails
UPDATE customers 
SET email = CASE
    WHEN id = 10001 THEN 'ppicasso@gmail.com'
    WHEN id = 20001 THEN 'lincoln@us.gov'
    WHEN id = 30001 THEN 'hello@napoleon.me'
END;