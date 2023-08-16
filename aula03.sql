DROP DATABASE IF EXISTS bd_aula03;

CREATE DATABASE bd_aula03;

\c bd_aula03;

CREATE TABLE tbl_cliente(
    codigo_cliente integer PRIMARY KEY,
    Nome text NOT NULL,
    Cidade text,
    Endereco text
);

CREATE TABLE tbl_emprestimo(
    numero_emprestimo integer PRIMARY KEY,
    codigo_cliente integer,
    codigo_livro integer
);

CREATE TABLE tbl_titulo(
    codigo_titulo integer PRIMARY KEY,
    descricao text,
    categoria text
);

CREATE TABLE tbl_livros(
    cod_livro integer PRIMARY KEY,
    codigo_titulo text,
    status text
);