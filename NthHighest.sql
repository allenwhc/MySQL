USE exercise;
DROP FUNCTION IF EXISTS getNthHighestSalary;

DELIMITER //
CREATE FUNCTION getNthHighestSalary(N INT)
RETURNS INT
BEGIN
	RETURN(
  		SELECT e1.Salary
    	FROM (SELECT DISTINCT Salary FROM Employee) e1
   	 	WHERE (SELECT COUNT(*) FROM (SELECT DISTINCT Salary FROM Employee) e2 WHERE e2.Salary > e1.Salary) = N - 1  
    	LIMIT 1
    );
END //

SELECT getNthHighestSalary(2);
SELECT getNthHighestSalary(10);

DROP FUNCTION IF EXISTS getNthHighestSalary;



