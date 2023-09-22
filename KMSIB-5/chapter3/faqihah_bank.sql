CREATE TABLE customer(
    id_customer INT PRIMARY KEY,
    name_cust VARCHAR(255) NOT NULL,
    address_cust VARCHAR(255) NOT NULL,
    email_cust VARCHAR(255) NOT NULL,
    contact_cust VARCHAR(15) NOT NULL,
    opening_date DATE NOT NULL
);

CREATE TABLE account(
    id_account INT PRIMARY KEY,
    number_account VARCHAR(20) NOT NULL,
    balance_account DECIMAL(10, 2) NOT NULL,
    type_account VARCHAR(50) NOT NULL,
    opening_date DATE NOT NULL,
    id_customer INT,
    FOREIGN KEY (id_customer) REFERENCES customer(id_customer)
);

CREATE TABLE transaction(
    id_transaction INT PRIMARY KEY,
    transaction_date DATE,
    transaction_type VARCHAR(50) NOT NULL,
    total_transaction DECIMAL(10,2) NOT NULL,
    id_account INT,
    FOREIGN KEY (id_account) REFERENCES account(id_account)
);

-- CREATE INSERT DATA
INSERT INTO customer(id_customer, name_cust, address_cust, email_cust, contact_cust, opening_date) VALUES (1, 'Nisa Amalia Ansar', 'Bumi Permata Sudiang', 'nisaamaliaansar@gmail.com', '08114600288', '2023-09-01'); 
INSERT INTO customer(id_customer, name_cust, address_cust, email_cust, contact_cust, opening_date) VALUES (2, 'Yusria Hidayat', 'Enrekang', 'yusriahidayat@gmail.com', '085111332546', '2023-09-03');
INSERT INTO customer(id_customer, name_cust, address_cust, email_cust, contact_cust, opening_date) VALUES (3, 'Andi Silvia Indriani', 'Perintis Kemerdekaan 7', 'byindri@gmail.com', '081432555273', '2023-09-03'); 
INSERT INTO customer(id_customer, name_cust, address_cust, email_cust, contact_cust, opening_date) VALUES (4, 'Emar Mokiman Kala Tagari', 'Toraja Utara', 'emarmokiman23', '0823786999222', '2023-09-07');

INSERT INTO account(id_account, number_account, balance_account, type_account, opening_date, id_customer) VALUES (1, '50200100005501', '1000000', 'Tabungan', '2023-09-01', '1'), (2, '50200101005521', '5000000', 'Tabungan', '2023-09-03', '2'),  (3, '50300101005331', '2500000', 'Tabungan', '2023-09-03', '3'), (4, '50100101001111', '10000000', 'Tabungan', '2023-09-03', '4');

INSERT INTO transaction(id_transaction, transaction_date, transaction_type, total_transaction, id_account) VALUES (1, '2023-09-21', 'Debit', '1000000', 3), (2, '2023-09-25', 'Kredit', '1000000', 4), (3, '2023-09-28', 'Debit', '5000000', 2), (4, '2023-09-26', 'Kredit', '50000', 1);

--READ DATA
SELECT * FROM customer;
SELECT * FROM account;
SELECT * FROM transaction;

--UPDATE
UPDATE customer SET email_cust = 'amaalia@gmail.com' WHERE id_customer = 1;
UPDATE account SET number_account = '5001235326244' WHERE id_account =1;

--DELETE
DELETE FROM transaction WHERE id_account = 1;