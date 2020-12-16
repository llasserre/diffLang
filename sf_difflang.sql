-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 16 déc. 2020 à 14:54
-- Version du serveur :  5.7.26
-- Version de PHP :  7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `sf_difflang`
--

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

DROP TABLE IF EXISTS `commande`;
CREATE TABLE IF NOT EXISTS `commande` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) DEFAULT NULL,
  `type_commande_id` int(11) DEFAULT NULL,
  `ligne` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_6EEAA67D82F1BAF4` (`language_id`),
  KEY `IDX_6EEAA67DC9F3F9C5` (`type_commande_id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id`, `language_id`, `type_commande_id`, `ligne`) VALUES
(1, 1, 1, '<?php // Il n\'y pas de fonction Main à proprement parler. Les lignes de code après ça sont directement exécutées'),
(2, 1, 2, 'echo(\"Une chaine de charactere\");'),
(3, 1, 3, '.'),
(4, 1, 4, '$nomVariable =  \"values\"; //Langage non typé, pas besoin de définir un type bien que cela soit possible est recommandé'),
(5, 1, 5, 'class MyClass {}'),
(6, 1, 6, '->'),
(7, 1, 7, ' __construct ( mixed ...$values = \"\" ) : void'),
(8, 1, 8, 'MyClass obj = new MyClass();'),
(9, 1, 9, 'class MyClass extends MyOtherClass {}'),
(10, 1, 10, 'parent::myParentFunction();'),
(11, 1, 11, 'Non'),
(12, 2, 1, '// Première ligne lu, il n\'y a pas de fonction main'),
(13, 2, 2, 'console.log(); //Affiche en console\r\ndocument.getElementById(\"p1\").innerHTML = \"New text!\"; // Affiche dans l\'élément p1'),
(14, 2, 3, '+'),
(15, 2, 4, 'var variable = \"value\"; // Pas de typage nécessaire'),
(16, 2, 5, 'class MyClass{}'),
(17, 2, 6, '.'),
(18, 2, 7, 'constructor(variable)\r\n{\r\n  this.variable = variable\r\n}'),
(19, 2, 8, 'var obj = new MyClass();'),
(20, 2, 9, 'class MyClass extends MyOtherClass\r\n{}'),
(21, 2, 10, 'super/*.uneFonction*/()'),
(22, 2, 11, 'non'),
(23, 3, 1, 'public static void main (String[] args){}'),
(24, 3, 2, 'System.out.print()'),
(25, 3, 3, '+'),
(26, 3, 4, 'Type var = value;'),
(27, 3, 5, 'class MyClass {}'),
(28, 3, 6, '.'),
(29, 3, 7, 'MyClass(Type aValue){ this.attr = value }'),
(30, 3, 8, 'MyClass obj = new MyClass();'),
(31, 3, 9, 'MyClass extends MyOtherClass {}'),
(32, 3, 10, 'super/*.maFonctionHéritée*/()'),
(33, 3, 11, 'non'),
(34, 4, 1, 'int main(){}'),
(35, 4, 2, 'cout << unString;'),
(36, 4, 3, '<<cout << \"On peut faire comme ça \" << \"avec cout\";\r\nSinon c\'est juste +'),
(37, 4, 5, 'class MyClass {}'),
(38, 4, 6, '->'),
(39, 4, 7, 'public:\r\n   MyClass(type aValue){\r\n     this->attr = aValue\r\n   }'),
(40, 4, 8, 'MyClass obj(aValue);'),
(41, 4, 9, 'class MyClass : public MyOtherClass'),
(42, 4, 10, 'MyOtherClass::myFunction();'),
(43, 4, 11, 'class MyClass: public a, public b {}'),
(44, 4, 4, 'type var(value);'),
(45, 1, 12, '//'),
(46, 2, 12, '//'),
(47, 3, 12, '//'),
(48, 4, 12, '//'),
(49, 1, 19, '/* */'),
(50, 2, 19, '/* */'),
(52, 3, 19, '/* */'),
(53, 4, 19, '/* */'),
(54, 1, 13, 'if(condition) {} elseif(condition) {} else{};\r\nif(condition):\r\n ...\r\nelse if(condition):\r\n ...'),
(55, 2, 13, 'if(condition) {} else if(condition) {} else{};'),
(56, 3, 13, 'if(condition) {} else if(condition) {} else{};'),
(57, 4, 13, 'if(condition) {} else if(condition) {} else{};'),
(58, 1, 14, 'switch (var){ case value: /*instrutction*/; break; }\r\n'),
(59, 2, 14, 'switch (var){ case value: /*instrutction*/; break; }\r\n'),
(60, 3, 14, 'switch (var){ case value: /*instrutction*/; break; }\r\n'),
(61, 4, 14, 'switch (var){ case value: /*instrutction*/; break; }\r\n'),
(62, 1, 15, 'for ($i = 1; $i <= 10; $i++) {\r\n    echo $i;\r\n}'),
(63, 2, 15, 'for ($i = 1; $i <= 10; $i++) {\r\n    echo $i;\r\n}'),
(64, 3, 15, 'for ($i = 1; $i <= 10; $i++) {\r\n    echo $i;\r\n}'),
(65, 4, 15, 'for ($i = 1; $i <= 10; $i++) {\r\n    echo $i;\r\n}'),
(66, 1, 16, 'foreach ($array as $value) {}\r\nforeach ($array as $key=>$value) {}'),
(67, 2, 16, ''),
(68, 3, 16, 'for (let variable of iterrable) {}\r\n/*variable peut etre const si on ne la redéfinis pas dans la boucle*/'),
(69, 4, 16, 'for ( loopVariable : collection ) {\r\n    [statement]...\r\n} '),
(70, 1, 17, 'while (condition) {}'),
(71, 2, 17, 'while (condition) {}'),
(72, 3, 17, 'while (condition) {}'),
(73, 4, 17, 'while (condition) {}'),
(74, 1, 18, 'do{}while(condition)'),
(75, 2, 18, 'do{}while(condition)'),
(76, 3, 18, 'do{}while(condition)'),
(77, 4, 18, 'do{}while(condition)');

-- --------------------------------------------------------

--
-- Structure de la table `commande_type`
--

DROP TABLE IF EXISTS `commande_type`;
CREATE TABLE IF NOT EXISTS `commande_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `decriptif` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_cmd_family_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E7B256CAF718507A` (`type_cmd_family_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `commande_type`
--

