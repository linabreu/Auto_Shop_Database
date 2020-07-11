/*
Lina Breunlin
Final Project
Create stored procedures to fill database tables for first use. 
*/


--stored procedure to fill the partscategory table with data

CREATE PROCEDURE spFillPartsCategoryTable
AS
INSERT INTO PartsCategory (CategoryID, CategoryDesc)
VALUES
	  (1, 'Battery'),
	  (2, 'Brakes'),
	  (3, 'Wipers'),
	  (4, 'Filters') 
GO


---execute spFillPartsCategoryTable
EXEC spFillPartsCategoryTable;


--Stored Procedure to fill the parts table with data

CREATE PROCEDURE spFillPartsTable
AS
INSERT INTO Parts(PartID, CategoryID, PartName, UnitPrice, PartDesc)
VALUES 
		( 1, 1, 'Interstate Battery', '100.00', '12 volt battery from Interstate'),
		( 2, 1, 'Duralast Battery', '115.00', '13 volt battery from Duralast'),
		(3, 1, 'Delco Battery', '112.00', '12 volt battery from Delco'),
		(4, 2, 'Brake Rotor', '65.00', 'Brake disc, stopps wheels from spinning'),
		(5, 2, 'Brake Caliper', '60.00', 'Creates friction with rotors. Squeeze brake pads against against surface of break rotor'),
		(6, 2, 'Brake Pads', '30.00', 'Steel backed plates with friction material bound to the surface that faces the disc brake rotor'),
		(7, 2, 'Brake Master Cylinder', '55.00', 'A control device that converts force into hydraulic pressure'),
		(8, 2, 'Brake Power Booster', '62.00',  'Enhanced master cylinder setup that reduces the amount of pedal pressure needed for braking'),
		(9, 2, 'Brake Lines', '25.00', 'Turns pedal pressure into stopping power. Fluid transfers the pressure applied by the drivers foot to the brake'),
		(10, 3, 'Front Wipers', '20.00', 'Pivoting metal arm with ruber on one end that assists in removing rain, snow, ice and debris from the front window'),
		(11, 3, 'Rear Wipers', '18.00', 'Pivoting metal arm with ruber on one end that assists in removing rain, snow, ice and debris from the rear window'),
		(12, 4, 'Oil Filter', '69.00', 'Removes contaminants from vehicles engine oil, transmission oil, lubricating oil, and or hydraulic oil'),
		(13, 4, 'Gas Filter', '56.00', 'Filter in the fuel line that sifts out dirt and rust particles from the fuel'),
		(14, 4, 'Air Filter', '55.00', 'Prevents air-borne contaminents and debris from getting taken into the engine'),
		(15, 4, 'Cabin Filter', '73.00', 'Filters all of the air that coming through the  HVAC system to prevent contaminents, such as dust, pollen, smog and mold spores from being taken in'), 
		(16, 4, 'Transmission Filter', '320.00', 'Prevents dirt and debris from getting into the gears and other parts of the transmission system');
GO

---execute spFillPartsTable

EXEC spFillPartsTable;


--Stored Procedure to fill vehicles table with data

