SHOW TABLES;

DELETE FROM user WHERE id <> 0;
INSERT INTO user VALUES(0, "postel", "postel", "admin", "admin do groupe", 0, "", "2b9afa616f6820d810268b6f72068ae8");

DELETE FROM page WHERE id <> 0;
INSERT INTO page VALUES(1, "index", "Présentation du site", "Présentation du site", "fr", "");
INSERT INTO page VALUES(11, "postel", "Guillaume Postel", "Bibliographie de Guillaume Postel", "fr", "");
INSERT INTO page VALUES(21, "humaniste", "Guillaume Postel", "Bibliographie de Guillaume Postel", "fr", "");
INSERT INTO page VALUES(31, "oeuvres", "Les Oeuvres", "", "fr", "");
INSERT INTO page VALUES(41, "arabe", "Une bibliothèque arabe prémoderne", "", "fr", "");
INSERT INTO page VALUES(51, "bibliographie", "Bibliographie Générale", "", "fr", "");

DELETE FROM pagetab WHERE id <> 0;
INSERT INTO pageTab VALUES(0, 1, "Description 1", "Ce site a pour objectif premier de mettre à disposition des chercheurs et des curieux l’ensemble des productions imprimées et manuscrites de Guillaume Postel. Graphomane, il a produit un nombre impressionnant d’écrits éparpillés au cours de sa vie mouvementée mais qui ont, pour beaucoup, été conservés. L’accès de nombre de ces textes est difficile tant par leur langue (ils sont majoritairement rédigés en latin) que par leur localisation ou leur faible diffusion. Nombre de ces textes ont été amendés par lui-même, attentif à faire évoluer sa pensée en fonction de ses lectures et de ses rencontres.");
INSERT INTO pageTab VALUES(0, 1, "Description 2", "Le site a pour objectif aussi de mettre en évidence l’importance de ses écrits dans leur contexte. Guillaume Postel fait partie d’un groupe d’érudits versés dans l’analyse des textes sacrés mais aussi dans la recherche linguistique caractéristiques de ce que l’on appelle généralement l’humanisme. <br/> Financé par l’Institut Universitaire de France et hébergé par l’Université de Lille, le site rend compte des travaux actuels sur Guillaume Postel et sa pensée.");
INSERT INTO pageTab VALUES(0, 1, "Bibiographie", "Integer volutpat ante et accumsan commophasellus sed aliquam feugiat. Bibliographie");
INSERT INTO pageTab VALUES(0, 1, "Oeuvres", "Integer volutpat ante et accumsan commophasellus sed aliquam feugiat. Oeuvres");
INSERT INTO pageTab VALUES(0, 1, "Bibliothèque", "Integer volutpat ante et accumsan commophasellus sed aliquam feugiats. Bibliothèque");
INSERT INTO pageTab VALUES(0, 1, "Equipe", "Integer volutpat ante et accumsan commophasellus sed aliquam feugiat lorem aliquet ut enim magna aliquam veroeros. Equipe");

