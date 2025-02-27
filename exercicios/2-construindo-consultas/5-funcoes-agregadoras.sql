-- Para a tabela "invoices", crie uma consulta que retorne o país e a soma das compras realizadas nele, bem como o valor da compra mínima e máxima, a quantidade de compras realizadas e o ticket médio de cada compra.
SELECT
COALESCE(BillingCountry, 'TOTAL GERAL') AS pais,
ROUND(SUM(Total),2) as soma_compras,
MIN(Total) as compra_minima,
MAX(Total) as compra_maxima,
COUNT(Total) as quantidade_compras,
ROUND(AVG(Total),2) as ticket_medio
FROM
invoices
GROUP BY BillingCountry;