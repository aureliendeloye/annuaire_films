
   <?php
  // Chargement de l'environnement PDO
 require_once 'set_PDO.php';

 $sql = 'SELECT  FROM films'; // Requète SQL à envoyer
 $response = $bdd->prepare( $sql ); // Préparation de la requète
 $response->execute(); // Exécution de la requềte

 //  Stockage des données à renvoyer au controleur
 $list = $response->fetchAll(PDO::FETCH_ASSOC);
 $info = 'Bienvenue sur * titre du site * ! Le meilleur annuaire de films en ligne';

  //  retour des données au contrôleur
 return $list;
 return $info;