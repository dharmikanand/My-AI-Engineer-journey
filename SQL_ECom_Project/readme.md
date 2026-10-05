# E-Commerce & Order Management System (MySQL)

This project is a core milestone in my **Engineer Journey**, focusing on backend relational database design and business data analytics using **MySQL** and **MySQL Workbench**. 

Instead of simple standalone tables, this system models a real-world enterprise infrastructure—handling customer records, stock controls, order line-items via junction tables, and payment logging while enforcing strict referential integrity.

---

## 🏗️ Database Architecture & Schema

The database consists of **5 relational tables** optimized to Third Normal Form (3NF) to prevent data redundancy and ensure historical tracking accuracy:

*   **`customers`**: Core user profiles tracking sign-up timestamps.
*   **`products`**: Catalog system with automated price logs and stock controls.
*   **`orders`**: Transaction status records tracking full lifecycle phases (`Pending`, `Shipped`, `Cancelled`).
*   **`order_items`**: A granular **Junction Table** managing many-to-many relationships between orders and products, preserving the historical `price_at_purchase`.
*   **`payments`**: Financial ledger tracking payment methods (UPI, Cards, COD) and total amounts.

### 🛡️ Data Integrity Guards (`CASCADE` vs `RESTRICT`)
*   **`ON DELETE CASCADE`** is implemented on order connections. If a high-level order is purged, all related line-items drop automatically to prevent orphaned logs.
*   **`ON DELETE RESTRICT`** protects the product catalog. A product cannot be accidentally deleted if historical customer orders are still linked to it, protecting financial reports.

---

## 📂 Project Organization

```text
my-engineer-journey/
└── sql_ecom_project/
    ├── 01_schema_design.sql       # Database architecture, DDL & constraints
    ├── 02_mock_data.sql           # 100-row testing dataset (Idempotent script)
    ├── 03_analytical_queries.sql  # Advanced business intelligence scripts
    └── README.md                  # Project documentation (You are here)
```

---

## 📈 Advanced Business Intelligence Queries

The analytics layer solves critical operational issues using complex `JOIN` networks, logical conditionals, tracking edge cases, and post-aggregation filtering (`HAVING`).

### Highlight: Revenue Audit and Outstanding Balance Report
This query acts as an automated financial ledger, alerting the accounting team if a customer has an unpaid balance on an active shipment while handling missing logs cleanly via `IFNULL`.

```sql
SELECT 
    o.order_id,
    c.email,
    o.status AS order_status,
    SUM(oi.quantity * oi.price_at_purchase) AS total_bill,
    IFNULL(p.amount_paid, 0) AS amount_paid,
    SUM(oi.quantity * oi.price_at_purchase) - IFNULL(p.amount_paid, 0) AS remaining_balance
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
LEFT JOIN payments p ON o.order_id = p.order_id
GROUP BY o.order_id, c.email, o.status, p.amount_paid
HAVING remaining_balance > 0 AND o.status != 'Cancelled';
```

---

## 🛠️ Tech Stack & Instructions

*   **Engine:** MySQL Server 8.0+
*   **UI Workspace:** MySQL Workbench

### How to Run Locally
1. Run `01_schema_design.sql` to initialize the database structures.
2. Execute `02_mock_data.sql` to cleanly populate the database with the 100-row production test framework.
3. Open `03_analytical_queries.sql` and run individual scripts to explore live analytics generation grids.