INSERT INTO `commande_type` (`id`, `libelle`, `decriptif`, `type_cmd_family_id`) VALUES
(1, 'Main', 'Fonction Principale, lignes de codes interprété en premier dans un language', 1),
(2, 'Afficher', 'Afficher des valeurs en console ou sur la page', 1),
(3, 'Concaténation', 'Symbole qui sert à ajouter des caractères ou une variable qui en contient à une chaine de caractère', 1),
(4, 'Déclaration de variable', 'Comment sont déclarées les variables', 1),
(5, 'Définition d\'une classe', 'Syntaxe de la création d\'une classe d\'objet', 2),
(6, 'Opérateur d\'invocation', 'Comment appeler une méthode ou un attribut d\'une classe.', 2),
(7, 'Constructeur', 'Comment le constructeur d\'une classe est définit', 2),
(8, 'Nouvel Objet', 'Syntaxe de création d\'un objet', 2),
(9, 'Héritage définition', 'Comment une classe en hérite d\'une autre.', 2),
(10, 'Héritage utilisation', 'Comment appeler les méthodes de la ou les classes hérités', 2),
(11, 'Héritage multiple', 'Est-ce que le language permet un héritage multiple ou pas', 2),
(12, 'Commentaire', 'Faire un commentaire sur une ligne', 1),
(13, 'Condition if', 'Faire des conditions avec if', 1),
(14, 'Condition switch case', 'Faire des conditions avec des switch', 1),
(15, 'La boucle for', 'Faire une boucle pour chaque éléments donné', 1),
(16, 'La boucle foreach', 'Les boucles qui tournent autour d\'une liste', 1),
(17, 'La boucle while', 'La boucle tant que, évalue la condition en début de cycle', 1),
(18, 'do...while', 'Faire tant que condition, celle ci étant évalué en fin de cycle', 1),
(19, 'Commentaire groupé', 'Commenter plusieurs lignes', 1);

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20201214112943', '2020-12-14 11:30:03', 304),
('DoctrineMigrations\\Version20201214142149', '2020-12-14 14:22:04', 733),
('DoctrineMigrations\\Version20201216094507', '2020-12-16 09:45:24', 879);

