CREATE TABLE expense (
	id INT AUTO_INCREMENT PRIMARY KEY,
	owner_id INT NOT NULL,
	name VARCHAR(100) NOT NULL,
	description VARCHAR(255),
	amount DECIMAL(15,2) NOT NULL,
	FOREIGN KEY (owner_id) REFERENCES member(id)
);

CREATE TABLE expense_member (
	id INT AUTO_INCREMENT PRIMARY KEY,
	expense_id INT NOT NULL,
	member_id INT NOT NULL,
	amount_owed DECIMAL(15,2) NOT NULL,
	FOREIGN KEY (expense_id) REFERENCES expense(id),
	FOREIGN KEY (member_id) REFERENCES member(id)
);



-- Insertion des donnees de test
