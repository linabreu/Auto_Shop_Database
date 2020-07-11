/*Lina Breunlin
Final Project
Generates report of payments. If the payment has not been made will show NOT PAID
*/
CREATE PROCEDURE spReportOfPayments
AS
SELECT InvoiceID,
		CustomerID, 
		CustomerName, 
		FORMAT((SUM(GrossPrice)),'C2') AS InvoiceAmount,
		CONVERT (varchar, getDate(), 107) AS AuditDate,
		BillingDate,
		InvoiceDue,
		'NOT PAID' AS PaymentDate
FROM AllInvoiceInfo
WHERE PaymentDate IS NULL
GROUP BY InvoiceID, CustomerID, CustomerName, BillingDate, InvoiceDue
UNION
SELECT InvoiceID,
		CustomerID, 
		CustomerName, 
		FORMAT((SUM(GrossPrice)),'C2') AS InvoiceAmount,
		CONVERT (varchar, getDate(), 107) AS AuditDate,
		BillingDate,
		InvoiceDue,
		PaymentDate
FROM AllInvoiceInfo
WHERE PaymentDate IS NOT NULL
GROUP BY InvoiceID, CustomerID, CustomerName, BillingDate,PaymentDate, InvoiceDue
GO


EXEC spReportOfPayments;

