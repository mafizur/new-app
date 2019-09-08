<?php
namespace App\Controller;

header('Access-Control-Allow-Origin: *');

if($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, OPTIONS');
    header('Access-Control-Allow-Headers: Content-Type');
    exit;
}

use MartynBiz\Slim3Controller\Controller;

class ImageController extends Controller
{
    public function submitImage(){

        $db = new \DbHandler($this->app);

        $body = $this->request->getParsedBody();
        if (!$body && $json = $this->request->getBody()) {
            $body = json_decode($json->getContents(), true);
        }

        if (!$body) {
            $responses['error'] = true;
            $responses['message'] = 'No data found for saving';
            return $this->response->withJson($responses, 200);
        }
       
        $title = isset($body['title']) ? $body['title'] : '';
        $link  = isset($body['link']) ? $body['link'] : '';
        $tags3 = isset($body['tags']) ? $body['tags'] : '';
        $tags2 = str_replace(", ",",",$tags3);
        $tags1 = str_replace(" ,",",",$tags2);
        $tags  = str_replace(" , ",",",$tags1);

        $this->get('db')->beginTransaction();

        $field_array="title,
                      link";

        $data_array="( '".$title."',
                       '".$link."')";
        
        $sql = "INSERT INTO image_gallery (".$field_array.") VALUES ".$data_array;

        $query = $this->get('db')->prepare($sql);
        $createImage = $query->execute();
        $lastId = $this->get('db')->lastInsertId();

        $tags_data=explode(',', $tags);

        foreach ($tags_data as $key => $value) {
            $field_array1="image_gallery_id,
                      tags";

            $data_array1="( '".$lastId."',
                       '".$value."')";

            $sql1 = "INSERT INTO image_tags (".$field_array1.") VALUES ".$data_array1;

            $query1 = $this->get('db')->prepare($sql1);
            $query1->execute();
        }


        if($createImage){
            $this->get('db')->commit();
            $data = array('error' => false, 'message' => 'Data saved Successfully' );
        } else {
            $this->get('db')->rollBack();
            $data = array( 'error' => true, 'message' => 'failed to save data' );
        }

        return $this->response->withStatus(201)
            ->withHeader("Content-Type", "application/json")
            ->write(json_encode($data, JSON_UNESCAPED_SLASHES | JSON_PRETTY_PRINT));
    }



    public function deleteImage(){

        $db = new \DbHandler($this->app);

        $body = $this->request->getParsedBody();
        if (!$body && $json = $this->request->getBody()) {
            $body = json_decode($json->getContents(), true);
        }

        if (!$body) {
            $responses['status'] = false;
            $responses['message'] = 'No data found for saving';
            return $this->response->withJson($responses, 200);
        }

        $id = isset($body['id']) ? $body['id'] : '';

        $sql = "DELETE FROM image_gallery 
                WHERE id = $id";

        $query = $this->get('db')->prepare($sql);
        $deleteImage = $query->execute();

        $data = array();

        if($deleteImage){

            $sql1 = "DELETE FROM image_tags 
                WHERE image_gallery_id = $id";

            $query1 = $this->get('db')->prepare($sql1);
            $query1->execute();

            $data = array(
                'status' => true,
                'message' => 'Image has deleted successfully'
            );
        }else {

            $data = array(
                'status' => false,
                'message' => 'Failed to delete image'
            );
        }

        return $this->response->withStatus(201)
                ->withHeader("Content-Type", "application/json")
                ->write(json_encode($data, JSON_UNESCAPED_SLASHES | JSON_PRETTY_PRINT));
    }



    public function updateImage(){

        $db = new \DbHandler($this->app);

        $body = $this->request->getParsedBody();
        if (!$body && $json = $this->request->getBody()) {
            $body = json_decode($json->getContents(), true);
        }

        if (!$body) {
            $responses['status'] = false;
            $responses['message'] = 'No data found for saving';
            return $this->response->withJson($responses, 200);
        }

        $id    = isset($body['id']) ? $body['id'] : '';
        $title = isset($body['title']) ? $body['title'] : '';
        $link  = isset($body['link']) ? $body['link'] : '';
        $tags3 = isset($body['tags']) ? $body['tags'] : '';
        $tags2 = str_replace(", ",",",$tags3);
        $tags1 = str_replace(" ,",",",$tags2);
        $tags  = str_replace(" , ",",",$tags1);

        $sql = "UPDATE image_gallery 
                SET title = '$title',
                    link = '$link'
                WHERE id = $id";

        $stmt = $this->get('db')->prepare($sql);
        $update_image = $stmt->execute();     

        $data = array();

        if($update_image){

            $sql1 = "DELETE FROM image_tags 
                WHERE image_gallery_id = $id";

            $query1 = $this->get('db')->prepare($sql1);
            $query1->execute();

            $tags_data=explode(',', $tags);

            foreach ($tags_data as $key => $value) {
                $field_array2="image_gallery_id,
                          tags";

                $data_array2="( '".$id."',
                           '".$value."')";

                $sql2 = "INSERT INTO image_tags (".$field_array2.") VALUES ".$data_array2;

                $query2 = $this->get('db')->prepare($sql2);
                $query2->execute();
            }

          $data = array('status' => true, 'message' => 'Update image successfully' );
        } else {
          $data = array('status' => false, 'message' => ' Update failed' );
        } 


        return $this->response->withStatus(201)
              ->withHeader("Content-Type", "application/json")
              ->write(json_encode($data, JSON_UNESCAPED_SLASHES | JSON_PRETTY_PRINT));
    }
}