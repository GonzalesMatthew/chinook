--Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name 
--for all invoices and customers.
select 
i.InvoiceId, i.Total, c.FirstName, c.LastName, c.Country, e.FirstName [SalesAgentFName], e.LastName [SalesAgentLName]
from Employee e
	join Customer c on e.EmployeeId = c.SupportRepId
	join Invoice i on c.CustomerId = i.CustomerId
;