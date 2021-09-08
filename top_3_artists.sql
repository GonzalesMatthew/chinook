--Provide a query that shows the top 3 best selling artists.
select top 3
a.[Name] [Artist], sum(i.Total) [Total]
from Track t
	join Album b on b.AlbumId = t.AlbumId
	join Artist a on a.ArtistId = b.ArtistId
	join InvoiceLine il on il.TrackId = t.TrackId
	join Invoice i on i.InvoiceId = il.InvoiceId
group by a.[Name]
order by sum(i.Total) desc;