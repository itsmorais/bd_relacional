DROP DATABASE IF EXISTS bd_aula03;

CREATE DATABASE bd_aula03;

\c bd_aula03

-- Criação de DOMAIN
 CREATE DOMAIN chk_status text check (
    value = 'DISPONIVEL'
    OR value = 'ALUGADO'
);

CREATE DOMAIN chk_categoria text check (
    value = 'Mistério'
    OR value = 'Aventura'
    OR value = 'Romance'
    OR value = 'Policial'
    OR value = 'Fantasia'
);

-- Criação de Tabelas
CREATE TABLE tbl_cliente(
    codigo_cliente integer NOT NULL PRIMARY KEY,
    nome text NOT NULL,
    cidade text,
    endereco text
);


CREATE TABLE tbl_titulo(
    codigo_titulo integer NOT NULL PRIMARY KEY,
    titulo text NOT NULL,
    descricao text,
    categoria chk_categoria
);

-- Coluna codigo_titulo faz referencia a coluna codigo_titulo da tabela tbl_titulo.
CREATE TABLE tbl_livros(
    cod_livro integer PRIMARY KEY,
    codigo_titulo integer references tbl_titulo(codigo_titulo),
    status text DEFAULT 'DISPONIVEL' :: chk_status
);
CREATE TABLE tbl_emprestimo(
    numero_emprestimo text PRIMARY KEY,
    codigo_cliente integer references tbl_cliente(codigo_cliente),
    codigo_livro integer references tbl_livros(cod_livro)
);