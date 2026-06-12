create database Book_My_Flights
use Book_My_Flights
CREATE TABLE book_my_flight (
    flight_id          INT AUTO_INCREMENT PRIMARY KEY,
    flight_number      VARCHAR(20)        NOT NULL,
    airline_name       VARCHAR(100)       NOT NULL,
    aircraft_type      VARCHAR(50),
    departure_city     VARCHAR(100)       NOT NULL,
    arrival_city       VARCHAR(100)       NOT NULL,
    departure_airport  VARCHAR(10),       
    arrival_airport    VARCHAR(10),
    departure_date     DATE               NOT NULL,
    departure_time     TIME               NOT NULL,
    arrival_date       DATE               NOT NULL,
    arrival_time       TIME               NOT NULL,
    duration_minutes   INT,
    flight_class       ENUM('Economy','Business','First Class') DEFAULT 'Economy',
    seat_number        VARCHAR(10),
    passenger_name     VARCHAR(150)       NOT NULL,
    passenger_email    VARCHAR(150),
    passenger_phone    VARCHAR(15),
    passport_number    VARCHAR(30),
    age                INT,
    gender             ENUM('Male','Female','Other'),
    nationality        VARCHAR(50),
    booking_date       DATE               NOT NULL,
    booking_status     ENUM('Confirmed','Pending','Cancelled') DEFAULT 'Pending',
    ticket_price       DECIMAL(10,2)      NOT NULL,
    tax_amount         DECIMAL(10,2),
    total_amount       DECIMAL(10,2),
    payment_method     VARCHAR(50),
    payment_status     ENUM('Paid','Unpaid','Refunded') DEFAULT 'Unpaid',
    luggage_kg         DECIMAL(5,2)
);
select * from book_my_flight
INSERT INTO book_my_flight (
    flight_number, airline_name, aircraft_type,
    departure_city, arrival_city, departure_airport, arrival_airport,
    departure_date, departure_time, arrival_date, arrival_time,
    duration_minutes, flight_class, seat_number,
    passenger_name, passenger_email, passenger_phone,
    passport_number, age, gender, nationality,
    booking_date, booking_status,
    ticket_price, tax_amount, total_amount,
    payment_method, payment_status, luggage_kg
)
VALUES

('AI-101', 'Air India', 'Boeing 737', 'Chennai', 'Mumbai', 'MAA', 'BOM',
'2025-07-01', '06:00:00', '2025-07-01', '08:10:00',
130, 'Economy', '12A', 'Jafeer Ahmed', 'jafeer@gmail.com', '9876543210',
'P1234567', 24, 'Male', 'Indian',
'2025-06-01', 'Confirmed', 4500.00, 810.00, 5310.00, 'UPI', 'Paid', 15.0),


('6E-202', 'IndiGo', 'Airbus A320', 'Delhi', 'Bangalore', 'DEL', 'BLR',
'2025-07-02', '07:30:00', '2025-07-02', '10:00:00',
150, 'Economy', '5B', 'Priya Sharma', 'priya@gmail.com', '9123456780',
'P2345678', 29, 'Female', 'Indian',
'2025-06-02', 'Confirmed', 5200.00, 936.00, 6136.00, 'Card', 'Paid', 20.0),


('SG-303', 'SpiceJet', 'Boeing 737 MAX', 'Hyderabad', 'Kolkata', 'HYD', 'CCU',
'2025-07-03', '09:00:00', '2025-07-03', '11:30:00',
150, 'Business', '2C', 'Ravi Kumar', 'ravi@yahoo.com', '9988776655',
'P3456789', 35, 'Male', 'Indian',
'2025-06-03', 'Confirmed', 9800.00, 1764.00, 11564.00, 'NetBanking', 'Paid', 25.0),


('UK-404', 'Vistara', 'Airbus A321', 'Mumbai', 'Chennai', 'BOM', 'MAA',
'2025-07-04', '11:00:00', '2025-07-04', '13:05:00',
125, 'First Class', '1A', 'Anjali Menon', 'anjali@outlook.com', '9876501234',
'P4567890', 42, 'Female', 'Indian',
'2025-06-04', 'Confirmed', 15000.00, 2700.00, 17700.00, 'Card', 'Paid', 30.0),


('AI-505', 'Air India', 'Boeing 777', 'Chennai', 'Delhi', 'MAA', 'DEL',
'2025-07-05', '13:00:00', '2025-07-05', '15:30:00',
150, 'Economy', '22D', 'Mohammed Rafiq', 'rafiq@gmail.com', '9765432109',
'P5678901', 31, 'Male', 'Indian',
'2025-06-05', 'Pending', 4800.00, 864.00, 5664.00, 'UPI', 'Unpaid', 15.0),


('6E-606', 'IndiGo', 'Airbus A320 Neo', 'Pune', 'Hyderabad', 'PNQ', 'HYD',
'2025-07-06', '08:15:00', '2025-07-06', '09:45:00',
90, 'Economy', '18F', 'Deepa Nair', 'deepa@gmail.com', '9654321098',
'P6789012', 26, 'Female', 'Indian',
'2025-06-06', 'Confirmed', 3200.00, 576.00, 3776.00, 'UPI', 'Paid', 10.0),


