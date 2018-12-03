
<?php
  // Chargement de l'environnement PDO
 require_once 'set_PDO.php';

 $sql = 'SELECT jaquette, titre, id FROM films'; // Requète SQL à envoyer
 $response = $bdd->prepare( $sql ); // Préparation de la requète
 $response->execute(); // Exécution de la requềte

 //  Stockage des données à renvoyer au controleur
 $list = $response->fetchAll(PDO::FETCH_ASSOC);
 
 //  retour des données au contrôleur
 return $list;
 return $baseUrl;
