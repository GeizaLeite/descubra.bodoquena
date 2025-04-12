CREATE DATABASE IF NOT EXISTS descubra_bodoquena;
USE descubra_bodoquena;
-- Evita erro 1175 durante atualizações
SET SQL_SAFE_UPDATES = 0;

-- Apagar tabelas se já existirem (ordem reversa de dependência)
DROP TABLE IF EXISTS contato;
DROP TABLE IF EXISTS emergencia;
DROP TABLE IF EXISTS hospedagem;
DROP TABLE IF EXISTS atracoes;

-- Tabela de atrações
CREATE TABLE atracoes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  descricao TEXT,
  imagem VARCHAR(255)
);

-- Tabela de hospedagem
CREATE TABLE hospedagem (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  descricao TEXT,
  imagem VARCHAR(255)
);

-- Tabela de emergência
CREATE TABLE emergencia (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  endereco TEXT,
  link_mapa VARCHAR(255)
);

-- Tabela de contato
CREATE TABLE contato (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100),
  email VARCHAR(100),
  mensagem TEXT
);

-- Inserções: ATRAÇÕES
INSERT INTO atracoes (nome, descricao, imagem) VALUES
('Boca da Onça', 'A maior cachoeira do Mato Grosso do Sul e ao maior rapel de plataforma do Brasil!', 'img/bocadaonca.jpg'),
('Nascente do Rio Azul', 'Surpreenda seus sentidos! Descubra a beleza do Rio Azul.', 'img/rioazul.jpg'),
('Refúgio Canaã', 'Refúgio perfeito para quem busca paz e sossego.', 'img/refugio.jpg'),
('Mirante Morraria do Sul', 'Cenário deslumbrante do alto da Serra da Bodoquena.', 'img/morraria.jpg');

-- Inserções: HOSPEDAGEM
INSERT INTO hospedagem (nome, descricao, imagem) VALUES
('Hotel Águas de Bodoquena', 'Uma excelente experiencia em hospedagem.', 'img/aguas.jpg'),
('Hotel La Sierra', 'Ambientes sofisticados, suítes aconchegantes e localização estratégica.', 'img/sierra.jpeg'),
('Pousada Ortega', 'Conforto e simplicidade em um só lugar.', 'img/ortega.jpeg'),
('Casa de Campo Charme da Serra da Bodoquena', 'Charme, beleza e tranquilidade junto à Natureza!', 'img/casa charme.jpeg');

-- Inserções: EMERGÊNCIA
INSERT INTO emergencia (nome, endereco, link_mapa) VALUES
('Hospital Municipal Francisco Sales', 'Rua Manoel José Ferreira, 120 - Jardim Planalto', 'https://www.google.com/maps?q=Hospital+Municipal+Bodoquena'),
('Nova Farma', 'Av. Manoel Rodrigues Oliveira, 279 - Centro', 'https://www.google.com/maps?q=Nova+Farma+Bodoquena'),
('Polícia Civil de Bodoquena', 'Rua Manoel de Pinho, 480 - Centro', 'https://www.google.com/maps?q=Polícia+Civil+Bodoquena'),
('Clínica Veterinária', 'Av. Manoel Rodrigues Oliveira, 221 - Centro', 'https://www.google.com/maps?q=Clínica+Veterinária+Bodoquena');

-- Inserções: CONTATO
INSERT INTO contato (nome, email, mensagem) VALUES
('João da Silva', 'joao@email.com', 'Gostaria de saber mais sobre passeios.'),
('Maria Souza', 'maria@email.com', 'Quais são as opções de hospedagem próximas ao centro?');

-- EXEMPLO DE UPDATE USANDO CHAVE PRIMÁRIA (SEM ERRO 1175)
UPDATE atracoes
SET nome = 'Boca da Onça Eco Tour'
WHERE id = 1;

-- CONSULTAS PARA VERIFICAR OS DADOS
SELECT * FROM atracoes;
SELECT * FROM hospedagem;
SELECT * FROM emergencia;
SELECT * FROM contato;

-- (Opcional) Reativa o modo seguro se quiser
-- SET SQL_SAFE_UPDATES = 1;
