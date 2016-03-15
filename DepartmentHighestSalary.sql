USE exercise;

SELECT 
	D.name Department, 
	E.name Employee, 
	E.Salary Salary
FROM Employee E, Department D
WHERE E.DepartmentId=D.Id
AND
(
	SELECT COUNT(DISTINCT Salary)
	FROM Employee
	WHERE DepartmentId=D.Id
	AND Salary>E.Salary
)<3
ORDER BY E.DepartmentId, E.Salary DESC;