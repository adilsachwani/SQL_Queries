--1
SELECT
	FilmName AS Title,
	CONVERT(CHAR(8),FilmReleaseDate,3),
	CONVERT(CHAR(10),FilmReleaseDate,103)
FROM
	tblFilm

--2
SELECT
	FilmName AS Title,
	DATENAME(DW,FilmReleaseDate) + ' - ' +
	DATENAME(DD,FilmReleaseDate) + ' ' +
	DATENAME(MM,FilmReleaseDate) + ', ' +
	DATENAME(YY,FilmReleaseDate) AS [Release Date]
FROM
	tblFilm

--3
SELECT
	FilmName AS Title,
	DATEDIFF(DD,FilmReleaseDate,GETDATE()) AS [Days],
	DATEDIFF(MM,FilmReleaseDate,GETDATE()) AS [Months],
	DATEDIFF(YY,FilmReleaseDate,GETDATE()) AS [Years]
FROM
	tblFilm

--4
SELECT
	FilmName AS Title,
	DATEDIFF(YY,FilmReleaseDate,GETDATE()) AS [Years],
	CASE
	WHEN DATEADD(YY,DATEDIFF(YY,FilmReleaseDate,GETDATE()),FilmReleaseDate) > GETDATE()
		THEN DATEDIFF(YY,FilmReleaseDate,GETDATE()) - 1
	ELSE DATEDIFF(YY,FilmReleaseDate,GETDATE())
	END AS [Perfect Years]
FROM
	tblFilm