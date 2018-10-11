/* SELECT ArtistName, YearEstablished
FROM Artist
WHERE YearEstablished > 1970
AND YearEstablished < 2000
ORDER BY YearEstablished desc
;

SELECT 
a.Title,
a.AlbumLength,
a.Label AS AlbumLabel,
ar.ArtistName,
ar.YearEstablished,
g.Label AS GenreLabel
FROM Album a
JOIN Artist ar ON a.ArtistId = ar.ArtistId
JOIN Genre g ON a.GenreId = g.GenreId
;

SELECT *
FROM Song s
JOIN Album al ON al.AlbumId = s.AlbumId
JOIN Artist ar ON ar.ArtistId = s.ArtistId
JOIN Genre g ON g.GenreId = s.GenreId
;

INSERT INTO Artist 
(ArtistName, YearEstablished)
values
("Mogwai", 1993)
;

SELECT * FROM Artist;

DELETE FROM Artist WHERE ArtistId = 28;

DELETE FROM Artist WHERE ArtistId = 33;

UPDATE Artist 
SET ArtistName = "Modest Mouse"
WHERE ArtistId = 29;

UPDATE Artist 
SET YearEstablished = 2008
WHERE ArtistId = 31;
*/

SELECT * FROM GENRE;

INSERT INTO Artist 
(ArtistName, YearEstablished)
values
("The Dead Weather", 2008)
;

INSERT INTO Album
(Title, ArtistId, ReleaseDate, AlbumLength, Label)
values("Sea of Cowards", 31, 2010, 12, "Third Man Records")
;

SELECT * FROM Album;

SELECT 
a.Title,
ar.ArtistName
FROM Album a
JOIN Artist ar ON a.ArtistId = ar.ArtistId
;

SELECT 
al.Title
s.Title
FROM Song s
JOIN Album al ON s.AlbumId = al.AlbumId;