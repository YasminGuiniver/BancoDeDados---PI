CREATE DATABASE bdPesquisaInovacao;
USE bdPesquisaInovacao;

CREATE TABLE tbfuncionario(
	idFuncionario INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nomeFuncionario VARCHAR (50) NOT NULL,
    cargoFuncionario VARCHAR(50) NOT NULL,
    nivelFuncionario VARCHAR(50) NOT NULL,
    emailFuncionario VARCHAR (100),
    senhaFuncionario VARCHAR (50)
);

CREATE TABLE tbObras(
	idObra INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nomeObra VARCHAR (50),
    autorObra VARCHAR (50),
    dataObra DATE,
    tecnicaUtilizada VARCHAR(50) NOT NULL,
    telaObra CHAR(4) NOT NULL,
    temperaturaMediaObra VARCHAR (10) NOT NULL,
    umidadeMediaObra VARCHAR (10) NOT NULL
);

CREATE TABLE tbDados (
	idDados INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    dataRecibido DATETIME,
    temperaturalRecebida VARCHAR (10),
    umidadeRecebida VARCHAR (10)
);

ALTER TABLE tbFuncionario ADD CONSTRAINT chkNivelFuncionario CHECK(nivelFuncionario IN('Técnico', 'Assistente','Coordernador', 'Diretor'));
ALTER TABLE tbObras ADD CONSTRAINT chkTecnicaObra CHECK(tecnicaUtilizada IN('Pintura por camadas', 'Alla prima', 'Velatura', 'Pincel seco', 'Impasto', 'Frottage'));
ALTER TABLE tbObras ADD CONSTRAINT chkCondicaoTelaObra CHECK(telaObra IN('Sim', 'Não'));

INSERT INTO tbFuncionario (nomeFuncionario, cargoFuncionario, nivelFuncionario, emailFuncionario, senhaFuncionario) VALUES
	('Yasmin Guiniver', 'Técnica em administração', 'Técnico', 'yasmin.patrocinio@sptech.school', '#Gf261005'),
    ('Fernanda Caramico', 'Diretora de artes', 'Diretor','fernanda.caramico@sptech.school', '#Gf123456'),
    ('Alisson Fernandes', 'Coordenador de segurança e infraestrutura', 'Coordernador', 'alisson.fernandes@sptech.school', '#Gf789987'),
    ('Beatriz Ferraz', 'Assistente de Editorial', 'Assistente', 'beatriz.ferraz@sptech.school', '#Gf0123748');
    
INSERT INTO tbObras (nomeObra, autorObra, dataObra, tecnicaUtilizada, telaObra,  temperaturaMediaObra, umidadeMediaObra) VALUES
	('Noite Estrelada', 'Vicent Van Gogh', '1890-09-09', 'Pintura por camadas', 'Sim', '10', '15'),
    ('A Persistência da Memória', 'Salvador Dali', '1785-02-25', 'Alla prima', 'Não', '15', '25'),
    ('Mona Lisa', 'Leonardo da Vinci', '1548-03-03', 'Frottage', 'Não', '10', '10');
    
INSERT INTO tbDados (dataRecibido, temperaturalRecebida, umidadeRecebida) VALUES
	('2024-03-15', '10', '26'),
    ('2024-02-01', '15', '10'),
    ('2023-08-04','10', '25'),
    ('2023-05-04', '15', '15');
    
SELECT * FROM tbFuncionario;
SELECT * FROM tbObras;
SELECT * FROM tbDados;

SELECT nomeFuncionario AS Nome ,cargoFuncionario AS Cargo, nivelFuncionario AS Nivel FROM tbFuncionario;
SELECT * FROM tbObras WHERE telaObra = "Não";
SELECT * FROM tbDados WHERE temperaturalRecebida = 15;
SELECT * FROM tbObras WHERE temperaturaMediaObra = 10;	