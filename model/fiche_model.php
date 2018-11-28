
   <?php
   // Chargement de l'environnement PDO
    require_once 'set_PDO.php';

    $sql = 'SELECT Titre FROM films';  // Requète SQL à envoyer
    $response = $bdd->prepare( $sql ); // Préparation de la requète
    $response->execute(); // Exécution de la requềte

   //  Stockage des données à renvoyer au controleur
    $list = $response->fetchAll(PDO::FETCH_ASSOC);
    $info = 'Toutes les infos sur vos films favoris';

   //  retour des données au contrôleur
    return $list;
    return $info;