--How many Invoices were there in 2009 and 2011?
select 
YEAR(InvoiceDate) [InvoiceYear]
,count(*) [Invoices]
from Invoice
where YEAR(InvoiceDate) in (2009,2011)
group by YEAR(InvoiceDate)
;