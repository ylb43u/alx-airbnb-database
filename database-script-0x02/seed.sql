INSERT INTO Users (user_id, first_name, last_name, email, phone_number, role)
VALUES 
  ('a1a1a1a1-a1a1-1111-aaaa-111111111111', 'Alice', 'Walker', 'alice@example.com', '1234567890', 'host'),
  ('b2b2b2b2-b2b2-2222-bbbb-222222222222', 'Bob', 'Smith', 'bob@example.com', '0987654321', 'guest'),
  ('c3c3c3c3-c3c3-3333-cccc-333333333333', 'Carol', 'Jones', 'carol@example.com', '5556667777', 'guest');

-- Properties
INSERT INTO Properties (property_id, host_id, name, description, location, pricepernight)
VALUES
  ('p1p1p1p1-0000-0000-aaaa-000000000000', 'a1a1a1a1-a1a1-1111-aaaa-111111111111',
   'Modern Loft in Casablanca', 'Spacious loft with sea view', 'Casablanca', 120.00),
  ('p2p2p2p2-1111-0000-bbbb-000000000000', 'a1a1a1a1-a1a1-1111-aaaa-111111111111',
   'Riad in Marrakech', 'Traditional riad with a private courtyard', 'Marrakech', 85.00);

-- Bookings
INSERT INTO Bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
  ('bk001-aaaa-0000-0000-1111aaaaaaaa', 'p1p1p1p1-0000-0000-aaaa-000000000000', 'b2b2b2b2-b2b2-2222-bbbb-222222222222',
   '2025-07-10', '2025-07-15', 600.00, 'confirmed'),
  ('bk002-bbbb-0000-0000-2222bbbbbbbb', 'p2p2p2p2-1111-0000-bbbb-000000000000', 'c3c3c3c3-c3c3-3333-cccc-333333333333',
   '2025-08-01', '2025-08-05', 340.00, 'pending');

-- Payments
INSERT INTO Payments (payment_id, booking_id, amount, payment_method)
VALUES
  ('pay001-aaaa-aaaa-aaaa-1111aaaaaaaa', 'bk001-aaaa-0000-0000-1111aaaaaaaa', 600.00, 'credit_card'),
  ('pay002-bbbb-bbbb-bbbb-2222bbbbbbbb', 'bk002-bbbb-0000-0000-2222bbbbbbbb', 340.00, 'paypal');

-- Reviews
INSERT INTO Reviews (review_id, property_id, user_id, rating, comment)
VALUES
  ('rev001-aaaa-aaaa-aaaa-aaaa11111111', 'p1p1p1p1-0000-0000-aaaa-000000000000', 'b2b2b2b2-b2b2-2222-bbbb-222222222222', 5, 'Amazing place! Highly recommend.'),
  ('rev002-bbbb-bbbb-bbbb-bbbb22222222', 'p2p2p2p2-1111-0000-bbbb-000000000000', 'c3c3c3c3-c3c3-3333-cccc-333333333333', 4, 'Great location, a bit noisy.');

-- Messages
INSERT INTO Messages (message_id, sender_id, recipient_id, message_body)
VALUES
  ('msg001-aaaa-aaaa-aaaa-aaaa11111111', 'b2b2b2b2-b2b2-2222-bbbb-222222222222', 'a1a1a1a1-a1a1-1111-aaaa-111111111111',
   'Hi Alice, is the loft available next weekend?'),
  ('msg002-bbbb-bbbb-bbbb-bbbb22222222', 'a1a1a1a1-a1a1-1111-aaaa-111111111111', 'b2b2b2b2-b2b2-2222-bbbb-222222222222',
   'Yes, it is! Feel free to book directly.');