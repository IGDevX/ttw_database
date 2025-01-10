CREATE TABLE poll (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    group_id INT NOT NULL,
    FOREIGN KEY (group_id) REFERENCES `group`(id)
);

INSERT INTO poll (name, group_id) VALUES
("Choose hoodie color:", 1),
("Paris or Marseille?", 1),
("What do you want to do friday?", 2),
("Choose hoodie color:", 2),
("Paris or Marseille?", 3),
("What do you want to do friday?", 3);