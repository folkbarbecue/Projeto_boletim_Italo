CREATE DATABASE IF NOT EXISTS testenota; -- Cria o banco de dados, caso não exista

USE testenota;


CREATE TABLE IF NOT EXISTS unidade1 (
  id INT AUTO_INCREMENT PRIMARY KEY, -- Campo ID auto-incrementado e chave primária
  nome VARCHAR(100) NOT NULL, 
  unidade char(2),
  disciplina varchar(30),-- Nome do aluno, com tamanho máximo de 100 caracteres
  turma varchar(120), 
  av1_1 char(2), 
  av2_1 char(2), 
  conceito_1 char(2),
  noa_1 char(2)
);
-- dropando valores duplicados a partir do id do elemento 
DELETE FROM unidade2 WHERE id = 65;
select id, nome, disciplina from unidade2;
select * from unidade2;
CREATE TABLE IF NOT EXISTS unidade2 (
  id INT AUTO_INCREMENT PRIMARY KEY, -- Campo ID auto-incrementado e chave primária
  nome VARCHAR(100) NOT NULL,   
  unidade char(2),
  disciplina varchar(30),-- Nome do aluno, com tamanho máximo de 100 caracteres
  turma varchar(120), 
  av1_2 char(2), 
  av2_2 char(2), 
  conceito_2 char(2),
  noa_2 char(2)
);

CREATE TABLE IF NOT EXISTS unidade3 (
  id INT AUTO_INCREMENT PRIMARY KEY, -- Campo ID auto-incrementado e chave primária
  nome VARCHAR(100) NOT NULL,   
  unidade char(2),
  disciplina varchar(30),-- Nome do aluno, com tamanho máximo de 100 caracteres
  turma varchar(120), 
  av1_3 char(2), 
  av2_3 char(2), 
  conceito_3 char(2),
  noa_3 char(2)
);

     drop database testenota;
     
     
     
     SELECT 
    u1.nome, u1.disciplina, u1.turma,
    u1.av1_1, u1.av2_1, u1.conceito_1, u1.noa_1,
    u2.av1_2, u2.av2_2, u2.conceito_2, u2.noa_2,
    u3.av1_3, u3.av2_3, u3.conceito_3, u3.noa_3
FROM unidade1 u1
LEFT JOIN unidade2 u2 ON u1.nome = u2.nome AND u1.disciplina = u2.disciplina AND u1.turma = u2.turma
LEFT JOIN unidade3 u3 ON u1.nome = u3.nome AND u1.disciplina = u3.disciplina AND u1.turma = u3.turma
WHERE u1.nome LIKE '%$nome%'
ORDER BY  u1.disciplina ASC;