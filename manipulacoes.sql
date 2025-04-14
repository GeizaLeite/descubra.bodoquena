-- UPDATE: Alterar o nome de uma hospedagem
UPDATE hospedagem
SET nome = 'Pousada Águas Claras'
WHERE id_hospedagem = 1;

-- DELETE: Remover um balneário específico
DELETE FROM balneario
WHERE id_balneario = 2;

-- SELECT simples: Listar todas as hospedagens
SELECT * FROM hospedagem;

-- SELECT com filtro: Buscar restaurantes com culinária regional
SELECT * FROM restaurante
WHERE tipo_culinaria LIKE '%regional%';

-- SELECT com JOIN: Mostrar nome da hospedagem e sua localização
SELECT h.nome AS hospedagem, l.nome AS localizacao
FROM hospedagem h
JOIN localizacao l ON h.id_localizacao = l.id_localizacao;
