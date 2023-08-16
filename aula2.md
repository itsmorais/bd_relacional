## Aula 2

### Utilizar via linux terminal:
```
sudo -i -u postgres
```
em seguida:
```
sudo psql
```
### DDL - Create DATABASE
- Comando para criar um banco de dados
```sql
    CREATE DATABASE nomeDoBanco;
```
    - Parâmetros opcionais
        - WITH
        - OWNER =
        - ENCODING =
        - TABLESPACE =
        - CONNECTION LIMIT =

Para verificar quais os bancos de dados existentes(listar):
```
\l
```

Para se conectar a um banco de dados:
```
\c <nome_do_banco>
```

Para criar tabelas
```sql
create table usuario(nome varchar(50), idade integer);
```

Para visualizar as tabelas
```
\dt
```

Para descrever uma tabela
```
\d <nome_da_tabela>
```

Alterar tabelas:
```sql
ALTER TABLE cliente ADD COLUMN idade integer;
```

