--1
SELECT
	f.FilmName + ' was directed by ' + d.DirectorName AS 'Description'
FROM
	tblFilm AS f
	INNER JOIN tblDirector d
		ON f.FilmDirectorID = d.DirectorID

--2
SELECT
	FilmName + ' won ' + CAST(FilmOscarWins AS VARCHAR(2)) + ' oscars'AS 'Oscar Wins'
FROM
	tblFilm

--3
SELECT
	FilmName + ' won ' + CONVERT(VARCHAR(2),FilmOscarWins) + ' oscars'AS 'Oscar Wins'
FROM
	tblFilm

--4
SELECT
	ActorName AS 'Full Name',
	LEFT(ActorName,CHARINDEX(' ',ActorName)-1) AS [First Name],
	RIGHT(ActorName,LEN(ActorName)-CHARINDEX(' ',ActorName)) AS [Last Name]
FROM
	tblActor
ORDER BY
	[Last Name]