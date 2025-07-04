-- performance.sql

EXPLAIN ANALYZE SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    u.user_id,
    u.name AS user_name,
    u.email AS user_email,
    p.property_id,
    p.name AS property_name,
    p.location,
    pay.payment_id,
    pay.amount,
    pay.payment_date
FROM Booking b
JOIN User u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
LEFT JOIN Payment pay ON b.booking_id = pay.booking_id
WHERE b.start_date >= '2024-01-01'
  AND b.end_date <= '2024-12-31'
  AND u.active = true;


