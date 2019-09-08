<?php

$app->group('/auth', function($request, $response, $arguments) {
    $controller = new App\Controller\AuthController($this);

    $this->post("/login", $controller('login'));
    $this->post("/logout", function() {
        $db = new \DbHandler($this->app);
        $data = $db->logout((array)$this->token->decoded->user);
        return $this->response->withStatus(201)
            ->withHeader("Content-Type", "application/json")
            ->write(json_encode($data, JSON_UNESCAPED_SLASHES | JSON_PRETTY_PRINT));
    });
});

//===================for testing =============================
/* This is just for debugging, not usefull in real life. */
$app->get("/dump", function ($request, $response, $arguments) {
    print_r($this->token);
});

$app->post("/dump", function ($request, $response, $arguments) {
    print_r($this->token);
});
//===================for testing =============================