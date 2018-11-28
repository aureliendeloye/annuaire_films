
   <?php
   // Chargement de l'environnement PDO
    require_once 'set_PDO.php';

    $sql = "SELECT films.titre, films.jaquette, films.synopsis, films.année, films.réalisateur,
    GROUP_CONCAT(genre.genre SEPARATOR ', ') AS genre 
    FROM films_genre 
       INNER JOIN films ON films_genre.film = films.id 
        INNER JOIN genre ON films_genre.genre = genre.id
        WHERE films.id = :id
          GROUP BY films.titre";  // Requète SQL à envoyer
    $response = $bdd->prepare( $sql ); // Préparation de la requète
    $response->bindParam(':id', $id, PDO::PARAM_STR);
    $response->execute(); // Exécution de la requềte

   //  Stockage des données à renvoyer au controleur
    $list = $response->fetchAll(PDO::FETCH_ASSOC);

   //  retour des données au contrôleur
    return $list;
    return $info;