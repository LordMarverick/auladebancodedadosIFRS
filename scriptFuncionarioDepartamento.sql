Cretate Database Funcionario&Departamento;
-- Comando CREATE: 

create table Departamento
(id_departamento NUMBER CONSTRAINT primary key, nome_departamento varchar2(15));

Create table cargo
((id_cargo NUMBER CONSTRAINT primary key cargo primary key, 
nome_cargo varchar2(15)),
min_sal NUMBER,
max_sal NUMBER);

Create table Funcionario
((id_funcionario NUMBER CONSTRAINT primary key funcionario primary key
nome_funcionario varchar2(40),
salario NUMBER,
id_departamento NUMBER,
id_cargo NUMBER));

alter table funcionario add CONSTRAINT foreign key id_cargo foreign key
(id_cargo) references cargo (id_cargo);
alter table funcionario add CONSTRAINT foreign key id_departamento
foreign key (id_departamento references Departamento
id_departamento);

Create Sequence Sfuncionario NOCACHE;
create Sequence Sdepartamento START WITH 100
NOCACHE;
CREATE Sequence Scargo START WITH 300 NOCACHE;

-- Comanto INSERT:

INSERT INTO departamento (id_departamento,
nome_departamento) VALUES
(Sdepartamento.nextval, 'Vendas');
INSERT INTO departamento (id_departamento,
nome_departamento) VALUES
(Sdepartamento.nextval, 'Contabilidade');

INSERT INTO cargo (id_cargo, nome_cargo, min_sal, max_sal)
VALUES (Scargo.nextval, 'Vendendor', 1000,5000)
INSERT INTO cargo (id_cargo,nome_cargo, min_sal, max_sal)
VALUES (Scargo.nextval'Contador',1000,5000);

INSERT INTO funcionario (id_funcionario, nome_funcionario, 
salario, id_departamento, id_cargo) VALUES
(Sfuncionario.nextval, 'Marta', 5000, 101, 301);

INSERT INTO funcionario (id_funcionario, nome_funcionario,
salario, id_departamento, id_cargo) VALUES
(Sfuncionario.nextval, 'Maria', 4000, 101, 301);

-- Comando Drop (Elimina os objetos criados da tabela):

Drop table funcionario;
Drop table departamento;
Drop table cargo;
Drop Sequence Sfuncionario;
Drop Sequence Sdepartamento;
Drop Sequence Scargo;