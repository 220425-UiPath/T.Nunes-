Drop table [payment info]
-- Create a new table called '[TableName]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[Customers]', 'U') IS NOT NULL
DROP TABLE [dbo].[Customers]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[Customers]
(
    [Id] INT identity (1000,1) Primary Key, -- Primary Key column
    [First_Name] NVARCHAR(50)
    [Last_Name] NVARCHAR(50) NOT NULL,
    [Address] NVARCHAR(50) NOT NULL,
    [Phone_Number] NVARCHAR(50) NOT NULL,
    [Email]NVARCHAR(100) NOT NULL,
    -- Specify more columns here
);
GO
-- Create a new table called '[Payment Info]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[Payment Info]', 'U') IS NOT NULL
DROP TABLE [dbo].[Payment]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[Payment]
(
    [Id] INT REFERENCES Customers, -- Foreign Key column
    [Card_Type] NVARCHAR (50),
    [Card_Number] varchar(16) NOT NULL,
    [CV] INT NOT NULL,
    [EXP] NVARCHAR (7) NOT NULL,
    [Zip_Code] INT NOT NULL,
    -- Specify more columns here
);
GO

-- Create a new table called '[Grocery List]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[Shopping_List]', 'U') IS NOT NULL
DROP TABLE [dbo].[Shopping_List]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[Shopping_List]
(

    [Id] INT NOT NULL REFERENCES Customers, -- Primary Key column
    [Item] NVARCHAR(50) NOT NULL,
    [Quantity] INT NOT NULL,
    [Price] VARCHAR(6) NOT NULL,
    -- Specify more columns here
);
GO
select * from [Shopping_List];
-- Create a new table called '[Invoice]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[Invoice]', 'U') IS NOT NULL
DROP TABLE [dbo].[Invoice]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[Invoice]
(
    [Id] INT Not NULL REFERENCES Customers, -- Primary Key column
    [First Name] NVARCHAR(50) Not NULL,
    [Email] NVARCHAR(50) NOT NULL,
    [Item] NVARCHAR(50) NOT NULL,
    [Quantity] INT NOT NULL,
    [Price] VARCHAR(6) NOT NULL,
    [Total] NVARCHAR(50) NOT NULL,
    -- Specify more columns here
);
GO

-- Insert rows into table 'TableName' in schema '[dbo]'
INSERT INTO [dbo].[Customers]
( -- Columns to insert data into
  [First_Name], [Last_Name], [Address],[Phone_Number],[Email]
)
VALUES
( -- First row: values for the columns in the list above
 'Jane', 'Dorsey', '11 Crown Street','40791345621','jdorsey@mc.com'
),
( -- Second row: values for the columns in the list above
 'Albert', 'Kipling', '22 Guild Street', '40735416854', 'kipling@waterfront.com'			
),
(
 'Michael', 'Robertson','17 Farburn Terrace', '40733652145', 'mrobertson@mc.com'			
),
(
 'Jessie', 'Marlowe', '27 Cheshire Street', '40733154268', 'jmarlowe@aperture.us'		
),
(
 'Stan', 'Hamm', '10 Dam Road', '40712462257', 'shamm@sugarwell.org'		
);
-- Add more rows here
GO

select * FROM Customers

-- Insert rows into table 'TableName' in schema '[dbo]'
INSERT INTO [dbo].[Payment]
( -- Columns to insert data into
 [Id], [Card_Type], [Card_Number], [CV], [EXP], [Zip_Code]
)
VALUES
( -- First row: values for the columns in the list above
 '1000','Visa', '4523075574849339', '576', '11/2027', '10466'
),
( -- Second row: values for the columns in the list above
 '1001','Visa', '4553615665830657', '211', '01/26', '10469'
),
(
 '1002','Mastercard', '5148586941447062', '916', '06/2024', '10705'  
),
(
 '1003', 'Visa', '4545415307191548', '923', '09/2027', '10467'
),
(
 '1004','Mastercard', '5306548270039207', '442', '09/2025', '10466'
);
-- Add more rows here
GO

select * from [Payment];

-- Insert rows into table 'TableName' in schema '[dbo]'
INSERT INTO [dbo].[Shopping_List]
( -- Columns to insert data into
 [Id], [Item], [Quantity], [Price]
)
VALUES
( -- First row: values for the columns in the list above
 '1000', 'Veggie Spread', '1', '43.90'
),
( -- Second row: values for the columns in the list above
 '1000', 'Aniseed Syrup', '1','10.00'
),
(
 '1000', 'Gula Malacca','1', '19.46'
),
(
 '1000', 'Louisiana Hot Spiced Okra', '1', '17.00'
),
(
 '1000', 'Northwoods Cranberry Sauce', '1','40.00'
);

-- Add more rows here
GO
Drop table [Grocery List]
SELECT * from [Grocery List]

INSERT INTO [dbo].[Grocery List]
( -- Columns to insert data into
 [Id], [Item], [Quantity]
)
VALUES
( -- First row: values for the columns in the list above
 '1001', 'Chang', '1'
),
( -- Second row: values for the columns in the list above
 '1001', 'Ipoh Coffee', '1'
),
(
 '1001', 'Chai','1'
),
(
 '1001', 'Cote de Blaye', '1'
),
(
 '1001', 'Outback Lager', '1'
);

-- Add more rows here
GO

select * from [Grocery List] where like (Id='1000';
 select * from Customers
