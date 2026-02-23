
-- Total length of each playlist in hours, only those longer than 2 hours
SELECT
    p.PlaylistId AS "Playlist ID",
    p.Name AS "Playlist Name",
    ROUND(SUM(t.Milliseconds) / 3600000.0, 2) AS "Length (Hours)"
FROM playlists AS p
INNER JOIN playlist_track AS pt ON pt.PlaylistId = p.PlaylistId
INNER JOIN tracks AS t ON t.TrackId = pt.TrackId
WHERE p.Name IS NOT NULL
GROUP BY p.PlaylistId, p.Name
HAVING SUM(t.Milliseconds) / 3600000.0 > 2
ORDER BY p.PlaylistId
