-- Crie uma consulta para realizar um left join com as tabelas "albums" e "artists"
SELECT*
FROM Albums
LEFT JOIN artists ON Albums.ArtistId = Artists.ArtistId;