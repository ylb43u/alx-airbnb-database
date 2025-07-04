# 📌 Index Optimization Guide

## 🎯 Objective

**Identify and create indexes to improve query performance** in the `User`, `Booking`, and `Property` tables.

---

## 📝 Instructions

### 1. Identify High-Usage Columns

Examine your SQL queries to find columns frequently used in:

- `WHERE` clauses
- `JOIN` conditions
- `ORDER BY` statements

Recommended high-usage columns:

| Table     | Column        | Usage                    |
|-----------|---------------|--------------------------|
| User      | `user_id`     | JOIN with Booking        |
| Booking   | `user_id`     | JOIN with User           |
| Booking   | `property_id` | JOIN with Property       |
| Booking   | `start_date`  | WHERE, ORDER BY          |
| Property  | `property_id` | JOIN with Booking, Review|
| Review    | `rating`      | WHERE, ORDER BY          |

---
