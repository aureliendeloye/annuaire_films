<?php
   
  // Chargement de l'environnement PDO
  require_once 'set_PDO.php';

  $sql = "SELECT genre.genre, films.id, films.jaquette, films.titre
  FROM genre
  INNER JOIN films_genre ON genre.id = films_genre.genre
  INNER JOIN films ON films_genre.film = films.id
  ORDER BY genre.genre";  // Requète SQL à envoyer
  $response = $bdd->prepare( $sql ); // Préparation de la requète
  $response->execute(); // Exécution de la requềte

//  Stockage des données à renvoyer au controleur
  $list = $response->fetchAll(PDO::FETCH_ASSOC);

//  retour des données au contrôleur
  return $list;
  return $baseUrl;