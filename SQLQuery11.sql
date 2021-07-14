CREATE DATABASE eshop

USE eshop

CREATE TABLE Categories
(
CategoriID INT IDENTITY(1,1) NOT NULL,
CategoryName varchar(20) NOT NULL,
Description varchar(200),
CONSTRAINT cate PRIMARY KEY (CategoriID)
)
Go
set identity_insert "Categories" on 
GO
INSERT "Categories" ("CategoriID","CategoryName","Description") VALUES(1,'Beverages','Soft drinks, coffees, teas, beers, and ales')
INSERT "Categories" ("CategoriID","CategoryName","Description") VALUES(2,'Condiments','Sweet and savory sauces, relishes, spreads, and seasonings')
INSERT "Categories" ("CategoriID","CategoryName","Description") VALUES(3,'Confections','Desserts, candies, and sweet breads')
INSERT "Categories" ("CategoriID","CategoryName","Description") VALUES(4,'Dairy Products','Cheeses')
INSERT "Categories" ("CategoriID","CategoryName","Description") VALUES(5,'Grains/Cereals','Breads, crackers, pasta, and cereal')
INSERT "Categories" ("CategoriID","CategoryName","Description") VALUES(6,'Meat/Poultry','Prepared meats')
INSERT "Categories" ("CategoriID","CategoryName","Description") VALUES(7,'Produce','Dried fruit and bean curd')
INSERT "Categories" ("CategoriID","CategoryName","Description") VALUES(8,'Seafood','Seaweed and fish')
GO
SELECT * FROM Categories

