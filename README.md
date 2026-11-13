# 🗄️ MySQL Practice Repository

This repository contains my structured, hands-on SQL practice using **MySQL** and **MySQL Workbench**. The scripts progress step-by-step from creating database schemas and enforcing constraints to writing multi-table joins, aggregations, and subqueries across real-world scenarios (School, Company, E-Commerce, Banking, and Food Delivery).

---

## 🧠 SQL Concepts Covered

### 1. DDL (Data Definition Language)
Defining, modifying, and removing database structures:
* **Database & Table Creation:** `CREATE DATABASE`, `USE`, `CREATE TABLE`, `DROP TABLE`
* **Schema Modification:** `ALTER TABLE` with `ADD`, `MODIFY`, `DROP COLUMN`, and `RENAME COLUMN`
* **Metadata Inspection:** `DESC` / `DESCRIBE` to inspect table structures

### 2. Data Integrity & Constraints
Enforcing rules on table columns during creation (`04_bank_dml_and_constraints.sql`, `05_joins_groupby_subqueries.sql`):
* **Key Constraints:** `PRIMARY KEY`, `FOREIGN KEY ... REFERENCES`
* **Validation & Defaults:** `UNIQUE`, `NOT NULL`, `CHECK` (e.g., `fee > 2000`, `Balance >= 0`), and `DEFAULT` values

### 3. DML (Data Manipulation Language)
Adding, modifying, and deleting records inside tables:
* **Inserting Data:** Single-row and bulk multi-row `INSERT INTO ... VALUES`
* **Updating & Deleting:** Conditional updates with `UPDATE ... SET ... WHERE` and record removal with `DELETE FROM ... WHERE`
* **Session Controls:** Toggling `SET SQL_SAFE_UPDATES = 0` for bulk conditional updates/deletes in MySQL Workbench

### 4. DQL (Data Query Language)
Retrieving, filtering, grouping, and analyzing data using `SELECT`:
* **Filtering & Operators:** `WHERE` with comparison operators (`=`, `>`, `>=`, `<>`), logical `AND`, list matching (`IN`, `NOT IN`), range filtering (`BETWEEN`, `NOT BETWEEN`), and wildcard pattern matching (`LIKE` with `%`)
* **Sorting & Pagination:** `ORDER BY ... ASC / DESC`, `LIMIT`, and `OFFSET`
* **Aggregate Functions:** `SUM()`, `AVG()`, `MIN()`, `MAX()`, and `COUNT()`
* **Grouping:** Categorizing summary data with `GROUP BY` and filtering groups with `HAVING`
* **Relational Joins:** Combining data across related tables using `INNER JOIN ... ON`
* **Subqueries:** Writing nested queries inside `WHERE` clauses using scalar (`>`) and multi-row (`IN`) operators

---

## 📂 Repository Structure

| File Name | Database | Domain | Key SQL Topics Practiced |
| :--- | :--- | :--- | :--- |
| `01_school_ddl_basics.sql` | `SCHOOL` | Education | `CREATE`, `ALTER` (`ADD`, `MODIFY`, `DROP`, `RENAME`), `DESC` |
| `02_company_ddl_dml_practice.sql` | `COMPANY` | HR / Corporate | `DROP TABLE`, `INSERT`, `SELECT`, `AS` aliases, `WHERE`, `ORDER BY` |
| `03_product_filtering_aggregates_dml.sql` | `online` | E-Commerce | Bulk `INSERT`, `IN`, `BETWEEN`, `LIKE`, `SUM`, `AVG`, `MIN`, `MAX`, `COUNT`, `UPDATE`, `DELETE` |
| `04_bank_dml_and_constraints.sql` | `bank` | Banking | Conditional `UPDATE`/`DELETE`, `PRIMARY KEY`, `UNIQUE`, `NOT NULL`, `CHECK`, `DEFAULT` |
| `05_joins_groupby_subqueries.sql` | `bank` | Banking & Payroll | `FOREIGN KEY`, `INNER JOIN`, `GROUP BY`, `HAVING`, `LIMIT`, `OFFSET`, Subqueries |
| `06_fooddb_inner_joins_practice.sql` | `FoodDB` | Food Delivery | Multi-table `INNER JOIN`, date filtering, range and pattern queries |

---

## 🛠️ Tech Stack
* **Database:** MySQL
* **Client / IDE:** MySQL Workbench

---

## 🚀 How to Run These Scripts
1. Clone or download this repository to your local machine.
2. Open **MySQL Workbench** and connect to your local MySQL server.
3. Open any `.sql` file (`File > Open SQL Script...`).
4. Highlight the queries you want to run and click the **Execute (⚡)** icon.

