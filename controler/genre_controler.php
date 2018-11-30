<?php

require 'model/genre_model.php';

echo $twig->render('genre.twig', array('list' => $list, 'baseUrl' => $baseUrl));