CREATE TABLE Employes(
EmployeeID INT IDENTITY(1,1) NOT NULL,
LastName varchar(50) NOT NULL,
FirstName varchar(50) NOT NULL,
Title varchar(50) NULL,
TitleOfCourtesy varchar(50) NULL,
BirthDate varchar(50) NULL,
HireDate varchar(50) NULL,
Address varchar(60) NULL,
City varchar(50) NULL,
Region varchar(50) NULL,
PostalCode varchar(50) NULL,
Country varchar(50) NULL,
Homephone varchar(50) NULL,
Extension varchar(50)NULL,
Notes ntext NULL,
ReportTo int NULL,
CONSTRAINT Em PRIMARY KEY (EmployeeID),
CONSTRAINT FK_report FOREIGN KEY (ReportTo) REFERENCES Employes(EmployeeID),
CONSTRAINT Dat CHECK(BirthDate < getdate())
)
GO
set identity_insert Employes on
GO
INSERT "Employes"("EmployeeID","LastName","FirstName","Title","TitleOfCourtesy","BirthDate","HireDate","Address","City","Region","PostalCode","Country","HomePhone","Extension","Notes","ReportTo") VALUES(1,'Davolio','Nancy','Sales Representative','Ms.','12/08/1948','05/01/1992','507 - 20th Ave. E.Apt. 2A','Seattle','WA','98122','USA','(206) 555-9857','5467','Education includes a BA in psychology from Colorado State University in 1970.  She also completed "The Art of the Cold Call."  Nancy is a member of Toastmasters International.',1)
INSERT "Employes"("EmployeeID","LastName","FirstName","Title","TitleOfCourtesy","BirthDate","HireDate","Address","City","Region","PostalCode","Country","HomePhone","Extension","Notes","ReportTo") VALUES(2,'Fuller','Andrew','Vice President, Sales','Dr.','02/19/1952','08/14/1992','908 W. Capital Way','Tacoma','WA','98401','USA','(206) 555-9482','3457','Andrew received his BTS commercial in 1974 and a Ph.D. in international marketing from the University of Dallas in 1981.  He is fluent in French and Italian and reads German.  He joined the company as a sales representative, was promoted to sales manager in January 1992 and to vice president of sales in March 1993.  Andrew is a member of the Sales Management Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association.',NULL)
INSERT "Employes"("EmployeeID","LastName","FirstName","Title","TitleOfCourtesy","BirthDate","HireDate","Address","City","Region","PostalCode","Country","HomePhone","Extension","Notes","ReportTo") VALUES(3,'Leverling','Janet','Sales Representative','Ms.','08/30/1963','04/01/1992','722 Moss Bay Blvd.','Kirkland','WA','98033','USA','(206) 555-3412','3355','Janet has a BS degree in chemistry from Boston College (1984).  She has also completed a certificate program in food retailing management.  Janet was hired as a sales associate in 1991 and promoted to sales representative in February 1992.',2)
INSERT "Employes"("EmployeeID","LastName","FirstName","Title","TitleOfCourtesy","BirthDate","HireDate","Address","City","Region","PostalCode","Country","HomePhone","Extension","Notes","ReportTo") VALUES(4,'Peacock','Margaret','Sales Representative','Mrs.','09/19/1937','05/03/1993','4110 Old Redmond Rd.','Redmond','WA','98052','USA','(206) 555-8122','5176','Margaret holds a BA in English literature from Concordia College (1958) and an MA from the American Institute of Culinary Arts (1966).  She was assigned to the London office temporarily from July through November 1992.',2)
INSERT "Employes"("EmployeeID","LastName","FirstName","Title","TitleOfCourtesy","BirthDate","HireDate","Address","City","Region","PostalCode","Country","HomePhone","Extension","Notes","ReportTo") VALUES(5,'Buchanan','Steven','Sales Manager','Mr.','03/04/1955','10/17/1993','14 Garrett Hill','London',NULL,'SW1 8JR','UK','(71) 555-4848','3453','Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree in 1976.  Upon joining the company as a sales representative in 1992, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London.  He was promoted to sales manager in March 1993.  Mr. Buchanan has completed the courses "Successful Telemarketing" and "International Sales Management."  He is fluent in French.',2)
INSERT "Employes"("EmployeeID","LastName","FirstName","Title","TitleOfCourtesy","BirthDate","HireDate","Address","City","Region","PostalCode","Country","HomePhone","Extension","Notes","ReportTo") VALUES(6,'Suyama','Michael','Sales Representative','Mr.','07/02/1963','10/17/1993','Coventry HouseMiner Rd.','London',NULL,'EC2 7JR','UK','(71) 555-7773','428','Michael is a graduate of Sussex University (MA, economics, 1983) and the University of California at Los Angeles (MBA, marketing, 1986).  He has also taken the courses "Multi-Cultural Selling" and "Time Management for the Sales Professional."  He is fluent in Japanese and can read and write French, Portuguese, and Spanish.',5)
INSERT "Employes"("EmployeeID","LastName","FirstName","Title","TitleOfCourtesy","BirthDate","HireDate","Address","City","Region","PostalCode","Country","HomePhone","Extension","Notes","ReportTo") VALUES(7,'King','Robert','Sales Representative','Mr.','05/29/1960','01/02/1994','Edgeham HollowWinchester Way','London',NULL,'RG1 9SP','UK','(71) 555-5598','465','Robert King served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan in 1992, the year he joined the company.  After completing a course entitled "Selling in Europe," he was transferred to the London office in March 1993.',5)
INSERT "Employes"("EmployeeID","LastName","FirstName","Title","TitleOfCourtesy","BirthDate","HireDate","Address","City","Region","PostalCode","Country","HomePhone","Extension","Notes","ReportTo") VALUES(8,'Callahan','Laura','Inside Sales Coordinator','Ms.','01/09/1958','03/05/1994','4726 - 11th Ave. N.E.','Seattle','WA','98105','USA','(206) 555-1189','2344','Laura received a BA in psychology from the University of Washington.  She has also completed a course in business French.  She reads and writes French.',2)
INSERT "Employes"("EmployeeID","LastName","FirstName","Title","TitleOfCourtesy","BirthDate","HireDate","Address","City","Region","PostalCode","Country","HomePhone","Extension","Notes","ReportTo") VALUES(9,'Dodsworth','Anne','Sales Representative','Ms.','01/27/1966','11/15/1994','7 Houndstooth Rd.','London',NULL,'WG2 7LT','UK','(71) 555-4444','452','Anne has a BA degree in English from St. Lawrence College.  She is fluent in French and German.',5)

SELECT * FROM Employes
drop table Employes 


