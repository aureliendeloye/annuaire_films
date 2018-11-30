<?php
   
  // Chargement de l'environnement PDO
  require_once 'set_PDO.php';

  $sql = "SELECT realisateur.nom, realisateur.photo, realisateur.bio, films.titre, films.jaquette, films.id
  FROM realisateur
  INNER JOIN films_realisateur ON realisateur.id = films_realisateur.realisateur
  INNER JOIN films ON films.id = films_realisateur.film
  GROUP BY realisateur.nom";  // Requète SQL à envoyer
  $response = $bdd->prepare( $sql ); // Préparation de la requète
  $response->bindParam(':id', $id, PDO::PARAM_STR); // Passage du paramètre PHP $id dans SQL
  $response->execute(); // Exécution de la requềte

//  Stockage des données à renvoyer au controleur
  $list = $response->fetchAll(PDO::FETCH_ASSOC);

//  retour des données au contrôleur
  return $list;