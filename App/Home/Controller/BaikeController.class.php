<?php
/**
 * 百科知识
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/11/19
 * Time: 13:36
 */

namespace Home\Controller;


class BaikeController extends CommonController{

    public function _initialize() {
        parent::_initialize();
        $this->dbname = CONTROLLER_NAME;
    }

    function _filter(&$map) {

    }
    public function _befor_insert($list){
    	$list["time"] =time();
    	return $list;
    }
    public function _befor_add(){
    
    
    }

    public function _befor_view($id){

        $this->display();
    }


    public function delete($id){
        $id = M("baike")->where("id={$id}")->delete();

        if($id){
            $this->mtReturn(200,"删除成功".$id,$_REQUEST['navTabId'],false);
        }else{
            $this->mtReturn(200,"删除失败".$id,$_REQUEST['navTabId'],false);
        }

    }
    public function  detail_view($id=""){
    	if($id ==""){
    		$output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
    	}
    	$list =M("baike")->where("id=$id")->find();
    	$list["time"] = date("Y-m-d",$list["time"]);
    	$list["content"] = htmlspecialchars_decode ($list["content"]);
    	$this->assign("list",$list);
    	$this->display("app_detail");
    	
    }
    
    
}