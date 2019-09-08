<?php

$app->group('/image', function() {
    
    $controller = new App\Controller\ImageController($this);  

    $this->post("/save-image", $controller('submitImage'));
    $this->post("/delete-image", $controller('deleteImage'));
    $this->post("/update-image", $controller('updateImage'));
});

$app->group('/imagelist', function() {
    
    $controller = new App\Controller\ImageListController($this);  

    $this->get("/image-list", $controller('imageList'));
    $this->get("/tag-image-list", $controller('tagImageList'));
    $this->get("/single-image-list", $controller('singleImageList'));
    $this->get("/query", $controller('query'));
    $this->get("/tag-list", $controller('tagList'));

});

