--1
SELECT
	FilmName AS Title,
	(FilmBoxOfficeDollars-FilmBudgetDollars) AS Profit
FROM
	tblFilm
WHERE
	(FilmBoxOfficeDollars-FilmBudgetDollars) < 0
ORDER BY
	Profit DESC

--2
SELECT
	FilmName AS Title,
	FilmRunTimeMinutes/60.0 AS Duration,
	FilmBoxOfficeDollars*0.2 AS Tax,
	FilmBudgetDollars+(FilmBoxOfficeDollars*0.2) AS Budget
FROM
	tblFilm
ORDER BY
	FilmRunTimeMinutes DESC

--3
SELECT
	FilmName AS Title,
	FilmRunTimeMinutes/60 AS "HOURS",
	FilmRunTimeMinutes%60 AS "MINUTES"
FROM
	tblFilm
ORDER BY
	FilmRunTimeMinutes DESC