('SG-707', 'SpiceJet', 'Bombardier Q400', 'Coimbatore', 'Chennai', 'CJB', 'MAA',
'2025-07-07', '10:30:00', '2025-07-07', '11:30:00',
60, 'Economy', '9C', 'Karthik Raj', 'karthik@gmail.com', '9543210987',
'P7890123', 22, 'Male', 'Indian',
'2025-06-07', 'Confirmed', 2100.00, 378.00, 2478.00, 'Card', 'Paid', 7.0),


('UK-808', 'Vistara', 'Airbus A320', 'Kolkata', 'Mumbai', 'CCU', 'BOM',
'2025-07-08', '14:00:00', '2025-07-08', '16:30:00',
150, 'Business', '3B', 'Sneha Ghosh', 'sneha@gmail.com', '9432109876',
'P8901234', 38, 'Female', 'Indian',
'2025-06-08', 'Confirmed', 11000.00, 1980.00, 12980.00, 'NetBanking', 'Paid', 25.0),


('AI-909', 'Air India', 'Boeing 787', 'Bangalore', 'Goa', 'BLR', 'GOI',
'2025-07-09', '16:00:00', '2025-07-09', '17:15:00',
75, 'Economy', '30E', 'Arjun Pillai', 'arjun@gmail.com', '9321098765',
'P9012345', 27, 'Male', 'Indian',
'2025-06-09', 'Cancelled', 3800.00, 684.00, 4484.00, 'UPI', 'Refunded', 15.0),


('6E-110', 'IndiGo', 'Airbus A321 Neo', 'Delhi', 'Chennai', 'DEL', 'MAA',
'2025-07-10', '18:30:00', '2025-07-10', '21:00:00',
150, 'Economy', '14A', 'Fatima Begum', 'fatima@gmail.com', '9210987654',
'P0123456', 33, 'Female', 'Indian',
'2025-06-10', 'Confirmed', 5500.00, 990.00, 6490.00, 'Card', 'Paid', 20.0),


('SG-211', 'SpiceJet', 'Boeing 737', 'Ahmedabad', 'Delhi', 'AMD', 'DEL',
'2025-07-11', '06:45:00', '2025-07-11', '08:45:00',
120, 'Economy', '7D', 'Vikram Singh', 'vikram@gmail.com', '9109876543',
'P1122334', 45, 'Male', 'Indian',
'2025-06-11', 'Confirmed', 4100.00, 738.00, 4838.00, 'UPI', 'Paid', 15.0),


('UK-312', 'Vistara', 'Airbus A320 Neo', 'Chennai', 'Hyderabad', 'MAA', 'HYD',
'2025-07-12', '09:20:00', '2025-07-12', '10:40:00',
80, 'Business', '4A', 'Lakshmi Devi', 'lakshmi@yahoo.com', '9098765432',
'P2233445', 50, 'Female', 'Indian',
'2025-06-12', 'Confirmed', 8500.00, 1530.00, 10030.00, 'Card', 'Paid', 20.0),


('AI-413', 'Air India', 'Boeing 737 MAX', 'Mumbai', 'Jaipur', 'BOM', 'JAI',
'2025-07-13', '11:10:00', '2025-07-13', '13:00:00',
110, 'Economy', '20B', 'Rahul Verma', 'rahul@gmail.com', '8987654321',
'P3344556', 28, 'Male', 'Indian',
'2025-06-13', 'Pending', 4600.00, 828.00, 5428.00, 'NetBanking', 'Unpaid', 15.0),


('6E-514', 'IndiGo', 'Airbus A320', 'Hyderabad', 'Delhi', 'HYD', 'DEL',
'2025-07-14', '13:30:00', '2025-07-14', '16:00:00',
150, 'Economy', '11C', 'Pooja Reddy', 'pooja@gmail.com', '8876543210',
'P4455667', 24, 'Female', 'Indian',
'2025-06-14', 'Confirmed', 5100.00, 918.00, 6018.00, 'UPI', 'Paid', 10.0),


('SG-615', 'SpiceJet', 'Boeing 737', 'Kolkata', 'Guwahati', 'CCU', 'GAU',
'2025-07-15', '07:00:00', '2025-07-15', '08:30:00',
90, 'Economy', '16F', 'Amit Das', 'amit@gmail.com', '8765432109',
'P5566778', 36, 'Male', 'Indian',
'2025-06-15', 'Confirmed', 3500.00, 630.00, 4130.00, 'Card', 'Paid', 15.0),


('UK-716', 'Vistara', 'Airbus A321', 'Bangalore', 'Delhi', 'BLR', 'DEL',
'2025-07-16', '15:00:00', '2025-07-16', '17:45:00',
165, 'First Class', '1B', 'Meera Iyer', 'meera@outlook.com', '8654321098',
'P6677889', 47, 'Female', 'Indian',
'2025-06-16', 'Confirmed', 18000.00, 3240.00, 21240.00, 'Card', 'Paid', 32.0),


('AI-817', 'Air India', 'Boeing 777', 'Delhi', 'Mumbai', 'DEL', 'BOM',
'2025-07-17', '17:00:00', '2025-07-17', '19:05:00',
125, 'Business', '5C', 'Suresh Patel', 'suresh@gmail.com', '8543210987',
'P7788990', 52, 'Male', 'Indian',
'2025-06-17', 'Confirmed', 12000.00, 2160.00, 14160.00, 'NetBanking', 'Paid', 25.0),


