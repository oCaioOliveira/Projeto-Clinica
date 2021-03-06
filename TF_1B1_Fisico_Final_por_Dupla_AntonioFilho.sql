-- --------  << CLINICA >>  ----------
--
--         SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 15/04/2022
-- Autor(es) ..............: Caio César Oliveira, Antônio Aldísio de Sousa Alves Ferreira Filho,
--                           Bianca Sofia de Oliveira, Daniel Porto, Abraão Alves, Adrian Soares
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: TF_Tema_1_AdrianLopes
--
-- Ultimas Alteracoes
--   27/04/2022 => Adição de 03 novas tabelas: PSICOPEDAGOGO, PACOTE e RELATORIO com seus respectivos atributos;
--              => Mudança do atributo nomePsicopedagogo da tabela DOCUMENTO para PSICOPEDAGOGO;
--              => Mudança do atributo qtdSessoesSemanais e precoPorSessao da tabela CONTRATO para PACOTE;
--
--   30/04/2022 => Adição de 02 novas tabelas (SESSAO E HABILIDADE) com seu respectivos atributos e reorganização do script;
-- 	 30/04/2022 => exclusão da tabela ACOMPANHAMENTO
--   01/05/2022 => Correção do auto_increment;
--   04/05/2022 => Correção final do projeto
--
-- PROJETO => 01 Base de Dados
--         => 24 Tabelas
-- 		   => 03 papeis
--         => 09 Usuarios
-- ---------------------------------------

CREATE DATABASE IF NOT EXISTS TF_Tema_1_AdrianLopes;

USE TF_Tema_1_AdrianLopes;


-- TABELAS
CREATE TABLE PSICOPEDAGOGO (
    idPsicopedagogo INT NOT NULL AUTO_INCREMENT,
    nomePsicopedagogo VARCHAR(50) NOT NULL,
    CONSTRAINT PSICOPEDAGOGO_PK PRIMARY KEY (idPsicopedagogo)
)ENGINE = InnoDB, AUTO_INCREMENT = 1;

CREATE TABLE DOCUMENTO (
    idDocumento INT NOT NULL AUTO_INCREMENT,
    dataRealizacao DATE NOT NULL,
    horaRealizacao TIME NOT NULL,
    nomeCompletoAluno VARCHAR(50) NOT NULL,
    nomeEscola VARCHAR(30) NOT NULL,
    dataNascimentoAluno DATE NOT NULL,
    nomeCompletoPai VARCHAR(50),
    nomeCompletoMae VARCHAR(50),
    dataNascimentoMae DATE,
    dataNascimentoPai DATE,
    idPsicopedagogo INT,
    CONSTRAINT DOCUMENTO_PK PRIMARY KEY (idDocumento),
    CONSTRAINT DOCUMENTO_PSICOPEDAGOGO_FK FOREIGN KEY (idPsicopedagogo)
        REFERENCES PSICOPEDAGOGO (idPsicopedagogo)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT
)ENGINE = InnoDB, AUTO_INCREMENT = 1;

