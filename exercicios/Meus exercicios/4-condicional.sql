SELECT DISTINCT
user_id as usuarioId,
Receita as dinheiro,
Status,
CASE
    WHEN Receita > 20 AND Receita < 30 THEN 'Teste'
    WHEN Receita >= 30 THEN 'Cú'
    WHEN Receita <= 20 THEN 'Teste2'
END as Status_oficial
FROM users_blog
WHERE status = 'premium';