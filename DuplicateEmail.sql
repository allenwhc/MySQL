USE exercise;

-- SELECT Email FROM email GROUP BY Email HAVING COUNT(*)>1;
SELECT Email, COUNT(*) AS Duplicate FROM email
GROUP BY Email 
HAVING COUNT(*)>1;