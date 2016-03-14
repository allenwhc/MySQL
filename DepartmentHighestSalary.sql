USE exercise;

SELECT D.name Department, E.name Employee, E.Salary Salary
FROM Employee E, Department D
WHERE E.DepartmentId=D.Id
AND E.Salary=(SELECT MAX(Salary) FROM Employee ex WHERE ex.DepartmentId=D.id);