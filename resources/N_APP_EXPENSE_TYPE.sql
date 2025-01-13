CREATE TABLE app_expense_type (
    id INT AUTO_INCREMENT PRIMARY KEY,
    label VARCHAR(255) NOT NULL
);

INSERT INTO app_expense_type (label) VALUES
('Food'),
('Transport'),
('Accommodation'),
('Activity');
