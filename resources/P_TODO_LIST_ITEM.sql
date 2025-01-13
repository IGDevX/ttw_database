-- Create table for a todo_list_item
CREATE TABLE todo_list_item (
    id INT PRIMARY KEY AUTO_INCREMENT,
    todo_list_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    done BOOLEAN NOT NULL,
    FOREIGN KEY (todo_list_id) REFERENCES todo_list(id)
);