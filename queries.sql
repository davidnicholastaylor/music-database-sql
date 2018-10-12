-- In class examples

SELECT ArtistName, YearEstablished
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



/*
PRACTICE
*/


 
-- Select all entries from Genre Table
SELECT * FROM GENRE;

-- Add a favorite artist to Artist Table
INSERT INTO Artist 
(ArtistName, YearEstablished)
values
("The Dead Weather", 2008)
;
-- Add one or more albums by artist to Album table
INSERT INTO Album
(Title, ArtistId, ReleaseDate, AlbumLength, Label)
values("Sea of Cowards", 31, 2010, 12, "Third Man Records")
;

-- Add one or more songs on that album to Song table
INSERT INTO Song 
(Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
values("Blue Blood Blues", 314, 2010, 2, 31, 23);
INSERT INTO Song 
(Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
values("Die by the Drop", 523, 2010, 2, 31, 23);

-- Select Artist Album and Song with a left join but only where ArtistId and AlbumId match specific id numbers
SELECT a.ArtistName, al.Title, s.Title
FROM Artist a
LEFT JOIN Album al
ON a.ArtistId = al.ArtistId
LEFT JOIN Song s 
ON s.AlbumId = al.AlbumId
WHERE a.ArtistId = 31 AND al.AlbumId = 23
;

-- Select statement for how many songs in each album
SELECT al.Title, COUNT(s.Title) as SongCount
FROM Song s
LEFT JOIN Album al ON al.AlbumId = s.AlbumId
GROUP BY al.Title
;

-- Select statement for how many songs for each Artist
SELECT a.ArtistName, COUNT(s.Title) as SongCount
FROM Song s
LEFT JOIN Artist a ON a.ArtistId = s.ArtistId
GROUP BY a.ArtistName
;

-- Select statement for how many songs in each Genre
SELECT g.Label, COUNT(s.Title) as SongCount
FROM Song s
LEFT JOIN Genre g ON g.GenreId = s.GenreId
GROUP BY g.Label
;

-- Select album with longest duration
SELECT a.Title, MAX(a.AlbumLength)
from Album a
;

-- Select song with longest duration
-- Modify to add album title
SELECT a.Title, s.Title, MAX(s.SongLength)
from Song s
JOIN Album a ON a.AlbumId = s.AlbumId
;





-- More in class examples
SELECT 
a.Title,
ar.ArtistName
FROM Album a
JOIN Artist ar ON a.ArtistId = ar.ArtistId
;

SELECT 
al.Title,
s.Title
FROM Song s
JOIN Album al ON s.AlbumId = al.AlbumId
;




SELECT g.Label, COUNT(al.AlbumId) AS AlbumCount
FROM Genre g
JOIN Album al ON al.GenreId = g.GenreId
GROUP BY g.Label
ORDER BY AlbumCount desc
LIMIT 1
;

SELECT 
al.Title,
MAX(al.AlbumLength)
FROM Album al

;