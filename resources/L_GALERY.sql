CREATE TABLE galery (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    group_id INT NOT NULL,
    FOREIGN KEY (group_id) REFERENCES `group`(id)
);

INSERT INTO galery (id ,name, group_id) VALUES
(1,'Grau', 1),
(2,'Cat', 1)