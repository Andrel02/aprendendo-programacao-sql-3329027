-- Escreva uma consulta que retorne o nome por extenso dos estados brasileiros
SELECT DISTINCT
Country as pais,
State as estado_sigla,
CASE
    WHEN state = 'SP' THEN 'São Paulo'
    WHEN state = 'RJ' THEN 'Rio de Janeiro'
    WHEN state = 'DF' THEN 'Distrito Federal'
END as estado
FROM customers
WHERE Country = 'Brazil';
