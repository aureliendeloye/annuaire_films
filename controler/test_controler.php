<?php

require 'model/test_model.php';

$block = $twig->render('test.twig', array('list' => $list));

echo $block;