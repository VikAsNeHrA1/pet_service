create database pet_service;
use pet_service;

CREATE TABLE Customer (
customer_id INT PRIMARY KEY,
first_name TEXT,
last_name TEXT,
phone_number TEXT,
email TEXT
);

CREATE TABLE Pet (
pet_id INT PRIMARY KEY,
pet_name TEXT,
pet_type TEXT,
customer_id INT,
FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

CREATE TABLE Driver (
driver_id INT PRIMARY KEY,
first_name TEXT,
last_name TEXT,
phone_number TEXT,
email TEXT,
driver_license_number TEXT
);

CREATE TABLE Service (
service_id INT PRIMARY KEY,
service_name TEXT,
service_description TEXT,
service_price DECIMAL
);

CREATE TABLE Trip (
trip_id INT PRIMARY KEY,
pickup_location TEXT,
dropoff_location TEXT,
trip_date DATE,
pet_id INT,
driver_id INT,
service_id INT,
FOREIGN KEY (pet_id) REFERENCES Pet(pet_id),
FOREIGN KEY (driver_id) REFERENCES Driver(driver_id),
FOREIGN KEY (service_id) REFERENCES Service(service_id)
);

INSERT INTO Customer (customer_id, first_name, last_name, phone_number, email)
VALUES (1, 'Vikas', 'Nehra', '555-1234', 'nehravikas9@gmail.com');

INSERT INTO Customer (customer_id, first_name, last_name, phone_number, email)
VALUES (2, 'Random1.', 'Smith', '555-5678', 'randomsmith@gmail.com');

INSERT INTO Customer (customer_id, first_name, last_name, phone_number, email)
VALUES (3, 'Ramdom2', 'Jones', '555-9101', 'random2@gmail.com');

INSERT INTO Customer (customer_id, first_name, last_name, phone_number, email)
VALUES (4, 'Prince', 'Vix', '555-1212', 'prince@gmail.com');

INSERT INTO Customer (customer_id, first_name, last_name, phone_number, email)
VALUES (5, 'Mike', 'Davis', '555-2323', 'mikedavis@gmail.com');


INSERT INTO Pet (pet_id, pet_name, pet_type, customer_id)
VALUES (1, 'Max', 'Dog', 1);

INSERT INTO Pet (pet_id, pet_name, pet_type, customer_id)
VALUES (2, 'Fluffy', 'Cat', 2);

INSERT INTO Pet (pet_id, pet_name, pet_type, customer_id)
VALUES (3, 'Buddy', 'Dog', 3);

INSERT INTO Pet (pet_id, pet_name, pet_type, customer_id)
VALUES (4, 'Simba', 'Lion', 4);

INSERT INTO Pet (pet_id, pet_name, pet_type, customer_id)
VALUES (5, 'Lucky', 'Fish', 5);


INSERT INTO Driver (driver_id, first_name, last_name, phone_number, email, driver_license_number)
VALUES (1, 'Aman', 'Johnson', '555-1111', 'aman@gmail.com', '1234567');

INSERT INTO Driver (driver_id, first_name, last_name, phone_number, email, driver_license_number)
VALUES (2, 'Mary', 'Williams', '555-2222', 'marywilliams@gmail.com', '2345678');

INSERT INTO Driver (driver_id, first_name, last_name, phone_number, email, driver_license_number)
VALUES (3, 'Zach', 'Brown', '555-3333', 'zachbrown@gmail.com', '3456789');

INSERT INTO Driver (driver_id, first_name, last_name, phone_number, email, driver_license_number)
VALUES (4, 'Ketton', 'Miller', '555-4444', 'miller@gmail.com', '4567890');

INSERT INTO Driver (driver_id, first_name, last_name, phone_number, email, driver_license_number)
VALUES (5, 'Chris', 'Wilson', '555-5555', 'chriswilson@gmail.com', '5678901');


INSERT INTO Service (service_id, service_name, service_description, service_price)
VALUES (1, 'Pet Sitting', 'Daily visits to take care of your pet', 50.00);

INSERT INTO Service (service_id, service_name, service_description, service_price)
VALUES (2, 'Dog Walking', 'Hourly dog walking', 25.00);

INSERT INTO Service (service_id, service_name, service_description,service_price)
VALUES (3, 'Pet Transportation', 'Transportation of your pet to/from appointments', 75.00);

INSERT INTO Service (service_id, service_name, service_description, service_price)
VALUES (4, 'Pet Grooming', 'Bathing, trimming, and grooming of your pet', 80.00);

INSERT INTO Service (service_id, service_name, service_description, service_price)
VALUES (5, 'Pet Training', 'Training sessions to help your pet learn new behaviors', 100.00);

INSERT INTO Trip (trip_id, pickup_location, dropoff_location, trip_date, pet_id, driver_id, service_id)
VALUES (1, '123 Main St', '456 Elm St', '2023-03-20', 1, 2, 1);

INSERT INTO Trip (trip_id, pickup_location, dropoff_location, trip_date, pet_id, driver_id, service_id)
VALUES (2, '789 Oak St', '1011 Pine St', '2023-03-20', 3, 4, 2);

INSERT INTO Trip (trip_id, pickup_location, dropoff_location, trip_date, pet_id, driver_id, service_id)
VALUES (3, '1213 Maple St', '1415 Cedar St', '2023-03-20', 5, 1, 3);

INSERT INTO Trip (trip_id, pickup_location, dropoff_location, trip_date, pet_id, driver_id, service_id)
VALUES (4, '1617 Walnut St', '1819 Chestnut St', '2023-03-20', 2, 5, 4);

INSERT INTO Trip (trip_id, pickup_location, dropoff_location, trip_date, pet_id, driver_id, service_id)
VALUES (5, '2021 Pine St', '2223 Oak St', '2023-03-20', 4, 3, 5);

select * from Customer;


