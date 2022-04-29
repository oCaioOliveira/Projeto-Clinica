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
--   27/04/2022 => Adição de 03 novas tabelas: PSICOPEDAGOGO, PACOTE e RELATORIO com seus respectivos atributos;
--              => Mudança do atributo nomePsicopedagogo da tabela DOCUMENTO para PSICOPEDAGOGO; 
--              => Mudança do atributo qtdSessoesSemanais e precoPorSessao da tabela CONTRATACAO para PACOTE; 
--
-- PROJETO => 01 Base de Dados
--         => 23 Tabelas
--         => 03 Usuarios
-- ---------------------------------------

CREATE DATABASE IF NOT EXISTS trabalhofinal1;

USE trabalhofinal1; 

CREATE TABLE PSICOPEDAGOGO (
    idPsicopedagogo INT NOT NULL,
    nomePsicopedagogo VARCHAR(50) NOT NULL,
    CONSTRAINT PSICOPEDAGOGO_PK PRIMARY KEY (idPsicopedagogo)
);

CREATE TABLE DOCUMENTO (
    idDocumento INT NOT NULL,
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
    CONSTRAINT DOCUMENTO_PSICOPEDAGOGO_FK FOREIGN KEY (idPsicopedagogo) REFERENCES PSICOPEDAGOGO (idPsicopedagogo)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT
);

CREATE TABLE ANAMNESE (
    idAnamnese INT NOT NULL,
    nomeDoResponsavelPelasInformacoes VARCHAR(50) NOT NULL,
    grauDeParentescoDoResponsavelPelasInformacoes VARCHAR(20) NOT NULL,
    nomeDoResponsavelPelaEntrevista VARCHAR(50) NOT NULL,
    naturalidadeAluno VARCHAR(20) NOT NULL,
    serie INT NOT NULL,
    turma VARCHAR(1) NOT NULL,
    turno ENUM ('m', 'v', 'n') NOT NULL,
    motivoAusenciaPai TINYTEXT DEFAULT NULL,
    motivoAusenciaMae TINYTEXT DEFAULT NULL,
    responsavelResidente VARCHAR(50) NOT NULL,
    posicaoNaFamilia ENUM ('mais velho', 'do meio', 'caçula', 'único') NOT NULL,
    tipoParentescoEntrePais VARCHAR(20) NOT NULL,
    temPaisCasados ENUM ('s', 'n') NOT NULL,
    queixaPrincipal TINYTEXT NOT NULL,
    tratamentoPreNatal ENUM ('s', 'n') DEFAULT NULL,
    situacaoAoNascer ENUM ('normal', 'Prematuro', 'Incubadora') DEFAULT NULL,
    chorouAoNascer ENUM ('s', 'n') DEFAULT NULL,
    tevePesoNormalAoNascer ENUM ('s', 'n') DEFAULT NULL,
    temCamaIndividual ENUM ('s', 'n') NOT NULL,
    horarioDeDormir TIME NOT NULL,
    horarioDeAcordar TIME NOT NULL,
    nomePessoaMaisUnidaEmCasa VARCHAR(50) NOT NULL,
    relacionamentoEmCasa TINYTEXT NOT NULL,
    temCuidadoComPertences ENUM ('s', 'n') NOT NULL,
    prefereBrincarSo ENUM ('s', 'n') NOT NULL,
    reacaoAoSeContrariar TINYTEXT NOT NULL,
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
    descricaoVisaoAudicao TINYTEXT DEFAULT NULL,
    complemento TINYTEXT DEFAULT NULL,
    TeveGravidezDesejada ENUM ('s', 'n') DEFAULT NULL,
    bebeuOuFumouDuranteGravidez ENUM ('s', 'n') DEFAULT NULL,
    condicaoPsicologicaDuranteGravidez VARCHAR(30) DEFAULT NULL,
    tipoParto VARCHAR(20) DEFAULT NULL,
    idDocumento INT,
    CONSTRAINT ANAMNESE_PK PRIMARY KEY (idAnamnese),
    CONSTRAINT ANAMNESE_DOCUMENTO_FK FOREIGN KEY (idDocumento) REFERENCES DOCUMENTO (idDocumento)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
    CONSTRAINT ANAMNESE_UK UNIQUE (idDocumento)
)ENGINE = InnoDB;

