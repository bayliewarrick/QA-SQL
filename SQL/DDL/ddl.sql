CREATE TABLE Users (
    ID int NOT NULL,
    name varchar(100) NOT NULL,
    age int NOT NULL,
    birthday datetime NOT NULL,
    PRIMARY KEY (ID),
)

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

CREATE TABLE Products (
	Id int AUTO_INCREMENT,
	name varchar(100) NOT NULL,
	price varchar(100) NOT NULL,
	description varchar(100) NOT NULL,
	img_url varchar(100),
	PRIMARY KEY(Id)
);