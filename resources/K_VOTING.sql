CREATE TABLE voting (
    id INT AUTO_INCREMENT PRIMARY KEY,
    member_id INT NOT NULL,
    poll_item_id INT NOT NULL,
    FOREIGN KEY (member_id) REFERENCES member(id) ON DELETE CASCADE,
    FOREIGN KEY (poll_item_id) REFERENCES poll_item(id) ON DELETE CASCADE,
    UNIQUE (member_id, poll_item_id)
);

INSERT INTO voting (member_id, poll_item_id) VALUES
 (1, 1),
 (2, 2),
 (3, 3);
