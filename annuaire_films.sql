-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Ven 30 Novembre 2018 à 10:39
-- Version du serveur :  10.3.11-MariaDB-1:10.3.11+maria~bionic-log
-- Version de PHP :  7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `annuaire_films`
--

-- --------------------------------------------------------

--
-- Structure de la table `films`
--

CREATE TABLE `films` (
  `id` int(4) NOT NULL,
  `titre` varchar(47) DEFAULT NULL,
  `synopsis` varchar(1042) DEFAULT NULL,
  `année` int(4) DEFAULT NULL,
  `jaquette` char(255) NOT NULL,
  `trailer` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Contenu de la table `films`
--

INSERT INTO `films` (`id`, `titre`, `synopsis`, `année`, `jaquette`, `trailer`) VALUES
(1, 'Pulp Fiction', 'L\'odyssée sanglante et burlesque de petits malfrats dans la jungle de Hollywood à travers trois histoires qui s\'entremêlent. Dans un restaurant, un couple de jeunes braqueurs, Pumpkin et Yolanda, discutent des risques que comporte leur activité. Deux truands, Jules Winnfield et son ami Vincent Vega, qui revient d\'Amsterdam, ont pour mission de récupérer une mallette au contenu mystérieux et de la rapporter à Marsellus Wallace.', 1994, 'media/pulp_fiction.jpg', 'https://www.youtube.com/embed/s7EdQ4FqbhY'),
(2, 'Le voyage de Chihiro', 'Chihiro, dix ans, a tout d\'une petite fille capricieuse. Elle s\'apprête à emménager avec ses parents dans une nouvelle demeure.\nSur la route, la petite famille se retrouve face à un immense bâtiment rouge au centre duquel s\'ouvre un long tunnel. De l\'autre côté du passage se dresse une ville fantôme. Les parents découvrent dans un restaurant désert de nombreux mets succulents et ne tardent pas à se jeter dessus. Ils se retrouvent alors transformés en cochons.\nPrise de panique, Chihiro s\'enfuit et se dématérialise progressivement. L\'énigmatique Haku se charge de lui expliquer le fonctionnement de l\'univers dans lequel elle vient de pénétrer. Pour sauver ses parents, la fillette va devoir faire face à la terrible sorcière Yubaba, qui arbore les traits d\'une harpie méphistophélique.', 2002, 'media/chihiro.jpg', 'https://www.youtube.com/embed/5-cro68n7CE'),
(3, 'Ghost in the Shell', 'Dans un futur proche, le Major est unique en son genre: humaine sauvée d’un terrible accident, son corps aux capacités cybernétiques lui permet de lutter contre les plus dangereux criminels. Face à une menace d’un nouveau genre qui permet de pirater et de contrôler les esprits, le Major est la seule à pouvoir la combattre. Alors qu’elle s’apprête à affronter ce nouvel ennemi, elle découvre qu’on lui a menti : sa vie n’a pas été sauvée, on la lui a volée. Rien ne l’arrêtera pour comprendre son passé, trouver les responsables et les empêcher de recommencer avec d’autres.', 2017, 'media/ghost.jpg', 'https://www.youtube.com/embed/G4VmJcZR0Yg'),
(4, 'Las Vegas Parano', 'A travers l\'épopée à la fois comique et horrible vers Las Vegas du journaliste Raoul Duke et de son énorme avocat, le Dr. Gonzo, évocation caustique et brillante de l\'année 1971 aux Etats-Unis, pendant laquelle les espoirs des années soixante et le fameux rêve américain furent balayés pour laisser la place à un cynisme plus politiquement correct.', 1998, 'media/las_vegas.jpg', 'https://www.youtube.com/embed/x99Un_7rFH8'),
(5, 'Léon', 'Un tueur à gages répondant au nom de Léon prend sous son aile Mathilda, une petite fille de 12 ans, seule rescapée du massacre de sa famille. Bientôt, Léon va faire de Mathilda une `nettoyeuse\', comme lui. La jeune fille pourra alors venger son petit frère.', 1994, 'media/leon.jpg', 'https://www.youtube.com/embed/KvORebZLsrI'),
(6, 'Fight Club', 'Le narrateur, sans identité précise, vit seul, travaille seul, dort seul, mange seul ses plateaux-repas pour une personne comme beaucoup d\'autres personnes seules qui connaissent la misère humaine, morale et sexuelle. C\'est pourquoi il va devenir membre du Fight club, un lieu clandestin ou il va pouvoir retrouver sa virilité, l\'échange et la communication. Ce club est dirigé par Tyler Durden, une sorte d\'anarchiste entre gourou et philosophe qui prêche l\'amour de son prochain. ', 1999, 'media/fight_club.jpg', 'https://www.youtube.com/embed/N9_xlIN80rM'),
(7, 'Cloud Atlas', 'À travers une histoire qui se déroule sur cinq siècles dans plusieurs espaces temps, des êtres se croisent et se retrouvent d’une vie à l’autre, naissant et renaissant successivement… Tandis que leurs décisions ont des conséquences sur leur parcours, dans le passé, le présent et l’avenir lointain, un tueur devient un héros et un seul acte de générosité suffit à entraîner des répercussions pendant plusieurs siècles et à provoquer une révolution. Tout, absolument tout, est lié.', 2012, 'media/cloud_atlas.jpg', 'https://www.youtube.com/embed/p-oTQ98YnMQ'),
(8, 'Star Wars : Episode V – l’empire contre-attaque', 'Malgré la destruction de l\'Etoile Noire, l\'Empire maintient son emprise sur la galaxie, et poursuit sans relâche sa lutte contre l\'Alliance rebelle. Basés sur la planète glacée de Hoth, les rebelles essuient un assaut des troupes impériales. Parvenus à s\'échapper, la princesse Leia, Han Solo, Chewbacca et C-3P0 se dirigent vers Bespin, la cité des nuages gouvernée par Lando Calrissian, ancien compagnon de Han. Suivant les instructions d\'Obi-Wan Kenobi, Luke Skywalker se rend quant à lui vers le système de Dagobah, planète marécageuse où il doit recevoir l\'enseignement du dernier maître Jedi, Yoda. Apprenant l\'arrestation de ses compagnons par les stormtroopers de Dark Vador après la trahison de Lando, Luke décide d\'interrompre son entraînement pour porter secours à ses amis et affronter le sombre seigneur Sith... ', 1980, 'media/star_wars.jpg', 'https://www.youtube.com/embed/Z7B0vfamFTE'),
(9, 'Sin city', 'Sin City est une ville infestée de criminels, de flics ripoux et de femmes fatales. Hartigan s\'est juré de protéger Nancy, une strip-teaseuse qui l\'a fait craquer. Marv, un marginal brutal mais philosophe, part en mission pour venger la mort de son unique véritable amour, Goldie. Dwight est l\'amant secret de Shellie. Il passe ses nuits à protéger Gail et les filles des bas quartiers de Jackie Boy, un flic pourri, violent et incontrôlable. Certains ont soif de vengeance, d\'autres recherchent leur salut. Bienvenue à Sin City, la ville du vice et du péché.', 2005, 'media/sin_city.jpg', 'https://www.youtube.com/embed/XnyehuI1vVw'),
(10, 'Avatar', 'Malgré sa paralysie, Jake Sully, un ancien marine immobilisé dans un fauteuil roulant, est resté un combattant au plus profond de son être. Il est recruté pour se rendre à des années-lumière de la Terre, sur Pandora, où de puissants groupes industriels exploitent un minerai rarissime destiné à résoudre la crise énergétique sur Terre. Parce que l\'atmosphère de Pandora est toxique pour les humains, ceux-ci ont créé le Programme Avatar, qui permet à des \" pilotes \" humains de lier leur esprit à un avatar, un corps biologique commandé à distance, capable de survivre dans cette atmosphère létale. Ces avatars sont des hybrides créés génétiquement en croisant l\'ADN humain avec celui des Na\'vi, les autochtones de Pandora.Sous sa forme d\'avatar, Jake peut de nouveau marcher. On lui confie une mission d\'infiltration auprès des Na\'vi, devenus un obstacle trop conséquent à l\'exploitation du précieux minerai. Mais tout va changer lorsque Neytiri, une très belle Na\'vi, sauve la vie de Jake…', 2009, 'media/avatar.jpg', 'https://www.youtube.com/embed/nXDa_CsZvQ0'),
(11, 'Inception', 'Dom Cobb est un voleur expérimenté – le meilleur qui soit dans l’art périlleux de l’extraction : sa spécialité consiste à s’approprier les secrets les plus précieux d’un individu, enfouis au plus profond de son subconscient, pendant qu’il rêve et que son esprit est particulièrement vulnérable. Très recherché pour ses talents dans l’univers trouble de l’espionnage industriel, Cobb est aussi devenu un fugitif traqué dans le monde entier qui a perdu tout ce qui lui est cher. Mais une ultime mission pourrait lui permettre de retrouver sa vie d’avant – à condition qu’il puisse accomplir l’impossible : l’inception. Au lieu de subtiliser un rêve, Cobb et son équipe doivent faire l’inverse : implanter une idée dans l’esprit d’un individu. S’ils y parviennent, il pourrait s’agir du crime parfait. Et pourtant, aussi méthodiques et doués soient-ils, rien n’aurait pu préparer Cobb et ses partenaires à un ennemi redoutable qui semble avoir systématiquement un coup d’avance sur eux. Un ennemi dont seul Cobb aurait pu soupçonner l’existence.', 2010, 'media/inception.jpg', 'https://www.youtube.com/embed/CPTIgILtna8');

-- --------------------------------------------------------

--
-- Structure de la table `films_genre`
--

CREATE TABLE `films_genre` (
  `film` int(4) NOT NULL,
  `genre` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `films_genre`
--

INSERT INTO `films_genre` (`film`, `genre`) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 7),
(4, 6),
(4, 4),
(5, 2),
(5, 1),
(6, 8),
(6, 1),
(7, 1),
(7, 7),
(7, 8),
(8, 7),
(8, 4),
(9, 1),
(9, 5),
(10, 4),
(10, 7),
(11, 8),
(11, 7);

-- --------------------------------------------------------

--
-- Structure de la table `films_realisateur`
--

CREATE TABLE `films_realisateur` (
  `film` int(4) NOT NULL,
  `realisateur` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `films_realisateur`
--

INSERT INTO `films_realisateur` (`film`, `realisateur`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(7, 8),
(8, 9),
(9, 10),
(10, 11),
(11, 12);

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `id` int(4) NOT NULL,
  `genre` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `genre`
--

INSERT INTO `genre` (`id`, `genre`) VALUES
(1, 'Drame'),
(2, 'Policier'),
(3, 'Animation'),
(4, 'Aventure'),
(5, 'Action'),
(6, 'Comédie'),
(7, 'Science Fiction'),
(8, 'Thriller');

-- --------------------------------------------------------

--
-- Structure de la table `realisateur`
--

CREATE TABLE `realisateur` (
  `id` int(4) NOT NULL,
  `realisateur` char(255) CHARACTER SET utf8 NOT NULL,
  `phto_real` char(255) CHARACTER SET utf8 NOT NULL,
  `bio` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `realisateur`
--

INSERT INTO `realisateur` (`id`, `realisateur`, `phto_real`, `bio`) VALUES
(1, 'Quentin Tarantino', '', ''),
(2, 'Hayao Miyazaki', '', ''),
(3, 'Rupert Sanders', '', ''),
(4, 'Terry Gilliam', '', ''),
(5, 'Luc Besson', '', ''),
(6, 'David Fincher', '', ''),
(7, 'Lana Wachowski', '', ''),
(8, 'Tom Tywer', '', ''),
(9, 'Irvin Kershner', '', ''),
(10, 'Frank Miller', '', ''),
(11, 'James Cameron', '', ''),
(12, 'Christopher Nolan', '', '');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `realisateur`
--
ALTER TABLE `realisateur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `films`
--
ALTER TABLE `films`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `realisateur`
--
ALTER TABLE `realisateur`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
