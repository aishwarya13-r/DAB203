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
FROM 'https://drive.google.com/file/d/1nyP-GncolPVMVdIk2My460dhC2VeRRD9/view?usp=drive_link' --Change this location as  appropriate for you
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
FROM 'https://drive.google.com/file/d/1GskLTt8H0GSIF8sPt43EFZKADv4GtaMM/view?usp=drive_link' --Change this location as  appropriate for you
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
FROM 'https://drive.google.com/file/d/1nYxfAgL2MRYji5_2JWZw15BTS8xJafqm/view?usp=drive_link' --Change this location as  appropriate for you
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
FROM 'https://drive.google.com/file/d/1pvU0mb9W5tTlHRT0N280w9Mbsq_qAuBH/view?usp=drive_link' --Change this location as  appropriate for you
WITH
(
    FIRSTROW = 2,
	FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'

)
GO
SELECT * FROM Companies
--drop table Companies