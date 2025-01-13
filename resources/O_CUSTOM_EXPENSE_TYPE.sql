CREATE TABLE custom_expense_type (
    id INT AUTO_INCREMENT PRIMARY KEY,
    label VARCHAR(255) NOT NULL,
    budget INT NOT NULL,
    group_id INT NOT NULL,
    app_expense_type_id INT NOT NULL,
    expense_id INT NOT NULL,
    FOREIGN KEY (group_id) REFERENCES `group`(id) ON DELETE CASCADE,
    FOREIGN KEY (expense_id) REFERENCES `expense`(id) ON DELETE CASCADE,
    FOREIGN KEY (app_expense_type_id) REFERENCES `app_expense_type`(id) ON DELETE CASCADE
);

INSERT INTO custom_expense_type (label, budget, group_id, app_expense_type_id, expense_id) VALUES
("Apple", 100, 1, 1, 1),
("Bus", 50, 1, 2, 2),
("Colloc", 200, 1, 3, 3),
("Food", 100, 2, 1, 1),
("Car", 50, 2, 2, 2),
("Hotel", 200, 2, 3, 3),
("Food", 100, 3, 1, 1),
("Transport", 50, 3, 2, 2),
("Accomodation", 200, 3, 3, 3);