
-- Index on User table
CREATE INDEX idx_user_user_id ON User(user_id);

-- Index on Booking table
CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_property_id ON Booking(property_id);
CREATE INDEX idx_booking_start_date ON Booking(start_date);

-- Index on Property table
CREATE INDEX idx_property_property_id ON Property(property_id);

-- Optional: Index on Review ratings for filtering
CREATE INDEX idx_review_rating ON Review(rating);


EXPLAIN SELECT * FROM Booking WHERE user_id = 42;