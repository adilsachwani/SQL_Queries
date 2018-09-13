--1
SELECT
	ISNULL(c.CountryName,'Total') AS Country,
	COUNT(f.FilmName) AS Films
FROM
	tblFilm f
	INNER JOIN tblCountry c ON f.FilmCountryID = c.CountryID
GROUP BY
	c.CountryName WITH ROLLUP
ORDER BY
	Films DESC

--2
SELECT
	c.CountryName AS Country,
	COUNT(f.FilmName) AS Films
FROM
	tblFilm AS f
	INNER JOIN tblCountry AS c ON f.FilmCountryID = c.CountryID
GROUP BY
	c.CountryName
HAVING
	COUNT(f.FilmName) >=5
ORDER BY
	Films DESC

--3
SELECT
	c.CountryName AS Country,
	d.DirectorName AS Director,
	COUNT(f.FilmName) AS Films
FROM
	tblFilm AS f
	INNER JOIN tblCountry AS c ON f.FilmCountryID = c.CountryID
	INNER JOIN tblDirector AS d ON f.FilmDirectorID = DirectorID
GROUP BY
	c.CountryName,
	d.DirectorName
HAVING
	COUNT(f.FilmName) >=5
ORDER BY
	Films DESC