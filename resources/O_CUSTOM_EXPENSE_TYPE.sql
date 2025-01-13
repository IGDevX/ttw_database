CREATE TABLE custom_expense_type (
    id INT AUTO_INCREMENT PRIMARY KEY,
    label VARCHAR(255) NOT NULL,
    budget INT NOT NULL,
    group_id INT NOT NULL,
    app_expense_type_id INT NOT NULL,
    FOREIGN KEY (group_id) REFERENCES `group`(id) ON DELETE CASCADE,
    FOREIGN KEY (app_expense_type_id) REFERENCES `app_expense_type`(id) ON DELETE CASCADE
);

INSERT INTO custom_expense_type (label, budget, group_id, app_expense_type_id) VALUES
('Tarbrew', 100, 1, 1),
('Bus', 50, 1, 2),
('Colloc', 200, 1, 3),
('Patinage', 100, 1, 4),
('KFC', 100, 2, 1),
('Velo', 50, 2, 2),
('Colloc 2', 200, 2, 3),
('Cinema', 100, 2, 4);