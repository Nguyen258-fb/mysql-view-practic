USE classicmodels;

-- 1. Tạo View customer_views để lấy các cột customerNumber, customerName, phone từ bảng customers
CREATE VIEW customer_views AS
SELECT customerNumber, customerName, phone
FROM customers;

-- Truy vấn dữ liệu từ bảng ảo customer_views vừa tạo
SELECT * FROM customer_views;


-- 2. Cập nhật View (sử dụng CREATE OR REPLACE VIEW với điều kiện lọc city = 'Nantes')
CREATE OR REPLACE VIEW customer_views AS
SELECT customerNumber, customerName, contactFirstName, contactLastName, phone
FROM customers
WHERE city = 'Nantes';

-- Truy vấn kiểm tra lại dữ liệu sau khi cập nhật View
SELECT * FROM customer_views;


-- 3. Xóa View khi không sử dụng đến nữa
DROP VIEW customer_views;