INSERT INTO pagetab VALUES(0, 11, "Eléments biographiques", "Guillaume Postel (1510 – 1581) est bien connu des hébraïsants et des spécialistes de la cabale. On connait, « l’obsession turque » de Postel qui date de sa participation à l’Ambassade de Jean de la Forest à Constantinople (1535-1537). Guillaume Postel est avant tout un linguiste, c’est son exceptionnelle capacité pour ce domaine qui le signale d’abord. On connait assez bien la vie de Postel, racontée en grande partie par lui-même mais aussi par des biographies publiées très rapidement après sa mort et qui témoignent d’un intérêt contemporain pour l’érudit.<br/>Plusieurs ouvrages rendent compte de la vie mouvementée du Normand (voir la bibliographie). Né en 1510 dans un hameau Normand, La Dolerie, près de Barenton, il rappelle souvent ses origines modestes qui ne le prédestinaient pas à l’existence aventureuse et érudite qu’il a eue. Ses parents meurent de la peste alors qu’il n’a que huit ans. Il est élevé par un oncle et révèle très tôt une appétence exceptionnelle pour la lecture et les langues. A l’âge de 13 ans il enseigne déjà le latin dans une école de Sagy puis part pour Paris. A son arrivée, il est détroussé par des brigands, tombe gravement malade et est hospitalisé un an à l’Hôtel-Dieu. Il survit à sa maladie et à son hospitalisation puis loue ses bras dans les fermes de la Beauce pour s’acheter un habit. Lorsqu’il retourne à Paris, il est employé au Collège Sainte-Barbe où il découvre le monde érudit de la Montagne Sainte Geneviève qui remarque ses capacités intellectuelles hors du commun.<br/>Il est rattaché à la première ambassade de France à Constantinople (1535-1537) et poursuit, lors de ce premier séjour en Orient, son apprentissage des langues pratiquées dans l’Empire Ottoman.<br/>A son retour, il passe par Venise, ville importante alors notamment pour l’activité des imprimeurs et des érudits comme Daniel Bomberg qu’il rencontre. Chez l’imprimeur, il côtoie des Italiens eux-aussi intéressés par les langues sémitiques (l’hébreu d’abord mais aussi l’arabe ou le chaldéen).<br/>Il rentre à Paris où il est nommé lecteur royal en langues orientales, en 1538. Les années 1538-1542 sont particulièrement riches en productions linguistiques.<br/>Il se dirige vers Rome en 1544 pour intégrer l’ordre des Jésuites fondé par Ignace de Loyola dont il a fait la connaissance à Paris. Après quelques mois de noviciat, il est renvoyé de l’ordre et se rend à Venise où il est, entre autres, confesseur de Jehanne qu’il identifie comme la « mère du monde ». A partir de ce moment, il développe une pensée originale qu’il défend jusqu’à la fin de sa vie et qui place Jehanne au centre d’un système universel qui permettra d’accéder à un monde « restitué » et à la « concorde universelle ».<br/>Il entreprend un deuxième voyage en Orient en 1549, la majorité des manuscrits arabes rapportés par Postel sont acquis lors de ce deuxième séjour à Constantinople. Il rentre à Venise l’année suivante.<br/>Il enseigne à Paris au collège des Lombards en 1552 puis quitte Paris où son enseignement est interdit. Il séjourne à Bâle puis retourne à Venise où ses écrits sont mis à l’index en 1555. Le tribunal de l’Inquisition de Venise le diagnostique amens (fou). Il est finalement incarcéré quatre ans à Rome et est libéré grâce à une révolte sans rapport avec son incarcération.<br/>Il rentre à Paris en 1563. Jugé fou, il est incarcéré à Saint-Martin-des-Champs où il continue à écrire et à recevoir les érudits de son temps ainsi que ses disciples.<br/>Il meurt en 1581.'");
INSERT INTO pageTab VALUES(0, 11, "Importance dans l’humanisme", "'Guillaume Postel produit une pensée originale et qui est rapidement qualifiée d’hérétique mais il est au centre de l’intense activité humaniste du milieu du XVIème siècle. Ses voyages lui permettent de faire la rencontre de nombreux érudits contemporains qui poursuivent des projets proches sur des sujets communs (théologie, linguistique comparée, traductions, impressions, sciences…).");
INSERT INTO pageTab VALUES(0, 11, "Polygraphe", "Il écrit tout au long de sa vie sur des sujets très divers et ne semble s’interdire aucune curiosité scientifique. Il élabore un système complexe qui vise à l’exhaustivité. S’il est possible bien sûr de repérer de nombreuses erreurs dans les divers domaines qu’il aborde (sa grammaire arabe est imparfaite, comme sa mappemonde ou ses connaissances de l’islam par exemple), son insatiable curiosité est fascinante.<br/>On peut tenter de regrouper ses écrits en fonctions de grands domaines même si, dans le système postellien, tout se recoupe.");
INSERT INTO pageTab VALUES(0, 11, "Linguiste", "L’intense activité autour des langues n’est pas proprement postellienne mais se vérifie au XVIème siècle dans tous les centres érudits en Europe. C’est le premier domaine qu’il aborde et qui nourrit, toute sa vie, l’élaboration de son système.");
INSERT INTO pageTab VALUES(0, 11, "Théologien", "L’accès aux textes sacrés dans les deux langues majeures que sont le grec et l’hébreu dans ce domaine lui donne l’occasion d’élaborer un discours original sur les Evangiles ou le Nouveau Testament. S’inspirant, comme certains de ses contemporains, de la cabale juive qu’il connaît en tant qu’hébraïsant, il construit un système qui repose sur l’idée d’une « restitution » menant à la Concorde Universelle.");
INSERT INTO pageTab VALUES(0, 11, "Mathématicien", "Lecteur de mathématique, Postel s’intéresse à tous les langages, y compris celui des mathématiques, de la médecine ou de la cosmologie. C’est dans les manuscrits arabes qu’il entend puiser les dernières avancées dans ces domaines.");
INSERT INTO pageTab VALUES(0, 11, "Cartographe", "Auteur de la projection dite « postellienne », il produit une mappemonde qui ne prend pas l’Europe comme centre mais le Pôle Nord. L’universalisme visé par l’érudit est condensé dans cette représentation qui montre tout l’intérêt de Guillaume Postel pour les dernières avancées scientifiques et techniques.");

