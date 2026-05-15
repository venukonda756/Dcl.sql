CREATE DATABASE bank_db;
USE bank_db;

CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    holder_name VARCHAR(50),
    balance DECIMAL(10,2)
);

INSERT INTO accounts VALUES
(101, 'Venkat', 10000);

SELECT * FROM accounts;

START TRANSACTION;

UPDATE accounts
SET balance = balance - 2000
WHERE account_id = 101;

SELECT * FROM accounts;

SELECT * FROM accounts;

START TRANSACTION;

UPDATE accounts
SET balance = balance - 2000
WHERE account_id = 101;

COMMIT;

SELECT * FROM accounts;

