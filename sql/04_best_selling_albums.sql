🇬🇧 Business Question
Which albums sell the highest number of units?
🇮🇹 Domanda di Business
Quali album registrano il maggior numero di unità vendute?

SELECT
    a.Title,
    SUM(ii.Quantity) AS Units_Sold
FROM invoice_items ii
INNER JOIN tracks t
    ON ii.TrackId = t.TrackId
INNER JOIN albums a
    ON t.AlbumId = a.AlbumId
GROUP BY
    a.AlbumId,
    a.Title
ORDER BY Units_Sold DESC
LIMIT 10;
