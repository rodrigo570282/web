create database ProjetoIntegrador;
use ProjetoIntegrador;
create table turmas(
curso varchar(30),
nome varchar (30),
QtdAlu tinyint,
DataInicio date,
DataConclusao date,
ProjetoInt varchar(30)
);

insert into turmas values('dev','turma146','26','2024-03-01','2025-12-01','PaginaVoucher');
insert into turmas values('dev','turma147','27','2024-03-01','2025-12-01','calculadora');
insert into turmas values('dev','turma148','28','2024-03-01','2025-12-01','cadastro');
insert into turmas values('dev','turma149','29','2024-03-01','2025-12-01','loja');
insert into turmas values('dev','turma150','32','2024-03-01','2025-12-01','calculo');
insert into turmas values('dev','turma151','25','2024-03-01','2025-12-01','tabela');
insert into turmas values('dev','turma152','22','2024-03-01','2025-12-01','jogo');
insert into turmas values('dev','turma153','16','2024-03-01','2025-12-01','web');
select * from turmas;



