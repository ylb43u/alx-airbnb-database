# 🎯 Objective

Implement table partitioning to optimize queries on large datasets.

---

## 📝 Instructions

1. **Implement Partitioning**

   Assume the `Booking` table is large and query performance is slow.  
   Partition the `Booking` table based on the `start_date` column (e.g., by year or month).  
   Save the partitioning SQL commands in a file named `partitioning.sql`.

2. **Test Performance**

   Run queries on the partitioned table, such as fetching bookings by specific date ranges.  
   Measure and compare query performance before and after partitioning using `EXPLAIN` or `ANALYZE`.

3. **Write a Brief Report**

   Summarize the improvements observed in query performance, including any reduction in execution time or resource usage.

---

## 📂 Deliverables

- `partitioning.sql` containing all SQL commands for creating the partitioned `Booking` table.  
- A brief report documenting the performance improvements observed.