CREATE TABLE ANAMNESE (
    idAnamnese INT NOT NULL AUTO_INCREMENT,
    nomeDoResponsavelPelasInformacoes VARCHAR(50) NOT NULL,
    grauDeParentescoDoResponsavelPelasInformacoes VARCHAR(20) NOT NULL,
    nomeDoResponsavelPelaEntrevista VARCHAR(50) NOT NULL,
    naturalidadeAluno VARCHAR(20) NOT NULL,
    serie INT NOT NULL,
    turma VARCHAR(1) NOT NULL,
    turno ENUM ('m', 'v', 'n') NOT NULL,
    motivoAusenciaPai VARCHAR(255) DEFAULT NULL,
    motivoAusenciaMae VARCHAR(255) DEFAULT NULL,
    responsavelResidente VARCHAR(50) NOT NULL,
    posicaoNaFamilia ENUM ('mais velho', 'do meio', 'cacula', 'unico') NOT NULL,
    tipoParentescoEntrePais VARCHAR(20) NOT NULL,
    temPaisCasados ENUM ('s', 'n') NOT NULL,
    queixaPrincipal VARCHAR(500) NOT NULL,
    tratamentoPreNatal ENUM ('s', 'n') DEFAULT NULL,
    situacaoAoNascer ENUM ('prematuro', 'incubadora', 'normal') DEFAULT NULL,
    chorouAoNascer ENUM ('s', 'n') DEFAULT NULL,
    tevePesoNormalAoNascer ENUM ('s', 'n') DEFAULT NULL,
    temCamaIndividual ENUM ('s', 'n') NOT NULL,
    horarioDeDormir TIME NOT NULL,
    horarioDeAcordar TIME NOT NULL,
    nomePessoaMaisUnidaEmCasa VARCHAR(50) NOT NULL,
    relacionamentoEmCasa VARCHAR(255) NOT NULL,
    temCuidadoComPertences ENUM ('s', 'n') NOT NULL,
    prefereBrincarSo ENUM ('s', 'n') NOT NULL,
    reacaoAoSeContrariar VARCHAR(255) NOT NULL,
    dataIngressoNaEscolaAtual DATE NOT NULL,
    gostaDoProfessor ENUM ('s', 'n') NOT NULL,
    idadeQueSustentouCabeca INT DEFAULT NULL,
    idadeQueSeSentou INT DEFAULT NULL,
    idadeQueEngatinhou INT DEFAULT NULL,
    idadeQueAndou INT DEFAULT NULL,
    caiaFrequentemente ENUM ('s', 'n') DEFAULT NULL,
    derrubavaCoisasFrequentemente ENUM ('s', 'n') DEFAULT NULL,
    esbarravaEmPessoasFrequentemente ENUM ('s', 'n') DEFAULT NULL,
    controleVesical VARCHAR(50) DEFAULT NULL,
    controleAnal VARCHAR(50) DEFAULT NULL,
    idadeQueFalou INT DEFAULT NULL,
    temProblemaNaFala ENUM ('s', 'n') NOT NULL,
    entendeOrdem ENUM ('s', 'n') NOT NULL,
    descricaoVisaoAudicao VARCHAR(255) DEFAULT NULL,
    complemento VARCHAR(255) DEFAULT NULL,
    teveGravidezDesejada ENUM ('s', 'n') DEFAULT NULL,
    bebeuOuFumouDuranteGravidez ENUM ('s', 'n') DEFAULT NULL,
    condicaoPsicologicaDuranteGravidez VARCHAR(30) DEFAULT NULL,
    tipoParto VARCHAR(20) DEFAULT NULL,
    idDocumento INT,
    CONSTRAINT ANAMNESE_PK PRIMARY KEY (idAnamnese),
    CONSTRAINT ANAMNESE_DOCUMENTO_FK FOREIGN KEY (idDocumento) REFERENCES DOCUMENTO (idDocumento)
		ON DELETE RESTRICT
		ON UPDATE RESTRICT,
    CONSTRAINT ANAMNESE_UK UNIQUE (idDocumento)
)ENGINE = InnoDB, AUTO_INCREMENT = 1;

-- INICIO TABELAS REFERENTES ANAMNESE
CREATE TABLE IRMAO (
    idIrmao INT NOT NULL AUTO_INCREMENT,
    sexo ENUM ('m', 'f') NOT NULL,
    professor VARCHAR(20) DEFAULT NULL,
    serie INT DEFAULT NULL,
    idAnamnese INT,
    CONSTRAINT IRMAO_PK PRIMARY KEY (idIrmao),
    CONSTRAINT IRMAO_ANAMNESE_FK FOREIGN KEY (idAnamnese) REFERENCES ANAMNESE (idAnamnese)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)ENGINE = InnoDB , AUTO_INCREMENT = 1;


CREATE TABLE DOENCAINFANCIA (
    idDoenca INT NOT NULL AUTO_INCREMENT,
    nomeDoenca VARCHAR(30) NOT NULL,
	idAnamnese INT,
    idadeDeOcorrencia INT DEFAULT NULL,
    CONSTRAINT DOENCAINFANCIA_PK PRIMARY KEY (idDoenca),
    CONSTRAINT DOENCAINFANCIA_ANAMNESE_FK FOREIGN KEY (idAnamnese) REFERENCES ANAMNESE (idAnamnese)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)ENGINE = InnoDB , AUTO_INCREMENT = 1;
-- FIM TABLEAS REFERENETES ANAMNESE

-- INICIO TABELAS COM LIGACOES REFERENTES AO CONTRATO
CREATE TABLE RESPONSAVEL (
    cpfResponsavel BIGINT NOT NULL,
    nomeCompletoResonsavel VARCHAR(50) NOT NULL,
    emailResponsavel VARCHAR(30) NOT NULL,
    rua VARCHAR(50) NOT NULL,
    bairro VARCHAR(20) NOT NULL,
    cep INT NOT NULL,
    numero INT NOT NULL,
	complemento VARCHAR(50),
    CONSTRAINT RESPONSAVEL_PK PRIMARY KEY (cpfResponsavel)
)ENGINE = InnoDB;

CREATE TABLE PACOTE (
    idPacote INT NOT NULL AUTO_INCREMENT,
    qtdSessoesSemanais INT NOT NULL,
    precoPorSessao FLOAT NOT NULL,
    CONSTRAINT PACOTE_PK PRIMARY KEY (idPacote)
)ENGINE = InnoDB , AUTO_INCREMENT = 1;


-- INICIO MULTIVALARDO DE RESPONSAVEL

