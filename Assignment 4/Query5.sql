--Artists and their albums that contains the word "Symphony"
SELECT  DISTINCT
ar.name AS "Name",
al.Title AS "Album Name"
FROM artists AS ar
INNER JOIN albums AS al
ON al.ArtistId = ar.ArtistId
WHERE al.Title LIKE "%Symphony%"
AND al.ArtistId IS NOT NULL
AND ar.ArtistId IS NOT NULL
ORDER BY al.ArtistId
