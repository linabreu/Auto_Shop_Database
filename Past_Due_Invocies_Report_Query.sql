/*Lina Breunlin
Final Project
Generates report of payments due
*/

CREATE PROCEDURE spReportOfPastDue
AS
SELECT InvoiceID,
		CustomerID, 
		CustomerName, 
		FORMAT((SUM(GrossPrice)),'C2') AS BalanceDue,
		CONVERT (varchar, getDate(), 107) AS AuditDate,
		BillingDate,
		InvoiceDue AS InvoiceDueDate,
		'PAST DUE' AS InvoiceStatus
FROM AllInvoiceInfo
WHERE PaymentDate IS NULL
GROUP BY InvoiceID, CustomerID, CustomerName, BillingDate, InvoiceDue
GO

EXEC spReportOfPastDue;
