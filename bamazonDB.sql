-- Creates the "bamazonDB" database --
CREATE DATABASE bamazonDB;

-- all the following code will affect bamazonDB --
USE bamazonDB;

-- Creates the table "products" --
CREATE TABLE products(
  id INT NOT NULL AUTO_INCREMENT,
  productname VARCHAR(100) NOT NULL,
  departmentname VARCHAR(45) NOT NULL,
  price INT default 0,
  stockquantity INT default 0,
  PRIMARY KEY (id)
);

-- Creates new rows containing data in to the columns --
INSERT INTO products (productname, departmentname,price,stockquantity)
VALUES ("Fire Tablet", "Electronics","49.99",10);

INSERT INTO products (productname, departmentname,price,stockquantity)
VALUES ("Baby Lotion", "Baby","3.92",5);

INSERT INTO products (productname, departmentname,price,stockquantity)
VALUES ("Brooklyn: A Novel", "Books","20.34",1);

INSERT INTO products (productname, departmentname,price,stockquantity)
VALUES ("Coffee Maker", "Kitchen & Dinning","112",2);

INSERT INTO products (productname, departmentname,price,stockquantity)
VALUES ("Iced Coffee Maker", "Kitchen & Dinning","24.99", 6);

INSERT INTO products (productname, departmentname,price,stockquantity)
VALUES ("Hubert's Lemonade-16oz", "Grocery","4.99", 12);

INSERT INTO products (productname, departmentname,price,stockquantity)
VALUES ("Dry Dog Food", "Pet supplies","43.78", 3);

INSERT INTO products (productname, departmentname,price,stockquantity)
VALUES ("T-shirt", "Clothing","10", 15);

INSERT INTO products (productname, departmentname,price,stockquantity)
VALUES ("KIDZ BOP 32-mp3", "CD","9.49", 7);

INSERT INTO products (productname, departmentname,price,stockquantity)
VALUES ("Bluetooth Headphones", "Electronics","14.99", 2);

select * from products
