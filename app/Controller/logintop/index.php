<?php

use Slim\Http\Request;
use Slim\Http\Response;

// TOPページのコントローラ
$app->get('/logintop/', function (Request $request, Response $response) {

    $data = [];

    // Render index view
    return $this->view->render($response, 'logintop/index.twig', $data);
});
