--1
SELECT
	SUM(FilmRuntimeMinutes) AS [Total Runtime],
	AVG(FilmRuntimeMinutes) AS [Average Runtime],
	MAX(FilmRuntimeMinutes) AS [Maximum Runtime],
	MIN(FilmRuntimeMinutes) AS [Minimum Runtime],
	COUNT(*) AS [Total Films]
FROM
	tblFilm

--2
SELECT
	SUM(CONVERT(BIGINT,FilmBoxOfficeDollars)) AS [Total Box Office Dollars],
	AVG(CONVERT(DECIMAL,FilmRuntimeMinutes)) AS [Average Runtime]
FROM
	tblFilm