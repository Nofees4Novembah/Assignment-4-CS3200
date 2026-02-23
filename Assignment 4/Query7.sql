 --Artists published at least 10 MPEG tracks
SELECT
COUNT(*) AS "Number of Artists"
FROM (
SELECT DISTINCT
    ar.Name AS "Artist Name"
FROM artists AS ar
INNER JOIN albums AS al
    ON al.ArtistId = ar.ArtistId
INNER JOIN tracks AS t
    ON t.AlbumId = al.AlbumId
INNER JOIN media_types AS m
    ON m.MediaTypeId = t.MediaTypeId
INNER JOIN playlist_track AS pt
    ON pt.TrackId = t.TrackId
INNER JOIN playlists AS p
    ON p.PlaylistId = pt.PlaylistId
WHERE m.Name LIKE "%MPEG%"
    AND ar.Name IS NOT NULL
GROUP BY ar.name
HAVING COUNT(t.TrackId >= 10)
)
