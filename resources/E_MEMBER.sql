CREATE TABLE member (
id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT NOT NULL,
group_id INT NOT NULL,
role_id INT NOT NULL,
FOREIGN KEY (user_id) REFERENCES user(id),
FOREIGN KEY (group_id) REFERENCES group(id),
FOREIGN KEY (role_id) REFERENCES role(id)
);


INSERT INTO member (user_id, group_id, role_id) VALUES
(1, 1, 1),
(2, 1, 3),
(3, 2, 1),
(4, 2, 3),
(5, 3, 1),
(1, 3, 3),
(2, 4, 1),
(3, 5, 1),
(4, 6, 2),
(5, 6, 3),
(1, 7, 1),
(2, 8, 3),
(3, 9, 3),
(4, 10, 1),
(5, 10, 3);
