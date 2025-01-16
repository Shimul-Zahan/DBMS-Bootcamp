example 1:
CREATE TABLE Users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    mail VARCHAR(255)
);


example 2:
CREATE TABLE Users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    mail VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


example 3:
CREATE TABLE Users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    mail VARCHAR(255) NOT NULL,
    gender ENUM('MALE', 'FEMALE', 'M', 'F') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);






CREATE TABLE store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(50),
    product_name VARCHAR(50),
    quantity INT,
    price DECIMAL(10, 2)
);



INSERT INTO store (store_id, store_name, product_name, quantity, price) VALUES
(1, 'Supermart', 'Apples', 50, 1.20),
(2, 'FreshMart', 'Bananas', 30, 0.50),
(3, 'FoodBazaar', 'Oranges', 40, 1.00),
(4, 'DailyStore', 'Milk', 20, 1.50),
(5, 'CityGrocery', 'Bread', 25, 2.00),
(6, 'FreshMart', 'Eggs', 60, 0.20),
(7, 'Supermart', 'Cheese', 15, 3.50),
(8, 'FoodBazaar', 'Butter', 10, 4.00),
(9, 'DailyStore', 'Chicken', 12, 5.50),
(10, 'CityGrocery', 'Rice', 100, 0.90),
(11, 'Supermart', 'Sugar', 80, 0.70),
(12, 'FreshMart', 'Salt', 45, 0.30),
(13, 'FoodBazaar', 'Flour', 70, 0.80),
(14, 'DailyStore', 'Juice', 25, 1.80),
(15, 'CityGrocery', 'Coffee', 18, 4.50),
(16, 'FreshMart', 'Tea', 22, 3.00),
(17, 'Supermart', 'Yogurt', 50, 1.10),
(18, 'FoodBazaar', 'Pasta', 35, 2.20),
(19, 'DailyStore', 'Beans', 40, 0.60),
(20, 'CityGrocery', 'Lentils', 75, 1.30);






