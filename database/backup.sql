-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: eu-cdbr-west-02.cleardb.net    Database: heroku_c78f6c3eaaf5da1
-- ------------------------------------------------------
-- Server version	5.6.50-log

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
-- Table structure for table `arab`
--

DROP TABLE IF EXISTS `arab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `arab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `suport` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arab`
--

LOCK TABLES `arab` WRITE;
/*!40000 ALTER TABLE `arab` DISABLE KEYS */;
INSERT INTO `arab` VALUES (1,'Grammatica arabica','imprimé','S.D. circa 1540','Guillaume Postel','Latin, arabe','','https://books.google.fr/books?id=e6DEBIreuwwC&amp;printsec=frontcover&amp;hl=fr&amp;source=gbs_ge_summary_r&amp;cad=0','Linguarum duodecim characteribus differentium alphabetum.');
/*!40000 ALTER TABLE `arab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `showAuthor` tinyint(1) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `language` char(2) DEFAULT NULL,
  `urlImage` text,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (1,'/new_blog_0','2022-04-21 06:50:59','Jones',0,'Publications à venir','fr','https://cdn-eey58rpl.files-simplefileupload.com/static/blobs/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBcktMIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--ae5428946e611616d9da485a566fbe4a05b10ae1/IMG_6367.JPG','Vous trouverez ici la liste des publications à venir sur Postel <br /><br /><br />asd<br /><br />asd<br /><br />asd2'),(11,'/this_is_a_bloglalalala','2022-04-29 09:42:23','Jones',0,'Journées d\'études et colloques','fr','https://cdn-eey58rpl.files-simplefileupload.com/static/blobs/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBczJYIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--df8783b38c627f6cc08440e3bd419ee9daf90b4a/essai%20en%20arabe.jpg','Ceci c\'est un test! C\'est un autre test C\'est une derniere test!<br /><br />');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page`
--

DROP TABLE IF EXISTS `page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `language` char(2) DEFAULT NULL,
  `urlImage` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=871 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page`
--

LOCK TABLES `page` WRITE;
/*!40000 ALTER TABLE `page` DISABLE KEYS */;
INSERT INTO `page` VALUES (51,'bibliographie','Bibliographie Générale','','fr',''),(261,'humaniste','Humaniste Total','Une Humaniste Total','fr',''),(351,'arabe','Une bibliothèque arabe prémoderne','Rôle de Postel dans la collecte de manuscrits arabes','fr',''),(441,'postel','Guillaume Postel','Bibliographie de Guillaume Postel','fr',''),(481,'oeuvres','Les Oeuvres','','fr',''),(501,'oeuvres','Works','Explore the books written by Postel','en',''),(521,'arabe','Arabic Library','Postel\'s role in collecting Arabic manuscripts','en',''),(601,'postel','Guillaume Postel','Bibliography of Guillaume Postel','en',''),(621,'humaniste','Humanist','Humanist','en',''),(641,'bibliographie','Bibliography','Other sources for research','en',''),(681,'index','Presentazione sito web','-','it',''),(691,'bibliographie','Bibliografia Generale','','it',''),(711,'arabe','Una biblioteca araba premoderna','-','it',''),(721,'postel','Guillaume Postel','-','it',''),(731,'oeuvres','Lavori','-','it',''),(741,'index','عرض تقديمي للموقع','-','ar',''),(761,'oeuvres','يعمل',' ','ar',''),(771,'arabe','مكتبة عربية حديثة',' ','ar',''),(781,'bibliographie','فهرس',' ','ar',''),(791,'humaniste','Umanista totale','Un umanista totale','it',''),(801,'humaniste','مجموع إنساني','مجموع إنساني','ar',''),(811,'postel','Guillaume Postel','ببليوغرافيا غيوم بوستيل','ar',''),(831,'index','About this website','About','en','https://cdn-eey58rpl.files-simplefileupload.com/static/blobs/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBdVNYIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--14865964888ab60fb87ae5a8095b18f71b78d23a/6542609987_eae856df9b_o.jpg'),(841,'index','Présentation du site','Présentation du site','fr','https://cdn-eey58rpl.files-simplefileupload.com/static/blobs/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBdU9YIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--37b816ecf975209b80b4aab5ad7b1f18bc56bce3/travail%20de%20Postel.jpg'),(851,'index','Présentation du site','Présentation du site','fr','https://cdn-eey58rpl.files-simplefileupload.com/static/blobs/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBck9iIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--312686c0d7346b21315b77a9bb61bb99018a05d6/alphabet.jpg'),(861,'malandro','Malandro Demais','Tamo Junto','Fr','');
/*!40000 ALTER TABLE `page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagetab`
--

DROP TABLE IF EXISTS `pagetab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagetab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idPage` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `urlImage` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagetab`
--

