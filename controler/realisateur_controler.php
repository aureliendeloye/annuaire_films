<?php

require 'model/realisateur_model.php';

echo $twig->render('list.twig', array('list' => $list, 'titre' => $titre));