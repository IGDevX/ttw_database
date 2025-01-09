CREATE TABLE payback (
    id INT AUTO_INCREMENT PRIMARY KEY,
    payer_id INT NOT NULL,
    payee_id INT NOT NULL,
    expense_id INT,
    amount_paid DECIMAL(15, 2) NOT NULL,
    FOREIGN KEY (payer_id) REFERENCES member(id),
    FOREIGN KEY (payee_id) REFERENCES member(id),
    FOREIGN KEY (expense_id) REFERENCES expense(id)
);

CREATE VIEW member_balances AS
SELECT
    em.member_id AS payer_id,
    e.owner_id AS payee_id,
    SUM(em.amount_owed) AS total_owed,
    COALESCE(SUM(p.amount_paid), 0) AS total_repaid,
    (SUM(em.amount_owed) - COALESCE(SUM(p.amount_paid), 0)) AS net_balance
FROM expense_member em
LEFT JOIN expense e ON em.expense_id = e.id
LEFT JOIN payback p ON em.member_id = p.payer_id AND e.owner_id = p.payee_id
GROUP BY em.member_id, e.owner_id;

-- Insertion des donnees de test
