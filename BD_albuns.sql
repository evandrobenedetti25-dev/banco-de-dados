CREATE TABLE Artista (
id_artista INT PRIMARY KEY AUTO_INCREMENT,
nome_artistico VARCHAR(100),
genero_musical VARCHAR(100)
);

CREATE TABLE Album (
id_album INT PRIMARY KEY AUTO_INCREMENT,
titulo_album varchar(100),
ano_lancamento YEAR,
id_artista_fk INT,
CONSTRAINT fk_artista_album
FOREIGN KEY (id_artista_fk) REFERENCES Artista (id_artista)
ON DELETE CASCADE
);

INSERT INTO Album (titulo_album, ano_lancamento, id_artista_fk)VALUES
('Emoções','1981','1'),
('Thriller','1982','2'),
('Lemonade','2016','3'),
('24K Magic','2016','4'),
('The Fame','2008','5'),
('1989','2014','6'),
('21','2011','7'),
('ANTI','2016','8'),
('Blackstar','2016','9'),
('Songs in A Minor','2001','10');