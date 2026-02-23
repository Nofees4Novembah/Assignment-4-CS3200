--Name of Artist and their albums
SELECT  DISTINCT
ar.name AS "Name",
al.Title AS "Album Name"
FROM artists AS ar
INNER JOIN albums AS al
ON al.ArtistId = ar.ArtistId
WHERE al.ArtistId AND ar.ArtistId IS NOT NULL
ORDER BY al.ArtistId
