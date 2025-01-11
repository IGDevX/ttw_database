CREATE TABLE poll_item (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    poll_id INT NOT NULL,
    FOREIGN KEY (poll_id) REFERENCES `poll`(id) ON DELETE CASCADE
);

INSERT INTO poll_item (name, poll_id) VALUES
('Red', 1),
('Blue', 1),
('Green', 1),
('Marseille', 2),
('Paris', 2),
('Go to cinema', 3),
('Go bowling', 3),
('Stay home', 3),
('Red', 4),
('Blue', 4),
('Green', 4),
('Marseille', 5),
('Paris', 5),
('Go to cinema', 6),
('Go bowling', 6),
('Stay home', 6);