USE exercise;
SELECT * FROM Scores;
SELECT Score,
		@rank := @rank + (@prev <> (@prev := Score)) AS Rank
FROM Scores,
(SELECT @prev := -1, @rank := 0) INIT
ORDER BY Score DESC;