DROP TABLE Orders
GO
CREATE TABLE Orders
(OrderID int  NOT NULL ,
CustomerID varchar (10) Not NULL ,
EmployeeID int ,
OrderDate datetime NULL ,
RequiredDate datetime NULL ,
ShippedDate datetime NULL ,
ShipVia int Not null,
Freight money NULL ,
ShipName nvarchar (40) NULL ,
ShipAddress nvarchar (60) NULL ,
ShipCity nvarchar (15) NULL ,
ShipRegion nvarchar (15) NULL ,
ShipPostalCode nvarchar (10) NULL ,
ShipCountry nvarchar (15) NULL ,
CONSTRAINT PK_Ord PRIMARY KEY(OrderID),
)
GO
INSERT INTO Orders
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10248,'ALFKI',5,'7/4/1996','8/1/1996','7/16/1996',3,32.38,
	N'Vins et alcools Chevalier',N'59 rue de l''Abbaye',N'Reims',
	NULL,N'51100',N'France')
INSERT INTO Orders
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10249,'TOMSP',6,'7/5/1996','8/16/1996','7/10/1996',1,11.61,
	N'Toms Spezialitäten',N'Luisenstr. 48',N'Münster',
	NULL,N'44087',N'Germany')
INSERT INTO Orders
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10250,'HANAR',4,'7/8/1996','8/5/1996','7/12/1996',2,65.83,
	N'Hanari Carnes',N'Rua do Paço, 67',N'Rio de Janeiro',
	N'RJ',N'05454-876',N'Brazil')
INSERT INTO Orders
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10251,'VICTE',3,'7/8/1996','8/5/1996','7/15/1996',1,41.34,
	N'Victuailles en stock',N'2, rue du Commerce',N'Lyon',
	NULL,N'69004',N'France')
INSERT INTO Orders
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10252,'SUPRD',4,'7/9/1996','8/6/1996','7/11/1996',2,51.30,
	N'Suprêmes délices',N'Boulevard Tirou, 255',N'Charleroi',
	NULL,N'B-6000',N'Belgium')
INSERT INTO Orders
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10253,'HANAR',3,'7/10/1996','7/24/1996','7/16/1996',2,58.17,
	N'Hanari Carnes',N'Rua do Paço, 67',N'Rio de Janeiro',
	N'RJ',N'05454-876',N'Brazil')
INSERT INTO Orders
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10254,'CHOPS',5,'7/11/1996','8/8/1996','7/23/1996',2,22.98,
	N'Chop-suey Chinese',N'Hauptstr. 31',N'Bern',
	NULL,N'3012',N'Switzerland')
INSERT INTO Orders
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10255,'RICSU',9,'7/12/1996','8/9/1996','7/15/1996',3,148.33,
	N'Richter Supermarkt',N'Starenweg 5',N'Genève',
	NULL,N'1204',N'Switzerland')
INSERT INTO Orders
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10256,'WELLI',3,'7/15/1996','8/12/1996','7/17/1996',2,13.97,
	N'Wellington Importadora',N'Rua do Mercado, 12',N'Resende',
	N'SP',N'08737-363',N'Brazil')
INSERT INTO Orders
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10257,'HILAA',4,'7/16/1996','8/13/1996','7/22/1996',3,81.91,
	N'HILARION-Abastos',N'Carrera 22 con Ave. Carlos Soublette #8-35',N'San Cristóbal',
	N'Táchira',N'5022',N'Venezuela')
INSERT INTO Orders
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10258,'ERNSH',1,'7/17/1996','8/14/1996','7/23/1996',1,140.51,
	N'Ernst Handel',N'Kirchgasse 6',N'Graz',
	NULL,N'8010',N'Austria')
INSERT INTO Orders
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10259,'CENTC',4,'7/18/1996','8/15/1996','7/25/1996',3,3.25,
	N'Centro comercial Moctezuma',N'Sierras de Granada 9993',N'México D.F.',
	NULL,N'05022',N'Mexico')
INSERT INTO Orders
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10260,'OTTIK',4,'7/19/1996','8/16/1996','7/29/1996',1,55.09,
	N'Ottilies Käseladen',N'Mehrheimerstr. 369',N'Köln',
	NULL,N'50739',N'Germany')
INSERT INTO Orders
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10261,'QUEDE',4,'7/19/1996','8/16/1996','7/30/1996',2,3.05,
	N'Que Delícia',N'Rua da Panificadora, 12',N'Rio de Janeiro',
	N'RJ',N'02389-673',N'Brazil')
