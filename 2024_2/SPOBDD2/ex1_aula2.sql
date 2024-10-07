CREATE DATABASE BD_ENDERECO;
USE BD_ENDERECO;

CREATE TABLE pais (
    id_pais INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE estado (
    id_estado INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    id_pais INT NOT NULL,
    FOREIGN KEY (id_pais) REFERENCES pais(id_pais)
);

CREATE TABLE cidade (
    id_cidade INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    id_estado INT NOT NULL,
    FOREIGN KEY (id_estado) REFERENCES estado(id_estado)
);

CREATE TABLE endereco (
    id_endereco INT AUTO_INCREMENT PRIMARY KEY,
    rua VARCHAR(100) NOT NULL,
    numero INT NOT NULL,
    id_cidade INT NOT NULL,
    FOREIGN KEY (id_cidade) REFERENCES cidade(id_cidade)
);


INSERT INTO pais (nome) VALUES ('Brasil');

INSERT INTO estado (nome, id_pais) VALUES ('São Paulo', 1), ('Rio de Janeiro', 1), ('Minas Gerais', 1);

INSERT INTO cidade (nome, id_estado) VALUES ('São Paulo', 1), ('Campinas', 1), ('Santos', 1);
INSERT INTO cidade (nome, id_estado) VALUES ('Rio de Janeiro', 2), ('Niterói', 2), ('Petrópolis', 2);
INSERT INTO cidade (nome, id_estado) VALUES ('Belo Horizonte', 3), ('Uberlândia', 3), ('Juiz de Fora', 3);

INSERT INTO endereco (rua, numero, id_cidade) VALUES ('Rua A', 100, 1), ('Rua B', 200, 1);
INSERT INTO endereco (rua, numero, id_cidade) VALUES ('Rua C', 300, 2), ('Rua D', 400, 2);
INSERT INTO endereco (rua, numero, id_cidade) VALUES ('Rua E', 500, 3), ('Rua F', 600, 3);
INSERT INTO endereco (rua, numero, id_cidade) VALUES ('Rua G', 700, 4), ('Rua H', 800, 4);
INSERT INTO endereco (rua, numero, id_cidade) VALUES ('Rua I', 900, 5), ('Rua J', 1000, 5);
INSERT INTO endereco (rua, numero, id_cidade) VALUES ('Rua K', 1100, 6), ('Rua L', 1200, 6);
INSERT INTO endereco (rua, numero, id_cidade) VALUES ('Rua M', 1300, 7), ('Rua N', 1400, 7);
INSERT INTO endereco (rua, numero, id_cidade) VALUES ('Rua O', 1500, 8), ('Rua P', 1600, 8);
INSERT INTO endereco (rua, numero, id_cidade) VALUES ('Rua Q', 1700, 9), ('Rua R', 1800, 9);

UPDATE estado SET nome = 'Paraná' WHERE nome = 'Minas Gerais';

INSERT INTO cidade (nome, id_estado) VALUES ('Cascavel', (SELECT id_estado FROM estado WHERE nome = 'Paraná'));

DELETE FROM endereco WHERE id_endereco IN (1, 2, 3);

SELECT * FROM cidade WHERE nome LIKE 'C%';

UPDATE cidade SET nome = 'Curitiba' WHERE nome = 'Cascavel';












