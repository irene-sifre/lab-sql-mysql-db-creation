-- Disable safe updates if needed
SET SQL_SAFE_UPDATES = 0;

-- Delete duplicated car entry
DELETE FROM cars 
WHERE id = 4;