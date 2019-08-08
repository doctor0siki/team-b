<?php

use Slim\Http\Request;
use Slim\Http\Response;

// TOPページのコントローラ
$app->get('/recommend', function (Request $request, Response $response) {

    $data = [];

    // Render index view
    return $this->view->render($response, 'recommend/index.twig', $data);
});
