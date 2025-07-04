SELECT * 
FROM Review 
WHERE rating >= (SELECT AVG(rating) FROM Review);

SELECT u.*
FROM User u
WHERE u.user_id IN (
    SELECT user_id
    FROM Booking
    GROUP BY user_id
    HAVING COUNT(*) > 3
);
