--1

SELECT
	FilmName AS Title,
	CONVERT(varchar(5),FilmBudgetDollars/1000000) + ' Million $' AS Budget
FROM
	tblFilm
WHERE
	FilmOscarWins =
	(
		SELECT
			MAX(FilmOscarWins)
		FROM
			tblFilm
	)

--2
SELECT
	FilmName AS Title,
	FilmRunTimeMinutes AS Duration
FROM
	tblFilm
WHERE
	FilmRunTimeMinutes >=
	(
		SELECT
			AVG(FilmRunTimeMinutes)
		FROM
			tblFilm
	)
ORDER BY
	Duration DESC

--3

SELECT
	FilmName AS Title,
	FilmBoxOfficeDollars AS Dollars
FROM
	tblFilm
WHERE
	FilmBoxOfficeDollars >
	(
		SELECT
			MAX(FilmBoxOfficeDollars)
		FROM
			tblFilm
		WHERE
			MONTH(FilmReleaseDate) = 2
	) 

--4

SELECT
	FilmName
FROM
	tblFilm
WHERE
	FilmReleaseDate = 
	(
		SELECT
			FilmReleaseDate
		FROM
			tblFilm
		WHERE
			FilmName = 'Casino'
	)

--5

SELECT
	FilmName AS Title,
	FilmDirectorID AS [Director ID]
FROM
	tblFilm
WHERE
	FilmDirectorID IN 
	(
		SELECT
			DirectorID
		FROM
			tblDirector
		WHERE 
			DirectorDOB BETWEEN '1950-1-1' AND '1952-1-1'
	)