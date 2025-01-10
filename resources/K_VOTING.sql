CREATE TABLE voting (
    id INT AUTO_INCREMENT PRIMARY KEY,
    voter_name VARCHAR(100) NOT NULL,
    poll_item_id INT NOT NULL,
    FOREIGN KEY (poll_item_id) REFERENCES poll_item(id),
    UNIQUE (voter_name, poll_item_id)
);

INSERT INTO voting (voter_name, poll_item_id) VALUES
('alice', 1),
('alice', 2),
('bob', 3),
('bob', 4),
('eve', 6),
('alice', 7);