('6E-918', 'IndiGo', 'Airbus A320 Neo', 'Goa', 'Mumbai', 'GOI', 'BOM',
'2025-07-18', '10:00:00', '2025-07-18', '11:15:00',
75, 'Economy', '25A', 'Nisha Joshi', 'nisha@gmail.com', '8432109876',
'P8899001', 23, 'Female', 'Indian',
'2025-06-18', 'Confirmed', 2800.00, 504.00, 3304.00, 'UPI', 'Paid', 10.0),


('SG-119', 'SpiceJet', 'Boeing 737 MAX', 'Chennai', 'Kolkata', 'MAA', 'CCU',
'2025-07-19', '08:00:00', '2025-07-19', '10:30:00',
150, 'Economy', '19D', 'Bala Krishnan', 'bala@gmail.com', '8321098765',
'P9900112', 40, 'Male', 'Indian',
'2025-06-19', 'Pending', 5000.00, 900.00, 5900.00, 'Card', 'Unpaid', 20.0),


('UK-220', 'Vistara', 'Airbus A320', 'Mumbai', 'Goa', 'BOM', 'GOI',
'2025-07-20', '12:30:00', '2025-07-20', '13:45:00',
75, 'Business', '6A', 'Divya Rao', 'divya@gmail.com', '8210987654',
'P1011121', 31, 'Female', 'Indian',
'2025-06-20', 'Confirmed', 9500.00, 1710.00, 11210.00, 'UPI', 'Paid', 20.0),


('AI-321', 'Air India', 'Airbus A321', 'Jaipur', 'Mumbai', 'JAI', 'BOM',
'2025-07-21', '14:15:00', '2025-07-21', '16:10:00',
115, 'Economy', '28C', 'Rohit Gupta', 'rohit@gmail.com', '8109876543',
'P1213141', 29, 'Male', 'Indian',
'2025-06-21', 'Confirmed', 4300.00, 774.00, 5074.00, 'NetBanking', 'Paid', 15.0),


('6E-422', 'IndiGo', 'Airbus A320', 'Delhi', 'Kolkata', 'DEL', 'CCU',
'2025-07-22', '06:30:00', '2025-07-22', '08:45:00',
135, 'Economy', '10F', 'Sunita Kumari', 'sunita@gmail.com', '7998765432',
'P1415161', 44, 'Female', 'Indian',
'2025-06-22', 'Confirmed', 4700.00, 846.00, 5546.00, 'Card', 'Paid', 15.0),


('SG-523', 'SpiceJet', 'Bombardier Q400', 'Madurai', 'Chennai', 'IXM', 'MAA',
'2025-07-23', '09:45:00', '2025-07-23', '10:55:00',
70, 'Economy', '8B', 'Tamil Selvan', 'tamil@gmail.com', '7887654321',
'P1617181', 21, 'Male', 'Indian',
'2025-06-23', 'Confirmed', 1900.00, 342.00, 2242.00, 'UPI', 'Paid', 7.0),


('UK-624', 'Vistara', 'Airbus A321 Neo', 'Bangalore', 'Mumbai', 'BLR', 'BOM',
'2025-07-24', '16:30:00', '2025-07-24', '18:15:00',
105, 'First Class', '1C', 'Kavitha Srinivas', 'kavitha@outlook.com', '7776543210',
'P1819201', 55, 'Female', 'Indian','2025-06-24', 'Confirmed', 20000.00, 3600.00, 23600.00, 'Card', 'Paid', 35.0),


('AI-725', 'Air India', 'Boeing 787', 'Mumbai', 'Hyderabad', 'BOM', 'HYD',
'2025-07-25', '11:45:00', '2025-07-25', '13:15:00',
90, 'Economy', '23E', 'Prakash Nair', 'prakash@gmail.com', '7665432109',
'P2021221', 37, 'Male', 'Indian',
'2025-06-25', 'Confirmed', 3900.00, 702.00, 4602.00, 'UPI', 'Paid', 15.0),


('6E-826', 'IndiGo', 'Airbus A320 Neo', 'Hyderabad', 'Goa', 'HYD', 'GOI',
'2025-07-26', '08:50:00', '2025-07-26', '10:20:00',
90, 'Economy', '15D', 'Ananya Krishnan', 'ananya@gmail.com', '7554321098',
'P2223241', 25, 'Female', 'Indian',
'2025-06-26', 'Cancelled', 3300.00, 594.00, 3894.00, 'Card', 'Refunded', 10.0),


('SG-927', 'SpiceJet', 'Boeing 737', 'Chennai', 'Ahmedabad', 'MAA', 'AMD',
'2025-07-27', '13:00:00', '2025-07-27', '15:30:00',
150, 'Economy', '21A', 'Murugan Vel', 'murugan@gmail.com', '7443210987',
'P2425261', 48, 'Male', 'Indian',
'2025-06-27', 'Confirmed', 5300.00, 954.00, 6254.00, 'NetBanking', 'Paid', 20.0),


('UK-128', 'Vistara', 'Airbus A320', 'Delhi', 'Goa', 'DEL', 'GOI',
'2025-07-28', '15:30:00', '2025-07-28', '17:30:00',
120, 'Business', '7B', 'Shreya Agarwal', 'shreya@gmail.com', '7332109876',
'P2627281', 34, 'Female', 'Indian',
'2025-06-28', 'Confirmed', 13500.00, 2430.00, 15930.00, 'Card', 'Paid', 25.0),


