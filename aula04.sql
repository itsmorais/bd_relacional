DROP DATABASE IF EXISTS bd_aula04;

-- clones the structure and schema of the existing database, including tables, indexes, views, and other database objects.
-- Does not clone the DATA from the bd_aula03
CREATE DATABASE bd_aula04 WITH TEMPLATE bd_aula03;

\c bd_aula04;

-- Insere valores na table tbl_cliente
INSERT INTO
    tbl_cliente
VALUES
    (
        001,
        'Joao da Silva',
        'Sao Paulo',
        'Rua das flores,123'
    );

INSERT INTO
    tbl_cliente
VALUES
    (
        002,
        'Maria SAntos',
        'Rio de Janeiro',
        'Avenida das palmeiras,456'
    );

INSERT INTO
    tbl_cliente
VALUES
    (
        003,
        'Carlos pereira',
        'Belo Horizonte',
        'Travessa das Estrelas,789'
    );

INSERT INTO
    tbl_cliente
VALUES
    (
        004,
        'Ana Oliveira',
        'Salvador',
        'Praça da Liberdade,101'
    );

INSERT INTO
    tbl_cliente
VALUES
    (
        005,
        'Pedro Almeira',
        'Brasilia',
        'Quadra dos sonhos,222'
    );

-- Insere valores na table tbl_titulo
INSERT INTO
    tbl_titulo
VALUES
    (
        101,
        'O Mistério do Enigma',
        'Um thriller emocionante',
        'Mistério'
    );

INSERT INTO
    tbl_titulo
VALUES
    (
        102,
        'A jornada perdida',
        'Uma aventura épica',
        'Aventura'
    );

INSERT INTO
    tbl_titulo
VALUES
    (
        103,
        'Amor nas estrelas',
        'Um romance celestial',
        'Romance'
    );

INSERT INTO
    tbl_titulo
VALUES
    (
        104,
        'Crime na metrópole',
        'Um mistério urbano',
        'Policial'
    );

INSERT INTO
    tbl_titulo
VALUES
    (
        105,
        'A magia esquecida',
        'Uma fantasia encatadora',
        'Fantasia'
    );

-- Insere valores na table tbl_livros
INSERT INTO
    tbl_livros
VALUES
    (
        'L001',
        '101',
        'DISPONIVEL'
    );

INSERT INTO
    tbl_livros
VALUES
    (
        'L002',
        '102',
        'ALUGADO'
    );

INSERT INTO
    tbl_livros
VALUES
    (
        'L003',
        '103',
        'DISPONIVEL'
    );

INSERT INTO
    tbl_livros
VALUES
    (
        'L004',
        '104',
        'ALUGADO'
    );

INSERT INTO
    tbl_livros
VALUES
    (
        'L005',
        '105',
        'DISPONIVEL'
    );

-- Insere valores na table tbl_emprestimo
INSERT INTO
    tbl_emprestimo
VALUES
    (
        'E001',
        '001',
        'L001'
    );

INSERT INTO
    tbl_emprestimo
VALUES
    (
        'E002',
        '002',
        'L003'
    );

INSERT INTO
    tbl_emprestimo
VALUES
    (
        'E003',
        '003',
        'L005'
    );

INSERT INTO
    tbl_emprestimo
VALUES
    (
        'E004',
        '004',
        'L002'
    );

INSERT INTO
    tbl_emprestimo
VALUES
    (
        'E005',
        '005',
        'L004'
    );

SELECT
    *
from
    tbl_cliente;

-- SELECIONA TODOS OS CLIENTES
SELECT
    *
from
    tbl_cliente
WHERE
    cidade = 'Sao Paulo';

-- SELECIONA CLIENTES ONDE CIDADE = SP
SELECT
    *
FROM
    tbl_cliente
WHERE
    codigo_cliente > 3;

-- SELECIONA CLIENTES ONDE CODIGO É MAIOR QUE 3
SELECT
    titulo
from
    tbl_titulo;

-- SELECIONA OS TITULOS
-- Copiar tabela 1ª forma
CREATE TABLE tbl_cliente2(codigo integer PRIMARY KEY);

INSERT INTO
    tbl_cliente2(codigo)
SELECT
    codigo_cliente
from
    tbl_cliente;

-- Copiar tabela 2ª forma
CREATE TABLE tbl_cliente3 AS
SELECT
    codigo
FROM
    tbl_cliente2;

-- ATUALIZAR LIVROS ALUGADOS PARA DISPONIVEL
UPDATE
    tbl_livros
SET
    status = 'DISPONIVEL'
where
    status = 'ALUGADO';

SELECT
    *
from
    tbl_livros;

-- DELETAR linhas onde o codigo for maior que 3
DELETE FROM
    tbl_cliente2
where
    codigo > 3;

DELETE FROM
    tbl_cliente3
where
    codigo > 0;