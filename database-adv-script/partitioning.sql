-- partitioning.sql

-- 1. Create the main partitioned table (no data here)
CREATE TABLE Booking (
    booking_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status VARCHAR(20),
    -- other columns...
) PARTITION BY RANGE (start_date);

-- 2. Create partitions for specific year ranges

CREATE TABLE Booking_2023 PARTITION OF Booking
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE Booking_2024 PARTITION OF Booking
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

CREATE TABLE Booking_2025 PARTITION OF Booking
    FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');

-- 3. (Optional) Indexes on partitions

CREATE INDEX idx_booking_2023_start_date ON Booking_2023(start_date);
CREATE INDEX idx_booking_2024_start_date ON Booking_2024(start_date);
CREATE INDEX idx_booking_2025_start_date ON Booking_2025(start_date);


EXPLAIN ANALYZE
SELECT *
FROM Booking
WHERE start_date >= '2024-01-01' AND start_date < '2025-01-01';