('AI-229', 'Air India', 'Boeing 737 MAX', 'Kolkata', 'Chennai', 'CCU', 'MAA',
'2025-07-29', '07:15:00', '2025-07-29', '09:45:00',
150, 'Economy', '17C', 'Subramanian K', 'subra@gmail.com', '7221098765',
'P2829301', 60, 'Male', 'Indian',
'2025-06-29', 'Confirmed', 5600.00, 1008.00, 6608.00, 'UPI', 'Paid', 20.0),


('6E-330', 'IndiGo', 'Airbus A321', 'Bangalore', 'Hyderabad', 'BLR', 'HYD',
'2025-07-30', '18:00:00', '2025-07-30', '19:10:00',
70, 'Economy', '13B', 'Pavithra M', 'pavithra@gmail.com', '7110987654',
'P3031321', 27, 'Female', 'Indian',
'2025-06-30', 'Confirmed', 2500.00, 450.00, 2950.00, 'Card', 'Paid', 10.0);
SELECT flight_id, flight_number, passenger_name,
       departure_city, arrival_city, total_amount,
       booking_status, payment_status
FROM book_my_flight
ORDER BY flight_id;
#joins------------
CREATE TABLE Passengers (
    passenger_id   INT PRIMARY KEY AUTO_INCREMENT,
    passenger_name VARCHAR(150) NOT NULL,
    passenger_email VARCHAR(150),
    passenger_phone VARCHAR(15),
    passport_number VARCHAR(30),
    age            INT,
    gender         ENUM('Male','Female','Other'),
    nationality    VARCHAR(50)
);
INSERT INTO Passengers 
(passenger_name, passenger_email, passenger_phone, passport_number, age, gender, nationality)
VALUES
('Jafeer Ahmed',     'jafeer@gmail.com',   '9876543210', 'P1234567', 24, 'Male',   'Indian'),
('Priya Sharma',     'priya@gmail.com',    '9123456780', 'P2345678', 29, 'Female', 'Indian'),
('Ravi Kumar',       'ravi@yahoo.com',     '9988776655', 'P3456789', 35, 'Male',   'Indian'),
('Anjali Menon',     'anjali@outlook.com', '9876501234', 'P4567890', 42, 'Female', 'Indian'),
('Mohammed Rafiq',   'rafiq@gmail.com',    '9765432109', 'P5678901', 31, 'Male',   'Indian'),
('Deepa Nair',       'deepa@gmail.com',    '9654321098', 'P6789012', 26, 'Female', 'Indian'),
('Karthik Raj',      'karthik@gmail.com',  '9543210987', 'P7890123', 22, 'Male',   'Indian'),
('Sneha Ghosh',      'sneha@gmail.com',    '9432109876', 'P8901234', 38, 'Female', 'Indian'),
('Arjun Pillai',     'arjun@gmail.com',    '9321098765', 'P9012345', 27, 'Male',   'Indian'),
('Fatima Begum',     'fatima@gmail.com',   '9210987654', 'P0123456', 33, 'Female', 'Indian'),
('Vikram Singh',     'vikram@gmail.com',   '9109876543', 'P1122334', 45, 'Male',   'Indian'),
('Lakshmi Devi',     'lakshmi@yahoo.com',  '9098765432', 'P2233445', 50, 'Female', 'Indian'),
('Rahul Verma',      'rahul@gmail.com',    '8987654321', 'P3344556', 28, 'Male',   'Indian'),
('Pooja Reddy',      'pooja@gmail.com',    '8876543210', 'P4455667', 24, 'Female', 'Indian'),
('Amit Das',         'amit@gmail.com',     '8765432109', 'P5566778', 36, 'Male',   'Indian'),
('Meera Iyer',       'meera@outlook.com',  '8654321098', 'P6677889', 47, 'Female', 'Indian'),
('Suresh Patel',     'suresh@gmail.com',   '8543210987', 'P7788990', 52, 'Male',   'Indian'),
('Nisha Joshi',      'nisha@gmail.com',    '8432109876', 'P8899001', 23, 'Female', 'Indian'),
('Bala Krishnan',    'bala@gmail.com',     '8321098765', 'P9900112', 40, 'Male',   'Indian'),
('Divya Rao',        'divya@gmail.com',    '8210987654', 'P1011121', 31, 'Female', 'Indian'),
('Rohit Gupta',      'rohit@gmail.com',    '8109876543', 'P1213141', 29, 'Male',   'Indian'),
('Sunita Kumari',    'sunita@gmail.com',   '7998765432', 'P1415161', 44, 'Female', 'Indian'),
('Tamil Selvan',     'tamil@gmail.com',    '7887654321', 'P1617181', 21, 'Male',   'Indian'),
('Kavitha Srinivas', 'kavitha@outlook.com','7776543210', 'P1819201', 55, 'Female', 'Indian'),
('Prakash Nair',     'prakash@gmail.com',  '7665432109', 'P2021221', 37, 'Male',   'Indian'),
('Ananya Krishnan',  'ananya@gmail.com',   '7554321098', 'P2223241', 25, 'Female', 'Indian'),
('Murugan Vel',      'murugan@gmail.com',  '7443210987', 'P2425261', 48, 'Male',   'Indian'),
('Shreya Agarwal',   'shreya@gmail.com',   '7332109876', 'P2627281', 34, 'Female', 'Indian'),
('Subramanian K',    'subra@gmail.com',    '7221098765', 'P2829301', 60, 'Male',   'Indian'),
('Pavithra M',       'pavithra@gmail.com', '7110987654', 'P3031321', 27, 'Female', 'Indian');
select * from Passengers

