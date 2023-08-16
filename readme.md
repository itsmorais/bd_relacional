## Configurações

- Utilizar psql no terminal Ubuntu 22.04

```
sudo -i -u postgres
```
em seguida:
```
sudo psql
```

Para rodar scripts:
```
psql -U <nome_do_usuario> -d <nome_do_banco> -f arquivo.sql
```


exemplo:
```
psql -U michael -d db_sistema_bancario -f aula02.sql
```

- Problemas para conectar no psql via terminal Ubuntu 22.04
```
$sudo nano /etc/postgresql/14/main/pg_ident.conf

```
Replace the <computer-username> with the System-Username, which can be found using the whoami command. Type in your terminal:
```
whoami
```

