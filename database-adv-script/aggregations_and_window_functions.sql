SELECT u.user_id, u.name, COUNT(b.booking_id) AS total_bookings
FROM User u
JOIN Booking b ON u.user_id = b.user_id
GROUP BY u.user_id, u.name;

SELECT 
    p.property_id,
    p.name AS property_name,
    COUNT(b.booking_id) AS total_bookings,
    
    -- Returns the same rank for ties (e.g., two properties with same booking count get same rank)
    RANK() OVER (ORDER BY COUNT(b.booking_id) DESC) AS rank_with_ties,

    -- Returns a unique row number even for tied values (no duplicates in rank)
    ROW_NUMBER() OVER (ORDER BY COUNT(b.booking_id) DESC) AS strict_row_number
FROM Property p
LEFT JOIN Booking b ON p.property_id = b.property_id
GROUP BY p.property_id, p.name;