CREATE TABLE Flights (
    flight_id        INT PRIMARY KEY AUTO_INCREMENT,
    flight_number    VARCHAR(20)  NOT NULL,
    airline_name     VARCHAR(100) NOT NULL,
    aircraft_type    VARCHAR(50),
    departure_city   VARCHAR(100) NOT NULL,
    arrival_city     VARCHAR(100) NOT NULL,
    departure_airport VARCHAR(10),
    arrival_airport   VARCHAR(10),
    departure_date   DATE,
    departure_time   TIME,
    arrival_date     DATE,
    arrival_time     TIME,
    duration_minutes INT
);
INSERT INTO Flights 
(flight_number, airline_name, aircraft_type, departure_city, arrival_city,
 departure_airport, arrival_airport, departure_date, departure_time,
 arrival_date, arrival_time, duration_minutes)
VALUES
('AI-101', 'Air India',  'Boeing 737',       'Chennai',     'Mumbai',    'MAA','BOM','2025-07-01','06:00:00','2025-07-01','08:10:00', 130),
('6E-202', 'IndiGo',     'Airbus A320',      'Delhi',       'Bangalore', 'DEL','BLR','2025-07-02','07:30:00','2025-07-02','10:00:00', 150),
('SG-303', 'SpiceJet',   'Boeing 737 MAX',   'Hyderabad',   'Kolkata',   'HYD','CCU','2025-07-03','09:00:00','2025-07-03','11:30:00', 150),
('UK-404', 'Vistara',    'Airbus A321',      'Mumbai',      'Chennai',   'BOM','MAA','2025-07-04','11:00:00','2025-07-04','13:05:00', 125),
('AI-505', 'Air India',  'Boeing 777',       'Chennai',     'Delhi',     'MAA','DEL','2025-07-05','13:00:00','2025-07-05','15:30:00', 150),
('6E-606', 'IndiGo',     'Airbus A320 Neo',  'Pune',        'Hyderabad', 'PNQ','HYD','2025-07-06','08:15:00','2025-07-06','09:45:00',  90),
('SG-707', 'SpiceJet',   'Bombardier Q400',  'Coimbatore',  'Chennai',   'CJB','MAA','2025-07-07','10:30:00','2025-07-07','11:30:00',  60),
('UK-808', 'Vistara',    'Airbus A320',      'Kolkata',     'Mumbai',    'CCU','BOM','2025-07-08','14:00:00','2025-07-08','16:30:00', 150),
('AI-909', 'Air India',  'Boeing 787',       'Bangalore',   'Goa',       'BLR','GOI','2025-07-09','16:00:00','2025-07-09','17:15:00',  75),
('6E-110', 'IndiGo',     'Airbus A321 Neo',  'Delhi',       'Chennai',   'DEL','MAA','2025-07-10','18:30:00','2025-07-10','21:00:00', 150),
('SG-211', 'SpiceJet',   'Boeing 737',       'Ahmedabad',   'Delhi',     'AMD','DEL','2025-07-11','06:45:00','2025-07-11','08:45:00', 120),
('UK-312', 'Vistara',    'Airbus A320 Neo',  'Chennai',     'Hyderabad', 'MAA','HYD','2025-07-12','09:20:00','2025-07-12','10:40:00',  80),
('AI-413', 'Air India',  'Boeing 737 MAX',   'Mumbai',      'Jaipur',    'BOM','JAI','2025-07-13','11:10:00','2025-07-13','13:00:00', 110),
('6E-514', 'IndiGo',     'Airbus A320',      'Hyderabad',   'Delhi',     'HYD','DEL','2025-07-14','13:30:00','2025-07-14','16:00:00', 150),
('SG-615', 'SpiceJet',   'Boeing 737',       'Kolkata',     'Guwahati',  'CCU','GAU','2025-07-15','07:00:00','2025-07-15','08:30:00',  90),
('UK-716', 'Vistara',    'Airbus A321',      'Bangalore',   'Delhi',     'BLR','DEL','2025-07-16','15:00:00','2025-07-16','17:45:00', 165),
('AI-817', 'Air India',  'Boeing 777',       'Delhi',       'Mumbai',    'DEL','BOM','2025-07-17','17:00:00','2025-07-17','19:05:00', 125),
('6E-918', 'IndiGo',     'Airbus A320 Neo',  'Goa',         'Mumbai',    'GOI','BOM','2025-07-18','10:00:00','2025-07-18','11:15:00',  75),
('SG-119', 'SpiceJet',   'Boeing 737 MAX',   'Chennai',     'Kolkata',   'MAA','CCU','2025-07-19','08:00:00','2025-07-19','10:30:00', 150),
('UK-220', 'Vistara',    'Airbus A320',      'Mumbai',      'Goa',       'BOM','GOI','2025-07-20','12:30:00','2025-07-20','13:45:00',  75),
('AI-321', 'Air India',  'Airbus A321',      'Jaipur',      'Mumbai',    'JAI','BOM','2025-07-21','14:15:00','2025-07-21','16:10:00', 115),
('6E-422', 'IndiGo',     'Airbus A320',      'Delhi',       'Kolkata',   'DEL','CCU','2025-07-22','06:30:00','2025-07-22','08:45:00', 135),
('SG-523', 'SpiceJet',   'Bombardier Q400',  'Madurai',     'Chennai',   'IXM','MAA','2025-07-23','09:45:00','2025-07-23','10:55:00',  70),
('UK-624', 'Vistara',    'Airbus A321 Neo',  'Bangalore',   'Mumbai',    'BLR','BOM','2025-07-24','16:30:00','2025-07-24','18:15:00', 105),
('AI-725', 'Air India',  'Boeing 787',       'Mumbai',      'Hyderabad', 'BOM','HYD','2025-07-25','11:45:00','2025-07-25','13:15:00',  90),
('6E-826', 'IndiGo',     'Airbus A320 Neo',  'Hyderabad',   'Goa',       'HYD','GOI','2025-07-26','08:50:00','2025-07-26','10:20:00',  90),
('SG-927', 'SpiceJet',   'Boeing 737',       'Chennai',     'Ahmedabad', 'MAA','AMD','2025-07-27','13:00:00','2025-07-27','15:30:00', 150),
('UK-128', 'Vistara',    'Airbus A320',      'Delhi',       'Goa',       'DEL','GOI','2025-07-28','15:30:00','2025-07-28','17:30:00', 120),
('AI-229', 'Air India',  'Boeing 737 MAX',   'Kolkata',     'Chennai',   'CCU','MAA','2025-07-29','07:15:00','2025-07-29','09:45:00', 150),
('6E-330', 'IndiGo',     'Airbus A321',      'Bangalore',   'Hyderabad', 'BLR','HYD','2025-07-30','18:00:00','2025-07-30','19:10:00',  70);
select * from Flights