CREATE TABLE telefones (
    cpfResponsavel BIGINT,
    telefones BIGINT NOT NULL,
    CONSTRAINT telefones_RESPONSAVEL_FK FOREIGN KEY (cpfResponsavel)
        REFERENCES RESPONSAVEL (cpfResponsavel)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT telefones_UK UNIQUE (cpfResponsavel, telefones)
)ENGINE = InnoDB;

-- FIM MULTIVALARDO DE RESPONSAVEL
CREATE TABLE CONTRATO (
    idContrato INT NOT NULL AUTO_INCREMENT,
    correcaoDoPreco FLOAT NOT NULL,
    idAnamnese INT NOT NULL,
    cpfResponsavel BIGINT,
	idPacote INT,
    idDocumento INT,
    CONSTRAINT CONTRATO_PK PRIMARY KEY (idContrato),

    CONSTRAINT CONTRATO_ANAMNESE_FK FOREIGN KEY (idAnamnese)
        REFERENCES ANAMNESE (idAnamnese)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,

    CONSTRAINT CONTRATO_DOCUMENTO_FK FOREIGN KEY (idDocumento)
        REFERENCES DOCUMENTO (idDocumento)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,

    CONSTRAINT CONTRATO_PACOTE_FK FOREIGN KEY (idPacote)
        REFERENCES PACOTE (idPacote)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
    CONSTRAINT CONTRATO_UK UNIQUE (idAnamnese, idDocumento)
)ENGINE = InnoDB , AUTO_INCREMENT = 1;

CREATE TABLE SESSAO (
    idSessao INT NOT NULL AUTO_INCREMENT,
    idContrato INT NOT NULL,
    `data` DATE NOT NULL,
    hora TIME NOT NULL,
    observacao VARCHAR(500) DEFAULT NULL,
    CONSTRAINT SESSAO_PK PRIMARY KEY (idSessao),
    CONSTRAINT SESSAO_CONTRATO_FK FOREIGN KEY (idContrato)
        REFERENCES CONTRATO (idContrato)
	ON DELETE RESTRICT
	ON UPDATE RESTRICT
) ENGINE = InnoDB , AUTO_INCREMENT = 1;

CREATE TABLE RELATORIO (
    idRelatorio INT NOT NULL  AUTO_INCREMENT,
    arquivo MEDIUMBLOB NOT NULL,
    idContrato INT,
    CONSTRAINT RELATORIO_PK PRIMARY KEY (idRelatorio),
    CONSTRAINT RELATORIO_CONTRATO_FK FOREIGN KEY (idContrato)
        REFERENCES CONTRATO(idContrato)
        ON DELETE RESTRICT
        ON UPDATE RESTRICT,
    CONSTRAINT RELATORIO_UK UNIQUE(idContrato)
)ENGINE = InnoDB , AUTO_INCREMENT = 1;

-- INICIO TABLEAS MULTIVALORADAS REFERENETES ANAMNESE
CREATE TABLE medicamentosDuranteGravidez (
    idAnamnese INT NOT NULL,
    medicamentosDuranteGravidez VARCHAR(30) NOT NULL,
    CONSTRAINT medicamentosDuranteGravidez_ANAMNESE_FK FOREIGN KEY (idAnamnese)
        REFERENCES ANAMNESE (idAnamnese)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT medicamentosDuranteGravidez_UK UNIQUE (medicamentosDuranteGravidez, idAnamnese)
)ENGINE = InnoDB;

CREATE TABLE doencasDuranteGravidez (
    idAnamnese INT NOT NULL,
    doencasDuranteGravidez VARCHAR(20) NOT NULL,
    CONSTRAINT doencasDuranteGravidez_ANAMNESE_FK FOREIGN KEY (idAnamnese)
        REFERENCES ANAMNESE (idAnamnese)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT doencasDuranteGravidez_UK UNIQUE (idAnamnese, doencasDuranteGravidez)
)ENGINE = InnoDB;

CREATE TABLE conhecimentos (
    idAnamnese INT NOT NULL,
    conhecimentos VARCHAR(20) NOT NULL,
    CONSTRAINT conhecimentos_ANAMNESE_FK FOREIGN KEY (idAnamnese)
        REFERENCES ANAMNESE (idAnamnese)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT conhecimentos_UK UNIQUE (idAnamnese, conhecimentos)
)ENGINE = InnoDB;

CREATE TABLE dificuldades (
    idAnamnese INT NOT NULL,
    dificuldades VARCHAR(20) NOT NULL,
    CONSTRAINT dificuldades_ANAMNESE_FK FOREIGN KEY (idAnamnese)
        REFERENCES ANAMNESE (idAnamnese)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT dificuldades_UK UNIQUE (idAnamnese, dificuldades)
)ENGINE = InnoDB;

