-- --------  << CLINICA >>  ----------
--
--         SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 15/04/2022
-- Autor(es) ..............: Caio César Oliveira, Antônio Aldísio de Sousa Alves Ferreira Filho
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: trabalhofinal1
--
-- Ultimas Alteracoes
--   27/04/2022 => Adição de dados em 03 novas tabelas: PSICOPEDAGOGO, PACOTE e RELATORIO;
--              => Mudança na inserção do atributo nomePsicopedagogo da tabela DOCUMENTO para PSICOPEDAGOGO;
--              => Mudança na inserção dos atributos qtdSessoesSemanais e precoPorSessao da tabela CONTRATACAO para PACOTE;
--
-- PROJETO => 01 Base de Dados
--         => 23 Tabelas
--         => 03 Usuarios
-- ---------------------------------------

USE trabalhofinal1;

INSERT INTO PSICOPEDAGOGO
VALUES
(1, 'FABIO BATISTA'),
(2, 'ROSANA BATISTA'),
(3, 'CAIO BATISTA'),
(4, 'ERICK BATISTA'),
(5, 'FABIANA BATISTA');

INSERT INTO DOCUMENTO
VALUES
(1,'2022-02-01','10:00:00','Will Smith', 'Caic Uniesco','2016-01-01','Geraldo Carvalho', 'Regiane Bras','1980-03-12','1985-12-01', 2),
(2,'2022-02-01','11:00:00','Ben Smith', 'Caic Uniesco','2017-02-01','Geraldo Carvalho', 'Regiane Bras','1980-03-12','1985-12-01', 3),
(3,'2022-02-01','09:00:00','Adriana Lima', 'Caic Uniesco','2017-12-01','Roberto Lima', 'Regina Lima','1982-05-12','1980-01-06', 1),
(4,'2022-02-01','08:00:00','Marcos Bolsonaro', 'Caic Uniesco','2017-02-01','Jair Balsonaro', 'Michele Bolsonaro','1990-03-12','1995-12-01', 4),
(5,'2022-02-01','07:00:00','Maria Bolsonaro', 'Caic Uniesco','2017-02-07','Jair Balsonaro', 'Michele Bolsonaro','1990-03-12','1995-12-01', 5);




INSERT INTO ANAMNESE
VALUES
(1,'Regiane Bras', 'Mae','Caio Oliveira','Brasileiro',1,'A','m', 'nenhuma', 'nenhuma', 'Pais', 'unico','nenhum','s','Dificuldade de entender as letras','s','normal','s','s','s','00:00:00','05:00:00','Regiane Bras', 'normal','n','s','normal de crianca','2022-01-01','s',3,6,8,1,'s','s','s','sim','sim',2,'n','s','nenhuma','nda','s','n','normal','normal',1),

(2,'Regiane Bras', 'Mae','Caio Oliveira','Brasileiro',1,'A','m', 'sim', 'nenhuma', 'Pais', 'unico','nenhum','s','Dificuldade em ler','s','normal','s','s','s','00:00:00','05:00:00','Regiane Bras', 'normal','n','s','normal de crianca','2022-01-01','s',3,6,8,1,'s','s','s','sim','sim',2,'n','s','nenhuma','nda','s','n','normal','normal',2),

(3,'Roberto', 'pai','Caio Oliveira','Brasileiro',2,'B','v', 'nenhuma', 'nenhuma', 'Pais', 'do meio','nenhum','s','Dificuldade em ler','s','normal','s','s','s','00:00:00','05:00:00','Roberto', 'normal','n','s','brava','2022-01-01','s',3,6,8,1,'s','s','s','sim','n',2,'n','s','nenhuma','nda','s','n','normal','normal',3),

(4,'Jair', 'pai','Caio Oliveira','Brasileiro',2,'B','v', 'nenhuma', 'nenhuma', 'Pais', 'do meio','nenhum','s','Dificuldade em ler','s','normal','s','s','s','22:00:00','09:00:00','jair', 'normal','n','s','brava','2022-01-01','s',3,6,8,1,'s','s','s','sim','n',2,'n','s','nenhuma','nda','s','n','normal','normal',4),

(5,'Jair', 'pai','Caio Oliveira','Brasileiro',2,'B','v', 'nenhuma', 'nenhuma', 'Pais', 'cacula','nenhum','s','Dificuldade em ler e escrever','s','normal','s','s','s','22:00:00','09:00:00','jair', 'normal','n','s','brava','2022-01-01','s',3,6,8,1,'s','s','s','sim','n',2,'n','s','nenhuma','nda','s','n','normal','normal',5);



INSERT INTO IRMAO
VALUES
(1, 'm', 'Maria',3,3),
(2, 'm', 'Joao',4,3),
(3,'f', 'Juca',5,4),
(4,'f', 'Ana',6,5),
(5,'f', 'Ana',8,5);


