


-- View: Successful Bookings
CREATE VIEW Successfull_Bookings AS
SELECT * 
FROM bookings
WHERE booking_status = 'Success';

-- View: Average Ride Distance by Vehicle Type
CREATE VIEW ride_avg_distance AS
SELECT vehicle_type, AVG(ride_distance) AS avg_distance
FROM bookings
GROUP BY vehicle_type;

-- View: Canceled Rides by Customer
CREATE VIEW canceled_rides_by_customer AS
SELECT COUNT(*) 
FROM bookings
WHERE booking_status = 'Canceled by Customer';

-- View: Top 5 Customers by Total Rides
CREATE VIEW top5_customers AS
SELECT customer_id, COUNT(booking_status) AS total_rides
FROM bookings
GROUP BY customer_id
ORDER BY total_rides DESC
LIMIT 5;

-- View: Rides Canceled by Drivers Due to Personal/Car Issues
CREATE VIEW rides_canceled_by_drivers_due_to_p_c_issues AS
SELECT COUNT(*) 
FROM bookings
WHERE canceled_rides_by_driver = 'Personal & Car related issue';

-- View: Max and Min Driver Ratings (Prime Sedan)
CREATE VIEW max_min_driver_rating AS
SELECT MAX(driver_ratings) AS max_rating,
       MIN(driver_ratings) AS min_rating
FROM bookings
WHERE vehicle_type = 'Prime Sedan';

-- View: Payment Method - UPI
CREATE VIEW payment_method_upi AS
SELECT * 
FROM bookings
WHERE payment_method = 'UPI';

-- View: Average Customer Rating by Vehicle Type
CREATE VIEW avg_customer_rating AS
SELECT vehicle_type, AVG(customer_rating) AS avg_customer_rating
FROM bookings
GROUP BY vehicle_type;

-- View: Total Successful Ride Value
CREATE VIEW total_successful_ride_value AS
SELECT SUM(booking_value) AS total_successful_ride_value
FROM bookings
WHERE booking_status = 'Success';

-- View: Incomplete Rides with Reason
CREATE VIEW incomplete_rides_reason AS
SELECT booking_id, incomplete_rides_reason
FROM bookings
WHERE incomplete_rides = 'Yes';