INSERT INTO Orders
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10262,'RATTC',8,'7/22/1996','8/19/1996','7/25/1996',3,48.29,
	N'Rattlesnake Canyon Grocery',N'2817 Milton Dr.',N'Albuquerque',
	N'NM',N'87110',N'USA')
INSERT INTO Orders
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10263,'ERNSH',9,'7/23/1996','8/20/1996','7/31/1996',3,146.06,
	N'Ernst Handel',N'Kirchgasse 6',N'Graz',
	NULL,N'8010',N'Austria')
INSERT INTO Orders
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10264,'FOLKO',6,'7/24/1996','8/21/1996','8/23/1996',3,3.67,
	N'Folk och fä HB',N'Åkergatan 24',N'Bräcke',
	NULL,N'S-844 67',N'Sweden')
INSERT INTO Orders
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10265,'BLONP',2,'7/25/1996','8/22/1996','8/12/1996',1,55.28,
	N'Blondel père et fils',N'24, place Kléber',N'Strasbourg',
	NULL,N'67000',N'France')
INSERT INTO Orders
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10266,'WARTH',3,'7/26/1996','9/6/1996','7/31/1996',3,25.73,
	N'Wartian Herkku',N'Torikatu 38',N'Oulu',
	NULL,N'90110',N'Finland')
INSERT INTO Orders
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10267,'FRANK',4,'7/29/1996','8/26/1996','8/6/1996',1,208.58,
	N'Frankenversand',N'Berliner Platz 43',N'München',
	NULL,N'80805',N'Germany')
INSERT INTO Orders
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10268,'GROSR',8,'7/30/1996','8/27/1996','8/2/1996',3,66.29,
	N'GROSELLA-Restaurante',N'5ª Ave. Los Palos Grandes',N'Caracas',
	N'DF',N'1081',N'Venezuela')
INSERT INTO Orders
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10269,'WHITC',5,'7/31/1996','8/14/1996','8/9/1996',1,4.56,
	N'White Clover Markets',N'1029 - 12th Ave. S.',N'Seattle',
	N'WA',N'98124',N'USA')
INSERT INTO Orders
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10270,'WARTH',1,'8/1/1996','8/29/1996','8/2/1996',1,136.54,
	N'Wartian Herkku',N'Torikatu 38',N'Oulu',
	NULL,N'90110',N'Finland')
INSERT INTO Orders
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10271,'SPLIR',6,'8/1/1996','8/29/1996','8/30/1996',2,4.54,
	N'Split Rail Beer & Ale',N'P.O. Box 555',N'Lander',
	N'WY',N'82520',N'USA')
INSERT INTO Orders
("OrderID","CustomerID","EmployeeID","OrderDate","RequiredDate",
	"ShippedDate","ShipVia","Freight","ShipName","ShipAddress",
	"ShipCity","ShipRegion","ShipPostalCode","ShipCountry")
VALUES (10272,'RATTC',6,'8/2/1996','8/30/1996','8/6/1996',2,98.03,
	N'Rattlesnake Canyon Grocery',N'2817 Milton Dr.',N'Albuquerque',
	N'NM',N'87110',N'USA')
GO
SELECT * FROM Orders



