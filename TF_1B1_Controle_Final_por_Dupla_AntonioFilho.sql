-- --------  << CLINICA >>  ----------
--
--         SCRIPT CONTROLE
--
-- Data Criacao ...........: 27/04/2022
-- Autor(es) ..............: Caio César Oliveira, Antônio Aldísio de Sousa Alves Ferreira Filho, Bianca Sofia de Oliveira, Daniel Porto
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: trabalhofinal1
-- Ultimas Alteracoes
--                   01/05/22 => Adequação das permissoes
-- PROJETO => 01 Base de Dados
--         => 23 Tabelas
--         => 03 Usuarios
-- ---------------------------------------

-- PERFIL ADMINISTRADOR
CREATE USER bianca
IDENTIFIED BY 'adminSupperar';

CREATE USER caio
IDENTIFIED BY 'adminSupperar';

-- PERFIL PSICOPEDAGOGO
CREATE USER rozana
IDENTIFIED BY 'psicopedagogoSuperar';

CREATE USER flavio
IDENTIFIED BY 'psicopedagogoSuperar';

-- PERFIL RESPONSAVEL
CREATE USER maria
IDENTIFIED BY 'responsavelSuperar';

CREATE USER joao
IDENTIFIED BY 'responsavelSuperar';


-- PRIVILEGIO ADMINISTRADOR
GRANT ALL PRIVILEGES ON trabalhofinal1.* TO bianca;
GRANT ALL PRIVILEGES ON trabalhofinal1.* TO caio;

-- PRIVILEGIO PsicoPedagogo
GRANT SELECT, INSERT, UPDATE, DELETE ON trabalhofinal1.* TO rozana;
GRANT SELECT, INSERT, UPDATE, DELETE ON trabalhofinal1.* TO flavio;

-- PRIVILEGIO Responsavel
GRANT SELECT ON trabalhofinal1.* TO maria;
GRANT SELECT ON trabalhofinal1.* TO joao;