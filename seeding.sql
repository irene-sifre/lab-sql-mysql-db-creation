USE lab_mysql;
-- Insert data into cars table
-- Insert data into cars table without specifying car_id
INSERT INTO cars (brand, model, year, price) VALUES
('Volkswagen', 'Tiguan', 2019, 0.00),
('Peugeot', 'Rifter', 2019, 0.00),
('Ford', 'Fusion', 2018, 0.00),
('Toyota', 'RAV4', 2018, 0.00),
('Volvo', 'V60', 2019, 0.00),
('Volvo', 'V60 Cross Country', 2019, 0.00);

-- Insert data into salespersons table with placeholder emails
INSERT INTO salespersons (salesperson_id, first_name, last_name, email, phone_number) VALUES
(1, 'Petey', 'Cruiser', 'petey.cruiser@example.com', NULL),
(2, 'Anna', 'Sthesia', 'anna.sthesia@example.com', NULL),
(3, 'Paul', 'Molive', 'paul.molive@example.com', NULL),
(4, 'Gail', 'Forcewind', 'gail.forcewind@example.com', NULL),
(5, 'Paige', 'Turner', 'paige.turner@example.com', NULL),
(6, 'Bob', 'Frapples', 'bob.frapples@example.com', NULL),
(7, 'Walter', 'Melon', 'walter.melon@example.com', NULL),
(8, 'Shonda', 'Leer', 'shonda.leer@example.com', NULL);

-- Insert data into customers table
-- Insert data into customers table with placeholder emails
INSERT INTO customers (customer_id, first_name, last_name, email, phone_number, address) VALUES
(10001, 'Pablo', 'Picasso', 'ppicasso@gmail.com', '+34 636 17 63 82', 'Paseo de la Chopera, 14'),
(20001, 'Abraham', 'Lincoln', 'lincoln@us.gov', '+1 305 907 7086', '120 SW 8th St'),
(30001, 'Napoléon', 'Bonaparte', 'hello@napoleon.me', '+33 1 79 75 40 00', '40 Rue du Colisée');

-- Insert data into invoices table
INSERT INTO invoices (invoice_id, customer_id, salesperson_id, car_id, invoice_date, amount) VALUES
(1, 10001, 3, 1, '2018-08-22', 0.00),
(2, 30001, 5, 3, '2018-12-31', 0.00),
(3, 20001, 7, 2, '2019-01-22', 0.00);
SELECT * FROM cars;
