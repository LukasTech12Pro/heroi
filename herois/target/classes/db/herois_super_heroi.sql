-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: herois
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `super_heroi`
--

DROP TABLE IF EXISTS `super_heroi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `super_heroi` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `apelido` varchar(255) DEFAULT NULL,
  `fraqueza` varchar(255) DEFAULT NULL,
  `historia_origem` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `primeira_aparicao` datetime(6) DEFAULT NULL,
  `super_poder` varchar(255) DEFAULT NULL,
  `equipe_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKo6raw03v2b74j2utoiujntetm` (`equipe_id`),
  CONSTRAINT `FKo6raw03v2b74j2utoiujntetm` FOREIGN KEY (`equipe_id`) REFERENCES `equipe` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `super_heroi`
--

LOCK TABLES `super_heroi` WRITE;
/*!40000 ALTER TABLE `super_heroi` DISABLE KEYS */;
INSERT INTO `super_heroi` VALUES (1,'Photon','Altitudes Elevadas','Nascida com habilidades climáticas, descobriu seus poderes ao tentar salvar sua vila de uma tempestade...','Dororo Munroe','2021-03-20 00:00:00.000000','Manipulação de Luz e Energia',1),(2,'Relâmpago','Água','Adquiriu habilidades elétricas após um acidente de laboratório...','Tobias Martins','2019-09-15 00:00:00.000000','Controle de Eletricidade',2),(3,'Sombra','Luz Brilhante','Aprendeu a manipular sombras depois de um encontro misterioso na floresta...','Lúcia Ferreira','2022-07-10 00:00:00.000000','Controle de Sombras',1),(4,'Sereia','Ambientes Secos','Descobriu ser uma descendente de uma antiga raça de seres aquáticos...','Ana Oliveira','2020-11-05 00:00:00.000000','Comunicação Subaquática',2),(5,'Vulcão','Água','Ganhou poderes de magma após entrar em contato com uma rocha vulcânica alienígena...','João Carvalho','2018-05-23 00:00:00.000000','Manipulação de Lava',3),(6,'Fênix','Gelo','Renasceu das cinzas após um acidente trágico...','Carla Souza','2021-01-08 00:00:00.000000','Ressurreição e Chamas',1),(7,'Ventania','Ambientes Fechados','Domina o ar e os ventos após ser escolhida por um antigo espírito do vento...','Gabriela Silva','2019-08-02 00:00:00.000000','Controle do Vento',2),(8,'Terremoto','Metal','Obteve poderes sísmicos após um experimento geológico mal-sucedido...','Ricardo Lima','2022-03-19 00:00:00.000000','Criação de Terremotos',3),(9,'Flora','Fogo','Ganhou habilidades botânicas após um acidente em um laboratório de biotecnologia...','Fernanda Ramos','2020-12-22 00:00:00.000000','Controle de Plantas',1),(10,'Tornado','Vácuo','Descobriu suas habilidades ciclônicas ao sobreviver a um furacão devastador...','Lucas Barros','2021-06-14 00:00:00.000000','Criação de Tornados',2),(11,'Nevasca','Calor Intenso','Desenvolveu habilidades de gelo após um acidente com um cristal ártico...','Mariana Neves','2018-10-11 00:00:00.000000','Controle de Gelo',4),(12,'Metalúrgico','Ácido','Capaz de manipular metais após uma explosão em uma fundição...','Miguel Ferro','2019-07-22 00:00:00.000000','Controle de Metais',4),(13,'Invisível','Luz Ultravioleta','Ganhou o poder da invisibilidade após um acidente em um laboratório de óptica...','Daniela Lopes','2021-03-14 00:00:00.000000','Invisibilidade',5),(14,'Eco','Sons Altos','Desenvolveu habilidades sônicas após um encontro com uma criatura mítica...','Leonardo Silva','2020-01-17 00:00:00.000000','Manipulação Sonora',4),(15,'Fantasma','Luz','Adquiriu habilidades fantasmagóricas após um experimento de teletransporte...','Paulo Mendes','2018-11-30 00:00:00.000000','Intangibilidade',5),(16,'Luz Negra','Escuridão Total','Descobriu seus poderes de luz negra após um acidente em uma usina de energia...','Catarina Luz','2022-05-08 00:00:00.000000','Emissão de Luz Negra',4),(17,'Arcanjo','Armas','Despertou habilidades angelicais após um evento celestial...','Rafael dos Anjos','2019-09-29 00:00:00.000000','Asas e Cura',5),(18,'Ilusionista','A Verdade','Desenvolveu habilidades de ilusão após encontrar um artefato místico...','Lúcio Magia','2021-02-12 00:00:00.000000','Manipulação de Ilusões',5),(19,'Draco','Frio','Ganhou habilidades de fogo e voo após ser banhado por lava...','Bruno Fogo','2020-08-25 00:00:00.000000','Fogo e Voo',4),(20,'Tempus','Alterações na linha do tempo','Adquiriu a habilidade de manipular o tempo após um experimento científico mal-sucedido...','Dr. Marcelo Temporal','2023-04-14 21:00:00.000000','Manipulação do tempo',NULL);
/*!40000 ALTER TABLE `super_heroi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-29 10:54:26
