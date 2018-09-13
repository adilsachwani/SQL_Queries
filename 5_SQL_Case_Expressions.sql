--1
SELECT
	FilmName AS Title,
	CASE
	WHEN FilmRunTimeMinutes <= 90 THEN 'Short'
	WHEN FilmRunTimeMinutes <= 120 THEN 'Medium'
	WHEN FilmRunTimeMinutes <= 150 THEN 'Big'
	ELSE 'Exciting'
	END AS Duration
FROM
	tblFilm

--2
SELECT
	FilmName AS Title,
	CASE
	WHEN FilmName LIKE '%Ocean%' THEN 'Not Good'
	ELSE 'Fine'
	END AS Watch
FROM
	tblFilm
ORDER BY
	Title