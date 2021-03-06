-- --------  << CLINICA >>  ----------
--
--         SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 15/04/2022
-- Autor(es) ..............: Caio César Oliveira, Antônio Aldísio de Sousa Alves Ferreira Filho, Bianca Sofia de Oliveira, Daniel Porto
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: TF_Tema_1_AdrianLopes
--
-- Ultimas Alteracoes
--   27/04/2022 => Adição de dados em 03 novas tabelas: PSICOPEDAGOGO, PACOTE e RELATORIO;
--              => Mudança na inserção do atributo nomePsicopedagogo da tabela DOCUMENTO para PSICOPEDAGOGO;
--              => Mudança na inserção dos atributos qtdSessoesSemanais e precoPorSessao da tabela CONTRATACAO para PACOTE;
--
--   30/04/2022 => Adição de novas tuplas para todas as tabelas
--
--   01/05/2022 => Adição de tuplas para as novas tabelas(SESSAO E HABILIDADE)
--
--   04/05/2022 => Adição de 3 tuplas em cada tabela para totalizar 10 tuplas em cada tabela;
--
-- PROJETO => 01 Base de Dados
--         => 24 Tabelas
-- 		   => 03 papeis
--         => 09 Usuarios
-- ---------------------------------------

USE TF_Tema_1_AdrianLopes;

INSERT INTO PSICOPEDAGOGO(nomePsicopedagogo)
VALUES
('FABIO BATISTA'),
('ROSANA BATISTA'),
('CAIO BATISTA'),
('ERICK BATISTA'),
('FABIANA BATISTA'),
('Ana Maria da Silva'),
('Matheus Henrique Souza'),
('Mikaell Marea Martins'),
('Guilherme Victor Moreira'),
('Matheus Henrique Ferreira');



INSERT INTO DOCUMENTO
VALUES
(null,'2022-02-01','10:00:00','Will Smith', 'Caic Uniesco','2016-01-01','Geraldo Carvalho', 'Regiane Bras','1980-03-12','1985-12-01', 2),
(null,'2022-02-01','11:00:00','Ben Smith', 'Caic Uniesco','2017-02-01','Geraldo Carvalho', 'Regiane Bras','1980-03-12','1985-12-01', 3),
(null,'2022-02-01','09:00:00','Adriana Lima', 'Caic Uniesco','2017-12-01','Roberto Lima', 'Regina Lima','1982-05-12','1980-01-06', 1),
(null,'2022-02-01','08:00:00','Marcos Bolsonaro', 'Caic Uniesco','2017-02-01','Jair Balsonaro', 'Michele Bolsonaro','1990-03-12','1995-12-01', 4),
(null,'2022-02-01','07:00:00','Maria Bolsonaro', 'Caic Uniesco','2017-02-07','Jair Balsonaro', 'Michele Bolsonaro','1990-03-12','1995-12-01', 5),
(null,'2022-02-02','08:00:00','João Pereira Costa', 'Centro 1','2015-02-01','Antônio Pereira Costa', 'Milena Costa Oliveira','1990-03-22','1994-11-01', 5),
(null,'2022-04-02','10:00:00','Matheus Soares Santos', 'Leonardo da Vinci','2012-05-06',null, 'Nicole Soares Santos','1999-02-11',null, 7),
(null,'2022-03-05','14:00:00','Miguel Labareta Coelho', 'Projeção','2013-09-10','Fabio Batista Oliveira', 'Maria Tereza Oliveira','1992-05-09','1992-11-10', 8),
(null,'2022-04-04','16:00:00','João Pedro Henrique', 'Sol Nascente','2011-11-12','Leonardo Maroto Coelho', null,null,'1995-12-30', 9),
(null,'2022-02-03','07:00:00','Maria Clara Oliveira Santos', 'Centro 2','2015-04-20','Jorge Santos Pereira', 'Maria Luisa Oliveira','1997-03-02','1995-02-20', 6);

INSERT INTO ANAMNESE
VALUES
(null,'Regiane Bras', 'Mae','Caio Oliveira','Brasileiro',1,'A','m', 'nenhuma', 'nenhuma', 'Pais', 'unico','nenhum','s','Dificuldade de entender as letras','s','normal','s','s','s','00:00:00','05:00:00','Regiane Bras', 'normal','n','s','normal de crianca','2022-01-01','s',3,6,8,1,'s','s','s','s','s',2,'n','s','nenhuma','nda','s','n','normal','normal',1),

(null,'Regiane Bras', 'Mae','Caio Oliveira','Brasileiro',1,'A','m', 'sim', 'nenhuma', 'Pais', 'unico','nenhum','s','Dificuldade em ler','s','normal','s','s','s','00:00:00','05:00:00','Regiane Bras', 'normal','n','s','normal de crianca','2022-01-01','s',3,2,1,2,'s','s','s','s','s',2,'n','s','nenhuma','nda','s','n','normal','cesário',2),

