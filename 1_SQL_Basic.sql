--1
SELECT
	*
FROM
	tblFilm

--2
SELECT
	ActorName AS [Name],
	ActorGender AS [Gender]
FROM
	tblActor

--3
SELECT
	FilmName Title,
	FilmReleaseDate AS 'Released On',
	FilmRunTimeMinutes [Mins]
FROM
	tblFilm