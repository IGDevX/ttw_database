CREATE TABLE payment_type (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    group_id INT DEFAULT NULL,
    FOREIGN KEY (group_id) REFERENCES `group`(id)
);

INSERT INTO payment_type (name, group_id) VALUES
('Cash', NULL),
('Credit Card', NULL),
('Bank Transfer', NULL),
('Paylib', 1),
('PayPal', 1),
('Stripe', 2)
