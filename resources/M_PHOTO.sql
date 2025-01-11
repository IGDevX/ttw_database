CREATE TABLE photo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    image LONGBLOB NOT NULL,
    galery_id INT,
    FOREIGN KEY (galery_id) REFERENCES galery(id)
)