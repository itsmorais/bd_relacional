DROP DATABASE IF EXISTS bd_aula03;

CREATE DATABASE bd_aula03;

\c bd_aula03 

CREATE DOMAIN chk_status text check (
    value = 'DISPONIVEL'
    OR value = 'ALUGADO'
);

CREATE DOMAIN chk_categoria text check (
    value = 'DRAMA'
    OR value = 'COMEDIA'
);

CREATE TABLE tbl_cliente(
    codigo_cliente integer NOT NULL PRIMARY KEY,
    nome text NOT NULL,
    cidade text,
    endereco text
);

CREATE TABLE tbl_emprestimo(
    numero_emprestimo integer PRIMARY KEY,
    codigo_cliente integer,
    codigo_livro integer
);

CREATE TABLE tbl_titulo(
    codigo_titulo integer NOT NULL PRIMARY KEY,
    descricao text,
    categoria chk_categoria
);

CREATE TABLE tbl_livros(
    cod_livro integer PRIMARY KEY,
    codigo_titulo integer references tbl_titulo(codigo_titulo),
    status text DEFAULT 'DISPONIVEL' :: chk_status
);