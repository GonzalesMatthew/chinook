--Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.
select
count(*) [LineItems]
from Invoice i
	join InvoiceLine il on i.InvoiceId = il.InvoiceId
where i.InvoiceId = 37;