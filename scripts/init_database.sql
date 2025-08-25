/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'WarehouseData' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'Bronze', 'Silver', and 'Gold'.
	
WARNING:
    Running this script will drop the entire 'WarehouseData' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

USE master;
GO

-- Drop and recreate the 'WarehouseData' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'WarehouseData')
BEGIN
    ALTER DATABASE WarehouseData SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE WarehouseData;
END;
GO

-- Create the 'WarehouseData' database
CREATE DATABASE WarehouseData;
GO

USE WarehouseData;
GO

-- Create Schemas
CREATE SCHEMA Bronze;
GO

CREATE SCHEMA Silver;
GO

CREATE SCHEMA Gold;
GO
