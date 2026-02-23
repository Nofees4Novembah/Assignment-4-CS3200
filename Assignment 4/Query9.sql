-- Total tracks purchased by media type
SELECT
mt.Name AS "Media Type",
COUNT(t.TrackId) AS "Total Tracks Purchased"
FROM invoice_items AS ii
INNER JOIN tracks AS t
    ON t.TrackId = ii.TrackId
INNER JOIN media_types AS mt
    ON mt.MediaTypeId = t.MediaTypeId
WHERE mt.Name IS NOT NULL
GROUP BY mt.Name
ORDER BY mt.Name ASC