<?php

use Slim\Http\Request;
use Slim\Http\Response;

// TOPページのコントローラ
$app->get('/report/', function (Request $request, Response $response) {
    $data = [];
    // Render index view
    return $this->view->render($response, 'report/index.twig', $data);
});
