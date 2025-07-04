SELECT 
    Booking.*,
    User.*
    
FROM Booking
INNER JOIN User ON Booking.user_id = users.user_id;

SELECT p.*,r.* FROM Property p LEFT JOIN Review r ON p.property_id = r.property_id;

SELECT u.*, b.* FROM User u FULL OUTER JOIN Booking b ON u.user_id = b.user_id;
