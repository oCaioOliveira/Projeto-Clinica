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
-- 					 01/05/22 => Adição roles
-- PROJETO => 01 Base de Dados
--         => 23 Tabelas
--         => 03 Usuarios
-- ---------------------------------------

CREATE ROLE IF NOT EXISTS 'administrador', 'psicopedagogo', 'responsavel';

GRANT ALL ON TF_1B_AntonioFilho.* TO 'administrador';
GRANT SELECT, UPDATE, INSERT, DELETE ON TF_1B_AntonioFilho.* TO 'psicopedagogo';
GRANT SELECT ON TF_1B_AntonioFilho.* TO 'responsavel';

-- PERFIL ADMINISTRADOR
CREATE USER bianca
IDENTIFIED BY 'adminSupperar';
GRANT 'administrador' TO 'bianca';


CREATE USER caio
IDENTIFIED BY 'adminSupperar2';
GRANT 'administrador' TO 'caio';

-- PERFIL PSICOPEDAGOGO

CREATE USER rozana
IDENTIFIED BY 'psicopedagogoSuperar';
GRANT 'psicopedagogo' TO 'rozana';

CREATE USER flavio
IDENTIFIED BY 'psicopedagogoSuperar2';
GRANT 'psicopedagogo' TO 'flavio';

-- PERFIL RESPONSAVEL
CREATE USER maria
IDENTIFIED BY 'responsavelSuperar';
GRANT 'responsavel' TO 'maria';

CREATE USER joao
IDENTIFIED BY 'responsavelSuperar2';
GRANT 'responsavel' TO 'joao';

FLUSH PRIVILEGES;

