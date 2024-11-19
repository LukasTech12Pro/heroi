use herois;

create table super_heroi
(
ID BIGINT PRIMARY KEY,
NOME VARCHAR(255),
APELIDO VARCHAR(255),
SUPERPODER VARCHAR(255),
FRAQUEZA VARCHAR(255),
HISTORIAORIGEM TEXT,
PRIMEIRAAPARICAO DATE
);

INSERT INTO super_heroi (id, apelido, fraqueza, historia_origem, nome, primeira_aparicao, super_poder, equipe_id) VALUES
(1, 'Superman', 'Kryptonita', 'Último filho de Krypton, enviado à Terra antes da destruição de seu planeta', 'Kal-El', '1938-06-01', 'Super força, voo, visão de calor, invulnerabilidade', 1),
(2, 'Batman', 'Sem superpoderes', 'Testemunhou o assassinato dos pais, jurando proteger Gotham como vigilante', 'Bruce Wayne', '1939-05-01', 'Habilidade em artes marciais, inteligência, gadgets', 2),
(3, 'Homem-Aranha', 'Sentido de responsabilidade', 'Mordido por uma aranha radioativa, ganhou habilidades aracnídeas', 'Peter Parker', '1962-08-01', 'Escalar paredes, força aumentada, sentido aranha', 3),
(4, 'Mulher-Maravilha', 'Perda de poderes fora da Grécia', 'Filha de Hipólita, enviada ao mundo dos homens como embaixadora', 'Diana Prince', '1941-10-01', 'Super força, agilidade, voo', 1),
(5, 'Hulk', 'Perda de controle emocional', 'Exposto à radiação gama durante um experimento', 'Bruce Banner', '1962-05-01', 'Força e resistência ilimitadas', 4),
(6, 'Homem de Ferro', 'Problemas cardíacos', 'Criou uma armadura após ser capturado, agora luta pela justiça', 'Tony Stark', '1963-03-01', 'Armadura tecnológica com vários recursos', 2),
(7, 'Thor', 'Indigno do martelo', 'Deus do Trovão, filho de Odin', 'Thor Odinson', '1962-08-01', 'Força divina, manipulação do trovão, voo com Mjolnir', 1),
(8, 'Flash', 'Excesso de consumo energético', 'Após ser atingido por um raio em um laboratório, ganhou supervelocidade', 'Barry Allen', '1956-10-01', 'Super velocidade', 3),
(9, 'Aquaman', 'Desidratação', 'Filho de Atlanna, o príncipe de Atlântida, com poderes sobre a água', 'Arthur Curry', '1941-11-01', 'Controle sobre criaturas marinhas, super força', 1),
(10, 'Capitão América', 'Sérum instável', 'Recebeu um soro experimental para se tornar um super-soldado', 'Steve Rogers', '1941-03-01', 'Força, resistência e habilidades físicas aumentadas', 2);

INSERT INTO Equipe (id, nome) VALUES
(1, 'Liga da Justiça'),
(2, 'Vingadores'),
(3, 'X-Men'),
(4, 'Quarteto Fantástico'),
(5, 'Titãs'),
(6, 'Sociedade da Justiça'),
(7, 'Defensores'),
(8, 'Guardiões da Galáxia'),
(9, 'Esquadrão Suicida'),
(10, 'Lanterna Verde Corps');

SELECT * FROM super_heroi;
DELETE FROM super_heroi WHERE id;

SELECT * FROM equipe;
DELETE FROM equipe WHERE id;