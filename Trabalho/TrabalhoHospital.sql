/* L�gico_Trabalho_MR: */

CREATE TABLE Medico (
    Id_Medico INTEGER PRIMARY KEY,
    CRM INTEGER,
    Nome VARCHAR(50),
    CPF VARCHAR(15)
);

CREATE TABLE Paciente (
    Id_Paciente INTEGER PRIMARY KEY,
    Id_PlanoSaude INTEGER,
    NomePaciente VARCHAR(50),
    CPF VARCHAR(15)
);

CREATE TABLE AtendimentoInterno (
    Id_Paciente INTEGER,
    Id_Medico INTEGER,
    DataInicio DATE,
    DataTermino DATE,
    HorarioInicio TIME,
    HorarioTermino TIME
);

CREATE TABLE AtendimentoExterno (
    Id_Paciente INTEGER,
    Id_Medico INTEGER,
    DataInicio DATE,
    DataTermino DATE,
    HorarioInicio TIME,
    HorarioTermino TIME,
    TipoAtendimento VARCHAR(40)
);

CREATE TABLE Enfermeira (
    Id_Enfermeira INTEGER PRIMARY KEY,
    Id_EnfChefe INTEGER,
    NumeroCRE INTEGER,
    Nome VARCHAR(50),
    CPF VARCHAR(15)
);

CREATE TABLE EnfermeiraChefe (
    Id_EnfChefe INTEGER PRIMARY KEY,
    NumeroCRE INTEGER,
    Nome VARCHAR(50),
    CPF VARCHAR(15)
);

CREATE TABLE Prontuario (
    Id_Prontuario INTEGER PRIMARY KEY,
    Id_Paciente INTEGER,
    Id_Medico INTEGER,
    NomePaciente VARCHAR(50),
    MedicoResponsavel VARCHAR(50),
    DataAtendimento DATE
);

CREATE TABLE Ala (
    Id_Ala INTEGER PRIMARY KEY,
    Id_Enfermeira INTEGER,
    Id_Paciente INTEGER,
    Id_Leitos INTEGER,
    NomeResponsavel VARCHAR(50)
);

CREATE TABLE Hospital (
    Cnpj_Hospital INTEGER PRIMARY KEY,
    Id_PlanoSaude INTEGER,
    Id_Ala INTEGER,
    PlanoSaude VARCHAR(40),
    NomeHospital VARCHAR(40)
);

CREATE TABLE PlanoSaude (
    Id_PlanoSaude INTEGER PRIMARY KEY,
    Id_Paciente INTEGER,
    Id_Medico INTEGER,
    Cnpj_Hospital INTEGER,
    Convenio VARCHAR(40)
);

CREATE TABLE Leitos (
    Id_Leitos INTEGER PRIMARY KEY,
    Id_Paciente INTEGER,
    NomePaciente VARCHAR(50)
);
 
ALTER TABLE Paciente ADD CONSTRAINT FK_Paciente_2
    FOREIGN KEY (Id_PlanoSaude)
    REFERENCES PlanoSaude (Id_PlanoSaude);
 
ALTER TABLE AtendimentoInterno ADD CONSTRAINT FK_AtendimentoInterno_1
    FOREIGN KEY (Id_Medico)
    REFERENCES Medico (Id_Medico);
 
ALTER TABLE AtendimentoInterno ADD CONSTRAINT FK_AtendimentoInterno_2
    FOREIGN KEY (Id_Paciente)
    REFERENCES Paciente (Id_Paciente);
 
ALTER TABLE AtendimentoExterno ADD CONSTRAINT FK_AtendimentoExterno_1
    FOREIGN KEY (Id_Paciente)
    REFERENCES Paciente (Id_Paciente);
 
ALTER TABLE AtendimentoExterno ADD CONSTRAINT FK_AtendimentoExterno_2
    FOREIGN KEY (Id_Medico)
    REFERENCES Medico (Id_Medico);
 
ALTER TABLE Enfermeira ADD CONSTRAINT FK_Enfermeira_1
    FOREIGN KEY (Id_EnfChefe)
    REFERENCES EnfermeiraChefe (Id_EnfChefe);
 
ALTER TABLE Prontuario ADD CONSTRAINT FK_Prontuario_1
    FOREIGN KEY (Id_Paciente)
    REFERENCES Paciente (Id_Paciente);
 
ALTER TABLE Prontuario ADD CONSTRAINT FK_Prontuario_3
    FOREIGN KEY (Id_Medico)
    REFERENCES Medico (Id_Medico);
 
ALTER TABLE Ala ADD CONSTRAINT FK_Ala_2
    FOREIGN KEY (Id_Enfermeira)
    REFERENCES Enfermeira (Id_Enfermeira);
 
ALTER TABLE Ala ADD CONSTRAINT FK_Ala_3
    FOREIGN KEY (Id_Leitos)
    REFERENCES Leitos (Id_Leitos);
 
ALTER TABLE Hospital ADD CONSTRAINT FK_Hospital_1
    FOREIGN KEY (Id_Ala)
    REFERENCES Ala (Id_Ala);
 
ALTER TABLE Hospital ADD CONSTRAINT FK_Hospital_3
    FOREIGN KEY (Id_PlanoSaude)
    REFERENCES PlanoSaude (Id_PlanoSaude);
 
ALTER TABLE PlanoSaude ADD CONSTRAINT FK_PlanoSaude_2
    FOREIGN KEY (Id_Paciente)
    REFERENCES Paciente (Id_Paciente);
 
ALTER TABLE PlanoSaude ADD CONSTRAINT FK_PlanoSaude_3
    FOREIGN KEY (Id_Medico)
    REFERENCES Medico (Id_Medico);
 
ALTER TABLE PlanoSaude ADD CONSTRAINT FK_PlanoSaude_4
    FOREIGN KEY (Cnpj_Hospital)
    REFERENCES Hospital (Cnpj_Hospital); 
 
ALTER TABLE Leitos ADD CONSTRAINT FK_Leitos_2
    FOREIGN KEY (Id_Paciente)
    REFERENCES Paciente (Id_Paciente);
