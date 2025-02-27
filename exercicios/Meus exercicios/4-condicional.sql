SELECT DISTINCT
user_id as id,
status,
Receita,
Artigo,
CASE
    WHEN Receita >=20 THEN 'Cú'
    ELSE 'dinheiro'
END AS status_receita
FROM users_blog
WHERE Artigo = 'Sair das dívidas';