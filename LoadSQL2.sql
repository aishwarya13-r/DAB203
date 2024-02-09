--This script will guide you how to bulk Insert data from CSV file

USE Leaders
CREATE TABLE CEOs
(
    company varchar(30) NOT NULL,
	continent varchar(30) NOT NULL,
	ceo varchar(30) NOT NULL
	
)
GO
BULK INSERT CEOs
FROM 'https://raw.githubusercontent.com/aishwarya13-r/DAB203/main/ceos.csv' --Change this location as  appropriate for you
WITH
(
    FIRSTROW = 2,
	FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'

)
GO

SELECT * FROM CEOs
--drop table CEOs

CREATE TABLE CTOs
(
    company varchar(30) NOT NULL,
	continent varchar(30) NOT NULL,
	cto varchar(30) NOT NULL
	
)
GO
BULK INSERT CTOs
FROM 'https://raw.githubusercontent.com/aishwarya13-r/DAB203/main/ctos.csv' --Change this location as  appropriate for you
WITH
(
    FIRSTROW = 2,
	FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'

)
GO
SELECT * FROM CTOs
--drop table CTOs

CREATE TABLE Presidents
(
    company varchar(30) NOT NULL,
	continent varchar(30) NOT NULL,
	president varchar(30) NOT NULL
	
)
GO
BULK INSERT Presidents
FROM 'https://github.com/aishwarya13-r/DAB203/blob/main/presidents.csv' --Change this location as  appropriate for you
WITH
(
    FIRSTROW = 2,
	FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'

)
GO
SELECT * FROM Presidents
--drop table Presidents

CREATE TABLE Companies
(
    company varchar(30) NOT NULL,
	continent varchar(30) NOT NULL, 
	est_year int,
		
)
GO
BULK INSERT Companies
FROM 'https://raw.githubusercontent.com/aishwarya13-r/DAB203/main/companies.csv' --Change this location as  appropriate for you
WITH
(
    FIRSTROW = 2,
	FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'

)
GO
SELECT * FROM Companies
--drop table Companies
