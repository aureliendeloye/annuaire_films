<?php
   
   require_once 'set_PDO.php';

   $sql = 'SELECT films.Titre, films.Description, films.Année, films.Réalisateur,
                  GROUP_CONCAT(genre.genre SEPARATOR ',') AS genre
                  FROM films_genre
                  INNER JOIN films ON films_genre.film = films.id
                  INNER JOIN genre ON genre.id = films_genre.genre
                  GROUP BY films.Titre';
   $response = $bdd->prepare( $sql );
   // $response->bindParam(':num', $num, PDO::PARAM_INT)
   $response->execute();
   $list = $response->fetchAll(PDO::FETCH_ASSOC);

  return $list;
  return $titre;