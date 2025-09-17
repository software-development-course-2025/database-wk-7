# Week 7 – Database Design and Normalization

## 🧾 Overview

This project applies First and Second Normal Forms (1NF & 2NF) to convert unnormalized datasets into well‑structured SQL tables.  
The goal is to eliminate redundancy, enforce data consistency, and implement a clean relational schema using SQL.

---

## 🎯 Objectives

- Apply **1NF** by splitting multi-valued attributes into separate rows.
- Normalize to **2NF** by removing partial dependencies and organizing data into logical tables.
- Define **primary keys** and **foreign key constraints** to ensure referential integrity.
- Make the script safely re-executable using `DROP TABLE IF EXISTS`.
- Document all steps with in-line SQL comments for clarity.

---

## ▶️ How to Run

1. Open your SQL environment (MySQL Workbench, DBeaver, CLI, etc.).
2. Connect to your local database (e.g., `testdb` or `classicmodels`).
3. Execute the statements from `answers.sql` in order.
4. Verify that the following tables are created:
    - `ProductDetail_1NF`
    - `CustomerOrders`
    - `OrderItems`
5. Query the tables to verify normalized data and relationships.

---

## 📁 Files

- `answers.sql` — Full SQL script implementing 1NF and 2NF transformations.
- `README.md` — This file, describing the structure and purpose of the project.

---

## 👤 Author

Developed by **Augusto Mate** — Student at **Power Learn Project Academy (PLP)**  
Week 7 assignment for the *Database Design & Programming with SQL*  
GitHub: [github.com/Augusto047](https://github.com/Augusto047)

---

## 🪪 License

MIT License © 2025 Software Development Course 2025
