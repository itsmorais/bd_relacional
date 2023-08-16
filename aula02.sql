DROP DATABASE IF EXISTS db_sistema_bancario;

CREATE DATABASE db_sistema_bancario;

\c db_sistema_bancario; -- conectar no bd db_sistema_bancario.

CREATE TABLE usuario(nome varchar(50), idade integer);

CREATE TABLE conta(agencia integer, conta_corrente integer);

CREATE TABLE status(ativo boolean);

CREATE TABLE saldo(saldo_total float, credito float);

CREATE TABLE negativado(cliente_negativo boolean);

-- Alterando o tipo de uma coluna
ALTER TABLE
    saldo
ALTER column
    saldo_total TYPE real;

-- DROPAR TABELAS QUE CRIEI
DROP TABLE conta;

DROP TABLE usuario;

DROP TABLE status;

DROP TABLE saldo;

DROP TABLE negativado;

CREATE TABLE cliente(
    NOME_CLIENTE varchar(50),
    CIDADE_CLIENTE varchar(50),
    ENDERECO_CLIENTE varchar(50)
);

CREATE TABLE conta(
    NUMERO_CONTA integer,
    NOME_AGENCIA varchar(15),
    SALDO real
);

CREATE TABLE emprestimo(
    NUMERO_EMPRESTIMO integer,
    NOME_AGENCIA varchar(15),
    VALOR real
);

CREATE TABLE agencia(
    NOME_AGENCIA varchar(15),
    CIDADE_AGENCIA varchar(30),
    DEPOSITOS integer
);

ALTER TABLE
    cliente
ADD
    COLUMN idade integer;

ALTER TABLE
    cliente RENAME COLUMN idade TO idade_usuario;

ALTER TABLE
    cliente DROP COLUMN idade_usuario;

ALTER TABLE
    cliente rename to tbl_client;

CREATE SCHEMA michael;
-- \dn para listar os schemas