CREATE PROCEDURE spFillVehiclesTable
AS
INSERT INTO Vehicles (VehicleID, Make, Model, [Year], VehicleDesc)
VALUES
	(1, 'Ford', 'Pickup', 2017, '2017 Ford F150 4 *4 Pickup'),
	(2, 'Ford', 'Pickup', 2018, '2018 Ford F150 4 *4 Pickup'),
	(3, 'Ford', 'Pickup', 2019, '2019 Ford F150 4 *4 Pickup'),
	(4, 'Ford', 'SUV', 2017, '2017 Ford Explorer SUV'),
	(5, 'Ford', 'SUV', 2018, '2018 Ford Explorer SUV'),
	(6, 'Ford', 'SUV', 2019, '2019 Ford Explorer SUV'),
	(7, 'Ford', 'Sedan', 2017, '2017 Ford Fusion Sedan'),
	(8, 'Ford', 'Sedan', 2018, '2018 Ford Fusion Sedan'),
	(9, 'Ford', 'Sedan', 2019, '2019 Ford Fusion Sedan'),
	(10, 'Chevrolet', 'Pickup', 2017, '2017 Chevrolet Silverado Pickup'),
	(11, 'Chevrolet', 'Pickup', 2018, '2018 Chevrolet Silverado Pickup'),
	(12, 'Chevrolet', 'Pickup', 2019, '2019 Chevrolet Silverado Pickup'),
	(13, 'Chevrolet', 'SUV', 2017,  '2017 Chevrolet Tahoe SUV'),
	(14, 'Chevrolet', 'SUV', 2018, '2018 Chevrolet Tahoe SUV'),
	(15, 'Chevrolet', 'SUV', 2019, '2019 Chevrolet Tahoe SUV'),
	(16, 'Chevrolet', 'Sedan', 2017, '2017 Chevrolet Malibu Sedan'),
	(17, 'Chevrolet', 'Sedan', 2018, '2018 Chevrolet Malibu Sedan'),
	(18, 'Chevrolet', 'Sedan', 2019, '2019 Chevrolet Malibu Sedan'), 
	(19, 'Dodge', 'Pickup', 2017, '2017 Dodge RAM 1500 Pickup'),
	(20, 'Dodge', 'Pickup', 2018, '2018 Dodge RAM 1500 Pickup'),
	(21, 'Dodge', 'Pickup', 2019, '2019 Dodge RAM 1500 Pickup'),
	(22, 'Dodge', 'SUV', 2017, '2017 Dodge Durango SUV'),
	(23, 'Dodge', 'SUV', 2018, '2018 Dodge Durango SUV'),
	(24, 'Dodge', 'SUV', 2019, '2019 Dodge Durango SUV'),
	(25, 'Dodge', 'Sedan', 2017, '2017 Dodge Charger Sedan'),
	(26, 'Dodge', 'Sedan', 2018, '2018 Dodge Charger Sedan'),
	(27, 'Dodge', 'Sedan', 2019, '2019 Dodge Charger Sedan')
GO

---exec spFillVehiclesTable

EXEC spFillVehiclesTable;




--Stored Procedure to fill vehiclefit table with data

CREATE PROCEDURE spFillVehicleFitTable
AS
INSERT INTO VehicleFit (VehicleID, PartID)
VALUES 
	(1, 1),
	(1, 3),
	(1, 5),
	(1, 12),
	(2, 1),
	(2, 5),
	(2, 8),
	(2, 10),
	(2, 16),
	(3, 1),
	(3, 3),
	(3, 7),
	(4, 2),
	(4, 9),
	(4, 10),
	(4, 15),
	(4, 16),
	(5, 2),
	(5, 6),
	(5, 9),
	(5, 10),
	(6, 1),
	(6, 6),
	(7, 1),
	(7, 4),
	(7, 12),
	(7, 14),
	(8, 1),
	(8, 3),
	(8, 8),
	(8, 11),
	(8, 14),
	(8, 16),
	(9, 2),
	(9, 4),
	(9, 5),
	(9, 7),
	(9, 11),
	(9, 15),
	(10, 2),
	(10, 4),
	(10, 6),
	(10, 8),
	(10, 10),
	(10, 12),
	(10, 14),
	(10,16),
	(11, 1),
	(11, 3),
	(11, 5),
	(11, 12),
	(12, 1),
	(12, 5),
	(12, 8),
	(12, 10),
	(12, 16),
	(13, 1),
	(13, 3),
	(13, 7),
	(14, 2),
	(14, 9),
	(14, 10),
	(14, 15),
	(14, 16),
	(15, 2),
	(15, 6),
	(15, 9),
	(15, 10),
	(16, 1),
	(16, 6),
	(17, 1),
	(17, 4),
	(17, 12),
	(17, 14),
	(18, 1),
	(18, 3),
	(18, 8),
	(18, 11),
	(18, 14),
	(18, 16),
	(19, 2),
	(19, 4),
	(19, 5),
	(19, 7),
	(19, 11),
	(19, 15),
	(20, 2),
	(20, 4),
	(20, 6),
	(20, 8),
	(20, 10),
	(20, 12),
	(20, 14),
	(20,16),
	(21, 1),
	(21, 3),
	(21, 5),
	(21, 12),
	(22, 1),
	(22, 5),
	(22, 8),
	(22, 10),
	(22, 16),
	(23, 1),
	(23, 3),
	(23, 7),
	(24, 2),
	(24, 9),
	(24, 10),
	(24, 15),
	(24, 16),
	(25, 2),
	(25, 6),
	(25, 9),
	(25, 10),
	(26, 1),
	(26, 6),
	(27, 1),
	(27, 4),
	(27, 12),
	(27, 14);