INSERT INTO DOENCAINFANCIA
VALUES
(1,'convulsões', 1,1),
(2,'convulsões', 2,2),
(3,'convulsões', 3,3),
(4,'convulsões', 1,4),
(5,'convulsões', 1,5);

INSERT INTO RESPONSAVEL
VALUES
(72090791063,'Geraldo Carvalho', 'geraldo@banco1.com','Mercado Franco','quadra 2',71669829,'Central',2),
(11383496072, 'Regiane Bras', 'bras@gmail.com','Mercado Franco','quadra 2',71669829,'Central',2),
(30423392034, 'Roberto', 'roberto@gmail.com','Mercado Franco','quadra 2',71669829,'Central',3),
(79804697041, 'Jair', 'jair@16+1.com','Mercado Franco','quadra 2',71669829,'Central',5),
(87699966015 ,'Regina Lima', 'regina@gmail.com','Mercado Franco','quadra 2',71669829,'Central',7);

INSERT INTO PACOTE
VALUES
(1, 10, 120.00),
(2, 5, 2500.00),
(3, 2, 500.00),
(4, 3, 300.00),
(5, 1, 1000.00);

INSERT INTO CONTRATACAO
VALUES
(1, 10, 1, 72090791063,1, 1),
(2, 0,  2, 72090791063,2,2),
(3, 0,  3, 30423392034,3,3),
(4, 4,  4, 79804697041,1,1),
(5, 0,  5, 79804697041,5,5);



INSERT INTO ACOMPANHAMENTO
VALUES
(1,'2022-04-01','18:00:00','Nervoso e chorando muito', 1),
(2,'2022-04-01','19:00:00','nao quis fazer nada', 2),
(3,'2022-04-01','20:00:00','fez tudo pedido e nao queria ir embora', 3),
(4,'2022-04-02','08:00:00','chorando muito', 4),
(5,'2022-04-02','09:00:00','null', 5);


INSERT INTO doencasAoNascer
VALUES

(1, 'coracao pequeno'),
(2, 'null'),
(3, 'null'),
(4, 'null'),
(5, 'null');




INSERT INTO medicamentosAoNascer
VALUES
(1, 'null'),
(2, 'null'),
(3, 'null'),
(4, 'null'),
(5, 'null');


INSERT INTO casosNaFamiliaDeDoenca
VALUES
(1, 'diabetes'),
(2, 'AVC'),
(3, 'diabetes'),
(4, 'diabetes'),
(5, 'diabetes');

INSERT INTO problemasSaudeFisica
VALUES
(1, 'null'),
(2, 'null'),
(3, 'null'),
(4, 'null'),
(5, 'null');


INSERT INTO ajudantesNasTarefas
VALUES
(1, 'pai'),
(2, 'mae'),
(3, 'pai'),
(4, 'pai'),
(5, 'null');

INSERT INTO dificuldades
VALUES
(1, ' pegar no lapis'),
(2, 'leitura'),
(3, ' palavras'),
(4, 'concentracao'),
(5, 'concentracao');

INSERT INTO conhecimentos
VALUES
(1, ' numeros'),
(2, 'numeros'),
(3, ' ler'),
(4, 'ler'),
(5, 'numeros');


INSERT INTO doencasDuranteGravidez
VALUES
(1, ' null'),
(2, 'null'),
(3, ' diabates'),
(4, 'diabates'),
(5, 'diabates');

INSERT INTO medicamentosDuranteGravidez
VALUES
(1, ' null'),
(2, 'null'),
(3, ' null'),
(4, 'null'),
(5, 'null');
INSERT INTO telefones
VALUES
(72090791063, 61996073152),
(11383496072, 61996072152),
(30423392034, 61996012152),
(79804697041, 61996073124),
(87699966015, 61996071231);

INSERT INTO medicamentos
VALUES
(1, ' null'),
(2, 'null'),
(3, ' null'),
(4, 'null'),
(5, 'null');



INSERT INTO especialistasFornecendoAtendimentoAtualmente
VALUES
(1, ' null'),
(2, 'null'),
(3, ' null'),
(4, 'null'),
(5, 'null');


INSERT INTO habilidadesTrabalhadas
VALUES
(1, ' segurar o lapis'),
(2, 'leitura'),
(3, ' leitura'),
(4, 'leitura'),
(5, 'desenho');

INSERT INTO RELATORIO
VALUES
(1,("OLA ESSE É UM DOCUMENTO EM PDF"), 1),
(2,("OLA ESSE É UM DOCUMENTO EM PDF"), 2),
(3,("OLA ESSE É UM DOCUMENTO EM PDF"), 3),
(4,("OLA ESSE É UM DOCUMENTO EM PDF"), 4),
(5,("OLA ESSE É UM DOCUMENTO EM PDF"), 5);