(null,'Roberto', 'pai','Caio Oliveira','Brasileiro',2,'B','v', 'nenhuma', 'nenhuma', 'Pais', 'do meio','nenhum','s','Dificuldade em ler','s','normal','s','s','s','00:00:00','05:00:00','Roberto', 'normal','n','s','brava','2022-01-01','s',3,2,1,2,'s','s','s','s','n',3,'n','s','Problemas com miopia','nda','n','n','Com suspeita de depressão','normal',3),

(null,'Jair', 'pai','Caio Oliveira','Brasileiro',2,'B','v', 'nenhuma', 'nenhuma', 'Pais', 'do meio','nenhum','s','Dificuldade em ler','s','normal','s','s','s','22:00:00','09:00:00','jair', 'normal','n','s','brava','2022-01-01','s',3,3,1,1,'s','s','s','s','n',2,'n','s','nenhuma','nda','s','n','normal','cesária',4),

(null,'Jair', 'pai','Caio Oliveira','Brasileiro',2,'B','v', 'nenhuma', 'nenhuma', 'Pais', 'cacula','nenhum','s','Dificuldade em ler e escrever','s','normal','s','s','s','22:00:00','09:00:00','jair', 'normal','n','s','Reage normalmente','2022-01-01','s',3,2,2,2,'s','s','s','s','n',2,'n','s','nenhuma','nda','n','n','normal','normal',5),

(null,'Antônio Pereira Costa', 'pai','Rosana Batista','Brasileira',1,'A','v', 'nenhuma', 'nenhuma', 'Pais', 'cacula','nenhum','s','Dificuldade com a lateralidade','s','normal','s','s','s','22:00:00','09:00:00','jair', 'normal','n','s','brava','2020-01-01','s',3,1,2,3,'s','s','s','n','s',3,'s','n','Audição prejudicada','nda','n','n','Ansiedade na gravidez','cesária',6),

(null,'Antônio Filismino', 'avô','Matheus Henrique Ferreira','Brasileiro',5,'A','m', 'Foi embora quando era muito novo', 'nenhum', 'Pais', 'cacula','nenhum','s','Não sabe escrever','n','normal','s','s','s','21:00:00','08:00:00','Antônio Filismino', 'imperativo','n','n','choro','2021-01-30','n',0,0,0,1,'s','n','s','s','n',1,'n','s','Boas',null,'s','n','estavel','cesária',7),

(null,'Teresinha de Jesus', 'avó','Guilherme Victor Moreira','Brasileiro',3,'C','v', 'nenhuma', 'nenhuma', 'pais', 'do meio','nenhum','s','Dificuldade psicomotoras','s','normal','s','n','s','20:00:00','07:00:00','Mirian Miranda Souza', 'calmo','n','s','Compreensivel','2020-01-30','s',0,0,1,1,'s','s','s','n','n',2,'n','s','Ótimas',null,'n','n','Levemente Nervosa','normal',8),

(null,'Flávio Batista Oliveira', 'pai','Mikaell Marea Martins','Brasileira',1,'A','m', 'nenhuma', 'Morreu aos 3 anos da criança', 'Pai', 'unico','nenhum','n','Desequilibrio constante','n','normal','s','n','s','20:00:00','06:00:00','Flávio Batista Oliveira', 'tranquilo','n','n','brava','2021-06-30','s',0,0,1,1,'s','s','s','s','s',2,'s','n','Suspeita de surdez',null,'n','n','Dores Intensas acima do normal','cesária',9),

(null,'Maria Luisa Oliveira', 'Mãe','Rosana Batista','Brasileiro',3,'C','v', 'nenhuma', 'nenhuma', 'Pais', 'cacula','nenhum','s','Dificuldade em se comunicar e prestar atenção','s','normal','s','s','s','22:00:00','09:00:00','jair', 'normal','n','s','reage com violência','2021-02-01','s',2,1,3,2,'s','s','s','s','n',4,'n','s','nenhuma','nda','n','n','Depressão durante a gravidez','cesária',10);



INSERT INTO IRMAO
VALUES
(null, 'm', 'Maria',3,1),
(null, 'm', 'Joao',4,1),
(null,'f', 'Juca',5,4),
(null,'f', 'Ana',6,3),
(null,'f', 'Ana',8,2),
(null,'f', 'Lana Maria',6,1),
(null,'m', null, null,9),
(null,'f', 'João',6,5),
(null,'f', 'Maria',9,7),
(null,'m', 'Victor Hugo',8,8);


