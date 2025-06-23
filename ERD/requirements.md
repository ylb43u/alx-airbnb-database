# Airbnb Clone - Database Requirements

## Objective
Define the structure of the relational database used in the Airbnb clone system. This document outlines the entities, attributes, and relationships that serve as the foundation for the Entity-Relationship Diagram (ERD).

---

## Entities and Attributes

### 🧑 User

| Attribute       | Type      | Constraints                                    |
|----------------|-----------|------------------------------------------------|
| user_id        | UUID      | Primary Key, Indexed                           |
| first_name     | VARCHAR   | NOT NULL                                       |
| last_name      | VARCHAR   | NOT NULL                                       |
| email          | VARCHAR   | UNIQUE, NOT NULL                               |
| password_hash  | VARCHAR   | NOT NULL                                       |
| phone_number   | VARCHAR   | NULL                                           |
| role           | ENUM      | (guest, host, admin), NOT NULL                 |
| created_at     | TIMESTAMP | DEFAULT CURRENT_TIMESTAMP                      |

---

### 🏡 Property

| Attribute     | Type      | Constraints                                    |
|--------------|-----------|------------------------------------------------|
| property_id  | UUID      | Primary Key, Indexed                           |
| host_id      | UUID      | Foreign Key → User(user_id)                    |
| name         | VARCHAR   | NOT NULL                                       |
| description  | TEXT      | NOT NULL                                       |
| location     | VARCHAR   | NOT NULL                                       |
| pricepernight| DECIMAL   | NOT NULL                                       |
| created_at   | TIMESTAMP | DEFAULT CURRENT_TIMESTAMP                      |
| updated_at   | TIMESTAMP | ON UPDATE CURRENT_TIMESTAMP                    |

---

### 📅 Booking

| Attribute     | Type      | Constraints                                    |
|--------------|-----------|------------------------------------------------|
| booking_id   | UUID      | Primary Key, Indexed                           |
| property_id  | UUID      | Foreign Key → Property(property_id)            |
| user_id      | UUID      | Foreign Key → User(user_id)                    |
| start_date   | DATE      | NOT NULL                                       |
| end_date     | DATE      | NOT NULL                                       |
| total_price  | DECIMAL   | NOT NULL                                       |
| status       | ENUM      | (pending, confirmed, canceled), NOT NULL       |
| created_at   | TIMESTAMP | DEFAULT CURRENT_TIMESTAMP                      |

---

### 💳 Payment

| Attribute      | Type      | Constraints                                    |
|---------------|-----------|------------------------------------------------|
| payment_id     | UUID      | Primary Key, Indexed                           |
| booking_id     | UUID      | Foreign Key → Booking(booking_id)             |
| amount         | DECIMAL   | NOT NULL                                       |
| payment_date   | TIMESTAMP | DEFAULT CURRENT_TIMESTAMP                      |
| payment_method | ENUM      | (credit_card, paypal, stripe), NOT NULL        |

---

### ⭐ Review

| Attribute   | Type      | Constraints                                    |
|------------|-----------|------------------------------------------------|
| review_id  | UUID      | Primary Key, Indexed                           |
| property_id| UUID      | Foreign Key → Property(property_id)            |
| user_id    | UUID      | Foreign Key → User(user_id)                    |
| rating     | INTEGER   | NOT NULL, CHECK: rating BETWEEN 1 AND 5        |
| comment    | TEXT      | NOT NULL                                       |
| created_at | TIMESTAMP | DEFAULT CURRENT_TIMESTAMP                      |

---

### 💬 Message

| Attribute     | Type      | Constraints                                    |
|--------------|-----------|------------------------------------------------|
| message_id   | UUID      | Primary Key, Indexed                           |
| sender_id    | UUID      | Foreign Key → User(user_id)                    |
| recipient_id | UUID      | Foreign Key → User(user_id)                    |
| message_body | TEXT      | NOT NULL                                       |
| sent_at      | TIMESTAMP | DEFAULT CURRENT_TIMESTAMP                      |

---

## Relationships

- A **User** can be a **guest** or a **host**.
- A **Host (User)** can own multiple **Properties**.
- A **Guest (User)** can make multiple **Bookings**.
- A **Booking** is linked to one **Property**.
- A **Booking** generates a **Payment**.
- A **User** can leave **Reviews** for **Properties**.
- Users can send **Messages** to each other.

---

## Constraints

- **Unique**: email in User table.
- **Foreign Keys**: 
  - host_id in Property → User
  - property_id in Booking → Property
  - user_id in Booking → User
  - booking_id in Payment → Booking
  - property_id and user_id in Review → Property and User
  - sender_id and recipient_id in Message → User
- **Check Constraint**: rating between 1 and 5.

---

## Indexing

- **Primary Keys**: Automatically indexed.
- **Additional Indexes**:
  - email (User)
  - property_id (Property, Booking)
  - booking_id (Booking, Payment)

---

## ER Diagram Tool

- Tool: [Draw.io](https://drive.google.com/file/d/1-iZeYLSVGNO3jaWzaWQgWVXwUyMrnw1m/view?usp=sharing)

## Notes

- All timestamps are in UTC.
- ENUM values ensure data consistency for roles, booking status, and payment method.
