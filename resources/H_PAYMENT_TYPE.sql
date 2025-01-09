CREATE TABLE payment_type (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    group_id INT DEFAULT NULL,
    FOREIGN KEY (group_id) REFERENCES `group`(id)
);
