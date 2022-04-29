-- --------  << CLINICA >>  ----------
--
--         SCRIPT CONTROLE
--
-- Data Criacao ...........: 27/04/2022
-- Autor(es) ..............: Caio César Oliveira, Antônio Aldísio de Sousa Alves Ferreira Filho 
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: trabalhofinal1
--
-- PROJETO => 01 Base de Dados
--         => 23 Tabelas
--         => 03 Usuarios
-- ---------------------------------------

-- USUARIO
CREATE USER admin
IDENTIFIED BY 'adminSupperar';

CREATE USER psicopedagogo
IDENTIFIED BY 'psicopedagogoSuperar';

CREATE USER usuario
IDENTIFIED BY 'usuarioSuperar';


-- PRIVILEGIO
GRANT ALL PRIVILEGES ON trabalhofinal1.* TO admin;

GRANT SELECT, INSERT, UPDATE, DELETE ON trabalhofinal1.* TO psicopedagogo;

GRANT SELECT ON trabalhofinal1.* TO usuario;