--Provide a query that shows the invoices associated with each sales agent. 
--The resultant table should include the Sales Agent's full name.
select 
e.FirstName, e.LastName, STRING_AGG(i.InvoiceId,', ') [Associated Invoices]
from Employee e
	join Customer c on e.EmployeeId = c.SupportRepId
	join Invoice i on c.CustomerId = i.CustomerId
group by e.FirstName, e.LastName