CREATE TABLE Flight_Assignments (
    assignment_id   INT PRIMARY KEY AUTO_INCREMENT,
    flight_id       INT,
    passenger_id    INT,
    booking_date    DATE,
    travel_date     DATE,
    flight_class    ENUM('Economy','Business','First Class') DEFAULT 'Economy',
    seat_number     VARCHAR(10),
    ticket_price    DECIMAL(10,2),
    tax_amount      DECIMAL(10,2),
    total_amount    DECIMAL(10,2),
    payment_method  VARCHAR(50),
    payment_status  ENUM('Paid','Unpaid','Refunded') DEFAULT 'Unpaid',
    booking_status  ENUM('Confirmed','Pending','Cancelled') DEFAULT 'Pending',
    luggage_kg      DECIMAL(5,2),
    FOREIGN KEY (flight_id)    REFERENCES Flights(flight_id),
    FOREIGN KEY (passenger_id) REFERENCES Passengers(passenger_id)
);

INSERT INTO Flight_Assignments
(flight_id, passenger_id, booking_date, travel_date, flight_class,
 seat_number, ticket_price, tax_amount, total_amount,
 payment_method, payment_status, booking_status, luggage_kg)
VALUES
(1,  1,  '2025-06-01','2025-07-01','Economy',     '12A', 4500.00,  810.00,  5310.00, 'UPI',        'Paid',     'Confirmed', 15.0),
(2,  2,  '2025-06-02','2025-07-02','Economy',     '5B',  5200.00,  936.00,  6136.00, 'Card',       'Paid',     'Confirmed', 20.0),
(3,  3,  '2025-06-03','2025-07-03','Business',    '2C',  9800.00, 1764.00, 11564.00, 'NetBanking', 'Paid',     'Confirmed', 25.0),
(4,  4,  '2025-06-04','2025-07-04','First Class', '1A', 15000.00, 2700.00, 17700.00, 'Card',       'Paid',     'Confirmed', 30.0),
(5,  5,  '2025-06-05','2025-07-05','Economy',     '22D', 4800.00,  864.00,  5664.00, 'UPI',        'Unpaid',   'Pending',   15.0),
(6,  6,  '2025-06-06','2025-07-06','Economy',     '18F', 3200.00,  576.00,  3776.00, 'UPI',        'Paid',     'Confirmed', 10.0),
(7,  7,  '2025-06-07','2025-07-07','Economy',     '9C',  2100.00,  378.00,  2478.00, 'Card',       'Paid',     'Confirmed',  7.0),
(8,  8,  '2025-06-08','2025-07-08','Business',    '3B', 11000.00, 1980.00, 12980.00, 'NetBanking', 'Paid',     'Confirmed', 25.0),
(9,  9,  '2025-06-09','2025-07-09','Economy',     '30E', 3800.00,  684.00,  4484.00, 'UPI',        'Refunded', 'Cancelled', 15.0),
(10, 10, '2025-06-10','2025-07-10','Economy',     '14A', 5500.00,  990.00,  6490.00, 'Card',       'Paid',     'Confirmed', 20.0),
(11, 11, '2025-06-11','2025-07-11','Economy',     '7D',  4100.00,  738.00,  4838.00, 'UPI',        'Paid',     'Confirmed', 15.0),
(12, 12, '2025-06-12','2025-07-12','Business',    '4A',  8500.00, 1530.00, 10030.00, 'Card',       'Paid',     'Confirmed', 20.0),
(13, 13, '2025-06-13','2025-07-13','Economy',     '20B', 4600.00,  828.00,  5428.00, 'NetBanking', 'Unpaid',   'Pending',   15.0),
(14, 14, '2025-06-14','2025-07-14','Economy',     '11C', 5100.00,  918.00,  6018.00, 'UPI',        'Paid',     'Confirmed', 10.0),
(15, 15, '2025-06-15','2025-07-15','Economy',     '16F', 3500.00,  630.00,  4130.00, 'Card',       'Paid',     'Confirmed', 15.0),
(16, 16, '2025-06-16','2025-07-16','First Class', '1B', 18000.00, 3240.00, 21240.00, 'Card',       'Paid',     'Confirmed', 32.0),
(17, 17, '2025-06-17','2025-07-17','Business',    '5C', 12000.00, 2160.00, 14160.00, 'NetBanking', 'Paid',     'Confirmed', 25.0),
(18, 18, '2025-06-18','2025-07-18','Economy',     '25A', 2800.00,  504.00,  3304.00, 'UPI',        'Paid',     'Confirmed', 10.0),
(19, 19, '2025-06-19','2025-07-19','Economy',     '19D', 5000.00,  900.00,  5900.00, 'Card',       'Unpaid',   'Pending',   20.0),
(20, 20, '2025-06-20','2025-07-20','Business',    '6A',  9500.00, 1710.00, 11210.00, 'UPI',        'Paid',     'Confirmed', 20.0),
(21, 21, '2025-06-21','2025-07-21','Economy',     '28C', 4300.00,  774.00,  5074.00, 'NetBanking', 'Paid',     'Confirmed', 15.0),
(22, 22, '2025-06-22','2025-07-22','Economy',     '10F', 4700.00,  846.00,  5546.00, 'Card',       'Paid',     'Confirmed', 15.0),
(23, 23, '2025-06-23','2025-07-23','Economy',     '8B',  1900.00,  342.00,  2242.00, 'UPI',        'Paid',     'Confirmed',  7.0),
(24, 24, '2025-06-24','2025-07-24','First Class', '1C', 20000.00, 3600.00, 23600.00, 'Card',       'Paid',     'Confirmed', 35.0),
(25, 25, '2025-06-25','2025-07-25','Economy',     '23E', 3900.00,  702.00,  4602.00, 'UPI',        'Paid',     'Confirmed', 15.0),
(26, 26, '2025-06-26','2025-07-26','Economy',     '15D', 3300.00,  594.00,  3894.00, 'Card',       'Refunded', 'Cancelled', 10.0),
(27, 27, '2025-06-27','2025-07-27','Economy',     '21A', 5300.00,  954.00,  6254.00, 'NetBanking', 'Paid',     'Confirmed', 20.0),
(28, 28, '2025-06-28','2025-07-28','Business',    '7B', 13500.00, 2430.00, 15930.00, 'Card',       'Paid',     'Confirmed', 25.0),
(29, 29, '2025-06-29','2025-07-29','Economy',     '17C', 5600.00, 1008.00,  6608.00, 'UPI',        'Paid',     'Confirmed', 20.0),
(30, 30, '2025-06-30','2025-07-30','Economy',     '13B', 2500.00,  450.00,  2950.00, 'Card',       'Paid',     'Confirmed', 10.0);
select * from Flight_Assignments