CREATE TABLE OrderDetails (
OrderID int NOT NULL ,
ProductID int NOT NULL ,
UnitPrice money NOT NULL ,
Quantity smallint NOT NULL ,
Discount real NOT NULL ,
CONSTRAINT PK_Order_Details PRIMARY KEY  (OrderID,ProductID),
CONSTRAINT "CK_Discount" CHECK (Discount >= 0 and (Discount <= 1)),
CONSTRAINT "CK_Quantity" CHECK (Quantity > 0),
CONSTRAINT "CK_UnitPrice" CHECK (UnitPrice >= 0)
)
GO
INSERT INTO OrderDetails VALUES(10248,11,14,12,0)
INSERT INTO OrderDetails VALUES(10248,42,9.8,10,0)
INSERT INTO OrderDetails VALUES(10248,72,34.8,5,0)
INSERT INTO OrderDetails VALUES(10249,14,18.6,9,0)
INSERT INTO OrderDetails VALUES(10249,51,42.4,40,0)
INSERT INTO OrderDetails VALUES(10250,41,7.7,10,0)
INSERT INTO OrderDetails VALUES(10250,51,42.4,35,0.15)
INSERT INTO OrderDetails VALUES(10250,65,16.8,15,0.15)
INSERT INTO OrderDetails VALUES(10251,22,16.8,6,0.05)
INSERT INTO OrderDetails VALUES(10251,57,15.6,15,0.05)
INSERT INTO OrderDetails VALUES(10251,65,16.8,20,0)
INSERT INTO OrderDetails VALUES(10252,20,64.8,40,0.05)
INSERT INTO OrderDetails VALUES(10252,33,2,25,0.05)
INSERT INTO OrderDetails VALUES(10252,60,27.2,40,0)
INSERT INTO OrderDetails VALUES(10253,31,10,20,0)
INSERT INTO OrderDetails VALUES(10253,39,14.4,42,0)
INSERT INTO OrderDetails VALUES(10253,49,16,40,0)
INSERT INTO OrderDetails VALUES(10254,24,3.6,15,0.15)
INSERT INTO OrderDetails VALUES(10254,55,19.2,21,0.15)
INSERT INTO OrderDetails VALUES(10254,74,8,21,0)
INSERT INTO OrderDetails VALUES(10255,2,15.2,20,0)
INSERT INTO OrderDetails VALUES(10255,16,13.9,35,0)
INSERT INTO OrderDetails VALUES(10255,36,15.2,25,0)
INSERT INTO OrderDetails VALUES(10255,59,44,30,0)
GO
SELECT * FROM OrderDetails 



CREATE TABLE Products
(ProductID int IDENTITY NOT NULL,
ProductName varchar(50) NOT NULL,
SupplierID int NULL,
CategoryID int NULL,
QuantityPerUnit varchar(50) NULL,
UnitPrice money NULL,
UnitsInStock int NULL,
UnitsOnOrder int NULL,
ReoderLevel int NULL,
Discontinued bit NOT NULL,
CONSTRAINT PM_Pro PRIMARY KEY (ProductID)
)
GO
set identity_insert Products on
GO
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReoderLevel","Discontinued") VALUES(1,'Chai',1,1,'10 boxes x 20 bags',18,39,0,10,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReoderLevel","Discontinued") VALUES(2,'Chang',1,1,'24 - 12 oz bottles',19,17,40,25,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReoderLevel","Discontinued") VALUES(3,'Aniseed Syrup',1,2,'12 - 550 ml bottles',10,13,70,25,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReoderLevel","Discontinued") VALUES(4,'Chef Anton''s Cajun Seasoning',2,2,'48 - 6 oz jars',22,53,0,0,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReoderLevel","Discontinued") VALUES(5,'Chef Anton''s Gumbo Mix',2,2,'36 boxes',21.35,0,0,0,1)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReoderLevel","Discontinued") VALUES(6,'Grandma''s Boysenberry Spread',3,2,'12 - 8 oz jars',25,120,0,25,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReoderLevel","Discontinued") VALUES(7,'Uncle Bob''s Organic Dried Pears',3,7,'12 - 1 lb pkgs.',30,15,0,10,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReoderLevel","Discontinued") VALUES(8,'Northwoods Cranberry Sauce',3,2,'12 - 12 oz jars',40,6,0,0,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReoderLevel","Discontinued") VALUES(9,'Mishi Kobe Niku',4,6,'18 - 500 g pkgs.',97,29,0,0,1)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReoderLevel","Discontinued") VALUES(10,'Ikura',4,8,'12 - 200 ml jars',31,31,0,0,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReoderLevel","Discontinued") VALUES(11,'Queso Cabrales',5,4,'1 kg pkg.',21,22,30,30,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReoderLevel","Discontinued") VALUES(12,'Queso Manchego La Pastora',5,4,'10 - 500 g pkgs.',38,86,0,0,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReoderLevel","Discontinued") VALUES(13,'Konbu',6,8,'2 kg box',6,24,0,5,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReoderLevel","Discontinued") VALUES(14,'Tofu',6,7,'40 - 100 g pkgs.',23.25,35,0,0,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReoderLevel","Discontinued") VALUES(15,'Genen Shouyu',6,2,'24 - 250 ml bottles',15.5,39,0,5,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReoderLevel","Discontinued") VALUES(16,'Pavlova',7,3,'32 - 500 g boxes',17.45,29,0,10,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReoderLevel","Discontinued") VALUES(17,'Alice Mutton',7,6,'20 - 1 kg tins',39,0,0,0,1)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReoderLevel","Discontinued") VALUES(18,'Carnarvon Tigers',7,8,'16 kg pkg.',62.5,42,0,0,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReoderLevel","Discontinued") VALUES(19,'Teatime Chocolate Biscuits',8,3,'10 boxes x 12 pieces',9.2,25,0,5,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReoderLevel","Discontinued") VALUES(20,'Sir Rodney''s Marmalade',8,3,'30 gift boxes',81,40,0,0,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReoderLevel","Discontinued") VALUES(21,'Sir Rodney''s Scones',8,3,'24 pkgs. x 4 pieces',10,3,40,5,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReoderLevel","Discontinued") VALUES(22,'Gustaf''s Knäckebröd',9,5,'24 - 500 g pkgs.',21,104,0,25,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReoderLevel","Discontinued") VALUES(23,'Tunnbröd',9,5,'12 - 250 g pkgs.',9,61,0,25,0)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReoderLevel","Discontinued") VALUES(24,'Guaraná Fantástica',10,1,'12 - 355 ml cans',4.5,20,0,0,1)
INSERT "Products"("ProductID","ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReoderLevel","Discontinued") VALUES(25,'NuNuCa Nuß-Nougat-Creme',11,3,'20 - 450 g glasses',14,76,0,30,0)
GO
SELECT * FROM Products


