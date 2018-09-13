--1
SELECT
	FilmName AS Title,
	UPPER(FilmName) AS TITLE,
	DATENAME("M",FilmReleaseDate) AS 'Month',
	DATEDIFF("D",FilmReleaseDate,GETDATE()) AS 'DAYS OLD'
FROM
	tblFilm