--------------(30 Query)--------------

#1.Show assignment_id,flight_name,departure_city,passenger_name,flight_class,total_amount,booking_status,payment_status
SELECT
    fa.assignment_id,
    f.flight_number,
    f.airline_name,
    f.departure_city,
    f.arrival_city,
    p.passenger_name,
    fa.flight_class,
    fa.total_amount,
    fa.booking_status,
    fa.payment_status
FROM Flight_Assignments fa
JOIN Flights    f ON fa.flight_id    = f.flight_id
JOIN Passengers p ON fa.passenger_id = p.passenger_id
ORDER BY fa.assignment_id;

#2.show passenger names and their flight numbers.
FROM Flight_Assignments
WHERE payment_status = 'Unpaid'

#3.show passenger names and their flight numbers.
SELECT p.passenger_name,
       f.flight_number
FROM Passengers p
JOIN Flight_Assignments fa
ON p.passenger_id = fa.passenger_id
JOIN Flights f
ON f.flight_id = fa.flight_id;

#4.Show all flights departing from Chennai.

SELECT *
FROM Flights
WHERE departure_city = 'Chennai'

#5.Show flights arriving in Mumbai.
SELECT *
FROM Flights
WHERE arrival_city = 'Mumbai'

#6.How many passengers are registered?
SELECT COUNT(*) AS Total_Passengers
FROM Passengers

#7.Count confirmed, pending, and cancelled bookings
SELECT booking_status,
       COUNT(*) AS Total
FROM Flight_Assignments
GROUP BY booking_status

#8.Calculate total revenue from paid bookings.
SELECT SUM(total_amount) AS Total_Revenue
FROM Flight_Assignments
WHERE payment_status = 'Paid'

#9.Which booking has the highest ticket price?
SELECT *
FROM Flight_Assignments
ORDER BY ticket_price DESC
LIMIT 1

#10.Find passengers travelling in Business Class
SELECT p.passenger_name,
       fa.flight_class
