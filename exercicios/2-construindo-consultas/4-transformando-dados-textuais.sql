-- Crie uma consulta que retorne as colunas CustomerId, FirstName, LastName e Address das pessoas consumidoras brasileiras
SELECT DISTINCT
CustomerId as id,
FirstName as primeiro_nome,
LastName as ultimo_nome,
Address as endereco
FROM customers
WHERE Country = 'Brazil';

-- Na consulta anterior, converta o sobrenome para letras maiúsculas
SELECT DISTINCT
CustomerId as id,
FirstName as primeiro_nome,
UPPER(LastName) as ultimo_nome,
Address as endereco
FROM customers
WHERE Country = 'Brazil';

-- Na consulta anterior, converta o nome para letras minúsculas
SELECT DISTINCT
CustomerId as id,
LOWER(FirstName) as primeiro_nome,
UPPER(LastName) as ultimo_nome,
Address as endereco
FROM customers
WHERE Country = 'Brazil';

-- Na consulta anterior, adicione uma coluna cujos os dados seja o resultado da concatenação das colunas de nome e sobrenome
SELECT DISTINCT
CustomerId AS id,
LOWER(FirstName) AS primeiro_nome,
UPPER(LastName) AS ultimo_nome,
Address AS endereco,
(FirstName || ' ' || LastName) as nome_completo
FROM customers
WHERE Country = 'Brazil';

-- Na consulta anterior, substitua "Av." por "Avenida" na coluna endereço
SELECT DISTINCT
CustomerId AS id,
LOWER(FirstName) AS primeiro_nome,
UPPER(LastName) AS ultimo_nome,
(FirstName || ' ' || LastName) as nome_completo,
REPLACE(Address,'Av','Avenida') as endereco
FROM customers
WHERE Country = 'Brazil';

-- Na consulta anterior, utilize o símbolo de coringa para construir padrões textuais