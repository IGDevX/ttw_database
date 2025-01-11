CREATE TABLE photo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    image LONGBLOB NOT NULL,
    galery_id INT,
    FOREIGN KEY (galery_id) REFERENCES galery(id)
)

INSERT INTO galery (name) VALUES ('Nature Gallery'), ('Art Gallery'), ('Tech Gallery');

-- Insert test data into the photo table
INSERT INTO photo (image, galery_id)
VALUES
    (LOAD_FILE('../images/test.jpeg'), 1),