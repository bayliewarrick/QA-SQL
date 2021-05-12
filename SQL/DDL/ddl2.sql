CREATE DATABASE IF NOT EXISTS newdb;
SHOW DATABASES;
CREATE TABLE users(
    ID int NOT NULL,
    name varchar(100) NOT NULL,
    age int NOT NULL,
    birthday datetime NOT NULL,
    PRIMARY KEY (ID),
);
CREATE TABLE Products (
	Id int AUTO_INCREMENT,
	name varchar(100) NOT NULL,
	price varchar(100) NOT NULL,
	description varchar(100) NOT NULL,
	img_url varchar(100),
	PRIMARY KEY(Id)
);
CREATE TABLE Orders (
    OrderID int NOT NULL,
    CustomerID int,
ProductID int,
Quantity int NOT NULL,
Date_Placed datetime NOT NULL,
    PRIMARY KEY (OrderID),
FOREIGN KEY (ProductID) REFERENCES Products(Id),
    FOREIGN KEY (CustomerID) REFERENCES Users(Id)
);
SHOW TABLES;
desc customers;
INSERT INTO customers(name, age, birthday) values ('Baylie', '23', '01-01-2021');
SELECT * FROM CUSTOMERS;
INSERT INTO products(name, price, description) values('Macbook Pro', 1600.80, '16 inch with touch bar');
SELECT * FROM products;
INSERT INTO orders(CustomerID, ProductID, Quantity) values (1, 1, 2500);
SELECT * FROM orders;