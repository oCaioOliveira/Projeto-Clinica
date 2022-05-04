-- --------  << CLINICA >>  ----------
--
--         SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 15/04/2022
-- Autor(es) ..............: Caio César Oliveira, Antônio Aldísio de Sousa Alves Ferreira Filho, Bianca Sofia de Oliveira, Daniel Porto
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: TF_1B_AntonioFilho
--
-- Ultimas Alteracoes
--   27/04/2022 => Adição de dados em 03 novas tabelas: PSICOPEDAGOGO, PACOTE e RELATORIO;
--              => Mudança na inserção do atributo nomePsicopedagogo da tabela DOCUMENTO para PSICOPEDAGOGO;
--              => Mudança na inserção dos atributos qtdSessoesSemanais e precoPorSessao da tabela CONTRATACAO para PACOTE;
--
--   30/04/2022 => Adição de novas tuplas para todas as tabelas
--   01/05/2022 => Adição de tuplas para as novas tabelas(SESSAO E HABILIDADE)
-- PROJETO => 01 Base de Dados
--         => 24 Tabelas
-- 		   => 03 papeis
--         => 09 Usuarios
-- ---------------------------------------

USE TF_1B_AntonioFilho;

INSERT INTO PSICOPEDAGOGO(nomePsicopedagogo)
VALUES
('FABIO BATISTA'),
('ROSANA BATISTA'),
('CAIO BATISTA'),
('ERICK BATISTA'),
('FABIANA BATISTA'),
('Ana Maria da Silva'),
('Matheus Henrique Ferreira');



INSERT INTO DOCUMENTO
VALUES
(null,'2022-02-01','10:00:00','Will Smith', 'Caic Uniesco','2016-01-01','Geraldo Carvalho', 'Regiane Bras','1980-03-12','1985-12-01', 2),
(null,'2022-02-01','11:00:00','Ben Smith', 'Caic Uniesco','2017-02-01','Geraldo Carvalho', 'Regiane Bras','1980-03-12','1985-12-01', 3),
(null,'2022-02-01','09:00:00','Adriana Lima', 'Caic Uniesco','2017-12-01','Roberto Lima', 'Regina Lima','1982-05-12','1980-01-06', 1),
(null,'2022-02-01','08:00:00','Marcos Bolsonaro', 'Caic Uniesco','2017-02-01','Jair Balsonaro', 'Michele Bolsonaro','1990-03-12','1995-12-01', 4),
(null,'2022-02-01','07:00:00','Maria Bolsonaro', 'Caic Uniesco','2017-02-07','Jair Balsonaro', 'Michele Bolsonaro','1990-03-12','1995-12-01', 5),
(null,'2022-02-02','08:00:00','João Pereira Costa', 'Centro 1','2015-02-01','Antônio Pereira Costa', 'Milena Costa Oliveira','1990-03-22','1994-11-01', 5),
(null,'2022-02-03','07:00:00','Maria Clara Oliveira Santos', 'Centro 2','2015-04-20','Jorge Santos Pereira', 'Maria Luisa Oliveira','1997-03-02','1995-02-20', 6);

INSERT INTO ANAMNESE
VALUES
(null,'Regiane Bras', 'Mae','Caio Oliveira','Brasileiro',1,'A','m', 'nenhuma', 'nenhuma', 'Pais', 'unico','nenhum','s','Dificuldade de entender as letras','s','normal','s','s','s','00:00:00','05:00:00','Regiane Bras', 'normal','n','s','normal de crianca','2022-01-01','s',3,6,8,1,'s','s','s','s','s',2,'n','s','nenhuma','nda','s','n','normal','normal',1),

(null,'Regiane Bras', 'Mae','Caio Oliveira','Brasileiro',1,'A','m', 'sim', 'nenhuma', 'Pais', 'unico','nenhum','s','Dificuldade em ler','s','normal','s','s','s','00:00:00','05:00:00','Regiane Bras', 'normal','n','s','normal de crianca','2022-01-01','s',3,2,1,2,'s','s','s','s','s',2,'n','s','nenhuma','nda','s','n','normal','cesário',2),

(null,'Roberto', 'pai','Caio Oliveira','Brasileiro',2,'B','v', 'nenhuma', 'nenhuma', 'Pais', 'do meio','nenhum','s','Dificuldade em ler','s','normal','s','s','s','00:00:00','05:00:00','Roberto', 'normal','n','s','brava','2022-01-01','s',3,2,1,2,'s','s','s','s','n',3,'n','s','Problemas com miopia','nda','n','n','Com suspeita de depressão','normal',3),

(null,'Jair', 'pai','Caio Oliveira','Brasileiro',2,'B','v', 'nenhuma', 'nenhuma', 'Pais', 'do meio','nenhum','s','Dificuldade em ler','s','normal','s','s','s','22:00:00','09:00:00','jair', 'normal','n','s','brava','2022-01-01','s',3,3,1,1,'s','s','s','s','n',2,'n','s','nenhuma','nda','s','n','normal','cesária',4),

