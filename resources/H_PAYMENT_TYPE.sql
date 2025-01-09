CREATE TABLE payment_type (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    group_id INT DEFAULT NULL,
    FOREIGN KEY (group_id) REFERENCES `group`(id)
);

-- Insertion des moyens de paiement
INSERT INTO payment_type (name, group_id) VALUES
-- Moyens de paiement communs sans groupe
('Cash', NULL),
('Credit Card', NULL),
('Bank Transfer', NULL),

-- Moyens de paiement spécifiques liés à des groupes
('Paylib', 1),
('PayPal', 1),
('Stripe', 2),
