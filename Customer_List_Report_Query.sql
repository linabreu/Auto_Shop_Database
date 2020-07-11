/*Lina Breunlin
Final Project
Generates report of customers
*/


CREATE PROCEDURE spReportOfCustomers
AS
SELECT CustomerID, FirstName, LastName, 
		ShippingStreet + ' ' + ShippingCity + ',' + ' ' + ShippingState + ' ' + ShippingZip  AS ShippingAddress, 
		BillingStreet + ' ' + BillingCity + ',' + ' ' + BillingState + ' ' + BillingZip  AS BillingAddress, 
		CardType,
		'XXXX-XXXX-XXXX-' + SUBSTRING(CardNo, 1, 4) AS CarNo
FROM Customers
ORDER BY CustomerID ASC
GO

EXEC spReportOfCustomers;