LOCK TABLES `pagetab` WRITE;
/*!40000 ALTER TABLE `pagetab` DISABLE KEYS */;
INSERT INTO `pagetab` VALUES (1,1,'Description 1','Ce site a pour objectif premier de mettre à disposition des chercheurs et des curieux l’ensemble des productions imprimées et manuscrites de Guillaume Postel. Graphomane, il a produit un nombre impressionnant d’écrits éparpillés au cours de sa vie mouvementée mais qui ont, pour beaucoup, été conservés. L’accès de nombre de ces textes est difficile tant par leur langue (ils sont majoritairement rédigés en latin) que par leur localisation ou leur faible diffusion. Nombre de ces textes ont été amendés par lui-même, attentif à faire évoluer sa pensée en fonction de ses lectures et de ses rencontres.',''),(11,1,'Description 2','Le site a pour objectif aussi de mettre en évidence l’importance de ses écrits dans leur contexte. Guillaume Postel fait partie d’un groupe d’érudits versés dans l’analyse des textes sacrés mais aussi dans la recherche linguistique caractéristiques de ce que l’on appelle généralement l’humanisme. <br/> Financé par l’Institut Universitaire de France et hébergé par l’Université de Lille, le site rend compte des travaux actuels sur Guillaume Postel et sa pensée.',''),(21,1,'Bibiographie','Integer volutpat ante et accumsan commophasellus sed aliquam feugiat. Bibliographie',''),(31,1,'Oeuvres','Integer volutpat ante et accumsan commophasellus sed aliquam feugiat. Oeuvres',''),(41,1,'Bibliothèque','Integer volutpat ante et accumsan commophasellus sed aliquam feugiats. Bibliothèque',''),(51,1,'Equipe','Integer volutpat ante et accumsan commophasellus sed aliquam feugiat lorem aliquet ut enim magna aliquam veroeros. Equipe',''),(61,11,'Eléments biographiques','Guillaume Postel (1510 – 1581) est bien connu des hébraïsants et des spécialistes de la cabale. On connait, « l’obsession turque » de Postel qui date de sa participation à l’Ambassade de Jean de la Forest à Constantinople (1535-1537). Guillaume Postel est avant tout un linguiste, c’est son exceptionnelle capacité pour ce domaine qui le signale d’abord. On connait assez bien la vie de Postel, racontée en grande partie par lui-même mais aussi par des biographies publiées très rapidement après sa mort et qui témoignent d’un intérêt contemporain pour l’érudit.<br/>Plusieurs ouvrages rendent compte de la vie mouvementée du Normand (voir la bibliographie). Né en 1510 dans un hameau Normand, La Dolerie, près de Barenton, il rappelle souvent ses origines modestes qui ne le prédestinaient pas à l’existence aventureuse et érudite qu’il a eue. Ses parents meurent de la peste alors qu’il n’a que huit ans. Il est élevé par un oncle et révèle très tôt une appétence exceptionnelle pour la lecture et les langues. A l’âge de 13 ans il enseigne déjà le latin dans une école de Sagy puis part pour Paris. A son arrivée, il est détroussé par des brigands, tombe gravement malade et est hospitalisé un an à l’Hôtel-Dieu. Il survit à sa maladie et à son hospitalisation puis loue ses bras dans les fermes de la Beauce pour s’acheter un habit. Lorsqu’il retourne à Paris, il est employé au Collège Sainte-Barbe où il découvre le monde érudit de la Montagne Sainte Geneviève qui remarque ses capacités intellectuelles hors du commun.<br/>Il est rattaché à la première ambassade de France à Constantinople (1535-1537) et poursuit, lors de ce premier séjour en Orient, son apprentissage des langues pratiquées dans l’Empire Ottoman.<br/>A son retour, il passe par Venise, ville importante alors notamment pour l’activité des imprimeurs et des érudits comme Daniel Bomberg qu’il rencontre. Chez l’imprimeur, il côtoie des Italiens eux-aussi intéressés par les langues sémitiques (l’hébreu d’abord mais aussi l’arabe ou le chaldéen).<br/>Il rentre à Paris où il est nommé lecteur royal en langues orientales, en 1538. Les années 1538-1542 sont particulièrement riches en productions linguistiques.<br/>Il se dirige vers Rome en 1544 pour intégrer l’ordre des Jésuites fondé par Ignace de Loyola dont il a fait la connaissance à Paris. Après quelques mois de noviciat, il est renvoyé de l’ordre et se rend à Venise où il est, entre autres, confesseur de Jehanne qu’il identifie comme la « mère du monde ». A partir de ce moment, il développe une pensée originale qu’il défend jusqu’à la fin de sa vie et qui place Jehanne au centre d’un système universel qui permettra d’accéder à un monde « restitué » et à la « concorde universelle ».<br/>Il entreprend un deuxième voyage en Orient en 1549, la majorité des manuscrits arabes rapportés par Postel sont acquis lors de ce deuxième séjour à Constantinople. Il rentre à Venise l’année suivante.<br/>Il enseigne à Paris au collège des Lombards en 1552 puis quitte Paris où son enseignement est interdit. Il séjourne à Bâle puis retourne à Venise où ses écrits sont mis à l’index en 1555. Le tribunal de l’Inquisition de Venise le diagnostique amens (fou). Il est finalement incarcéré quatre ans à Rome et est libéré grâce à une révolte sans rapport avec son incarcération.<br/>Il rentre à Paris en 1563. Jugé fou, il est incarcéré à Saint-Martin-des-Champs où il continue à écrire et à recevoir les érudits de son temps ainsi que ses disciples.<br/>Il meurt en 1581.\'',''),(71,11,'Importance dans l’humanisme','\'Guillaume Postel produit une pensée originale et qui est rapidement qualifiée d’hérétique mais il est au centre de l’intense activité humaniste du milieu du XVIème siècle. Ses voyages lui permettent de faire la rencontre de nombreux érudits contemporains qui poursuivent des projets proches sur des sujets communs (théologie, linguistique comparée, traductions, impressions, sciences…).',''),(81,11,'Polygraphe','Il écrit tout au long de sa vie sur des sujets très divers et ne semble s’interdire aucune curiosité scientifique. Il élabore un système complexe qui vise à l’exhaustivité. S’il est possible bien sûr de repérer de nombreuses erreurs dans les divers domaines qu’il aborde (sa grammaire arabe est imparfaite, comme sa mappemonde ou ses connaissances de l’islam par exemple), son insatiable curiosité est fascinante.<br/>On peut tenter de regrouper ses écrits en fonctions de grands domaines même si, dans le système postellien, tout se recoupe.',''),(91,11,'Linguiste','L’intense activité autour des langues n’est pas proprement postellienne mais se vérifie au XVIème siècle dans tous les centres érudits en Europe. C’est le premier domaine qu’il aborde et qui nourrit, toute sa vie, l’élaboration de son système.',''),(101,11,'Théologien','L’accès aux textes sacrés dans les deux langues majeures que sont le grec et l’hébreu dans ce domaine lui donne l’occasion d’élaborer un discours original sur les Evangiles ou le Nouveau Testament. S’inspirant, comme certains de ses contemporains, de la cabale juive qu’il connaît en tant qu’hébraïsant, il construit un système qui repose sur l’idée d’une « restitution » menant à la Concorde Universelle.',''),(111,11,'Mathématicien','Lecteur de mathématique, Postel s’intéresse à tous les langages, y compris celui des mathématiques, de la médecine ou de la cosmologie. C’est dans les manuscrits arabes qu’il entend puiser les dernières avancées dans ces domaines.',''),(121,11,'Cartographe','Auteur de la projection dite « postellienne », il produit une mappemonde qui ne prend pas l’Europe comme centre mais le Pôle Nord. L’universalisme visé par l’érudit est condensé dans cette représentation qui montre tout l’intérêt de Guillaume Postel pour les dernières avancées scientifiques et techniques.',''),(131,21,'Des religions du Livre','1 Liste des oeuvres et manuscrits qui traitent en lien avec leurs notices. 1 Liste des oeuvres et manuscrits qui traitent en lien avec leurs notices',''),(141,21,'Des Autres Religions','2 Liste des oeuvres et manuscrits qui traitent en lien avec leurs notices. 1 Liste des oeuvres et manuscrits qui traitent en lien avec leurs notices',''),(151,21,'Des Femmes','3 Liste des oeuvres et manuscrits qui traitent en lien avec leurs notices. 1 Liste des oeuvres et manuscrits qui traitent en lien avec leurs notices',''),(161,21,'Autres Auteurs Proches','4 Liste des oeuvres et manuscrits qui traitent en lien avec leurs notices. 1 Liste des oeuvres et manuscrits qui traitent en lien avec leurs notices',''),(171,21,'Des détracteurs de postel','5 Liste des oeuvres et manuscrits qui traitent en lien avec leurs notices. 1 Liste des oeuvres et manuscrits qui traitent en lien avec leurs notices',''),(181,31,'Les Oeuvres','Example 2',''),(191,41,'Rôle de Postel dans la collecte de manuscrits arabes','Postel profite de ses séjours dans le monde ottoman pour acquérir des manuscrits en arabe mais aussi en turc ottoman. Il rappelle dans ses Paralipomènes qu’il est mandaté pour cela ce qui annonce les missions des Antiquaires du siècle suivant qui enrichiront les collections royales de manuscrits arabes à l’origine du fonds de la Bibliothèque Nationale de France. Il était rattaché officiellement à une ambassade française et a sans doute pu bénéficier par là d’une certaine confiance. Malheureusement, ses tribulations entre les deux voyages expliquent sans doute que nous n’ayons conservé qu’un seul manuscrit récupéré entre 1535 et 1537 1 . Georgi Levi Della Vida a fourni un travail exceptionnel sur le fonds arabe de la Bibliothèque Vaticane. Selon lui, aucun manuscrit arabe acquis par Postel lors de son premier voyage n’a été transmis à la bibliothèque palatine malgré le séjour qu’il passe en Italie à son retour.<br/>Selon toute vraisemblance, on n’en compte aucun non plus dans les collections françaises et sa correspondance, qui revient fréquemment sur la question, ne détaille pas la date exacte des acquisitions qu’il y mentionne. Faut-il croire qu’il est revenu en 1537 sans aucun manuscrit ? Qu’il les a perdus en cours de chemin ou laissés quelque part ? On pourrait se servir de ce qu’il est advenu de ceux qu’il a rapportés de son deuxième voyage et qui sont en nombre relativement important. Giorgio Levi Della Vida recence 11 manuscrits du fonds arabe de la bibliothèque Vaticane issus d’un « fonds Postel 2 ». Les pages 307 à 327 de son ouvrage sont entièrement consacrées au rôle majeur de l’humaniste français dans la constitution des fonds arabes des grandes bibliothèques européennes. Les manuscrits qu’il a patiemment colligés sont encore dispersés et restent sans doute encore à être découverts pour certains. Il faut chercher dans les lettres, notamment celles qu’il échange avec Massius son élève le plus proche, à qui il a enseigné l’arabe en Italie, pour tenter d’apercevoir l’ampleur de ses acquisitions. Josée Balagna-Costou en répertorie 25 ce qui est un nombre très important compte-tenu des difficultés matérielles que ce type d’achat représentent. Pour proposer une comparaison, on peut par exemple rappeler que lors de l’inventaire de Fontainebleau de la Biliothèque Royale, établi en 1544, seuls 6 manuscrits arabes sont répertoriés. Les acquisitions de Postel sont quatre fois plus nombreuses et concernent des domaines très divers.',''),(201,51,'Bibliographie Générale','Example 1.',''),(211,51,'Autres Sites à Consulter','Example 2',''),(221,861,'Primeiro Título','Isto é sobre o titulo','Isto é sobre o titulo'),(231,861,'Segundo Título','Isto é sobre o titulo','Isto é sobre o titulo'),(241,861,'Terceiro Título','Isto é sobre o titulo','Isto é sobre o titulo'),(251,861,'Quarto Título','Isto é sobre o titulo','Isto é sobre o titulo');
/*!40000 ALTER TABLE `pagetab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `description` text,
  `showUser` tinyint(1) DEFAULT '0',
  `urlImage` text,
  `hash` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (21,'postel','postel','admin','admin do groupe',0,'','2b9afa616f6820d810268b6f72068ae8'),(81,'Emilie Picherot','emilie','admin','Admin du groupe 3',1,'','052ce4e14d787bf9cf39f9a45cfe6069'),(141,'Maxence','maxence','123','',0,'','f30004da11c4e06a097f5e9176a4eeb1');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work`
--

DROP TABLE IF EXISTS `work`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `work` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text,
  `suport` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `editor` varchar(255) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work`
--

LOCK TABLES `work` WRITE;
/*!40000 ALTER TABLE `work` DISABLE KEYS */;
INSERT INTO `work` VALUES (1,'De originibus seu de hebraicae linguae et gentis antiquitate deque variarum linguarum affinitate liber. In quo ad Hebraeorum Chaldaeorumve gente traductas in toto orbe colonias, vocabuli hebraici argumento, humanistatisque authorum testimonio videbis : literas, leges, disciplinasque omnes inde ortas cognosces : communitatemque notiorum idiomatum aliquam cum Hebraismo esse','imprimé','1558','D. Lescuier','Paris','Guillaume Postel','latin','Hébreu, linguistique comparée, chaldéen, grammaire, alphabets','https://gallica.bnf.fr/ark:/12148/bpt6k62744964/f2.item','C\'est une description!');
/*!40000 ALTER TABLE `work` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-10 13:41:04