CREATE TABLE IRMAO (
    idIrmao INT NOT NULL,
    sexo ENUM ('m', 'f') NOT NULL,
    professor VARCHAR(20) DEFAULT NULL,
    serie INT DEFAULT NULL,
    idAnamnese INT,
    CONSTRAINT IRMAO_PK PRIMARY KEY (idIrmao),
    CONSTRAINT IRMAO_ANAMNESE_FK FOREIGN KEY (idAnamnese) REFERENCES ANAMNESE (idAnamnese)
    ON DELETE CASCADE 
    ON UPDATE CASCADE
)ENGINE = InnoDB;

CREATE TABLE DOENCAINFANCIA (
    idDoenca INT NOT NULL,
    nomeDoenca VARCHAR(30) NOT NULL,
    idadeDeOcorrencia INT DEFAULT NULL,
    idAnamnese INT,
    CONSTRAINT DOENCAINFANCIA_PK PRIMARY KEY (idDoenca),
    CONSTRAINT DOENCAINFANCIA_ANAMNESE_FK FOREIGN KEY (idAnamnese) REFERENCES ANAMNESE (idAnamnese)
    ON DELETE CASCADE 
    ON UPDATE CASCADE
)ENGINE = InnoDB;

CREATE TABLE RESPONSAVEL (
    cpfResponsavel BIGINT NOT NULL,
    nomeCompletoResonsavel VARCHAR(50) NOT NULL,
    emailResponsavel VARCHAR(30) NOT NULL,
    rua VARCHAR(50) NOT NULL,
    complemento VARCHAR(50),
    cep INT NOT NULL,
    bairro VARCHAR(20) NOT NULL,
    numero INT NOT NULL,
    CONSTRAINT DOENCAINFANCIA_PK PRIMARY KEY (cpfResponsavel)
);

CREATE TABLE PACOTE (
    idPacote INT NOT NULL,
    qtdSessoesSemanais INT NOT NULL,
    precoPorSessao FLOAT NOT NULL,
    CONSTRAINT PACOTE_PK PRIMARY KEY (idPacote)
)ENGINE = InnoDB;

CREATE TABLE CONTRATACAO (
    idContratacao INT NOT NULL,
    correcaoDoPreco FLOAT NOT NULL,
    idAnamnese INT NOT NULL,
    cpfResponsavel BIGINT,
    idDocumento INT,
    idPacote INT,
    CONSTRAINT CONTRATACAO_PK PRIMARY KEY (idContratacao),
    CONSTRAINT CONTRATACAO_ANAMNESE_FK FOREIGN KEY (idAnamnese) REFERENCES ANAMNESE (idAnamnese)
    ON DELETE RESTRICT 
    ON UPDATE RESTRICT,
    CONSTRAINT CONTRATACAO_DOCUMENTO_FK FOREIGN KEY (idDocumento) REFERENCES DOCUMENTO (idDocumento)
    ON DELETE RESTRICT 
    ON UPDATE RESTRICT,
    CONSTRAINT CONTRATACAO_PACOTE_FK FOREIGN KEY (idPacote) REFERENCES PACOTE (idPacote)
    ON DELETE RESTRICT 
    ON UPDATE RESTRICT,
    CONSTRAINT CONTRATACAO_UK UNIQUE (idAnamnese, idDocumento)
)ENGINE = InnoDB;

CREATE TABLE ACOMPANHAMENTO (
	idAcompanhamento INT NOT NULL,
    dataAcompanhamento DATE NOT NULL,
    horaAcompanhamento TIME NOT NULL,
    observacao TINYTEXT DEFAULT NULL,
    idContratacao INT,
    CONSTRAINT ACOMPANHAMENTO_PK PRIMARY KEY (idAcompanhamento),
    CONSTRAINT ACOMPANHAMENTO_CONTRATACAO_FK FOREIGN KEY (idContratacao) REFERENCES CONTRATACAO (idContratacao)
    ON DELETE RESTRICT 
    ON UPDATE RESTRICT
)ENGINE = InnoDB;

