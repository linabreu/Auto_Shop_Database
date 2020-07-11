/*
Lina Breunlin
Final Project Script to create Final Project DB and the skeletons of its tables

*/

--create database

CREATE DATABASE FinalProject;

---create table of parts categories
USE FinalProject
CREATE TABLE PartsCategory 
(
	CategoryID int NOT NULL PRIMARY KEY,
	CategoryDesc varchar (50),
);



--create parts table. Foregin key in parts category table so that one had to be created first
USE FinalProject
CREATE TABLE Parts
(
	PartID int NOT NULL PRIMARY KEY,
	CategoryID int NOT NULL FOREIGN KEY  REFERENCES PartsCategory(CategoryID),
	PartName varchar(50),
	UnitPrice money,
	PartDesc varchar(255)
);


--create vehicles table
USE FinalProject
CREATE TABLE Vehicles
(
	VehicleID int NOT NULL PRIMARY KEY,
	Make varchar(50),
	Model varchar(50),
	[Year] int,
	VehicleDesc varChar(50)

);

---create vehicle fit table to keep track of what parts fit in what vehicle. Needed to create parts and vehicles table first since they are the foregin keys
USE FinalProject
CREATE TABLE VehicleFit
(
	VehicleID int NOT NULL FOREIGN KEY REFERENCES Vehicles(VehicleID),
	PartID int NOT NULL FOREIGN KEY REFERENCES Parts(PartID)

);


---create customers table
USE FinalProject
CREATE TABLE Customers
(
	CustomerID int NOT NULL PRIMARY KEY,
	FirstName varchar(50),
	LastName varchar (50),
	ShippingStreet varchar (100),
	ShippingCity varchar (20),
	ShippingState varchar(10),
	ShippingZip varchar (10),
	BillingStreet varchar (100),
	BillingCity varchar (20),
	BillingState varchar (10),
	BillingZip varchar (10),
	CardType varchar (20),
	CardNo varchar (40)
);

--create invoices table
USE FinalProject
CREATE TABLE Invoices
(
	InvoiceID int NOT NULL PRIMARY KEY,
	CustomerID int NOT NULL FOREIGN KEY REFERENCES Customers(CustomerID),
	InvoiceDate date,
	OrderDate date,
	BillingDate date,
	ShippingDate date,
	PaymentDate date,
	InvoiceDueDate date,
);

---Create invoice line items table which is auxilary table to keep the specific details of what the invoice is for
USE FinalProject
CREATE TABLE InvoiceLineItems
(
	InvoiceID int NOT NULL FOREIGN KEY REFERENCES Invoices(InvoiceID),
	PartID int NOT NULL FOREIGN KEY REFERENCES Parts(PartID),
	QuantitySold int,
);






	







