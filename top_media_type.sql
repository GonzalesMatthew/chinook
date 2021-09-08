--Provide a query that shows the most purchased Media Type.
select top 1
mt.[Name] [MediaType], sum(i.Total) [Total]
from Invoice i
	join InvoiceLine il on i.InvoiceId = il.InvoiceId
	join Track t on t.TrackId = il.TrackId
	join MediaType mt on mt.MediaTypeId = t.MediaTypeId
group by mt.[Name]
order by sum(i.Total) desc;