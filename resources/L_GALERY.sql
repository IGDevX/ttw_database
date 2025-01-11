CREATE TABLE galery (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    group_id INT NOT NULL,
    FOREIGN KEY (group_id) REFERENCES `group`(id)
);

-- Insérer des données de test dans la table `galery`
INSERT INTO galery (name, group_id) VALUES
    (1,"Cap d'agde vacation", 1),
    (2,'Cat', 1),