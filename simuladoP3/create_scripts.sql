CREATE TABLE tbl_departamentos(id_departamento integer primary key, nome_departamento text);
CREATE TABLE tbl_funcionarios(id_funcionario integer primary key, primeiro_nome text, sobrenome text, salario real);
CREATE TABLE tbl_tarefas(id_tarefa integer primary key, nome_tarefa text, prazo date, id_funcionario integer references tbl_funcionarios(id_funcionario));
CREATE TABLE tbl_funcionario_departamento(id_funcionario integer references tbl_funcionarios(id_funcionario),
	 id_departamento integer references tbl_departamentos(id_departamento));

INSERT INTO tbl_departamentos(id_departamento,nome_departamento) VALUES
	(1,'TI'),
	(2, 'RH'),
	(3, 'Finanças'),
	(4, 'Marketing'),
	(5, 'Vendas');
	
	
INSERT INTO tbl_funcionarios(id_funcionario,primeiro_nome,sobrenome,salario) VALUES
	(1,'Clara','Ribeiro',65000),
	(2, 'Rodrigo','Costa',80000),
	(3, 'Juliana','Almeida',90000),
	(4, 'Marcio','Cunha',72000),
	(5, 'Helena','Lima',68000);

INSERT INTO tbl_tarefas(id_tarefa,nome_tarefa,prazo,id_funcionario) VALUES
	(1,'Tarefa 1','2023-12-01',1),
	(2, 'Tarefa 2','2023-12-15',2),
	(3, 'Tarefa 3','2023-12-10',3),
	(4, 'Tarefa 4','2023-12-05',4),
	(5, 'Tarefa 5','2023-12-30',5);

INSERT INTO tbl_funcionario_departamento(id_funcionario,id_departamento) VALUES
	(1,1),
	(2,1),
	(3,2),
	(4,2),
	(5,5);

CREATE VIEW v_funcionarios_salario_alto AS
SELECT Upper(primeiro_nome) as primeiro_nome from tbl_funcionarios WHERE salario > 70000;

--recebe o id da tarefa e o id do funcionário e assinala aquela tarefa ao funcionario
CREATE OR REPLACE FUNCTION sp_atribuir_tarefa_funcionario(tarefa integer, funcionario integer)
RETURNS VOID AS
$$
BEGIN
 
   UPDATE tbl_tarefas SET id_funcionario = funcionario WHERE id_tarefa = tarefa;
END;
$$
LANGUAGE plpgsql;

SELECT sp_atribuir_tarefa_funcionario(2, 3);


-- recebe o nome do departamento e retorna o primeiro nome dos funcionários deste departamento
CREATE OR REPLACE FUNCTION fc_obter_funcionarios_departamento(dep text)
RETURNS TABLE (primeiro_nome text) AS
$$
BEGIN
   RETURN QUERY
      SELECT f.primeiro_nome
      FROM tbl_funcionario_departamento FD
      INNER JOIN tbl_funcionarios f ON FD.id_funcionario = f.id_funcionario
      INNER JOIN tbl_departamentos d ON FD.id_departamento = d.id_departamento
      WHERE d.nome_departamento = dep;
END;
$$
LANGUAGE plpgsql;

SELECT * FROM fc_obter_funcionarios_departamento('TI');


-- tabela de logs mudança de salario
CREATE TABLE tbl_log_salario(id_funcionario integer references tbl_funcionarios(id_funcionario),
	salario_antigo real, salario_atual real, data_atualizacao timestamp DEFAULT CURRENT_TIMESTAMP );
