-- Insira 4 classes salariais na tabela salario_classe
INSERT INTO salario_classe_oficial(id,nivel,salario)
VALUES
(1,'estagiária',650),
(2,'assistente',2000),
(3,'analista',3500),
(4,'especialista',8000);
-- Insira 1 nova classe salarial, sem declarar o atributo id_salario
INSERT INTO salario_classe_oficial(salario, nivel)
VALUES
(10000, 'gerente');