GO

--exec spFillVehicleFitTable
EXEC spFillVehicleFitTable;



--Stored Procedure to insert data into customers table

CREATE PROCEDURE spFillCustomerTable
AS
INSERT INTO Customers (CustomerID, FirstName, LastName, ShippingStreet, ShippingCity, ShippingState, ShippingZip, BillingStreet, BillingCity, BillingState, BillingZip, CardType, CardNo)
VALUES
	(1, 'Lina', 'Breunlin', '3383 West Dyett Street Apt 420', 'Mesa', 'AZ', '85201', '3383 West Dyett Street Apt 420', 'Mesa', 'AZ', '85201', 'Visa', '1234123412341234'),
	(2, 'Walt', 'Harnden', '123 Scottsdale Rd', 'Scottsdale', 'AZ', '85054', '123 Scottsdale Rd',  'Scottsdale', 'AZ', '85054', 'Visa', '4321432143214321'),
	(3, 'Elyse', 'Rangel', '3420 W. Glenn Drive', 'Phoenix', 'AZ', '85051', '3420 W. Glenn Drive', 'Phoenix', 'AZ', '85051', 'Discover', '9999888877776666'),
	(4, 'Christopher', 'Britt', '1212 Chicken Dinner Road', 'Glendale', 'AZ', '85304', '1212 Chicken Dinner Road', 'Glendale', 'AZ', '85304', 'MasterCard', '1472147214721472'),
	(5, 'Michael', 'Piatt', '16406 N 61st Pl', 'Scottsdale', 'AZ', '85254', '16406 N 61st Pl', 'Scottsdale', 'AZ', '85254', 'Visa', '9638963896389638'),
	(6, 'Antonio', 'Rayas', '4633 N 7th Street', 'Phoenix', 'AZ', '85014', '4633 N 7th Street', 'Phoenix', 'AZ', '85014', 'AmericanExpress', '4561456145614561'),
	(7, 'Robert', 'Belcher', '191 W Shannon Street', 'Gilbert', 'AZ', '85233', '191 W Shannon Street', 'Gilbert', 'AZ', '85233', 'Discover', '7537753775377537'),
	(8, 'Bernardo', 'Magana', '5250 W Indian School Rd', 'Phoenix', 'AZ', '85031', '5250 W Indian School Rd', 'Phoenix', 'AZ', '85031', 'MasterCard', '9519951995199519'),
	(9, 'Jule', 'Andreski', '3421 N 71st Ave', 'Phoenix', 'AZ', '85001', '3421 N 71st Ave', 'Phoenix', 'AZ', '85001', 'Visa', '012301230123'),
	(10, 'Adrian', 'Patino', '4200 W Big Oof Drive Apt 6996', 'Phoenix', 'AZ', '85035','4200 W Big Oof Drive Apt 6996', 'Phoenix', 'AZ', '85035', 'AmericanExpress', '97857985797859785'),
	(11, 'Victor', 'Watson','3050 E Thunderbird Rd', 'Phoenix', 'AZ', '85032', '3050 E Thunderbird Rd', 'Phx', 'AZ', '85032', 'Visa', '0222022202220222'),
	(12, 'Charina', 'Sabal','1123 E Cherokee', 'Phoenix', 'AZ', '85032' ,'1123 E Cherokee', 'Phx', 'AZ', '85032', 'Visa', '7411741174117411'),
	(13, 'Soran', 'Franci', '3322 E Bell Rd', 'Phoenix', 'AZ', '85022', '3322 E Bell RD', 'Phoenix', 'AZ', '85022', 'MasterCard', '5566556655665566'),
	(14, 'David', 'Zhong','123 Fake St', 'Phoenix', 'AZ', '85025','123 Fake St', 'Phoenix', 'AZ', '85025', 'Visa', '4400440044004400'),
	(15, 'John', 'Casey', '456 Anywhere St', 'Phoenix', 'AZ', '85025', '456 Anywhere St', 'Phoenix', 'AZ', '85025', 'AmericanExpress', '5000500050005000'),
	(16, 'Josh', 'Theartistformerlyknownas','18401 North 32nd Street', 'Phoenix', 'AZ', '85032', '18401 North 32nd Street', 'Phoenix', 'AZ', '85032', 'Discover', '0633063306330633')
	 
