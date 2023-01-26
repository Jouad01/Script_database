CREATE DATABASE IF NOT EXISTS bike_shop;
USE bike_shop;
CREATE TABLE IF NOT EXISTS Shops (
    shop_id INT NOT NULL AUTO_INCREMENT,
    shop VARCHAR(255) NOT NULL UNIQUE ,
    PRIMARY KEY (shop_id)
);
CREATE TABLE IF NOT EXISTS Bikes (
    bike_id INT NOT NULL AUTO_INCREMENT,
    shop_id INT NOT NULL,
    model VARCHAR(255) NOT NULL,
    brand VARCHAR(255) NOT NULL,
    year INT NOT NULL,
    price DECIMAL(10,2) CHECK (price >= 1),
    PRIMARY KEY (bike_id),
    FOREIGN KEY (shop_id) REFERENCES Shops(shop_id)
);
CREATE TABLE IF NOT EXISTS Complement (
    complement_id INT NOT NULL AUTO_INCREMENT,
    description VARCHAR(255) NOT NULL,
    PRIMARY KEY (complement_id)
);
CREATE TABLE IF NOT EXISTS bike_complement (
    bike_id INT NOT NULL,
    complement_id INT NOT NULL,
    PRIMARY KEY (bike_id, complement_id),
    FOREIGN KEY (bike_id) REFERENCES Bikes(bike_id),
    FOREIGN KEY (complement_id) REFERENCES Complement(complement_id)
);
CREATE TABLE IF NOT EXISTS Client (
    client_id INT AUTO_INCREMENT,
    shop_id INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    lastname VARCHAR(255) NOT NULL,
    adress VARCHAR(255) NOT NULL,
    phone_number INT NOT NULL,
    mail VARCHAR(255) NOT NULL,
    PRIMARY KEY (client_id)
);
CREATE TABLE IF NOT EXISTS Booking (
    booking_id INT NOT NULL AUTO_INCREMENT,
    client_id INT NOT NULL,
    bike_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    PRIMARY KEY (booking_id),
    FOREIGN KEY (client_id) REFERENCES Client(client_id),
    FOREIGN KEY (bike_id) REFERENCES Bikes(bike_id)
);