INSERT INTO pageTab VALUES(0, 21, "Des religions du Livre", "1 Liste des oeuvres et manuscrits qui traitent en lien avec leurs notices. 1 Liste des oeuvres et manuscrits qui traitent en lien avec leurs notices");
INSERT INTO pageTab VALUES(0, 21, "Des Autres Religions", "2 Liste des oeuvres et manuscrits qui traitent en lien avec leurs notices. 1 Liste des oeuvres et manuscrits qui traitent en lien avec leurs notices");
INSERT INTO pageTab VALUES(0, 21, "Des Femmes", "3 Liste des oeuvres et manuscrits qui traitent en lien avec leurs notices. 1 Liste des oeuvres et manuscrits qui traitent en lien avec leurs notices");
INSERT INTO pageTab VALUES(0, 21, "Autres Auteurs Proches", "4 Liste des oeuvres et manuscrits qui traitent en lien avec leurs notices. 1 Liste des oeuvres et manuscrits qui traitent en lien avec leurs notices");
INSERT INTO pageTab VALUES(0, 21, "Des détracteurs de postel", "5 Liste des oeuvres et manuscrits qui traitent en lien avec leurs notices. 1 Liste des oeuvres et manuscrits qui traitent en lien avec leurs notices");

INSERT INTO pageTab VALUES(0, 31, "Les Oeuvres", "Example 2");

INSERT INTO pageTab VALUES(0, 41, "Rôle de Postel dans la collecte de manuscrits arabes", "Postel profite de ses séjours dans le monde ottoman pour acquérir des manuscrits en arabe mais aussi en turc ottoman. Il rappelle dans ses Paralipomènes qu’il est mandaté pour cela ce qui annonce les missions des Antiquaires du siècle suivant qui enrichiront les collections royales de manuscrits arabes à l’origine du fonds de la Bibliothèque Nationale de France. Il était rattaché officiellement à une ambassade française et a sans doute pu bénéficier par là d’une certaine confiance. Malheureusement, ses tribulations entre les deux voyages expliquent sans doute que nous n’ayons conservé qu’un seul manuscrit récupéré entre 1535 et 1537 1 . Georgi Levi Della Vida a fourni un travail exceptionnel sur le fonds arabe de la Bibliothèque Vaticane. Selon lui, aucun manuscrit arabe acquis par Postel lors de son premier voyage n’a été transmis à la bibliothèque palatine malgré le séjour qu’il passe en Italie à son retour.<br/>Selon toute vraisemblance, on n’en compte aucun non plus dans les collections françaises et sa correspondance, qui revient fréquemment sur la question, ne détaille pas la date exacte des acquisitions qu’il y mentionne. Faut-il croire qu’il est revenu en 1537 sans aucun manuscrit ? Qu’il les a perdus en cours de chemin ou laissés quelque part ? On pourrait se servir de ce qu’il est advenu de ceux qu’il a rapportés de son deuxième voyage et qui sont en nombre relativement important. Giorgio Levi Della Vida recence 11 manuscrits du fonds arabe de la bibliothèque Vaticane issus d’un « fonds Postel 2 ». Les pages 307 à 327 de son ouvrage sont entièrement consacrées au rôle majeur de l’humaniste français dans la constitution des fonds arabes des grandes bibliothèques européennes. Les manuscrits qu’il a patiemment colligés sont encore dispersés et restent sans doute encore à être découverts pour certains. Il faut chercher dans les lettres, notamment celles qu’il échange avec Massius son élève le plus proche, à qui il a enseigné l’arabe en Italie, pour tenter d’apercevoir l’ampleur de ses acquisitions. Josée Balagna-Costou en répertorie 25 ce qui est un nombre très important compte-tenu des difficultés matérielles que ce type d’achat représentent. Pour proposer une comparaison, on peut par exemple rappeler que lors de l’inventaire de Fontainebleau de la Biliothèque Royale, établi en 1544, seuls 6 manuscrits arabes sont répertoriés. Les acquisitions de Postel sont quatre fois plus nombreuses et concernent des domaines très divers.");

INSERT INTO pageTab VALUES(0, 51, "Bibliographie Générale", "Example 1.");
INSERT INTO pageTab VALUES(0, 51, "Autres Sites à Consulter", "Example 2");


SELECT * FROM page;

-- DELETE FROM pagetab WHERE id <> 0;
SELECT * FROM pagetab;

SELECT * FROM page p, pagetab pt WHERE p.id = pt.idPage AND url = "bibliographie" AND language = "fr";

SELECT * FROM arab;