INSERT INTO DOENCAINFANCIA
VALUES
(null,'convulsões', 1,1),
(null,'Cardiopatias', 3,2),
(null,'dermatite crônica', 2,3),
(null,'convulsões', 2,4),
(null,'Diabetes tipo 1', 1,5),
(null,'convulsões', 2,4),
(null,'Garganta Inflamada', 2,6),
(null,'Conjutivite', 1,7),
(null,'Malária', 2,8),
(null,'Pneumonia', 3,6);



INSERT INTO RESPONSAVEL
VALUES
(72090791063,'Geraldo Carvalho', 'geraldo@banco1.com','Mercado Franco','quadra 2',71669829,2,'Central'),
(11383496072, 'Regiane Bras', 'bras@gmail.com','Mercado Franco','quadra 2',71669829,2,'Central'),
(30423392034, 'Roberto', 'roberto@gmail.com','Mercado Franco','quadra 2',71669829,3,'Central'),
(79804697041, 'Jair', 'jair@16+1.com','Mercado Franco','quadra 2',71669829,5,'Central'),
(87699966015 ,'Regina Lima', 'regina@gmail.com','Mercado Franco','quadra 2',71669829,7,'Central'),
(79894697481, 'Antônio Pereira Costa', 'Antonio44@gmail.com','Rua 505','Asa sul',72015048,5, null),
(69708044791, 'Cleber Batista Oliveira', 'cleberBatista@hotmail.com','Taguatinga','quadra 2',72135195,5,null),
(81569996760 ,'Regiane Pereira', 'regiane@gmail.com','Setor Comercial','quadra 5',76629981,16,'Proximo ao colegio objetivo'),
(71946798489, 'Flávio Batista Oliveira', 'flavioBatista@gmail.com','Larangeiras','Samambaia',70482015,13, null),
(87809256042 ,'Maria Luisa Oliveira', 'malu@gmail.com','Rua 405','Asa sul',72015049,7,null);

INSERT INTO PACOTE
VALUES
( null,1, 120.00),
( null,2, 250.00),
( null,3, 300.00),
( null,4, 400.00),
( null,5, 500.00),
( null,6, 550.00),
( null,2, 245.00),
( null,3, 299.99),
( null,4, 399.99),
( null,7, 1000.00);

INSERT INTO telefones
VALUES
(72090791063, 61996073152),
(11383496072, 61996072152),
(30423392034, 61996012152),
(79804697041, 61996073124),
(87699966015, 61996071231),
(87809256042, 61984337895),
(69708044791, 61995000283),
(81569996760, 61990503504),
(71946798489, 61987843395),
(79894697481, 61984775912);


INSERT INTO CONTRATO
VALUES
(null, 100, 1, 72090791063,1, 1),
(null, 0,  3, 11383496072,2,2),
(null, 0,  2, 30423392034,3,3),
(null, 4,  4, 79804697041,1,4),
(null, 0,  8, 87699966015,5,5),
(null, 4,  6, 87809256042,7,6),
(null, 10,  5, 79804697041,1,7),
(null, 0,  7, 69708044791,5,8),
(null, 50,  10, 71946798489,7,9),
(null, 0,  9, 79894697481,5,10);


INSERT INTO SESSAO
VALUES
(null,1,'2022-04-01','18:00:00','Nervoso e chorando muito'),
(null,2,'2022-03-01','19:00:00','nao quis fazer nada'),
(null,3,'2022-02-01','20:00:00','fez tudo pedido e nao queria ir embora'),
(null,4,'2022-04-02','08:00:00','chorando muito'),
(null,5,'2022-03-02','10:00:00','Ficou muito nervoso'),
(null,6,'2022-05-03','08:00:00','Ficou muito tímido'),
(null,7,'2022-05-02','10:00:00','balançando a cabeça intensamente'),   
(null,8,'2022-05-02','14:00:00','Batendo o pé no chão sem parar'),
(null,9,'2022-05-03','16:00:00',null),
(null,10,'2022-03-05','09:00:00',null);

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
  (null,'A criança não conseguiu evoluir como o esperado, suspeita de autismo', 7),
 (null,'A criança aprendeu a ler e escrever',8 ),
