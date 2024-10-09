-- CREATE TABLES

DROP TABLE IF EXISTS Sales;

CREATE TABLE Sales (
	ProductKey INT,
	OrderDate DATE,
	CustomerKey INT,
	SalesTerritoryKey INT,
	SalesOrderNumber VARCHAR,
	SalesOrderLineNumber INT,
	OrderQuantity INT,
	DiscountAmount FLOAT,
	ProductStandardCost FLOAT,
	SalesAmount FLOAT,
	TerritoriesRegion VARCHAR,
	TerritoriesCountry VARCHAR,
	TerritoriesContinent VARCHAR
);

SELECT * FROM Sales;

-- NEXT TABLE

DROP TABLE IF EXISTS Products;

CREATE TABLE Products (
	ProductKey INT PRIMARY KEY,
	EnglishProductName VARCHAR,
	StandardCost FLOAT,
	FinishedGoodsFlag VARCHAR, 
	Color VARCHAR,
	ListPrice FLOAT,
	Size VARCHAR,
	ProductLine VARCHAR,
	DealerPrice FLOAT,
	Class VARCHAR,
	Style VARCHAR,
	ModelName VARCHAR,
	StartDate DATE,
	EndDate DATE,
	Status VARCHAR,
	Subcategory VARCHAR
);

SELECT * FROM Products;

-- NEXT TABLE

DROP TABLE IF EXISTS ProductCategories;

CREATE TABLE ProductCategories (
	Subcategory VARCHAR PRIMARY KEY,
	Category VARCHAR
);

SELECT * FROM ProductCategories;

-- NEXT TABLE

DROP TABLE IF EXISTS Customers;

CREATE TABLE Customers (
	CustomerKey INT,
	AltCustomerKey INT PRIMARY KEY,
	FirstName VARCHAR,
	LastName VARCHAR,
	BirthDate DATE,
	MaritalStatus VARCHAR(1),
	Gender VARCHAR(1),
	EmailAddress VARCHAR,
	YearlyIncome INT,
	TotalChildren INT,
	EnglishEducation VARCHAR,
	EnglishOccupation VARCHAR,
	HouseOwnerFlag BOOLEAN,
	NumberCarsOwned INT,
	AddressLine1 VARCHAR,
	DateFirstPurchase DATE,
	CommuteDistance VARCHAR
);

SELECT * FROM Customers;


-- IMPORT DATA
-- check imports...
SELECT * FROM Customers;
SELECT * FROM ProductCategories;
SELECT * FROM Products;
SELECT * FROM Sales;
