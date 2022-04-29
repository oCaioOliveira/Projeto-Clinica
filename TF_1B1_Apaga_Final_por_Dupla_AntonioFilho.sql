-- --------  << CLINICA >>  ----------
--
--         SCRIPT APAGA
--
-- Data Criacao ...........: 15/04/2022
-- Autor(es) ..............: Caio César Oliveira, Antônio Aldísio de Sousa Alves Ferreira Filho 
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: trabalhofinal1
--
-- Ultimas Alteracoes
--   27/04/2022 => Adição da instrução de DROP TABLE para as 03 novas tabelas: PSICOPEDAGOGO, PACOTE e RELATORIO;
--   27/04/2022 => Adição da instrução de DROP USER para as 03 novos perfis;
--
-- PROJETO => 01 Base de Dados
--         => 23 Tabelas
--         => 03 Usuarios
-- ---------------------------------------

USE trabalhofinal1;

DROP TABLE RELATORIO;
DROP TABLE habilidadesTrabalhadas;
DROP TABLE especialistasFornecendoAtendimentoAtualmente;
DROP TABLE medicamentos;
DROP TABLE telefones;
DROP TABLE medicamentosDuranteGravidez;
DROP TABLE doencasDuranteGravidez;
DROP TABLE conhecimentos;
DROP TABLE dificuldades;
DROP TABLE ajudantesNasTarefas;
DROP TABLE problemasSaudeFisica;
DROP TABLE casosNaFamiliaDeDoenca;
DROP TABLE medicamentosAoNascer;
DROP TABLE doencasAoNascer;
DROP TABLE ACOMPANHAMENTO;
DROP TABLE CONTRATACAO;
DROP TABLE PACOTE;
DROP TABLE RESPONSAVEL;
DROP TABLE DOENCAINFANCIA;
DROP TABLE IRMAO;
DROP TABLE ANAMNESE;
DROP TABLE DOCUMENTO;
DROP TABLE PSICOPEDAGOGO;

DROP USER admin;
DROP USER psicopedagogo;
DROP USER usuario;
