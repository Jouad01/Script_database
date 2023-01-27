SELECT * FROM client WHERE name like 'V%';

SELECT * FROM client WHERE mail like '%@gmail.com';

SELECT * FROM bikes WHERE price = 8000;

SELECT shop FROM shops order by shop desc;

SELECT min(price) as smallestPrice FROM bikes;

SELECT * FROM bikes WHERE brand = 'Specialized' and price > 9000;

SELECT * FROM bikes WHERE price between 5000 and 9000;

SELECT avg(price) FROM bikes;

SELECT shop_id, COUNT(*) as num_ocurrencias FROM client group by shop_id having num_ocurrencias > 1;

(SELECT brand, price FROM bikes WHERE brand = 'Specialized' and year= 2022) intersect (SELECT brand, price FROM bikes WHERE brand = 'Specialized' and price > 10000);

SELECT Bikes.model, Shops.shop, Client.name, Client.lastname, Booking.start_date, Booking.end_date
FROM Bikes
JOIN Shops ON Bikes.shop_id = Shops.shop_id
JOIN Booking ON Bikes.bike_id = Booking.bike_id
JOIN Client ON Booking.client_id = Client.client_id;

SELECT CONCAT('Hello ', name, ' ', lastname) FROM client;