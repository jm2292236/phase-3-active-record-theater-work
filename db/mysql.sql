DELETE FROM roles;
DELETE FROM auditions;

SELECT * FROM roles;
SELECT * FROM auditions;

SELECT  "auditions".* 
FROM "auditions" 
WHERE "auditions"."role_id" = 24
    AND (hired = 't') 
LIMIT 1
