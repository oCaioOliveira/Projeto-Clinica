-- --------  << CLINICA >>  ----------
--
--         SCRIPT APAGA
--
-- Data Criacao ...........: 15/04/2022
-- Autor(es) ..............: Caio César Oliveira, Antônio Aldísio de Sousa Alves Ferreira Filho, Bianca Sofia de Oliveira, Daniel Porto
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: TF_1B_AntonioFilho
--
-- Ultimas Alteracoes
--   27/04/2022 => Adição da instrução de DROP TABLE para as 03 novas tabelas: PSICOPEDAGOGO, PACOTE e RELATORIO;
--   27/04/2022 => Adição da instrução de DROP USER para as 03 novos perfis;
--
-- PROJETO => 01 Base de Dados
--         => 24 Tabelas
-- 		   => 03 papeis
--         => 09 Usuarios
-- ---------------------------------------

USE TF_1B_AntonioFilho;

DROP TABLE trabalha;
DROP TABLE HABILIDADE;
DROP TABLE medicamentos;
DROP TABLE doencasAoNascer;
DROP TABLE especialistasFornecendoAtendimentoAtualmente;
DROP TABLE medicamentosAoNascer;
DROP TABLE casosNaFamiliaDeDoenca;
DROP TABLE problemasSaudeFisica;
DROP TABLE ajudantesNasTarefas;
DROP TABLE dificuldades;
DROP TABLE conhecimentos;
DROP TABLE doencasDuranteGravidez;
DROP TABLE medicamentosDuranteGravidez;
DROP TABLE RELATORIO;
DROP TABLE SESSAO;
DROP TABLE CONTRATO;
DROP TABLE telefones;
DROP TABLE PACOTE;
DROP TABLE RESPONSAVEL;
DROP TABLE DOENCAINFANCIA;
DROP TABLE IRMAO;
DROP TABLE ANAMNESE;
DROP TABLE DOCUMENTO;
DROP TABLE PSICOPEDAGOGO;

DROP USER bianca;
DROP USER caio2;
DROP USER antonio;
DROP USER rozana;
DROP USER flavio;
DROP USER luana;
DROP USER maria;
DROP USER joao;
DROP USER marialuisa;