-- Insert Queries for all tables: 

-----------------------------------------------------------------------------------------------------------------

-- City Table
INSERT INTO City (CityId, Name, State, Zipcode) VALUES
(1, 'Bangalore', 'Karnataka', 12345),
(2, 'Mumbai', 'Maharashtra', 40001),
(3, 'Ahmedabad', 'Gujarat', 30001);

-- Cinema Table
INSERT INTO Cinema (Name, NumberOfScreens, CityId) VALUES
('PVR Cinemas', 8, 1),
('INOX', 6, 2),
('Cinepolis', 7, 3);

-- Screen Table
INSERT INTO Screen (Name, TotalSeats, CinemaId) VALUES
('Screen 1', 200, 1),
('Screen 2', 150, 1),
('Screen 1', 180, 2),
('Screen 2', 220, 3);

-- ScreenSeat Table
INSERT INTO ScreenSeat (SeatType, ScreenId) VALUES
('Regular', 1),
('Premium', 1),
('VIP', 2),
('Regular', 3),
('Premium', 4); 

-- Movie Table
INSERT INTO Movie (Title, Description, Duration, Language, ReleaseDate, Country, Genre) VALUES
('Avatar: The Way of Water', 'A visually stunning sequel.', '03:12:00', 'English', '2022-12-16', 'USA', 'Sci-Fi'),
('Dasara', 'An intense drama.', '02:36:00', 'Telugu', '2023-03-30', 'India', 'Action'),
('John Wick: Chapter 4', 'An action-packed thriller.', '02:49:00', 'English', '2023-03-24', 'USA', 'Action');

-- Shows Table
INSERT INTO Shows (Date, StartTime, ScreenId, MovieId) VALUES
('2024-04-25', '2024-04-25 12:15:00', 1, 1),
('2024-04-25', '2024-04-25 17:05:00', 2, 2),
('2024-04-25', '2024-04-25 20:30:00', 3, 3),
('2024-04-26', '2024-04-26 18:30:00', 4, 2);

-- User Table
INSERT INTO User (Name, Password, Email, Phone) VALUES
('John Doe', 'password123', 'john@example.com', '9876543210'),
('Jane Smith', 'password456', 'jane@example.com', '8765432109'),
('Robert Brown', 'password789', 'robert@example.com', '7654321098'); 

-- Booking Table
INSERT INTO Booking (NumberOfSeats, Timestamp, Status, UserId, ShowId) VALUES
(3, '2024-04-25 11:00:00', 'Confirmed', 1, 1),
(2, '2024-04-25 15:30:00', 'Pending', 2, 2),
(4, '2024-04-26 17:00:00', 'Cancelled', 3, 4); 


-- ShowSeat Table
INSERT INTO ShowSeat (Status, Price, ScreenSeatId, ShowId, BookingId) VALUES
('Booked', 250.00, 11, 1, 7),
('Available', 350.00, 12, 1, NULL),
('Booked', 450.00, 13, 2, 8),
('Booked', 300.00, 14, 4, 9);
 
 
-- Payment Table
INSERT INTO Payment (Amount, Timestamp, PaymentMethod, BookingId) VALUES
(750.00, '2024-04-25 11:10:00', 'CreditCard', 7),
(900.00, '2024-04-25 15:40:00', 'UPI', 8),
(1200.00, '2024-04-26 17:10:00', 'DebitCard', 9);




