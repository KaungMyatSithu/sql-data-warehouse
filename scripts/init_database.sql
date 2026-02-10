/*
==========================================
Create Database and Schema
==========================================
Script Purpose: 
	Check DataWarehouse DB exists or not. If exists, delete it and create new DB.
	Create a schema with levels like bronze, silver and gold.
*/

USE master
Go

-- Drop if the "DataWarehouse" DB already exists.
IF EXISTS (SELECT 1 from sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER Database DataWarehouse SET SINGLE_USER WITH ROLLABCK IMMEDIATE;
	DROP Database DataWarehouse

END;

-- Creating a Datawarehouse DB
Create Database DataWarehouse;
Go

Use DataWarehouse;
Go

Create SCHEMA bronze;
GO
Create SCHEMA silver;
GO
Create SCHEMA gold;
GO
