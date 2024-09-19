USE CompraBilhetes;

CREATE TABLE utilizador (
    id_utilizador INT PRIMARY KEY NOT NULL,
    nome VARCHAR(50),
    apelido VARCHAR(50),
    data_nascimento DATE,
    email VARCHAR(30),
    pword VARCHAR(25),
    telemovel INT,
    nacionalidade VARCHAR(20),
    pais VARCHAR(20),
    localidade VARCHAR(30),
    cod_postal VARCHAR(10),
    tip_util INT
);

CREATE TABLE tip_utilizador (
    id INT PRIMARY KEY NOT NULL,
    tipo VARCHAR(10)
);

CREATE TABLE rotas (
    id_rota INT PRIMARY KEY NOT NULL,
    nome VARCHAR(30)
);

CREATE TABLE paragens (
    id_paragem INT PRIMARY KEY NOT NULL,
    rota INT,
    nome VARCHAR(30),
    distancia NUMERIC(6,2)
);

CREATE TABLE autocarros (
    id_autocarro INT PRIMARY KEY NOT NULL,
    num_autocarro INT,
    lotacao INT,
    revisao DATE,
    tipo_autocarro INT
);

CREATE TABLE tip_autocarro (
    id_tip INT PRIMARY KEY NOT NULL,
    classe VARCHAR(20)
);

CREATE TABLE partidas_chegadas (
    id_hora INT PRIMARY KEY NOT NULL,
    hora TIME,
    paragem INT,
    rota INT,
    autocarro INT
);

CREATE TABLE bilhete (
    id_bilhete INT PRIMARY KEY NOT NULL,
    id_partida INT,
    id_chegada INT,
    preco NUMERIC(4,2),
    utilizador INT
);

ALTER TABLE utilizador ADD CONSTRAINT FK1utilizador FOREIGN KEY (tip_util) REFERENCES tip_utilizador (id);

ALTER TABLE paragens ADD CONSTRAINT FK1paragens FOREIGN KEY (rota) REFERENCES rotas (id_rota);

ALTER TABLE autocarros ADD CONSTRAINT FK1autocarros FOREIGN KEY (tipo_autocarro) REFERENCES tip_autocarro (id_tip);

ALTER TABLE bilhete ADD CONSTRAINT FK1bilhete FOREIGN KEY (id_partida) REFERENCES partidas_chegadas (id_hora);
ALTER TABLE bilhete ADD CONSTRAINT FK2bilhete FOREIGN KEY (id_chegada) REFERENCES partidas_chegadas (id_hora);
ALTER TABLE bilhete ADD CONSTRAINT FK3bilhete FOREIGN KEY (utilizador) REFERENCES utilizador (id_utilizador);

ALTER TABLE partidas_chegadas ADD CONSTRAINT FK1horario FOREIGN KEY (paragem) REFERENCES paragens (id_paragem);
ALTER TABLE partidas_chegadas ADD CONSTRAINT FK2horario FOREIGN KEY (rota) REFERENCES rotas (id_rota);
ALTER TABLE partidas_chegadas ADD CONSTRAINT FK3horario FOREIGN KEY (autocarro) REFERENCES autocarros (id_autocarro);
