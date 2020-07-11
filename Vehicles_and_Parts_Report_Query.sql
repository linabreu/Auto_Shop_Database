/*Lina Breunlin
Final Project
Generates report of vehicles
*/


CREATE PROCEDURE spVehicesAndParts
AS
SELECT Vehicles.VehicleID, VehicleDesc AS Vehicle, PartName, '$' + CONVERT (varchar, UnitPrice, 0) AS Price, PartDesc AS PartDescription
FROM Vehicles JOIN VehicleFit
	ON Vehicles.VehicleID = VehicleFit.VehicleID
JOIN Parts
	ON Parts.PartID = VehicleFit.PartID
ORDER BY Vehicles.VehicleID
GO

EXEC spVehiclesAndParts;

