/* Criando banco de dados */
CREATE DATABASE apr_php_1;

/* Usando o banco de dados */
use apr_php_1;

/* Criando a tabela usuario */
create table if not exists usuario(
	usuario_id int not null auto_increment,
    usuario varchar(200),
    senha varchar(32),
    primary key (usuario_id)
);

/* Alterando os campos usuario e senha da tabela usuario para nao nulos */
alter table usuario modify column usuario varchar(200) not null;
alter table usuario modify column senha varchar(200) not null;

/* Selecionando tudo da tabela usuario */
select * from usuario;

insert into usuario (usuario, senha) values ('filipe', md5('canada'));
