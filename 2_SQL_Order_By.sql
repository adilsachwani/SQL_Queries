--1
SELECT
	FilmName Title,
	FilmReleaseDate AS 'Released On',
	FilmRunTimeMinutes [Mins]
FROM
	tblFilm
ORDER BY
	FilmName ASC

--2
SELECT
	FilmName Title,
	FilmReleaseDate AS 'Released On',
	FilmRunTimeMinutes [Duration]
FROM
	tblFilm
ORDER BY
	 Duration DESC,
	 Title ASC

--3
SELECT TOP 5 WITH TIES
	FilmName Title,
	FilmReleaseDate AS 'Released On',
	FilmRunTimeMinutes [Duration],
	FilmOscarWins
FROM
	tblFilm
ORDER BY
	 FilmOscarWins DESC