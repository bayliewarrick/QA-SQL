CREATE DATABASE IF NOT EXISTS erddb;
SHOW DATABASES;
CREATE TABLE Users (
    ID int AUTO_INCREMENT,
    email varchar(100) NOT NULL,
    phone varchar(100) NOT NULL,
    birthday datetime NOT NULL,
    PRIMARY KEY (ID)
);
CREATE TABLE Products (
	ProductID int AUTO_INCREMENT,
	name varchar(100) NOT NULL,
	price varchar(100) NOT NULL,
	description varchar(100) NOT NULL,
	img_url varchar(100),
	PRIMARY KEY(ProductID)
);
CREATE TABLE Orders (
    OrderID int AUTO_INCREMENT,
    CustomerID int,
    Date_Placed datetime NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Users(ID),
    PRIMARY KEY (OrderID)
);
CREATE TABLE OrderLines (
    LineID int AUTO_INCREMENT,
    OrderID int NOT NULL,
    ProductID int NOT NULL,
    Quantity int NOT NULL,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    PRIMARY KEY (LineID)
);
SHOW TABLES;
desc Users;
INSERT INTO Users(email, phone, birthday) values ('Baylie', '2225551111', CURRENT_TIMESTAMP());
INSERT INTO Users(email, phone, birthday) values ('Bobby', '2815551111', CURRENT_TIMESTAMP());
INSERT INTO Users(email, phone, birthday) values ('Jasmine', '2815551111', CURRENT_TIMESTAMP());
INSERT INTO Users(email, phone, birthday) values ('Alex', '2815551111', CURRENT_TIMESTAMP());
INSERT INTO Users(email, phone, birthday) values ('Bear', '2815551111', CURRENT_TIMESTAMP());

SELECT * FROM Users;
INSERT INTO products(name, price, description, img_url) values('Macbook Pro', 1600.80, '16 inch with touch bar', 'http://google.com/macbook-pro.png');
INSERT INTO products(name, price, description, img_url) values('Macbook Air', 1000.80, '13 inch without touch bar', 'http://google.com/macbook-air.png');
INSERT INTO products(name, price, description, img_url) values('Airpods', 150.00, 'Slightly used, some cosmetic damage', 'http://google.com/airpods.png');
INSERT INTO products(name, price, description, img_url) values('Dell XPS', 1500.00, 'Slightly used, some cosmetic damage', 'http://google.com/dell_pc.png');
INSERT INTO products(name, price, description, img_url) values('Alienware with 256gb RAM', 2147483647.00, 'What a price!', 'http://google.com/money_bag.png');

SELECT * FROM products;
INSERT INTO orders(CustomerID, Date_Placed) values (1, CURRENT_TIMESTAMP());
INSERT INTO orders(CustomerID, Date_Placed) values (2, CURRENT_TIMESTAMP());
INSERT INTO orders(CustomerID, Date_Placed) values (1, CURRENT_TIMESTAMP());
INSERT INTO orders(CustomerID, Date_Placed) values (4, CURRENT_TIMESTAMP());
SELECT * FROM orders;

INSERT INTO OrderLines(OrderID, ProductID, Quantity) values(1, 2, 3);
INSERT INTO OrderLines(OrderID, ProductID, Quantity) values(1, 3, 4);
INSERT INTO OrderLines(OrderID, ProductID, Quantity) values(2, 1, 6);
INSERT INTO OrderLines(OrderID, ProductID, Quantity) values(3, 4, 150);
INSERT INTO OrderLines(OrderID, ProductID, Quantity) values(4, 2, 10);

SELECT * from OrderLines;