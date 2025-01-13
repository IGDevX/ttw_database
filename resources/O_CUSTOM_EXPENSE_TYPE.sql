CREATE TABLE custom_expense_type (
    id INT AUTO_INCREMENT PRIMARY KEY,
    label VARCHAR(255) NOT NULL,
    budget INT NOT NULL,
    group_id INT,
    app_expense_type_id INT,
    expense_id INT,
    FOREIGN KEY (group_id) REFERENCES `group`(id) ON DELETE CASCADE,
    FOREIGN KEY (expense_id) REFERENCES `expense`(id) ON DELETE CASCADE,
    FOREIGN KEY (app_expense_type_id) REFERENCES `app_expense_type`(id) ON DELETE CASCADE
);