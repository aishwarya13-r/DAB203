
USE [final exam]
-- Table structure for table `shippers`
CREATE TABLE shippers (
  ShipperID int NOT NULL PRIMARY KEY,
  CompanyName varchar(40) NULL,
  Phone varchar(24) NULL
);

-- Table structure for table `categories`
CREATE TABLE categories (
  CategoryID int NOT NULL PRIMARY KEY,
  CategoryName varchar(15) NULL,
  Description text NULL,
  Picture varchar(40) NULL
);

-- Table structure for table `customers`
CREATE TABLE customers (
  CustomerID varchar(5) NOT NULL PRIMARY KEY,
  CompanyName varchar(40) NULL,
  ContactName varchar(30) NULL,
  ContactTitle varchar(30) NULL,
  Address varchar(60) NULL,
  City varchar(15) NULL,
  Region varchar(15) NULL,
  PostalCode varchar(10) NULL,
  Country varchar(15) NULL,
  Phone varchar(24) NULL,
  Fax varchar(24) NULL
);

-- Table structure for table `employees`
CREATE TABLE employees (
  EmployeeID int NOT NULL PRIMARY KEY,
  LastName varchar(20) NULL,
  FirstName varchar(10) NULL,
  Title varchar(30) NULL,
  TitleOfCourtesy varchar(25) NULL,
  BirthDate date NULL,
  HireDate date NULL,
  Address varchar(60) NULL,
  City varchar(15) NULL,
  Region varchar(15) NULL,
  PostalCode varchar(10) NULL,
  Country varchar(15) NULL,
  HomePhone varchar(24) NULL,
  Extension varchar(4) NULL,
  Photo varchar(40) NULL,
  Notes text NULL,
  ReportsTo int NULL
);

-- Table structure for table `orders`
CREATE TABLE orders (
  OrderID int NOT NULL PRIMARY KEY,
  CustomerID varchar(5) NULL,
  EmployeeID int NULL,
  OrderDate date NULL,
  RequiredDate date NULL,
  ShippedDate date NULL,
  ShipVia int NULL,
  Freight float DEFAULT '0',
  ShipName varchar(40) NULL,
  ShipAddress varchar(60) NULL,
  ShipCity varchar(15) NULL,
  ShipRegion varchar(15) NULL,
  ShipPostalCode varchar(10) NULL,
  ShipCountry varchar(15) NULL,
  FOREIGN KEY (CustomerID) REFERENCES customers(CustomerID),
  FOREIGN KEY (EmployeeID) REFERENCES employees(EmployeeID),
  FOREIGN KEY (ShipVia) REFERENCES shippers(ShipperID)
);

-- Table structure for table `suppliers`
CREATE TABLE suppliers (
  SupplierID int NOT NULL PRIMARY KEY,
  CompanyName varchar(40) NULL,
  ContactName varchar(30) NULL,
  ContactTitle varchar(30) NULL,
  Address varchar(60) NULL,
  City varchar(15) NULL,
  Region varchar(15) NULL,
  PostalCode varchar(10) NULL,
  Country varchar(15) NULL,
  Phone varchar(24) NULL,
  Fax varchar(24) NULL,
  HomePage text NULL
);

-- Table structure for table `products`
CREATE TABLE products (
  ProductID int NOT NULL PRIMARY KEY,
  ProductName varchar(40) NULL,
  SupplierID int NULL,
  CategoryID int NULL,
  QuantityPerUnit varchar(20) NULL,
  UnitPrice float DEFAULT '0',
  UnitsInStock smallint DEFAULT '0',
  UnitsOnOrder smallint DEFAULT '0',
  ReorderLevel smallint DEFAULT '0',
  Discontinued tinyint DEFAULT '0',
  FOREIGN KEY (SupplierID) REFERENCES suppliers(SupplierID),
  FOREIGN KEY (CategoryID) REFERENCES categories(CategoryID)
);

-- Table structure for table `order_details`
CREATE TABLE order_details (
  odID int NOT NULL PRIMARY KEY,
  OrderID int NULL,
  ProductID int NULL,
  UnitPrice float DEFAULT '0',
  Quantity smallint DEFAULT '1',
  Discount float DEFAULT '0',
  FOREIGN KEY (ProductID) REFERENCES products(ProductID)
);
