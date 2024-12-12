create database academia;
use academia;

CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

select * from clientes;

drop table clientes;

ALTER TABLE clientes
ADD COLUMN plano ENUM('mensal', 'diario', 'anual') NOT NULL DEFAULT 'mensal';
