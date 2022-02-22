/* Lógico_1: */

CREATE TABLE hospital (
    id_hospital INTEGER,
    cnpj VARCHAR(30),
    razaoSocial VARCHAR(30),
    PRIMARY KEY (cnpj, id_hospital)
);

CREATE TABLE convenio (
    id_convenio VARCHAR(30) PRIMARY KEY,
    id_hospital INTEGER,
    nome_convenio VARCHAR(50)
);

CREATE TABLE alas (
    id_alas INTEGER PRIMARY KEY,
    id_hospital INTEGER,
    nome_ala VARCHAR(40)
);

CREATE TABLE enfermeira (
    id_enfermeira INTEGER,
    cre VARCHAR(30),
    cpf VARCHAR(30),
    nome CHAR(50),
    tipo_enfermeira CHAR(30),
    PRIMARY KEY (id_enfermeira, cre, cpf)
);

CREATE TABLE medicos (
    id_medico INTEGER,
    crm VARCHAR(30),
    cpf VARCHAR(30),
    nome CHAR(50),
    PRIMARY KEY (id_medico, crm, cpf)
);

CREATE TABLE convenioXmedicos (
    id_convenio VARCHAR(30),
    id_medico INTEGER
);

CREATE TABLE leitos (
    id_leitos INTEGER PRIMARY KEY,
    tipo_leito CHAR(30)
);

CREATE TABLE alaXenfermeira (
    id_ala INTEGER,
    id_enfermeira INTEGER
);

CREATE TABLE alaXleitos (
    id_ala INTEGER,
    id_leitos INTEGER
);

CREATE TABLE paciente (
    id_paciente INTEGER,
    cpf INTEGER,
    nome VARCHAR(50),
    endereco VARCHAR(40),
    PRIMARY KEY (id_paciente, cpf)
);

CREATE TABLE prontuario (
    id_prontuario INTEGER PRIMARY KEY,
    id_ala INTEGER,
    diagnostico VARCHAR(40),
    id_consulta INTEGER
);

CREATE TABLE atendimento (
    id_atendimento INTEGER PRIMARY KEY,
    id_convenio VARCHAR(40),
    id_paciente INTEGER,
    id_medico INTEGER,
    tipo_atendimento CHAR(30),
    data_atendimento DATE,
    hr_inicio TIME,
    hr_termino TIME
);

select *
from hospital

 
ALTER TABLE convenio ADD CONSTRAINT FK_convenio_2
    FOREIGN KEY (id_hospital)
    REFERENCES hospital (id_hospital);
 
ALTER TABLE alas ADD CONSTRAINT FK_alas_2
    FOREIGN KEY (id_hospital)
    REFERENCES hospital (id_hospital);
 
ALTER TABLE convenioXmedicos ADD CONSTRAINT FK_convenioXmedicos_1
    FOREIGN KEY (id_convenio)
    REFERENCES convenio (id_convenio);
 
ALTER TABLE convenioXmedicos ADD CONSTRAINT FK_convenioXmedicos_2
    FOREIGN KEY (id_medico)
    REFERENCES medicos (id_medico);
 
ALTER TABLE alaXenfermeira ADD CONSTRAINT FK_alaXenfermeira_1
    FOREIGN KEY (id_ala)
    REFERENCES alas (id_alas);
 
ALTER TABLE alaXenfermeira ADD CONSTRAINT FK_alaXenfermeira_2
    FOREIGN KEY (id_enfermeira)
    REFERENCES enfermeira (id_enfermeira);
 
ALTER TABLE alaXleitos ADD CONSTRAINT FK_alaXleitos_1
    FOREIGN KEY (id_ala)
    REFERENCES alas (id_alas);
 
ALTER TABLE alaXleitos ADD CONSTRAINT FK_alaXleitos_2
    FOREIGN KEY (id_leitos)
    REFERENCES leitos (id_leitos);
 
ALTER TABLE prontuario ADD CONSTRAINT FK_prontuario_2
    FOREIGN KEY (id_ala)
    REFERENCES alas (id_alas);
 
ALTER TABLE prontuario ADD CONSTRAINT FK_prontuario_3
    FOREIGN KEY (id_consulta)
    REFERENCES atendimento (id_atendimento);
 
ALTER TABLE atendimento ADD CONSTRAINT FK_atendimento_2
    FOREIGN KEY (id_paciente)
    REFERENCES paciente (id_paciente);
 
ALTER TABLE atendimento ADD CONSTRAINT FK_atendimento_3
    FOREIGN KEY (id_medico)
    REFERENCES medicos (id_medico);
 
ALTER TABLE atendimento ADD CONSTRAINT FK_atendimento_4
    FOREIGN KEY (id_convenio)
    REFERENCES convenio (id_convenio);