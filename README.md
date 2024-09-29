# Book My Show Data Model

This project outlines a database schema for a movie ticket booking system, similar to Book My Show. It includes details about cinemas, movies, users, bookings, and payments, with relationships between entities.

## Entities and Attributes

1. **City**
   - **Attributes:** `CityId`, `Name`, `State`, `Zipcode`
   - **Description:** Stores information about cities where cinemas are located.

2. **Cinema**
   - **Attributes:** `CinemaId`, `Name`, `NumberOfScreens`, `CityId`
   - **Description:** Holds details about individual cinemas and the city they belong to.

3. **Screen**
   - **Attributes:** `ScreenId`, `Name`, `TotalSeats`, `CinemaId`
   - **Description:** Represents each screen inside a cinema, along with the total seating capacity.

4. **ScreenSeat**
   - **Attributes:** `ScreenSeatId`, `SeatType`, `ScreenId`
   - **Description:** Contains information about the types of seats (Regular, Premium, VIP) available in a particular screen.

5. **Movie**
   - **Attributes:** `MovieId`, `Title`, `Description`, `Duration`, `Language`, `ReleaseDate`, `Country`, `Genre`
   - **Description:** Stores movie details such as title, description, language, genre, and duration.

6. **Shows**
   - **Attributes:** `ShowId`, `Date`, `StartTime`, `ScreenId`, `MovieId`
   - **Description:** Holds information about individual movie showings, including the date, time, screen, and movie.

7. **User**
   - **Attributes:** `UserId`, `Name`, `Password`, `Email`, `Phone`
   - **Description:** Stores user account details such as name, email, and phone number.

8. **Booking**
   - **Attributes:** `BookingId`, `NumberOfSeats`, `Timestamp`, `Status`, `UserId`, `ShowId`
   - **Description:** Stores information about user bookings for movie shows, including seat count and booking status.

9. **ShowSeat**
   - **Attributes:** `ShowSeatId`, `Status`, `Price`, `ScreenSeatId`, `ShowId`, `BookingId`
   - **Description:** Represents seat availability for a particular show, including pricing and booking details.

10. **Payment**
    - **Attributes:** `PaymentId`, `Amount`, `Timestamp`, `PaymentMethod`, `BookingId`
    - **Description:** Contains payment details for each booking, including the amount and method of payment (CreditCard, UPI, etc.).

## Schema Overview

The database schema ensures efficient storage and management of movie ticket bookings, show timings, and payments while maintaining the necessary relationships between entities.

## Getting Started

To set up this database, use the SQL scripts in this repository. These scripts will help create the tables and insert sample data for testing.


