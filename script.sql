create table itmn880_pdv(
  id INTEGER not null auto_increment,
  numero_ponto INTEGER,
  nome VARCHAR(100),
  endereco VARCHAR(100),
  telefone VARCHAR(20),
  
  constraint pk_pdv PRIMARY KEY (id)

);

insert into itmn880_pdv values
(null, 827, 'Agencia Jau', 
   'Rua Edgarf Ferraz, 471', '555-1414');
   
insert into itmn880_pdv values
(null, 122, 'Agencia Cambuci', 
   'Av. Cambuci, 330', '555-9876');

insert into itmn880_pdv values
(null, 627, 'Agencia Oz-Asco', 
   'Av. dos Autonomistas, 1001', '555-1276');

insert into itmn880_pdv values
(null, 963, 'Agencia Centro', 
   'Av. Sao Joao, 918', '555-5432');
   
create table itmn880_solic(
   num_seq      INTEGER not null auto_increment, 
   nome_tecnico VARCHAR(100),
   operadora    VARCHAR(50),
   telefone     VARCHAR(20),
   doc          VARCHAR(20),
   data_solic   DATE,
   hora_solic   TIME,
   pdv_id       INTEGER not null,
   
   constraint pk_solic PRIMARY KEY (num_seq),
   constraint fk_pdv_id FOREIGN KEY (pdv_id) REFERENCES itmn880_pdv(id)
);


alter table itmn880_solic add column situacao integer after hora_solic;

insert into itmn880_solic values
(null, 'Robson Marques Oliveira', 'Vivo', '98765-4321','999.888.777-66',
   '2020-09-01','13:45', 0, 1 );


update itmn880_solic set nome_tecnico = 'Robson Duarte da Fonseca',
						 operadora = 'Vivo',
						 telefone = '98765-4321',
						 doc = '111.222.333-44',
						 data_solic='2020-09-01',
                         hora_solic='18:30'
                         where num_seq = 1;
select * from itmn880_solic 

