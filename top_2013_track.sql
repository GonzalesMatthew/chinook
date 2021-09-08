--Provide a query that shows the most purchased track of 2013.
select top 1
t.[Name] [TrackName], sum(i.Total) [Total]
from Track t
	join Album b on b.AlbumId = t.AlbumId
	join Artist a on a.ArtistId = b.ArtistId
	join InvoiceLine il on il.TrackId = t.TrackId
	join Invoice i on i.InvoiceId = il.InvoiceId
where YEAR(i.InvoiceDate) = 2013
group by t.[Name]
order by sum(i.Total) desc;