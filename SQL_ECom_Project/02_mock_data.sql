use ecommerce_logistics;

INSERT INTO customers (customer_id, first_name, last_name, email) VALUES
(1, 'Aarav', 'Sharma', 'aarav.sharma@email.com'),
(2, 'Diya', 'Patel', 'diya.patel@email.com'),
(3, 'Vivaan', 'Nair', 'vivaan.nair@email.com'),
(4, 'Ananya', 'Iyer', 'ananya.iyer@email.com'),
(5, 'Kabir', 'Singh', 'kabir.singh@email.com'),
(6, 'Rohan', 'Verma', 'rohan.verma@email.com'),
(7, 'Isha', 'Gupta', 'isha.gupta@email.com'),
(8, 'Arjun', 'Rao', 'arjun.rao@email.com'),
(9, 'Meera', 'Joshi', 'meera.joshi@email.com'),
(10, 'Aditya', 'Mishra', 'aditya.mishra@email.com'),
(11, 'Sanya', 'Reddy', 'sanya.reddy@email.com'),
(12, 'Rahul', 'Kumar', 'rahul.kumar@email.com'),
(13, 'Neha', 'Sharma', 'neha.sharma@email.com'),
(14, 'Dev', 'Choudhury', 'dev.choudhury@email.com'),
(15, 'Tara', 'Sen', 'tara.sen@email.com'),
(16, 'Ishaan', 'Kapoor', 'ishaan.kapoor@email.com'),
(17, 'Kriti', 'Malhotra', 'kriti.malhotra@email.com'),
(18, 'Reyansh', 'Das', 'reyansh.das@email.com'),
(19, 'Zoya', 'Khan', 'zoya.khan@email.com'),
(20, 'Aaryan', 'Bose', 'aaryan.bose@email.com');

INSERT INTO products (product_id, name, category, price, stock_quantity) VALUES
(1, 'Wireless Mouse', 'Electronics', 1200.00, 45),
(2, 'Mechanical Keyboard', 'Electronics', 4500.00, 12),
(3, 'Ergonomic Office Chair', 'Furniture', 12500.00, 4),
(4, 'Noise Cancelling Headphones', 'Electronics', 8900.00, 15),
(5, 'Waterproof Backpack', 'Accessories', 2300.00, 25),
(6, 'Stainless Steel Water Bottle', 'Accessories', 950.00, 80),
(7, 'Full HD Monitor', 'Electronics', 15400.00, 8),
(8, 'LED Desk Lamp', 'Furniture', 1850.00, 30),
(9, 'Leather Wallet', 'Accessories', 1499.00, 50),
(10, 'Bluetooth Speaker', 'Electronics', 3200.00, 22);

INSERT INTO orders (order_id, customer_id, order_date, status) VALUES
(101, 1, '2026-09-01', 'Shipped'), (102, 2, '2026-09-02', 'Shipped'),
(103, 3, '2026-09-03', 'Pending'), (104, 4, '2026-09-04', 'Shipped'),
(105, 5, '2026-09-05', 'Cancelled'), (106, 6, '2026-09-06', 'Shipped'),
(107, 7, '2026-09-07', 'Shipped'), (108, 8, '2026-09-08', 'Pending'),
(109, 9, '2026-09-09', 'Shipped'), (110, 10, '2026-09-10', 'Shipped'),
(111, 11, '2026-09-11', 'Cancelled'), (112, 12, '2026-09-12', 'Shipped'),
(113, 13, '2026-09-13', 'Shipped'), (114, 14, '2026-09-14', 'Pending'),
(115, 15, '2026-09-15', 'Shipped'), (116, 16, '2026-09-16', 'Shipped'),
(117, 17, '2026-09-17', 'Cancelled'), (118, 18, '2026-09-18', 'Shipped'),
(119, 19, '2026-09-19', 'Shipped'), (120, 20, '2026-09-20', 'Pending'),
(121, 1, '2026-09-21', 'Shipped'), (122, 2, '2026-09-22', 'Shipped'),
(123, 3, '2026-09-23', 'Shipped'), (124, 4, '2026-09-24', 'Shipped'),
(125, 5, '2026-09-25', 'Shipped'), (126, 6, '2026-09-26', 'Cancelled'),
(127, 7, '2026-09-27', 'Shipped'), (128, 8, '2026-09-28', 'Shipped'),
(129, 9, '2026-09-29', 'Shipped'), (130, 10, '2026-09-30', 'Shipped');

INSERT INTO order_items (order_id, product_id, quantity, price_at_purchase) VALUES
(101, 1, 1, 1200.00), (101, 5, 1, 2300.00), (102, 3, 1, 12500.00),
(103, 2, 1, 4500.00), (104, 6, 2, 950.00),  (105, 4, 1, 8900.00),
(106, 7, 1, 15400.00), (106, 1, 1, 1200.00), (107, 8, 2, 1850.00),
(108, 9, 1, 1499.00), (109, 10, 1, 3200.00), (110, 5, 2, 2300.00),
(111, 2, 1, 4500.00), (112, 3, 1, 12500.00), (112, 8, 1, 1850.00),
(113, 4, 1, 8900.00), (114, 6, 1, 950.00),  (115, 1, 2, 1200.00),
(116, 7, 1, 15400.00), (117, 9, 3, 1499.00), (118, 10, 2, 3200.00),
(119, 2, 1, 4500.00), (119, 1, 1, 1200.00), (120, 5, 1, 2300.00),
(121, 6, 4, 950.00),  (121, 8, 1, 1850.00), (122, 3, 1, 12500.00),
(123, 4, 2, 8900.00), (124, 7, 1, 15400.00), (125, 9, 1, 1499.00),
(125, 10, 1, 3200.00), (126, 1, 1, 1200.00), (127, 2, 1, 4500.00),
(127, 5, 1, 2300.00), (128, 6, 2, 950.00),  (128, 8, 2, 1850.00),
(129, 3, 1, 12500.00), (129, 7, 1, 15400.00), (130, 4, 1, 8900.00),
(130, 1, 2, 1200.00);

INSERT INTO payments (order_id, payment_method, amount_paid) VALUES
(101, 'UPI', 3500.00), (102, 'Credit Card', 12500.00), (103, 'Net Banking', 4500.00),
(104, 'UPI', 1900.00), (106, 'Credit Card', 16600.00), (107, 'UPI', 3700.00),
(108, 'COD', 1499.00), (109, 'Debit Card', 3200.00), (110, 'UPI', 4600.00),
(112, 'Credit Card', 14350.00), (113, 'Net Banking', 8900.00), (114, 'COD', 950.00),
(115, 'UPI', 2400.00), (116, 'Credit Card', 15400.00), (118, 'UPI', 6400.00),
(119, 'Debit Card', 5700.00), (120, 'Net Banking', 2300.00), (121, 'UPI', 5650.00),
(122, 'Credit Card', 12500.00), (123, 'UPI', 17800.00), (124, 'Debit Card', 15400.00),
(125, 'Credit Card', 4699.00), (127, 'UPI', 6800.00), (128, 'Net Banking', 5600.00),
(129, 'Credit Card', 27900.00), (130, 'UPI', 11300.00);