SELECT p.*
FROM Property p
JOIN Review r ON p.property_id = r.property_id
GROUP BY p.property_id, p.name -- add all non-aggregated columns here
HAVING AVG(r.rating) > 4;


SELECT u.*
FROM User u
WHERE u.user_id IN (
    SELECT user_id
    FROM Booking
    GROUP BY user_id
    HAVING COUNT(*) > 3
);
