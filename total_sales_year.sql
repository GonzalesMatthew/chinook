--What are the respective total sales for each of those years?
select 
YEAR(InvoiceDate) [InvoiceYear]
,count(*) [Invoices]
,sum(Total) [TotalSales]
from Invoice
where YEAR(InvoiceDate) in (2009,2011)
group by YEAR(InvoiceDate)
;