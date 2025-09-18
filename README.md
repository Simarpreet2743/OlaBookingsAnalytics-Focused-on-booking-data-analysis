# 🚖 OlaRideInsights – SQL Project

This project analyzes **Ola ride booking data** using SQL. It includes **table creation**, **CSV data import**, and multiple **views** to gain insights on bookings, cancellations, payments, ratings, and customer behavior.

---

## 📂 Project Structure

* **`create_table.sql`** → Creates the `bookings` table
* **`bookings.csv`** → Sample dataset for the table
* **`views.sql`** → Contains all SQL views for analysis

---

## ⚡ How to Run

1. **Clone the repository**

   ```bash
   git clone https://github.com/Simarpreet2743/OlaRideInsights.git
   cd OlaRideInsights
   ```

2. **Open your SQL environment**
   (PostgreSQL, MySQL, or any SQL client like pgAdmin / MySQL Workbench).

3. **Create the database & table**

   ```sql
   CREATE DATABASE ola_rides_db;
   \c ola_rides_db;
   \i create_table.sql
   ```

4. **Import the dataset**
   Make sure the file path of `bookings.csv` is correct.

   For PostgreSQL:

   ```sql
   COPY bookings(date, time, booking_id, booking_status, customer_id, vehicle_type, pickup_location, drop_location, v_tat, c_tat, canceled_rides_by_customer, canceled_rides_by_driver, incomplete_rides, incomplete_rides_reason, booking_value, payment_method, ride_distance, driver_ratings, customer_rating, vehicle_images)
   FROM 'D:/bookings.csv'
   WITH (FORMAT csv, HEADER true, DELIMITER ',', NULL 'null');
   ```

5. **Run all views**

   ```sql
   \i views.sql
   ```

---

## 📊 Views & Insights

| View Name                                     | Description                                    |
| --------------------------------------------- | ---------------------------------------------- |
| `Successfull_Bookings`                        | Shows all successful rides                     |
| `ride_avg_distance`                           | Average ride distance by vehicle type          |
| `canceled_rides_by_customer`                  | Total rides canceled by customers              |
| `top5_customers`                              | Top 5 customers based on ride count            |
| `rides_canceled_by_drivers_due_to_p_c_issues` | Rides canceled due to personal/car issues      |
| `max_min_driver_rating`                       | Max & Min driver ratings for Prime Sedan rides |
| `payment_method_upi`                          | Rides paid via UPI                             |
| `avg_customer_rating`                         | Average customer rating per vehicle type       |
| `total_successful_ride_value`                 | Total value of successful rides                |
| `incomplete_rides_reason`                     | Incomplete rides along with reasons            |

---

## 🤝 Contributing

Feel free to fork this project, suggest improvements, or add new SQL queries/views!

---

## 🧑‍💻 Author

**Simarpreet Singh**

* GitHub: [Simarpreet2743](https://github.com/Simarpreet2743)
* LinkedIn: [Simarpreet Singh](https://www.linkedin.com/in/simarpreet-singh-a99918229/?trk=opento_sprofile_detailse)

---

You can **copy-paste this directly into your README.md**.

