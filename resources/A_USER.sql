CREATE TABLE user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    pwd_hash VARCHAR(255) NOT NULL,
    pwd_salt VARCHAR(255) NOT NULL
);

-- Insertion des données test
INSERT INTO user (id, email, username, pwd_hash, pwd_salt) VALUES
(1, 'alice@example.com', 'alice', 'nhx5/Iv46n2qYW0cqolQtqZrh8UpR8CFxEyy1VI8RLw=', 'CJEUK8tQcN0qAReWLiFokg=='),
(2, 'bob@example.com', 'bob', 'nhx5/Iv46n2qYW0cqolQtqZrh8UpR8CFxEyy1VI8RLw=', 'CJEUK8tQcN0qAReWLiFokg=='),
(3, 'carol@example.com', 'carol', 'nhx5/Iv46n2qYW0cqolQtqZrh8UpR8CFxEyy1VI8RLw=', 'CJEUK8tQcN0qAReWLiFokg=='),
(4, 'dave@example.com', 'dave', 'nhx5/Iv46n2qYW0cqolQtqZrh8UpR8CFxEyy1VI8RLw=', 'CJEUK8tQcN0qAReWLiFokg=='),
(5, 'eve@example.com', 'eve', 'nhx5/Iv46n2qYW0cqolQtqZrh8UpR8CFxEyy1VI8RLw=', 'CJEUK8tQcN0qAReWLiFokg==');
