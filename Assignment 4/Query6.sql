-- Artists who performed MPEG tracks in "Brazilian Music" or "Grunge" playlists
SELECT DISTINCT
    ar.Name AS "Artist Name"
FROM artists AS ar
INNER JOIN albums AS al
    ON al.ArtistId = ar.ArtistId
INNER JOIN tracks AS t
    ON t.AlbumId = al.AlbumId
INNER JOIN media_types AS mt
    ON mt.MediaTypeId = t.MediaTypeId
INNER JOIN playlist_track AS pt
    ON pt.TrackId = t.TrackId
INNER JOIN playlists AS p
    ON p.PlaylistId = pt.PlaylistId
WHERE mt.Name LIKE "%MPEG%"
    AND p.Name IN ("Brazilian Music", "Grunge")
    AND ar.Name IS NOT NULL
ORDER BY ar.Name
