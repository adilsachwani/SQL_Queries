--1
SELECT
	FilmName AS Title,
	FilmReleaseDate AS Release,
	FilmRunTimeMinutes As Duration
FROM
	tblFilm
WHERE
	FilmRunTimeMinutes >= 120
ORDER BY
	Duration

--2
SELECT
	FilmName AS Title,
	FilmReleaseDate AS Release,
	FilmRunTimeMinutes As Duration
FROM
	tblFilm
WHERE
	FilmRunTimeMinutes IN (90,120,180)
ORDER BY
	Duration

--3
SELECT
	FilmName AS Title,
	FilmReleaseDate AS Release,
	FilmRunTimeMinutes As Duration
FROM
	tblFilm
WHERE
	FilmName = 'die hard'
ORDER BY
	Duration

--4
SELECT
	FilmName AS Title,
	FilmReleaseDate AS Release,
	FilmRunTimeMinutes As Duration
FROM
	tblFilm
WHERE
	FilmName LIKE '%die hard%'
ORDER BY
	Duration

--5
SELECT
	FilmName AS Title,
	FilmReleaseDate AS Release,
	FilmRunTimeMinutes As Duration
FROM
	tblFilm
WHERE
	FilmName LIKE 'die hard__'
ORDER BY
	Duration

--6
SELECT
	FilmName AS Title,
	FilmReleaseDate AS Release,
	FilmRunTimeMinutes As Duration
FROM
	tblFilm
WHERE
	FilmName NOT LIKE 'die hard__'
ORDER BY
	Duration

--7
SELECT
	FilmName AS Title,
	FilmReleaseDate AS Release,
	FilmRunTimeMinutes As Duration
FROM
	tblFilm
WHERE
	FilmReleaseDate = '2002-8-2'
ORDER BY
	Duration

--8
SELECT
	FilmName AS Title,
	FilmReleaseDate AS Release,
	FilmRunTimeMinutes As Duration
FROM
	tblFilm
WHERE
	FilmReleaseDate BETWEEN '8/2/2002' AND '8/2/2010'
ORDER BY
	Release

--9
SELECT
	FilmName AS Title,
	FilmReleaseDate AS Release,
	FilmRunTimeMinutes As Duration
FROM
	tblFilm
WHERE
	MONTH(FilmReleaseDate) = 2
ORDER BY
	Release

--10
SELECT
	FilmName AS Title,
	FilmReleaseDate AS Release,
	FilmRunTimeMinutes As Duration
FROM
	tblFilm
WHERE
	FilmRunTimeMinutes < 120 AND
	(FilmName LIKE 'x%' OR
	FilmName LIKE 'y%')
ORDER BY
	Title