CREATE TABLE doencasAoNascer (
    idAnamnese INT,
    doencasAoNascer VARCHAR(30) NOT NULL,
    CONSTRAINT doencasAoNascer_ANAMNESE_FK FOREIGN KEY (idAnamnese) REFERENCES ANAMNESE (idAnamnese) 
    ON DELETE CASCADE 
    ON UPDATE CASCADE,
    CONSTRAINT doencasAoNascer_UK UNIQUE (idAnamnese, doencasAoNascer)
)ENGINE = InnoDB;

CREATE TABLE medicamentosAoNascer (
    idAnamnese INT,
    medicamentosAoNascer VARCHAR(30) NOT NULL,
    CONSTRAINT medicamentosAoNascer_ANAMNESE_FK FOREIGN KEY (idAnamnese) REFERENCES ANAMNESE (idAnamnese) 
    ON DELETE CASCADE 
    ON UPDATE CASCADE,
    CONSTRAINT medicamentosAoNascer_UK UNIQUE (idAnamnese, medicamentosAoNascer)
)ENGINE = InnoDB;

CREATE TABLE casosNaFamiliaDeDoenca (
	idAnamnese INT,
    casosNaFamiliaDeDoenca VARCHAR(20) NOT NULL,
	CONSTRAINT casosNaFamiliaDeDoenca_ANAMNESE_FK FOREIGN KEY (idAnamnese) REFERENCES ANAMNESE (idAnamnese) 
    ON DELETE CASCADE 
    ON UPDATE CASCADE,
    CONSTRAINT casosNaFamiliaDeDoenca_UK UNIQUE (idAnamnese, casosNaFamiliaDeDoenca)
)ENGINE = InnoDB;

CREATE TABLE problemasSaudeFisica (
    idAnamnese INT,
    problemasSaudeFisica VARCHAR(30) NOT NULL,
    CONSTRAINT problemasSaudeFisica_ANAMNESE_FK FOREIGN KEY (idAnamnese) REFERENCES ANAMNESE (idAnamnese) 
    ON DELETE CASCADE 
    ON UPDATE CASCADE,
    CONSTRAINT problemasSaudeFisica_UK UNIQUE (idAnamnese, problemasSaudeFisica)
)ENGINE = InnoDB;

CREATE TABLE ajudantesNasTarefas (
    idAnamnese INT,
    ajudantesNasTarefas VARCHAR(30) NOT NULL,
    CONSTRAINT ajudantesNasTarefas_ANAMNESE_FK FOREIGN KEY (idAnamnese) REFERENCES ANAMNESE (idAnamnese) 
    ON DELETE CASCADE 
    ON UPDATE CASCADE,
    CONSTRAINT ajudantesNasTarefas_UK UNIQUE (idAnamnese, ajudantesNasTarefas)
)ENGINE = InnoDB;

CREATE TABLE dificuldades (
    idAnamnese INT,
    dificuldades VARCHAR(20) NOT NULL,
    CONSTRAINT dificuldades_ANAMNESE_FK FOREIGN KEY (idAnamnese) REFERENCES ANAMNESE (idAnamnese) 
    ON DELETE CASCADE 
    ON UPDATE CASCADE,
    CONSTRAINT dificuldades_UK UNIQUE (idAnamnese, dificuldades)
)ENGINE = InnoDB;

CREATE TABLE conhecimentos (
    idAnamnese INT,
    conhecimentos VARCHAR(20) NOT NULL,
    CONSTRAINT conhecimentos_ANAMNESE_FK FOREIGN KEY (idAnamnese) REFERENCES ANAMNESE (idAnamnese) 
    ON DELETE CASCADE 
    ON UPDATE CASCADE,
    CONSTRAINT conhecimentos_UK UNIQUE (idAnamnese, conhecimentos)
)ENGINE = InnoDB;

