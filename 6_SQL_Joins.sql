--1
SELECT
	f.FilmName AS Title,
	d.DirectorName AS Director,
	c.CountryName AS Country
FROM
	tblFilm AS f
	INNER JOIN tblDirector AS d
		ON f.FilmDirectorID = d.DirectorID
	INNER JOIN tblCountry AS c
		ON f.FilmCountryID = c.CountryID

--2
SELECT
	f.FilmName AS Title,
	d.DirectorName AS Director
FROM
	tblFilm AS f
	RIGHT OUTER JOIN tblDirector AS d
		ON f.FilmDirectorID = d.DirectorID

--3
SELECT
	f.FilmName AS Title,
	d.DirectorName AS Director
FROM
	tblFilm AS f
	RIGHT OUTER JOIN tblDirector AS d
		ON f.FilmDirectorID = d.DirectorID
WHERE
	f.FilmName IS NULL

--4
SELECT
	f.FilmName AS Title,
	d.DirectorName AS Director
FROM
	tblFilm AS f
	FULL OUTER JOIN tblDirector AS d
		ON f.FilmDirectorID = d.DirectorID