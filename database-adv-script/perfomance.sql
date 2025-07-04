-- performance.sql

SELECT 
    b.*,
    u.*,
    p.*,
    pay.*
FROM Booking b
JOIN User u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
LEFT JOIN Payment pay ON b.booking_id = pay.booking_id;


