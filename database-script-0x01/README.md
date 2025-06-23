# Database Schema - Airbnb Clone

## 📁 Directory: `database-script-0x01/`
This directory contains the initial SQL script used to define the relational schema for the Airbnb clone database.

---

## 📄 File: `schema.sql`

### 🎯 Objective
To create all necessary tables, relationships, and constraints to support the core features of the Airbnb platform, including user management, property listings, bookings, payments, reviews, and messaging.

---

## 🏗️ Schema Overview

### Tables Included:

- **`users`**: Stores user information (guest, host, admin).
- **`properties`**: Describes properties listed by hosts.
- **`bookings`**: Contains booking records made by guests.
- **`payments`**: Tracks payments for bookings.
- **`reviews`**: Stores guest reviews for properties.
- **`messages`**: Handles internal user-to-user messaging.

---

## 🔐 Key Features

- **UUIDs** used as primary keys for consistency and scalability.
- **Foreign Key Constraints** ensure referential integrity between related tables.
- **ENUMs** used for limited-choice fields like user roles, booking status, and payment methods.
- **Timestamps** for creation and update tracking (`created_at`, `updated_at`).
- **Data validation** using `CHECK` constraints (e.g., `rating` between 1 and 5).

---

## 🚀 How to Use

1. Ensure your PostgreSQL or MySQL server is running.
2. Connect to your database:
   ```bash
   psql -U your_user -d your_database
