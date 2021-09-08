--Provide a query that includes the purchased track name with each invoice line item.
select top 10 
il.*, t.[Name]
from InvoiceLine il
	join Track t on il.TrackId = t.TrackId
;