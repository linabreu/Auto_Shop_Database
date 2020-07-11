/*
Lina Breunlin
Final Project
Stored procedures insert additional rows for tables in DB
*/

--stored procedure to insert additional rows to parts table
CREATE PROCEDURE spAddNewParts
AS
INSERT INTO Parts 
	(PartID, CategoryID, PartName, UnitPrice, PartDesc)
VALUES
	(NULL, NULL, NULL, NULL, NULL)
GO


--stored procedure to insert additional rows to parts category table
CREATE PROCEDURE spAddNewPartsCategory
AS
INSERT INTO Parts 
	(CategoryID, PartDesc)
VALUES
	(NULL, NULL)
GO



--stored procedure to insert additional rows to vehicle fit table
CREATE PROCEDURE spAddNewVehicleFit
AS
INSERT INTO VehicleFit 
	(VehicleID, PartID)
VALUES
	(NULL, NULL)
GO


--stored procedure to insert additional rows to vehicles table
CREATE PROCEDURE spAddNewVehicle
AS
INSERT INTO Vehicles 
	(VehicleID, Make, Model, [Year], VehicleDesc)
VALUES
	(NULL, NULL, NULL, NULL, NULL	)
GO


--stored procedure to insert additional rows to customers table
CREATE PROCEDURE spAddNewCust
AS
INSERT INTO Customers 
	(FirstName, LastName, ShippingStreet, ShippingCity, ShippingState, ShippingZip, BillingStreet, BillingCity, BillingState, BillingZip, CardType, CardNo)
VALUES
	(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL )
GO


---stored procedure to insert additional rows to invoices table
CREATE PROCEDURE  spAddNewInvoice
AS
INSERT INTO Invoices
	(InvoiceID, CustomerID, InvoiceDate, OrderDate, BillingDate, ShippingDate, PaymentDate, InvoiceDueDate)
VALUES
	(NULL, NULL,  NULL,  NULL,  NULL,  NULL,  NULL,  NULL)
GO


---stored procedure to insert additional rows to invoice line items table
CREATE PROCEDURE spAddNewLineItem
AS 
INSERT INTO InvoiceLineItems
	(InvoiceID, PartID, QuantitySold)
VALUES
	(NULL, NULL, NULL)
GO








