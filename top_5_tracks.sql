--Provide a query that shows the top 5 most purchased songs.
select top 5
a.[Name] [Artist], t.[Name] [TrackName], sum(i.Total) [Total]
from Track t
	join Album b on b.AlbumId = t.AlbumId
	join Artist a on a.ArtistId = b.ArtistId
	join InvoiceLine il on il.TrackId = t.TrackId
	join Invoice i on i.InvoiceId = il.InvoiceId
group by t.[Name], a.[Name]
order by sum(i.Total) desc;