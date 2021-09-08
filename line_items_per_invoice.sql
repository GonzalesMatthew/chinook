--Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice.
--HINT: GROUP BY
select
i.InvoiceId
,count(*) [LineItems]
from Invoice i
	join InvoiceLine il on i.InvoiceId = il.InvoiceId
group by i.InvoiceId
;