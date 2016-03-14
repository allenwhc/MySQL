USE exercise;
SELECT DISTINCT ConsecutiveNums FROM
(
	SELECT
		(@same := If(@curr=Num, @same+1, 1)) AS count,
		(@curr := Num),
		Num AS ConsecutiveNums
	FROM Logs, (SELECT @same := 1, @curr := -100) INIT
)A WHERE A.count>=3;