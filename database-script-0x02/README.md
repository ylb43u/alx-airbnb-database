# Sample Data Population Script - Airbnb Clone

## 📁 Directory: `database-script-0x02/`
This directory contains SQL scripts to populate the Airbnb database with initial sample data for development and testing purposes.

---

## 📄 File: `seed.sql`

### 🎯 Objective
Insert realistic sample records into all key tables (`Users`, `Properties`, `Bookings`, `Payments`, `Reviews`, and `Messages`) to simulate real-world interactions in the Airbnb platform.

---

## 🧱 Tables Covered

- `Users`
- `Properties`
- `Bookings`
- `Payments`
- `Reviews`
- `Messages`

---

## 🛠️ How to Use

1. Ensure your schema (from `schema.sql`) is already created.
2. Run the seed file in your SQL client or terminal:

```bash
psql -U your_user -d your_database -f seed.sql
