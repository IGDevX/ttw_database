CREATE TABLE photo (
id INT AUTO_INCREMENT PRIMARY KEY,
image LONGBLOB NOT NULL,
galery_id INT,
FOREIGN KEY (galery_id) REFERENCES galery(id) ON DELETE CASCADE
);


INSERT INTO photo (image, galery_id)
VALUES
(LOAD_FILE('/var/lib/mysql-files/chat.jpeg'), 2)