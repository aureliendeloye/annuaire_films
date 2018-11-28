<?php

require 'model/test_model.php';

echo $twig->render('test.twig', array('list' => $list, 'titre' => $titre));