CREATE TABLE shopping_list (
	id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	group_id INT NOT NULL,
	FOREIGN_KEY (group_id) REFERENCES `group`(id)
);

INSERT INTO shopping_list (name, group_id) VALUES
("Friday party:", 1),
("Roomates list", 1),
("Hugo's birthday", 2);

CREATE TABLE shopping_list_item (
	id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	shopping_list_id INT NOT NULL,
	is_checked BOOL NOT NULL,
	FOREIGN_KEY (shopping_list_id) REFERENCES shopping_list(id)
);

INSERT INTO shopping_list_item (name, shopping_list_id, is_checked) VALUES
("Saucisson", 1, false),
("Coca-cola", 1, true),
("Hand-soap", 2, false),
("Galette bretonne", 3, false);
