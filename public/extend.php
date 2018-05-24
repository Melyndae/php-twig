<?php

require __DIR__.'/../vendor/autoload.php';

$loader = new Twig_Loader_Filesystem(__DIR__.'/../templates');
$twig = new Twig_Environment($loader);

$greeting = 'Hello Extend!';

echo $twig->render('extend.html.twig', [
    'greeting' => $greeting,
]);