CREATE TABLE ajudantesNasTarefas (
    idAnamnese INT NOT NULL,
    ajudantesNasTarefas VARCHAR(30) NOT NULL,
    CONSTRAINT ajudantesNasTarefas_ANAMNESE_FK FOREIGN KEY (idAnamnese)
        REFERENCES ANAMNESE (idAnamnese)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT ajudantesNasTarefas_UK UNIQUE (idAnamnese, ajudantesNasTarefas)
)ENGINE = InnoDB;

CREATE TABLE problemasSaudeFisica (
    idAnamnese INT NOT NULL,
    problemasSaudeFisica VARCHAR(30) NOT NULL,
    CONSTRAINT problemasSaudeFisica_ANAMNESE_FK FOREIGN KEY (idAnamnese)
        REFERENCES ANAMNESE (idAnamnese)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT problemasSaudeFisica_UK UNIQUE (idAnamnese, problemasSaudeFisica)
)ENGINE = InnoDB;

CREATE TABLE casosNaFamiliaDeDoenca (
	idAnamnese INT NOT NULL,
    casosNaFamiliaDeDoenca VARCHAR(20) NOT NULL,
	CONSTRAINT casosNaFamiliaDeDoenca_ANAMNESE_FK FOREIGN KEY (idAnamnese)
        REFERENCES ANAMNESE (idAnamnese)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT casosNaFamiliaDeDoenca_UK UNIQUE (idAnamnese, casosNaFamiliaDeDoenca)
)ENGINE = InnoDB;

CREATE TABLE medicamentosAoNascer (
    idAnamnese INT NOT NULL,
    medicamentosAoNascer VARCHAR(30) NOT NULL,
    CONSTRAINT medicamentosAoNascer_ANAMNESE_FK FOREIGN KEY (idAnamnese)
        REFERENCES ANAMNESE (idAnamnese)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    CONSTRAINT medicamentosAoNascer_UK UNIQUE (idAnamnese, medicamentosAoNascer)
)ENGINE = InnoDB;

CREATE TABLE doencasAoNascer (
    idAnamnese INT NOT NULL,
    doencasAoNascer VARCHAR(30) NOT NULL,
    CONSTRAINT doencasAoNascer_ANAMNESE_FK FOREIGN KEY (idAnamnese)
        REFERENCES ANAMNESE (idAnamnese)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    CONSTRAINT doencasAoNascer_UK UNIQUE (idAnamnese, doencasAoNascer)
)ENGINE = InnoDB;

-- FIM TABLEAS MULTIVALORADAS REFERENETES ANAMNESE


-- INICIO TABLEAS MULTIVALORADAS REFERENTES AO CONTRATO
CREATE TABLE medicamentos (
    idContrato INT NOT NULL,
    medicamentos VARCHAR(30) NOT NULL,
    CONSTRAINT medicamentos_CONTRATO_FK FOREIGN KEY (idContrato)
        REFERENCES CONTRATO (idContrato)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT medicamentos_UK UNIQUE (idContrato, medicamentos)
)ENGINE = InnoDB;

CREATE TABLE especialistasFornecendoAtendimentoAtualmente (
    idContrato INT NOT NULL,
    especialistasFornecendoAtendimentoAtualmente VARCHAR(50) NOT NULL,
    CONSTRAINT especialistasFornecendoAtendimentoAtualmente_CONTRATO_FK FOREIGN KEY (idContrato)
        REFERENCES CONTRATO (idContrato)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT especialistasFornecendoAtendimentoAtualmente_UK UNIQUE (idContrato, especialistasFornecendoAtendimentoAtualmente)
)ENGINE = InnoDB;

-- FIM TABLEAS MULTIVALORADAS REFERENTES AO CONTRATO



-- INICIO TABLEAS REFERENCES A SESSAO
CREATE TABLE HABILIDADE (
    idHabilidade INT NOT NULL  AUTO_INCREMENT,
    nome VARCHAR(20) NOT NULL,
    descricao VARCHAR(40) DEFAULT NULL,
    CONSTRAINT HABILIDADE_PK PRIMARY KEY (idHabilidade)
)ENGINE = InnoDB, AUTO_INCREMENT = 1;

CREATE TABLE trabalha (
    idSessao INT NOT NULL,
    idHabilidade INT NOT NULL,
    CONSTRAINT trabalha_SESSAO_FK FOREIGN KEY (idSessao)
        REFERENCES SESSAO(idSessao)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT trabalha_HABILIDADE_FK FOREIGN KEY (idHabilidade)
        REFERENCES HABILIDADE(idHabilidade)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
	CONSTRAINT trabalha_UK UNIQUE (idSessao, idHabilidade)
)ENGINE = InnoDB;



-- FIM TABLEAS REFERENCES A SESSAO