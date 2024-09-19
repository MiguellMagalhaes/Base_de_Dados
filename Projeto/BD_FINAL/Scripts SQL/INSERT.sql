USE CompraBilhetes

INSERT INTO tip_utilizador
VALUES ('1', 'Gestor'),
       ('2', 'Utilizador');


INSERT INTO utilizador
VALUES
  ('1', 'Alice', 'Silva', '1995-09-12', 'alice.silva@gmail.com', 'S%nYO!404.=f', '912345678', 'Portuguesa', 'Portugal', 'Lisboa', '1000-001', '1'),
  ('2', 'Bob', 'Ferreira', '1988-05-20', 'bob.ferreira@hotmail.com', 'DgJ774C9!nW4', '925678345', 'Portuguesa', 'Portugal', 'Porto', '4000-150', '2'),
  ('3', 'Carla', 'Oliveira', '1990-12-03', 'carla.oliveira@gmail.com', 'cQ"#028D\7c#', '938765432', 'Portuguesa', 'Portugal', 'Coimbra', '3000-020', '2'),
  ('4', 'Daniel', 'Ribeiro', '1982-02-28', 'daniel.ribeiro@yahoo.com', 'jXQ`J4Ak5N"3', '918765432', 'Portuguesa', 'Portugal', 'Funchal', '9000-001', '2'),
  ('5', 'Eva', 'Martins', '1999-07-15', 'eva.martins@gmail.com', 'l3wZ2k$f3_2&', '925678901', 'Portuguesa', 'Portugal', 'Faro', '8000-150', '1'),
  ('6', 'Filipe', 'Pereira', '1985-10-22', 'filipe.pereira@hotmail.com', '_s4A81<XT=tv', '935678210', 'Portuguesa', 'Portugal', 'Braga', '4700-150', '2'),
  ('7', 'Gustavo', 'Santos', '1993-04-07', 'gustavo.santos@gmail.com', '6pb-1QB8-MY*', '912345678', 'Portuguesa', 'Portugal', 'Aveiro', '3800-150', '2'),
  ('8', 'Helena', 'Costa', '1987-11-15', 'helena.costa@yahoo.com', 'B%vO94-)06">', '927654321', 'Portuguesa', 'Portugal', 'Guarda', '6300-001', '2'),
  ('9', 'Igor', 'Fernandes', '2000-08-18', 'igor.fernandes@gmail.com', '[1=V83pH/80l', '936543210', 'Portuguesa', 'Portugal', 'Leiria', '2400-150', '2'),
  ('10', 'Xavier', 'Rocha', '1992-08-07', 'xavier.rocha@gmail.com', 'k&]i1UZ2u70}', '911234567', 'Portuguesa', 'Portugal', 'Porto', '4300-150', '2'),
  ('11', 'Kevin', 'Oliveira', '1980-06-09', 'kevin.oliveira@gmail.com', '2UG.2;=nJ3J>', '918765432', 'Portuguesa', 'Portugal', 'Évora', '7000-150', '2');


INSERT INTO tip_autocarro
VALUES ('1', 'Standard'),
('2', 'Executivo'),
('3', 'Double-Decker'),
('4', 'Minibus');


INSERT INTO rotas
VALUES ('1', 'Porto - Viana do Castelo'),
('2', 'Porto - Braga'),
('3', 'Porto - Vila Real'),
('4', 'Porto - Bragança'),
('5', 'Porto - Aveiro'),
('6', 'Porto - Viseu'),
('7', 'Porto - Guarda'),
('8', 'Porto - Coimbra'),
('9', 'Porto - Castelo Branco'),
('10', 'Porto - Leiria'),
('11', 'Porto - Santarém'),
('12', 'Porto - Portoalegre'),
('13', 'Porto - Lisboa'),
('14', 'Porto - Setúbal'),
('15', 'Porto - Évora'),
('16', 'Porto - Beja'),
('17', 'Porto - Faro'),
('18', 'Vigo'),
('19', 'Madrid'),
('20', 'Barcelona');


INSERT INTO paragens
VALUES 
  ('1', '11', 'Coimbra', '1'),
  ('2', '12', 'Coimbra', '4'),
  ('3', '13', 'Leiria', '7.6'),
  ('4', '14', 'Leiria', '10'),
  ('5', '15', 'Santarém', '15'),
  ('6', '16', 'Santarém', '18'),
  ('7', '17', 'Évora', '21.4'),
  ('8', '19', 'Salamanca', '27.9'),
  ('9', '20', 'Salamanca', '30.6'),
  ('10', '20', 'Valencia', '30.6');


INSERT INTO autocarros
VALUES('1', '22', '115', '2023-08-10', '1'),
('2', '34', '88', '2023-11-25', '3'),
('3', '7', '18', '2024-02-020', '2'),
('4', '15', '97', '2023-10-14', '1'),
('5', '50', '10', '2024-03-04', '4'),
('6', '37', '50', '2023-12-17', '2'),
('7', '45', '30', '2024-07-23', '4');

INSERT INTO partidas_chegadas
VALUES 
  ('1', '09:00', '1', '1', '1'),
  ('2', '09:30', '2', '1', '1'),
  ('3', '09:45', '3', '1', '1'),
  ('4', '10:10', '4', '1', '1'),
  ('5', '10:20', '5', '1', '1'),
  ('6', '10:16', '6', '1', '1'),
  ('7', '10:19', '7', '1', '1'),
  ('8', '10:21', '8', '1', '1'),
  ('9', '10:25', '9', '1', '1'),
  ('10', '10:29', '10', '1', '4');



INSERT INTO bilhete
VALUES('1', '1', '1', '20.50', '2'),
('2', '2', '2', '20.50', '5'),
('3', '3', '3', '20.50', '6'),
('4', '4', '4', '20.50', '10'),
('5', '5', '5', '20.50', '11'),
('6', '6', '6' ,'12.89', '1'),
('7', '7', '7' ,'12.89', '1');