-- --------------------------------------------------------

--
-- Structure de la table `language`
--

DROP TABLE IF EXISTS `language`;
CREATE TABLE IF NOT EXISTS `language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descriptif` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `language`
--

INSERT INTO `language` (`id`, `nom`, `descriptif`) VALUES
(1, 'PHP', 'PHP: Hypertext Preprocessor, plus connu sous son sigle PHP (sigle auto-référentiel), est un langage de programmation libre, principalement utilisé pour produire des pages Web dynamiques via un serveur HTTP, mais pouvant également fonctionner comme n\'importe quel langage interprété de façon locale. PHP est un langage impératif orienté objet. \r\n\r\n<a href=\"https://fr.wikipedia.org/wiki/PHP\">Source</a>'),
(2, 'JavaScript', 'JavaScript est un langage de programmation de scripts principalement employé dans les pages web interactives et à ce titre est une partie essentielle des applications web. Avec les technologies HTML et CSS, JavaScript est parfois considéré comme l\'une des technologies cœur du World Wide Web. [...]\r\n\r\nC\'est un langage orienté objet à prototype : les bases du langage et ses principales interfaces sont fournies par des objets.\r\n\r\nCependant, à la différence d\'un langage orienté objets, les objets de base ne sont pas des instances de classes\r\n\r\nSource: <a href=\"https://fr.wikipedia.org/wiki/JavaScript\">Wikipedia</a>'),
(3, 'Java', 'Java est un langage de programmation orienté objet créé par James Gosling et Patrick Naughton, employés de Sun Microsystems, avec le soutien de Bill Joy (cofondateur de Sun Microsystems en 1982), présenté officiellement le 23 mai 1995 au SunWorld.\r\n\r\nLa société Sun a été ensuite rachetée en 2009 par la société Oracle qui détient et maintient désormais Java.\r\n\r\nUne particularité de Java est que les logiciels écrits dans ce langage sont compilés vers une représentation binaire intermédiaire qui peut être exécutée dans une machine virtuelle Java (JVM) en faisant abstraction du système d\'exploitation.\r\n\r\nSource: <a href=\"https://fr.wikipedia.org/wiki/Java_(langage)\"> Wikipédia </a>'),
(4, 'C++', 'C++ est un langage de programmation compilé permettant la programmation sous de multiples paradigmes (comme la programmation procédurale, orientée objet ou générique). Ses bonnes performances, et sa compatibilité avec le C en font un des langages de programmation les plus utilisés dans les applications où la performance est critique.');

-- --------------------------------------------------------

--
-- Structure de la table `type_cmd_family`
--

DROP TABLE IF EXISTS `type_cmd_family`;
CREATE TABLE IF NOT EXISTS `type_cmd_family` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `type_cmd_family`
--

INSERT INTO `type_cmd_family` (`id`, `name`) VALUES
(1, 'Procédural'),
(2, 'Orienté Objet');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `FK_6EEAA67D82F1BAF4` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`),
  ADD CONSTRAINT `FK_6EEAA67DC9F3F9C5` FOREIGN KEY (`type_commande_id`) REFERENCES `commande_type` (`id`);

--
-- Contraintes pour la table `commande_type`
--
ALTER TABLE `commande_type`
  ADD CONSTRAINT `FK_E7B256CAF718507A` FOREIGN KEY (`type_cmd_family_id`) REFERENCES `type_cmd_family` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
