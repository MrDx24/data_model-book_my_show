-- Create Queries for all entites: 

-----------------------------------------------------------------------------------------------------------------

-- Creating Movie table
CREATE TABLE Movie (
    MovieId INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(256) NOT NULL,
    Description VARCHAR(512),
    Duration TIME NOT NULL,
    Language VARCHAR(16),
    ReleaseDate DATETIME,
    Country VARCHAR(64),
    Genre VARCHAR(20)
);

-- Creating City table
CREATE TABLE City (
    CityId INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(64) NOT NULL,
    State VARCHAR(64),
    Zipcode VARCHAR(16)
);

-- Creating Cinema table
CREATE TABLE Cinema (
    CinemaId INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(64) NOT NULL,
    NumberOfScreens INT,
    CityId INT,
    FOREIGN KEY (CityId) REFERENCES City(CityId) ON DELETE CASCADE
);

-- Creating Screen table
CREATE TABLE Screen (
    ScreenId INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(64) NOT NULL,
    TotalSeats INT NOT NULL,
    CinemaId INT,
    FOREIGN KEY (CinemaId) REFERENCES Cinema(CinemaId) ON DELETE CASCADE
);

-- Creating ScreenSeat table
CREATE TABLE ScreenSeat (
    ScreenSeatId INT PRIMARY KEY AUTO_INCREMENT,
    SeatType ENUM('Regular', 'Premium', 'VIP') NOT NULL,
    ScreenId INT,
    FOREIGN KEY (ScreenId) REFERENCES Screen(ScreenId) ON DELETE CASCADE
);

-- Creating Show table
CREATE TABLE Shows (
    ShowId INT PRIMARY KEY AUTO_INCREMENT,
    Date DATETIME NOT NULL,
    StartTime DATETIME NOT NULL,
    ScreenId INT,
    MovieId INT,
    FOREIGN KEY (ScreenId) REFERENCES Screen(ScreenId) ON DELETE CASCADE,
    FOREIGN KEY (MovieId) REFERENCES Movie(MovieId) ON DELETE CASCADE
);

-- Creating User table
CREATE TABLE User (
    UserId INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(64) NOT NULL,
    Password VARCHAR(64) NOT NULL,
    Email VARCHAR(64) NOT NULL,
    Phone VARCHAR(16)
);

-- Creating Booking table
CREATE TABLE Booking (
    BookingId INT PRIMARY KEY AUTO_INCREMENT,
    NumberOfSeats INT NOT NULL,
    Timestamp DATETIME NOT NULL,
    Status ENUM('Pending', 'Confirmed', 'Cancelled') NOT NULL,
    UserId INT,
    ShowId INT,
    FOREIGN KEY (UserId) REFERENCES User(UserId) ON DELETE CASCADE,
    FOREIGN KEY (ShowId) REFERENCES Shows(ShowId) ON DELETE CASCADE
);

-- Creating ShowSeat table
CREATE TABLE ShowSeat (
    ShowSeatId INT PRIMARY KEY AUTO_INCREMENT,
    Status ENUM('Available', 'Booked') NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    ScreenSeatId INT,
    ShowId INT,
    BookingId INT,
    FOREIGN KEY (ScreenSeatId) REFERENCES ScreenSeat(ScreenSeatId) ON DELETE CASCADE,
    FOREIGN KEY (ShowId) REFERENCES Shows(ShowId) ON DELETE CASCADE,
    FOREIGN KEY (BookingId) REFERENCES Booking(BookingId) ON DELETE CASCADE
);

-- Creating Payment table
CREATE TABLE Payment (
    PaymentId INT PRIMARY KEY AUTO_INCREMENT,
    Amount DECIMAL(10,2) NOT NULL,
    Timestamp DATETIME NOT NULL,
    PaymentMethod ENUM('CreditCard', 'DebitCard', 'NetBanking', 'UPI', 'Wallet') NOT NULL,
    BookingId INT,
    FOREIGN KEY (BookingId) REFERENCES Booking(BookingId) ON DELETE CASCADE
);