(null,'Jair', 'pai','Caio Oliveira','Brasileiro',2,'B','v', 'nenhuma', 'nenhuma', 'Pais', 'cacula','nenhum','s','Dificuldade em ler e escrever','s','normal','s','s','s','22:00:00','09:00:00','jair', 'normal','n','s','Reage normalmente','2022-01-01','s',3,2,2,2,'s','s','s','s','n',2,'n','s','nenhuma','nda','n','n','normal','normal',5),

(null,'Antônio Pereira Costa', 'pai','Rosana Batista','Brasileira',1,'A','v', 'nenhuma', 'nenhuma', 'Pais', 'cacula','nenhum','s','Dificuldade com a lateralidade','s','normal','s','s','s','22:00:00','09:00:00','jair', 'normal','n','s','brava','2020-01-01','s',3,1,2,3,'s','s','s','n','s',3,'s','n','Audição prejudicada','nda','n','n','Ansiedade na gravidez','cesária',6),

(null,'Maria Luisa Oliveira', 'Mãe','Rosana Batista','Brasileiro',3,'C','v', 'nenhuma', 'nenhuma', 'Pais', 'cacula','nenhum','s','Dificuldade em se comunicar e prestar atenção','s','normal','s','s','s','22:00:00','09:00:00','jair', 'normal','n','s','reage com violência','2021-02-01','s',2,1,3,2,'s','s','s','s','n',4,'n','s','nenhuma','nda','n','n','Depressão durante a gravidez','cesária',7);



INSERT INTO IRMAO
VALUES
(null, 'm', 'Maria',3,15),
(null, 'm', 'Joao',4,16),
(null,'f', 'Juca',5,16),
(null,'f', 'Ana',6,17),
(null,'f', 'Ana',8,18),
(null,'f', 'Lana Maria',6,20),
(null,'m', 'Victor Hugo',8,21);


INSERT INTO DOENCAINFANCIA
VALUES
(null,'convulsões', 15,1),
(null,'Cardiopatias', 15,2),
(null,'dermatite crônica', 17,3),
(null,'convulsões', 18,4),
(null,'Diabetes tipo 1', 20,5),
(null,'convulsões', 17,4),
(null,'Pneumonia', 20,6);



INSERT INTO RESPONSAVEL
VALUES
(72090791063,'Geraldo Carvalho', 'geraldo@banco1.com','Mercado Franco','quadra 2',71669829,2,'Central'),
(11383496072, 'Regiane Bras', 'bras@gmail.com','Mercado Franco','quadra 2',71669829,2,'Central'),
(30423392034, 'Roberto', 'roberto@gmail.com','Mercado Franco','quadra 2',71669829,3,'Central'),
(79804697041, 'Jair', 'jair@16+1.com','Mercado Franco','quadra 2',71669829,5,'Central'),
(87699966015 ,'Regina Lima', 'regina@gmail.com','Mercado Franco','quadra 2',71669829,7,'Central'),
(79894697481, 'Antônio Pereira Costa', 'Antonio44@gmail.com','Rua 505','Asa sul',72015048,5, null),
(87809256042 ,'Maria Luisa Oliveira', 'malu@gmail.com','Rua 405','Asa sul',72015049,7,null);

INSERT INTO PACOTE
VALUES
( null,1, 120.00),
( null,2, 250.00),
( null,3, 300.00),
( null,4, 400.00),
( null,5, 500.00),
( null,6, 550.00),
( null,7, 1000.00);

INSERT INTO telefones
VALUES
(72090791063, 61996073152),
(11383496072, 61996072152),
(30423392034, 61996012152),
(79804697041, 61996073124),
(87699966015, 61996071231),
(87809256042, 61984337895),
(79894697481, 61984775912);


INSERT INTO CONTRATO
VALUES
(null, 100, 15, 72090791063,1, 1),
(null, 0,  16, 72090791063,2,2),
(null, 0,  17, 30423392034,3,3),
(null, 4,  18, 79804697041,1,4),
(null, 0,  19, 79804697041,5,5),
(null, 4,  20, 79894697481,7,6),
(null, 0,  21, 87809256042,5,7);


INSERT INTO SESSAO
VALUES
(null,1,'2022-04-01','18:00:00','Nervoso e chorando muito'),
(null,2,'2022-03-01','19:00:00','nao quis fazer nada'),
(null,3,'2022-02-01','20:00:00','fez tudo pedido e nao queria ir embora'),
(null,4,'2022-04-02','08:00:00','chorando muito'),
(null,5,'2022-03-02','10:00:00','Ficou muito nervoso'),
(null,6,'2022-04-03','10:00:00','Ficou muito tímido'),
(null,7,'2022-03-05','09:00:00','null');