CREATE TABLE Shipper
(ShipperID int identity Not Null,
CompanyName varchar(30) not null,
Phone varchar(20) null,
CONSTRAINT  PK_ship PRIMARY KEY (ShipperID)
)
GO
set identity_insert Shipper on
GO
INSERT "Shipper"("ShipperID","CompanyName","Phone") VALUES(1,'Speedy Express','(503) 555-9831')
INSERT "Shipper"("ShipperID","CompanyName","Phone") VALUES(2,'United Package','(503) 555-3199')
INSERT "Shipper"("ShipperID","CompanyName","Phone") VALUES(3,'Federal Shipping','(503) 555-9931')
GO
SELECT * FROM Shipper

CREATE TABLE Suppliers
(SupplierID int identity NOT NULL ,
CompanyName varchar (40) NOT NULL ,
ContactName varchar (40) NULL ,
ContactTitle varchar (40) NULL ,
Address varchar (60) NULL ,
City varchar (30) NULL ,
Region varchar (30) NULL ,
PostalCode varchar (30) NULL ,
Country varchar (30) NULL ,
Phone varchar (30) NULL ,
Fax varchar (230) NULL
CONSTRAINT PK_Sup PRIMARY KEY (SupplierID)
)
set identity_insert Suppliers on
go
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES(1,'Exotic Liquids','Charlotte Cooper','Purchasing Manager','49 Gilbert St.','London',NULL,'EC1 4SD','UK','(171) 555-2222',NULL)
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES(2,'New Orleans Cajun Delights','Shelley Burke','Order Administrator','P.O. Box 78934','New Orleans','LA','70117','USA','(100) 555-4822',NULL)
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES(3,'Grandma Kelly''s Homestead','Regina Murphy','Sales Representative','707 Oxford Rd.','Ann Arbor','MI','48104','USA','(313) 555-5735','(313) 555-3349')
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES(4,'Tokyo Traders','Yoshi Nagase','Marketing Manager','9-8 Sekimai Musashino-shi','Tokyo',NULL,'100','Japan','(03) 3555-5011',NULL)
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES(5,'Cooperativa de Quesos ''Las Cabras''','Antonio del Valle Saavedra','Export Administrator','Calle del Rosal 4','Oviedo','Asturias','33007','Spain','(98) 598 76 54',NULL)
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES(6,'Mayumi''s','Mayumi Ohno','Marketing Representative','92 Setsuko Chuo-ku','Osaka',NULL,'545','Japan','(06) 431-7877',NULL)
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES(7,'Pavlova, Ltd.','Ian Devling','Marketing Manager','74 Rose St. Moonie Ponds','Melbourne','Victoria','3058','Australia','(03) 444-2343','(03) 444-6588')
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES(8,'Specialty Biscuits, Ltd.','Peter Wilson','Sales Representative','29 King''s Way','Manchester',NULL,'M14 GSD','UK','(161) 555-4448',NULL)
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES(9,'PB Knäckebröd AB','Lars Peterson','Sales Agent','Kaloadagatan 13','Göteborg',NULL,'S-345 67','Sweden','031-987 65 43','031-987 65 91')
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES(10,'Refrescos Americanas LTDA','Carlos Diaz','Marketing Manager','Av. das Americanas 12.890','Sao Paulo',NULL,'5442','Brazil','(11) 555 4640',NULL)
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES(11,'Heli Süßwaren GmbH & Co. KG','Petra Winkler','Sales Manager','Tiergartenstraße 5','Berlin',NULL,'10785','Germany','(010) 9984510',NULL)
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES(12,'Plutzer Lebensmittelgroßmärkte AG','Martin Bein','International Marketing Mgr.','Bogenallee 51','Frankfurt',NULL,'60439','Germany','(069) 992755',NULL)
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES(13,'Nord-Ost-Fisch Handelsgesellschaft mbH','Sven Petersen','Coordinator Foreign Markets','Frahmredder 112a','Cuxhaven',NULL,'27478','Germany','(04721) 8713','(04721) 8714')
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES(14,'Formaggi Fortini s.r.l.','Elio Rossi','Sales Representative','Viale Dante, 75','Ravenna',NULL,'48100','Italy','(0544) 60323','(0544) 60603')
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES(15,'Norske Meierier','Beate Vileid','Marketing Manager','Hatlevegen 5','Sandvika',NULL,'1320','Norway','(0)2-953010',NULL)
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES(16,'Bigfoot Breweries','Cheryl Saylor','Regional Account Rep.','3400 - 8th Avenue Suite 210','Bend','OR','97101','USA','(503) 555-9931',NULL)
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES(17,'Svensk Sjöföda AB','Michael Björn','Sales Representative','Brovallavägen 231','Stockholm',NULL,'S-123 45','Sweden','08-123 45 67',NULL)
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES(18,'Aux joyeux ecclésiastiques','Guylène Nodier','Sales Manager','203, Rue des Francs-Bourgeois','Paris',NULL,'75004','France','(1) 03.83.00.68','(1) 03.83.00.62')
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES(19,'New England Seafood Cannery','Robb Merchant','Wholesale Account Agent','Order Processing Dept. 2100 Paul Revere Blvd.','Boston','MA','02134','USA','(617) 555-3267','(617) 555-3389')
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES(20,'Leka Trading','Chandra Leka','Owner','471 Serangoon Loop, Suite #402','Singapore',NULL,'0512','Singapore','555-8787',NULL)
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES(21,'Lyngbysild','Niels Petersen','Sales Manager','Lyngbysild Fiskebakken 10','Lyngby',NULL,'2800','Denmark','43844108','43844115')
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES(22,'Zaanse Snoepfabriek','Dirk Luchte','Accounting Manager','Verkoop Rijnweg 22','Zaandam',NULL,'9999 ZZ','Netherlands','(12345) 1212','(12345) 1210')
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES(23,'Karkki Oy','Anne Heikkonen','Product Manager','Valtakatu 12','Lappeenranta',NULL,'53120','Finland','(953) 10956',NULL)
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES(24,'G''day, Mate','Wendy Mackenzie','Sales Representative','170 Prince Edward Parade Hunter''s Hill','Sydney','NSW','2042','Australia','(02) 555-5914','(02) 555-4873')
INSERT "Suppliers"("SupplierID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES(25,'Ma Maison','Jean-Guy Lauzon','Marketing Manager','2960 Rue St. Laurent','Montréal','Québec','H1J 1C3','Canada','(514) 555-9022',NULL)
GO
SELECT * FROM Suppliers 
