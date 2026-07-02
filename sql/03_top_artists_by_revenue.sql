SELECT
    a2.Name AS Artist,
    SUM(ii.UnitPrice * ii.Quantity) AS Revenue
FROM invoice_items ii
INNER JOIN tracks t
    ON ii.TrackId = t.TrackId
INNER JOIN albums a
    ON t.AlbumId = a.AlbumId
INNER JOIN artists a2
    ON a.ArtistId = a2.ArtistId
GROUP BY
    a2.ArtistId,
    a2.Name
ORDER BY Revenue DESC
LIMIT 10;
