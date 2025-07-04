# 🛠️ Performance Monitoring and Optimization

---

## Instructions

1. **Monitor Query Performance**  
   Use SQL commands like `SHOW PROFILE` or `EXPLAIN ANALYZE` to analyze the performance of frequently used queries.  
   - Identify how queries execute.  
   - Measure execution time, scan types, and resource usage.

2. **Identify Bottlenecks**  
   - Look for slow operations such as full table scans or costly joins.  
   - Detect missing indexes or inefficient schema designs that impact performance.

3. **Implement Changes**  
   - Add appropriate indexes on columns used in `WHERE`, `JOIN`, and `ORDER BY` clauses.  
   - Adjust schema if needed (e.g., normalization, partitioning).  
   - Refactor queries to be more efficient.

4. **Report Improvements**  
   - Document the changes made.  
   - Compare query performance before and after using `EXPLAIN ANALYZE` or other profiling tools.  
   - Summarize the impact on execution time and resource utilization.

---

## Deliverables

- Performance analysis screenshots or query plan outputs.  
- SQL commands used for optimization (e.g., `CREATE INDEX`).  
- A summary report of improvements observed.
