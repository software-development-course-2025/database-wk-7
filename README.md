# Week 7 – Database Design and Normalization

## 🧾 Overview

This project demonstrates the application of **First Normal Form (1NF)** and **Second Normal Form (2NF)** to convert unnormalized data into structured, efficient relational tables using SQL.  
The main goals are to eliminate redundancy, improve data consistency, and enforce referential integrity through relational modeling.

---

## 🎯 Objectives

- Apply **1NF** by splitting multi-valued attributes into atomic rows  
- Apply **2NF** by removing partial dependencies from composite keys  
- Use SQL to define normalized tables with **primary** and **foreign key** constraints  
- Ensure repeatable execution using `DROP TABLE IF EXISTS`

---

## ▶️ How to Run

1. Open your MySQL environment (Workbench, DBeaver, or CLI)  
2. Connect to your target database (e.g., `testdb`)  
3. Execute the SQL statements from `answers.sql`  
4. Confirm creation of the following tables:
   - `ProductDetail_1NF`
   - `CustomerOrders`
   - `OrderItems`  
5. Run queries to inspect normalized data and verify relationships

---

## 📁 Files

- `answers.sql` — Fully commented SQL script with normalization steps  
- `README.md` — Project documentation

---

## 👤 Author

Developed by **Augusto Mate** — Student at **Power Learn Project Academy (PLP)**  
Week 7 assignment for the *Database Design & Programming with SQL*  
GitHub: [github.com/Augusto047](https://github.com/Augusto047)

---

## 🪪 License

MIT License © 2025 Software Development Course 2025
