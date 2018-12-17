<?php

/**
 *      分类字典控制器
 *      [X-Mis] (C)2007-2099  
 *      This is NOT a freeware, use is subject to license terms
 *      http://www.xinyou88.com
 *      tel:400-000-9981
 *      qq:16129825
 */

namespace Home\Controller;
use Think\Controller;

class ProjectController extends CommonController{

   public function _initialize() {
        parent::_initialize();
        $this->dbname = CONTROLLER_NAME;
    }
	
   function _filter(&$map) {
	   if(!in_array(session('uid'),C('ADMINISTRATOR'))){
		   
	   }
	   // if(isset($_REQUEST['pid']) && $_REQUEST['pid'] != ''){
	   //    $map['pid'] =array('EQ', $_REQUEST['pid']);
    //    }else{
		  // $map['pid'] =array('EQ', 0);
	   // // }
    //  dump($map); 
	   // if(isset($_REQUEST["pid"])){
    //   $hid = $_REQUEST["pid"];
     
     //}

	}
	
   public function _befor_index(){ 
       
   }

   public function  _after_list($list){
        foreach($list as $k=>$v){
          $pid =$v["pid"];
          $list[$k]["hospital"] = M("hospital")->where("id={$pid}")->getField("name");
        }
      
        return $list;
   }
  
  
  public function _befor_add(){
	  $list=M("hospital")->select();
   
	  $this->assign('list',$list);
    
  }
	
   public function _after_add($id){
    
   }

  public function _befor_insert($data){
     if (I('pid')==0){
     $data['level']=0;
	 }else{
	 $plevel=M($this->dbname)->where('id='.I('pid').'')->field('level')->limit(1)->select();
     $level=$plevel[0]['level']+1;
     $data['level']=$level;
	 }
    return $data;

  }
  
  public function _befor_edit(){
     $list=M("hospital")->select();
     
    $this->assign('list',$list);
  }
   
  public function _befor_update($data){
     if (I('pid')==0){
     $data['level']=0;
	 }else{
	 $plevel=M($this->dbname)->where('id='.I('pid').'')->field('level')->limit(1)->select();
     $level=$plevel[0]['level']+1;
     $data['level']=$level;
	 }
    return $data;
  }
  
    public function _after_edit($id){
     
   }

   public function _befor_lock($id){
	  $data=D($this->dbname)->find($id);
	  D($this->dbname)->where(array("pid"=>$id))->setField('status',$data['status']);
   }
   
   public function del($id){
    $id =  D($this->dbname)->where(array("id"=>$id))->delete();
    D($this->dbname)->where(array("pid"=>$id))->delete();
    if($id){
    $this->mtReturn(200,'删除成功',$_REQUEST['navTabId'],false);
    }else{
     $this->mtReturn(404,'删除失败',$_REQUEST['navTabId'],false);

   }
    }


	
	

}