(null,'A criança teve avanço constante nas suas habilidades psicomotoras', 9),
 (null,'Foram trabalhadas as questões de relacionamentos interpessoais, sendo que a criança evoluiu de forma significativa,
 interagindo com todos os colegas, recomendamos que a criança frequente retiros para socializar',10 );


INSERT INTO medicamentosDuranteGravidez
VALUES
(1, 'Vitaminas para desenvolvimento'),
(1, 'Metildopa'),
(2, 'Ácido fólico'),
(2, 'florax'),
(3, 'Ácido fólico'),
(5, 'Metildopa'),
(6, 'paracetamol'),
(7, 'Antiatiatico'),
(7, 'Generico'),
(9, 'Ácido fólico');

INSERT INTO doencasDuranteGravidez
VALUES
(1, 'Zika'),
(2, 'Pré eclâmpsia'),
(3, 'diabetes'),
(3, 'Pré eclâmpsia'),
(5, 'diabetes'),
(8, 'Zika'),
(8, 'Pré eclâmpsia'),
(8, 'diabetes'),
(9, 'Anemia'),
(10, 'Anemia');

INSERT INTO conhecimentos
VALUES
(1, 'Bom em matemática'),
(1, 'Inglês'),
(2, ' ler e escrever'),
(3, 'Inglês'),
(4, 'informática básica'),
(5, 'Inglês'),
(6, 'Escrever'),
(8, 'Ler'),
(9, 'Inglês'),
(10, 'informática básica');

INSERT INTO dificuldades
VALUES
(1, ' pegar no lapis'),
(1, 'leitura'),
(2, 'falar certo'),
(3, 'Orientar-se'),
(3, 'concentracao'),
(6, 'Organizar o tempo'),
(7, 'leitura'),
(7, 'escrita'),
(9, 'Organizar o tempo'),
(10, 'falar sem gaguejar');

INSERT INTO ajudantesNasTarefas
VALUES
(1, 'Mãe'),
(2, 'Pai'),
(3, 'Pai'),
(4, 'Tia'),
(5, 'Mãe'),
(6, 'Pai'),
(7, 'Avó'),
(8, 'Mãe'),
(9, 'Pai'),
(10, 'Mãe');


INSERT INTO problemasSaudeFisica
VALUES
(1, 'Nanismo'),
(2, 'Problemas no coração'),
(3, 'Problemas de pressão'),
(4, 'Possui diabetes tipo 1'),
(5, 'Possui pressão alta'),
(6, 'Alergias'),
(7, 'Possui diabetes tipo 1'),
(8, 'Possui pressão alta'),
(9, 'Dor muscular'),
(10, 'Anenia falciforme');


INSERT INTO medicamentosAoNascer
VALUES
(1, 'Melatonina'),
(2, 'dipirona'),
(2, 'Melatonina'),
(3, 'Melatonina'),
(4, 'Apetivin'),
(5, 'Melatonina'),
(6, 'Melatonina'),
(7, 'Apetivin'),
(8, 'Melatonina'),
(8, 'dipirona');



INSERT INTO casosNaFamiliaDeDoenca
VALUES
(1, 'diabetes'),
(1, 'AVC'),
(2, 'Câncer'),
(3, 'diabetes'),
(4, 'Alzheimer'),
(5, 'diabetes'),
(6, 'diabetes'),
(7, 'Alzheimer'),
(8, 'diabetes'),
(9, 'Hipertensão');


INSERT INTO doencasAoNascer
VALUES
(1, 'coracao pequeno'),
(2, 'Fenilcetonúria'),
(3, 'Hipotireoidismo congênito'),
(3, 'Fibrose cística'),
(4, 'Deficiência de Biotinidase'),
(6,'Galactosemia'),
(6, 'Fibrose cística'),
(8, 'Deficiência de Biotinidase'),
(9,'Galactosemia'),
(10,'Hemofilia');



INSERT INTO medicamentos
VALUES
(1, ' ritalina'),
(2, 'ritalina'),
(3, ' ritalina'),
(4, 'Controla'),
(5, 'Controla'),
(6, ' ritalina'),
(7, 'Controla'),
(8, 'Controla'),
(9, ' ritalina'),
(10, 'Controla');



INSERT INTO especialistasFornecendoAtendimentoAtualmente
VALUES
(1, ' FABIO BATISTA'),
(2, 'ROSANA BATISTA'),
(3, ' CAIO BATISTA'),
(4, 'ERICK BATISTA'),
(5, 'Controla'),
(6, ' FABIANA BATISTA'),
(7, 'Matheus Henrique Souza'),
(8, 'Matheus Henrique Souza'),
(9, ' Guilherme Victor Moreira'),
(10, 'FABIANA BATISTA');


INSERT INTO HABILIDADE
VALUES
(null, 'escrita', 'saber escrever de forma correta'),
(null, 'leitura', 'juntar sons de letras corretamente'),
(null, 'lateralidade', 'saber dominar os dois lado do corpo'),
(null, 'desenho', 'dominar o uso do lapis'),
(null, 'orientar', 'saber se orientar no espaco e tempo'),
(null, 'ingles', 'saber se falar ingles'),
(null, 'escrita', 'Escrever caligrafia'),
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
(7,7),
(8,8),
(9,9),
(10,10);