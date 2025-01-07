CREATE TABLE notification (
    id int AUTO_INCREMENT PRIMARY KEY,
    user_id int NOT NULL,
    title varchar(100) NOT NULL,
    body varchar(255),
    is_read bool,
    FOREIGN KEY (user_id) REFERENCES user(id)
);

-- Insertion des données test
INSERT INTO notification (id, user_id, title, body, is_read) VALUES
(1, 1, "New group !", "You have been invited to TitiTotoWalletino_toiiiiiii group.", 0),
(2, 1, "Username changed !", "You changed your username to alice.", 0),
(3, 1, "New expense assigned !", "Bob assigned you a new expense on TitiTotoWalletino_toiiiiiii group.", 0);
