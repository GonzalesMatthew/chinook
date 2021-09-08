--Provide a query that includes the purchased track name AND artist name with each invoice line item.
select top 10 
il.*, t.[Name] [Track], r.[Name] [Artist]
from InvoiceLine il
	join Track t on il.TrackId = t.TrackId
	join Album a on a.AlbumId = t.AlbumId
	join Artist r on r.ArtistId = a.ArtistId
;
