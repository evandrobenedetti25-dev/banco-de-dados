ALTER TABLE Usuarios 
ADD COLUMN email VARCHAR(100);

ALTER TABLE Usuarios 
ADD COLUMN data_cadastro DATE;

ALTER TABLE Usuarios 
ADD COLUMN cpf CHAR(11) UNIQUE;

ALTER TABLE Usuarios 
ADD COLUMN status VARCHAR(30);

ALTER TABLE Usuarios 
ADD COLUMN idade INT;


ALTER TABLE Produtos
MODIFY COLUMN id INT NOT NULL;

ALTER TABLE Produtos
MODIFY COLUMN preco DECIMAL(10,2);

ALTER TABLE Produtos
MODIFY COLUMN estoque INT;

ALTER TABLE Produtos
ADD COLUMN nome VARCHAR(200);

ALTER TABLE Produtos
MODIFY COLUMN nome VARCHAR(200);

ALTER TABLE Tbl_Antiga
RENAME COLUMN col_nome TO nome_completo;

ALTER TABLE Usuarios 
RENAME COLUMN id TO id_usuario;

ALTER TABLE Tbl_Antiga
ADD COLUMN temp VARCHAR(200);

ALTER TABLE Tbl_Antiga
RENAME COLUMN temp TO observacoes;

ALTER TABLE Backup_Sistema
DROP COLUMN lixo_digital;

ALTER TABLE Backup_Sistema
ADD COLUMN temp_data VARCHAR(10);

ALTER TABLE Backup_Sistema
DROP COLUMN temp_data;

ALTER TABLE Backup_Sistema
DROP COLUMN nota_fiscal;

ALTER TABLE Backup_Sistema
DROP COLUMN nota_fiscal1;

ALTER TABLE Usuarios 
DROP COLUMN idade;

DELETE FROM Mensagens WHERE id = 1;

INSERT INTO Mensagens (id, texto)
VALUES (1, 'Teste');


DELETE FROM Mensagens
WHERE texto = 'Teste';

SET SQL_SAFE_UPDATES =0;

DELETE FROM Mensagens
WHERE texto = 'Spam';

CREATE TABLE Teste_delete (
nemo VARCHAR(100)
);
DELETE FROM Teste_delete;

DESC Usuarios;
DESC Produtos;
DESC Tbl_Antiga;
DESC Backup_Sistema;

