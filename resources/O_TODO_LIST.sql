-- Create table of for a todo_list
CREATE TABLE todo_list (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    group_id INT NOT NULL
);