INSERT INTO RELATORIO VALUES
(null,'Foram trabalhadas as questões de lateralidade e oralidade, a criança está se saindo cada vez melhor nos exercícios de lateralidade,
 porém não houve melhoras significativas na oralidade, Indicação de 10 sessões com fonaudiólogo', 1),
 (null,'Foram trabalhadas as questões lateralidade e orientação temporal, com desempenho muito bom com o decorrer das atividades, aprendeu a olhar
 as horas no relógio para se orientar no tempo.', 2 ),
 (null,'Foram trabalhadas as questões de oralidade e memória, tais como jogos de memória, histórias infantis e a criança teve um bom aproveitamento,
 com resultados satisfatórios.Indicamos mais 10 sessões de terapia', 3),
 (null,'Foram trabalhadas as questões de lateralidade, paciência e memória.Melhora na lateralidade com o uso de exercícios envolvendo o corpo
 e posição de objetos, porém a baixa intolerância à frustração persiste, melhorando bem mais lentamente. Acredita-se que com a maturidade isso amenize.
 Indicamos consulta com o neurologista', 4),
 (null,'Foram avaliadas as questões de lateralidade, com uso de exercícios trabalhando direita e esquerda e posição. Melhora significativa nesse quesito. Também houve melhora no relacionamente interpessoal',5 ),
(null,'Foram trabalhadas as questões de lateralidade, e memória.Melhora na lateralidade com o uso de exercícios, a baixa intolerância está melhorando. Acredita-se que com a maturidade isso amenize mais.
 Indicamos consulta com o neurologista', 6),
 (null,'Foram trabalhadas as questões de relacionamentos interpessoais, sendo que a criança evoluiu de forma significativa,
 interagindo com todos os colegas, recomendamos que a criança frequente retiros para socializar',7 );


INSERT INTO medicamentosDuranteGravidez
VALUES
(17, 'Vitaminas para desenvolvimento'),
(17, 'Metildopa'),
(18, 'Ácido fólico'),
(19, 'florax'),
(20, 'Ácido fólico'),
(21, 'Metildopa'),
(21, 'Ácido fólico');

INSERT INTO doencasDuranteGravidez
VALUES
(17, 'Zika'),
(15, 'Pré eclâmpsia'),
(16, ' diabetes'),
(21, 'Pré eclâmpsia'),
(20, 'diabetes'),
(21, 'diabetes'),
(20, 'Anemia');

INSERT INTO conhecimentos
VALUES
(15, 'Bom em matemática'),
(16, 'Inglês'),
(17, ' ler e escrever'),
(18, 'Inglês'),
(19, 'informática básica'),
(20, 'Inglês'),
(21, 'informática básica');

INSERT INTO dificuldades
VALUES
(15, ' pegar no lapis'),
(16, 'leitura'),
(17, 'falar certo'),
(18, 'Orientar-se'),
(19, 'concentracao'),
(20, 'Organizar o tempo'),
(21, 'falar sem gaguejar');

INSERT INTO ajudantesNasTarefas
VALUES
(15, 'Mãe'),
(16, 'Pai'),
(17, 'Pai'),
(18, 'Tia'),
(19, 'Mãe'),
(20, 'Pai'),
(21, 'Mãe');


INSERT INTO problemasSaudeFisica
VALUES
(15, 'Nanismo'),
(15, 'Problemas no coração'),
(15, 'Problemas de pressão'),
(18, 'Possui diabetes tipo 1'),
(18, 'Possui pressão alta'),
(20, 'Alergias'),
(21, 'Anenia falciforme');


INSERT INTO medicamentosAoNascer
VALUES
(15, 'Melatonina'),
(15, 'dipirona'),
(16, 'dipirona'),
(20, 'Melatonina'),
(18, 'Apetivin'),
(17, 'Melatonina'),
(18, 'dipirona');



INSERT INTO casosNaFamiliaDeDoenca
VALUES
(15, 'diabetes'),
(16, 'AVC'),
(17, 'Câncer'),
(18, 'diabetes'),
(19, 'Alzheimer'),
(20, 'diabetes'),
(21, 'Hipertensão');


INSERT INTO doencasAoNascer
VALUES
(15, 'coracao pequeno'),
(15, 'Fenilcetonúria'),
(20, 'Hipotireoidismo congênito'),
(18, 'Fibrose cística'),
(19, 'Deficiência de Biotinidase'),
(20,'Galactosemia'),
(21,'Hemofilia');



INSERT INTO medicamentos
VALUES
(1, ' ritalina'),
(2, 'ritalina'),
(3, ' ritalina'),
(4, 'Controla'),
(5, 'Controla'),
(6, ' ritalina'),
(7, 'Controla');



INSERT INTO especialistasFornecendoAtendimentoAtualmente
VALUES
(1, ' FABIO BATISTA'),
(2, 'ROSANA BATISTA'),
(3, ' CAIO BATISTA'),
(4, 'ERICK BATISTA'),
(5, 'Controla'),
(6, ' FABIANA BATISTA'),
(7, 'FABIANA BATISTA');


INSERT INTO HABILIDADE
VALUES
(null, 'escrita', 'saber escrever de forma correta'),
(null, 'leitura', 'juntar sons de letras corretamente'),
(null, 'lateralidade', 'saber dominar os dois lado do corpo'),
(null, 'desenho', 'dominar o uso do lapis'),
(null, 'orientar', 'saber se orientar no espaco e tempo'),
(null, 'ingles', 'saber se falar ingles'),
(null, 'fala', 'saber falar de forma correta');

INSERT INTO trabalha
VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7);