GO


---exec spFillCustomerTable
EXEC spFillCustomerTable;

---fill the invoices table
CREATE PROCEDURE spFillInvoicesTable 
AS
INSERT INTO Invoices (InvoiceID, CustomerID, InvoiceDate, OrderDate, BillingDate, ShippingDate, PaymentDate, InvoiceDueDate)
VALUES 
(1,	1,	'2019-06-23',	'2019-06-21',	'2019-06-28',	'2019-06-26',	NULL,	'2019-06-30'),
(2,	2,	'2019-06-28',	'2019-06-26',	'2019-07-01',	'2019-06-30',	'2019-07-01',	'2019-07-03'),
(3,	3,	'2019-06-27',	'2019-06-25',	'2019-06-30',	'2019-06-29',	'2019-06-30',	'2019-07-02'),
(4,	4,	'2019-06-26',	'2019-06-24',	'2019-06-29',	'2019-06-28',	NULL,	'2019-07-01'),
(5,	5,	'2019-06-25',	'2019-06-23',	'2019-06-28',	'2019-06-27',	'2019-06-28',	'2019-06-30'),
(6,	6,	'2019-06-24',	'2019-06-21',	'2019-06-27',	'2019-06-26',	'2019-06-27' ,	'2019-06-29'),
(7,	7,	'2019-06-28',	'2019-06-26',	'2019-07-01',	'2019-06-30',	'2019-07-01',	'2019-07-03'),
(8,	8,	'2019-06-17',	'2019-06-15',	'2019-06-20',	'2019-06-19',	NULL,	'2019-06-22'),
(9, 9,	'2019-06-16',	'2019-06-14',	'2019-06-19',	'2019-06-18',	NULL,	'2019-06-21'),
(10, 10, '2019-06-21',	'2019-06-19',	'2019-06-24',	'2019-06-23',	NULL,	'2019-06-26'),
(11,11,	'2019-06-23',	'2019-06-21',	'2019-06-26', '2019-06-25',	'2019-06-26',	'2019-06-28'),
(12,12,	'2019-06-22',	'2019-06-20',	'2019-06-29',	'2019-06-28',	'2019-06-29',	'2019-07-01'),
(13,13,	'2019-06-15',	'2019-06-13',	'2019-06-22',	'2019-06-21', '2019-06-22',	'2019-06-24'),
(14,14,	'2019-06-14',	'2019-06-12',	'2019-06-21',	'2019-06-21',	NULL,	'2019-06-23'),
(15,15,	'2019-06-17',	'2019-06-15',	'2019-06-24',	'2019-06-24',	'2019-06-22',	'2019-06-26'),
(16,16,	'2019-06-21',	'2019-06-19',	'2019-06-28',	'2019-06-28',	'2019-06-25',	'2019-06-30')
GO

---exec spFillInvoicesTable 
EXEC spFillInvoicesTable ;


---fill the invoice line items table
CREATE PROCEDURE spFillLineItemsTable 
AS
INSERT INTO InvoiceLineItems (InvoiceID, PartID, QuantitySold)
VALUES
	(1, 1, 3),
	(1, 4, 1),
	(1, 10, 2),
	(2, 2, 2),
	(2, 4, 3),
	(2, 13, 1),
	(3, 3, 2),
	(3, 9, 1),
	(4, 1, 4),
	(4, 5, 2),
	(4, 10, 1),
	(4, 16, 2),
	(5, 1, 5),
	(6, 2, 1),
	(6, 7, 1),
	(6, 10, 1),
	(6, 16, 1),
	(7, 2, 3),
	(7, 12, 4),
	(8, 11, 2),
	(9, 11, 1),
	(9, 14, 4),
	(10, 5, 2),
	(10, 11, 1),
	(11, 3, 1),
	(12, 1, 1),
	(12, 2, 1),
	(12, 3, 1),
	(13, 12, 1),
	(13, 13, 1),
	(13, 14, 1),
	(13, 15, 1),
	(13, 16, 1),
	(14, 10, 1),
	(14, 11, 1),
	(15, 6, 6),
	(16, 6, 2),
	(16, 16, 3)
GO

--exec spFillInvoicesLineItemsTable 
EXEC spFillLineItemsTable;






































