CREATE TABLE role (
id INT AUTO_INCREMENT PRIMARY KEY,
label VARCHAR(100) NOT NULL UNIQUE
);

-- Insertion des donnees de test
INSERT INTO role (id, label) VALUES
(1, 'Group owner'),
(2, 'Group administrator'),
(3, 'Member');