CREATE TABLE doencasDuranteGravidez (
    idAnamnese INT,
    doencasDuranteGravidez VARCHAR(20) NOT NULL,
    CONSTRAINT doencasDuranteGravidez_ANAMNESE_FK FOREIGN KEY (idAnamnese) REFERENCES ANAMNESE (idAnamnese) 
    ON DELETE CASCADE 
    ON UPDATE CASCADE,
    CONSTRAINT doencasDuranteGravidez_UK UNIQUE (idAnamnese, doencasDuranteGravidez)
)ENGINE = InnoDB;

CREATE TABLE medicamentosDuranteGravidez (
    idAnamnese INT,
    medicamentosDuranteGravidez VARCHAR(30) NOT NULL,
    CONSTRAINT medicamentosDuranteGravidez_ANAMNESE_FK FOREIGN KEY (idAnamnese) REFERENCES ANAMNESE (idAnamnese) 
    ON DELETE CASCADE 
    ON UPDATE CASCADE,
    CONSTRAINT medicamentosDuranteGravidez_UK UNIQUE (idAnamnese, medicamentosDuranteGravidez)
)ENGINE = InnoDB;

CREATE TABLE telefones (
    cpfResponsavel BIGINT,
    telefones BIGINT NOT NULL,
    CONSTRAINT telefones_RESPONSAVEL_FK FOREIGN KEY (cpfResponsavel) REFERENCES RESPONSAVEL (cpfResponsavel)
    ON DELETE CASCADE 
    ON UPDATE CASCADE,
    CONSTRAINT telefones_UK UNIQUE (cpfResponsavel, telefones)
)ENGINE = InnoDB;

CREATE TABLE medicamentos (
    idContratacao INT,
    medicamentos VARCHAR(30) NOT NULL,
    CONSTRAINT medicamentos_CONTRATACAO_FK FOREIGN KEY (idContratacao) REFERENCES CONTRATACAO (idContratacao)
    ON DELETE CASCADE 
    ON UPDATE CASCADE,
    CONSTRAINT medicamentos_UK UNIQUE (idContratacao, medicamentos)
)ENGINE = InnoDB;

CREATE TABLE especialistasFornecendoAtendimentoAtualmente (
    idContratacao INT,
    especialistasFornecendoAtendimentoAtualmente VARCHAR(50) NOT NULL,
    CONSTRAINT especialistasFornecendoAtendimentoAtualmente_CONTRATACAO_FK FOREIGN KEY (idContratacao) REFERENCES CONTRATACAO (idContratacao)
    ON DELETE CASCADE 
    ON UPDATE CASCADE,
    CONSTRAINT especialistasFornecendoAtendimentoAtualmente_UK UNIQUE (idContratacao, especialistasFornecendoAtendimentoAtualmente)
)ENGINE = InnoDB;

CREATE TABLE habilidadesTrabalhadas (
    idAcompanhamento INT,
    habilidadesTrabalhadas VARCHAR(50) NOT NULL,
    CONSTRAINT habilidadesTrabalhadas_ACOMPANHAMENTO_FK FOREIGN KEY (idAcompanhamento) REFERENCES ACOMPANHAMENTO (idAcompanhamento)
    ON DELETE CASCADE 
    ON UPDATE CASCADE,
    CONSTRAINT habilidadesTrabalhadas_UK UNIQUE (idAcompanhamento, habilidadesTrabalhadas)
)ENGINE = InnoDB;

CREATE TABLE RELATORIO (
    idRelatorio INT NOT NULL,
    arquivo MEDIUMBLOB NOT NULL,
    idAcompanhamento INT,
    CONSTRAINT RELATORIO_ACOMPANHAMENTO_FK FOREIGN KEY (idAcompanhamento) REFERENCES ACOMPANHAMENTO (idAcompanhamento)
    ON DELETE RESTRICT 
    ON UPDATE RESTRICT,
    CONSTRAINT RELATORIO_UK UNIQUE (idAcompanhamento)
)ENGINE = InnoDB;