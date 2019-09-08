<?php
namespace App\Controller;

use MartynBiz\Slim3Controller\Controller;

class ImageListController extends Controller
{
	public function imageList(){

		$db = new \DbHandler($this->app);

        $sql = "SELECT *
        		FROM image_gallery 
        		WHERE 1 ORDER BY id DESC";
        $imageList = $this->get('db')->query($sql)->fetchAll(\PDO::FETCH_ASSOC);

        foreach ($imageList as $key => $value) {
            $imageList[$key]['tags']='';
            $ids=$value['id'];

            $sql1 = "SELECT tags FROM image_tags 
                    WHERE image_gallery_id = $ids ORDER BY id ASC";
            $imageList1 = $this->get('db')->query($sql1)->fetchAll(\PDO::FETCH_ASSOC);
            
            foreach ($imageList1 as $key1 => $item) {
                $div=$key1 !=0?', ':'';
                $imageList[$key]['tags'] .= $div.$item['tags'];
            }
        }

        $data = array('status' => true, 'imageList' => $imageList);

        return $this->response->withStatus(201)
            ->withHeader("Content-Type", "application/json")
            ->write(json_encode($data, JSON_UNESCAPED_SLASHES | JSON_PRETTY_PRINT));

	}  

    public function singleImageList(){

        $db = new \DbHandler($this->app);

        $id = isset($_GET['id']) ? $_GET['id'] : '';

        $sql = "SELECT *
                FROM image_gallery 
                WHERE id = $id ORDER BY id DESC";
        $imageList = $this->get('db')->query($sql)->fetch(\PDO::FETCH_ASSOC);

        $imageList['tags']='';

        $sql1 = "SELECT tags FROM image_tags 
                WHERE image_gallery_id = $id ORDER BY id ASC";
        $imageList1 = $this->get('db')->query($sql1)->fetchAll(\PDO::FETCH_ASSOC);
        
        foreach ($imageList1 as $key => $value) {
            $div=$key !=0?', ':'';
            $imageList['tags'] .= $div.$value['tags'];
        }

        $data = array('status' => true, 'imageList' => $imageList);


        return $this->response->withStatus(201)
              ->withHeader("Content-Type", "application/json")
              ->write(json_encode($data, JSON_UNESCAPED_SLASHES | JSON_PRETTY_PRINT));
    }

    public function query(){

        $db = new \DbHandler($this->app);

        $searchvalue = isset($_GET['searchvalue']) ? $_GET['searchvalue'] : '';

        $sql = "SELECT *
                FROM image_tags 
                WHERE tags LIKE '%$searchvalue%'  ORDER BY id DESC";
        if(!empty($searchvalue)){
            $tagList = $this->get('db')->query($sql)->fetchAll(\PDO::FETCH_ASSOC);

        }else{
           $tagList = array(); 
        }

        $data = array('status' => true, 'tagList' => $tagList);


        return $this->response->withStatus(201)
              ->withHeader("Content-Type", "application/json")
              ->write(json_encode($data, JSON_UNESCAPED_SLASHES | JSON_PRETTY_PRINT));
    }

    public function tagList(){

        $db = new \DbHandler($this->app);

        $sql = "SELECT DISTINCT tags
                FROM image_tags 
                WHERE 1  ORDER BY id ASC";
        $tagList = $this->get('db')->query($sql)->fetchAll(\PDO::FETCH_ASSOC);

        $sql1 = "SELECT *
                FROM image_gallery 
                WHERE 1 ORDER BY id DESC";
        $imageList = $this->get('db')->query($sql1)->fetchAll(\PDO::FETCH_ASSOC);

        $data = array('status' => true, 'tagList' => $tagList, 'imageList' => $imageList);


        return $this->response->withStatus(201)
              ->withHeader("Content-Type", "application/json")
              ->write(json_encode($data, JSON_UNESCAPED_SLASHES | JSON_PRETTY_PRINT));
    }

    public function tagImageList(){

        $db = new \DbHandler($this->app);

        $searchvalue = isset($_GET['searchvalue']) ? $_GET['searchvalue'] : '';
        if($searchvalue=='All'){
            $sql1 = "SELECT *
                FROM image_gallery 
                WHERE 1 ORDER BY id DESC";
            $imageList = $this->get('db')->query($sql1)->fetchAll(\PDO::FETCH_ASSOC);
        }else{
            $sql = "SELECT image_gallery.*
                FROM image_tags
                INNER JOIN image_gallery
                ON image_tags.image_gallery_id=image_gallery.id 
                WHERE image_tags.tags='$searchvalue'  ORDER BY image_gallery.id Desc";
            $imageList = $this->get('db')->query($sql)->fetchAll(\PDO::FETCH_ASSOC); 
        }
        

        $data = array('status' => true, 'imageList' => $imageList);


        return $this->response->withStatus(201)
              ->withHeader("Content-Type", "application/json")
              ->write(json_encode($data, JSON_UNESCAPED_SLASHES | JSON_PRETTY_PRINT));
    }


}