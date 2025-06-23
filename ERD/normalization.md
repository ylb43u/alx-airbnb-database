
# Database Normalization: Airbnb Clone

## Objective
Ensure that the Airbnb database schema complies with the Third Normal Form (3NF) to eliminate redundancy, ensure data integrity, and optimize storage.

---

## What is Normalization?

Normalization is a database design process that organizes tables and their relationships to reduce redundancy and improve data integrity.

---

## Normal Forms Explained

### First Normal Form (1NF)
- Ensures that each column contains atomic values.
- Each record is unique.

### Second Normal Form (2NF)
- Meets 1NF.
- All non-key attributes are **fully functionally dependent** on the primary key.

### Third Normal Form (3NF)
- Meets 2NF.
- No transitive dependencies (non-key attributes must depend **only** on the primary key).

---

## Normalization Analysis of Our Schema

### 1. User Table
- ✅ 1NF: All fields are atomic (e.g., `first_name`, `role`, etc.).
- ✅ 2NF: Non-key attributes depend on `user_id`.
- ✅ 3NF: No transitive dependencies.

### 2. Property Table
- ✅ 1NF: Each field contains one value.
- ✅ 2NF: All attributes depend fully on `property_id`.
- ✅ 3NF: No derived or transitive dependencies (e.g., host data is separate in User table).

### 3. Booking Table
- ✅ 1NF: Atomic fields.
- ✅ 2NF: All fields depend on `booking_id`.
- ✅ 3NF: No transitive dependencies. User and Property details are referenced via foreign keys.

### 4. Payment Table
- ✅ 1NF: Atomic fields.
- ✅ 2NF: `amount`, `payment_method`, etc. depend on `payment_id`.
- ✅ 3NF: Payment references `booking_id`, so no redundant booking data is stored here.

### 5. Review Table
- ✅ 1NF: Atomic fields.
- ✅ 2NF: All fields relate to `review_id`.
- ✅ 3NF: Transitive dependency avoided by linking `user_id` and `property_id` to their respective tables.

### 6. Message Table
- ✅ 1NF: Each message is atomic.
- ✅ 2NF: All attributes depend on `message_id`.
- ✅ 3NF: No transitive dependencies — sender/recipient details are in User table.

---

## Final Verdict

✅ **The current schema adheres to 3NF**.  
- All tables contain only atomic values.  
- All non-key fields are functionally dependent on the entire primary key.  
- No transitive dependencies exist.  
- Relationships are handled via foreign keys to avoid duplication.

---

## Notes

- ENUMs (e.g., role, status, payment method) are kept in-line for simplicity. In a more flexible schema, these could be abstracted into lookup tables to improve adaptability.
