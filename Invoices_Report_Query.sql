/*Lina Breunlin
Final Project
Generates Reports of Invoices
*/


CREATE PROCEDURE spReportOfInvoices
AS
SELECT InvoiceID,
		CustomerID, 
		CustomerName,
		ShippingAddress,
		BillingAddress,
		FORMAT((SUM(GrossPrice)),'C2') AS InvoiceAmount,
		PaymentMethod,
		OrderDate,
		BillingDate,
		ShippingDate,
		PaymentDate,
		InvoiceDue AS InvoiceDueDate
FROM AllInvoiceInfo
GROUP BY InvoiceID, CustomerID, CustomerName, ShippingAddress, BillingAddress, PaymentMethod, OrderDate, BillingDate,ShippingDate, PaymentDate, InvoiceDue
GO

EXEC spReportOfInvoices;




