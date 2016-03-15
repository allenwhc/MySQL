USE exercise;

SELECT
	request_at AS Day,
	ROUND(SUM(IF(Status='completed',1,0)) / SUM(1),2) AS 'Completion Rate'
FROM Trips t
LEFT OUTER JOIN Users u
ON t.Client_Id=u.User_Id
WHERE u.Banned='No'
AND t.request_at BETWEEN '2015-12-22' AND '2015-12-24'
GROUP BY t.request_at;