FROM Passengers p
JOIN Flight_Assignments fa
ON p.passenger_id = fa.passenger_id
WHERE fa.flight_class = 'Business'

#11.Show First Class passengers.
SELECT p.passenger_name,
       fa.flight_class
FROM Passengers p
JOIN Flight_Assignments fa
ON p.passenger_id = fa.passenger_id
WHERE fa.flight_class = 'First Class'

#12.Show cancelled bookings.
SELECT *
FROM Flight_Assignments
WHERE booking_status = 'Cancelled'

#13.Display passenger, airline, source and destination
SELECT p.passenger_name,
       f.airline_name,
       f.departure_city,
       f.arrival_city
FROM Passengers p
JOIN Flight_Assignments fa
ON p.passenger_id = fa.passenger_id
JOIN Flights f
ON f.flight_id = fa.flight_id

#14.Count bookings for each airline
SELECT f.airline_name,
       COUNT(*) AS Total_Bookings
FROM Flights f
JOIN Flight_Assignments fa
ON f.flight_id = fa.flight_id
GROUP BY f.airline_name

#15.Show top 5 highest-value bookings.
SELECT *
FROM Flight_Assignments
ORDER BY total_amount DESC
LIMIT 5

#16.Monthly revenue report
SELECT MONTH(booking_date) AS Month_No,
       SUM(total_amount) AS Revenue
FROM Flight_Assignments
GROUP BY MONTH(booking_date)

#17.Complete Booking Report
SELECT
    p.passenger_name,
    f.flight_number,
    f.airline_name,
    f.departure_city,
    f.arrival_city,
    fa.flight_class,
    fa.seat_number,
    fa.total_amount,
    fa.payment_status,
    fa.booking_status
FROM Passengers p
JOIN Flight_Assignments fa
ON p.passenger_id = fa.passenger_id
JOIN Flights f
ON f.flight_id = fa.flight_id

#18.Show passengers whose ticket price is above average.
SELECT passenger_id, ticket_price
FROM Flight_Assignments
WHERE ticket_price >
(
    SELECT AVG(ticket_price)
    FROM Flight_Assignments
);

#19. Find the highest ticket price booking(SUBQUERY)
SELECT *
FROM Flight_Assignments
WHERE ticket_price =
(
    SELECT MAX(ticket_price)
    FROM Flight_Assignments
);

#20.Find flights with maximum duration
SELECT *
FROM Flights
WHERE duration_minutes =
(
    SELECT MAX(duration_minutes)
    FROM Flights
);

#21.Find passengers who booked cancelled flights
SELECT passenger_name
FROM Passengers
WHERE passenger_id IN
(
    SELECT passenger_id
    FROM Flight_Assignments
    WHERE booking_status='Cancelled'
);

#22  Condition for Booking Status(Case Condition)
SELECT assignment_id,
       booking_status,
       CASE
           WHEN booking_status='Confirmed'
		   THEN 'Ticket Active'
           WHEN booking_status='Pending'
		   THEN 'Waiting'
           ELSE 'Cancelled Ticket'
           END AS Status_Message
           FROM Flight_Assignments;
           
#23.Payment Status(IF Condition)
SELECT assignment_id,
       IF(payment_status='Paid',
          'Payment Completed',
          'Payment Pending') AS Payment_Result
	   FROM Flight_Assignments;

#24.Condition for Luggage(Extra or Normal in greater than 20 above....)
SELECT passenger_id,
       luggage_kg,
       IF(luggage_kg > 20,
          'Extra Luggage',
          'Normal Luggage') AS Luggage_Status
       FROM Flight_Assignments;

#25.Ticket Price Category
SELECT assignment_id,
       ticket_price,
       CASE
          WHEN ticket_price < 5000
               THEN 'Low Fare'
          WHEN ticket_price BETWEEN 5000 AND 10000
               THEN 'Medium Fare'
          ELSE 'High Fare'
          END AS Fare_Category
          FROM Flight_Assignments;
          
#26.Passenger Age Group
SELECT passenger_name,
       age,
       CASE
          WHEN age < 25
               THEN 'Young'
          WHEN age BETWEEN 25 AND 45
               THEN 'Adult'
          ELSE 'Senior'
       END AS Age_Group
FROM Passengers;

#27.Aggregate Function
SELECT
CASE
   WHEN SUM(total_amount) > 200000
        THEN 'Excellent Revenue'
        ELSE 'Average Revenue'
END AS Revenue_Status
FROM Flight_Assignments;

#28.Rank passengers according to ticket price within each flight class(Rank())
SELECT
    passenger_id,
    flight_class,
    ticket_price,
    RANK() OVER(
        PARTITION BY flight_class
        ORDER BY ticket_price DESC
    ) AS rank_no
FROM Flight_Assignments

#29.Calculate total revenue generated by each flight class.(sum())
SELECT
    passenger_id,
    flight_class,
    total_amount,
    SUM(total_amount) OVER(
        PARTITION BY flight_class
    ) AS class_revenue
FROM Flight_Assignments

#30.Find average ticket amount for each flight class.(Avg())
SELECT
    passenger_id,
    flight_class,
    total_amount,
    AVG(total_amount) OVER(
        PARTITION BY flight_class
    ) AS avg_class_amount
FROM Flight_Assignments

