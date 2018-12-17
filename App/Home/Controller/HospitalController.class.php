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

class HospitalController extends CommonController{

   public function _initialize() {
        parent::_initialize();
        $this->dbname = CONTROLLER_NAME;
    }
	
   function _filter(&$map) {
	   if(!in_array(session('uid'),C('ADMINISTRATOR'))){
		   
	   }
	   if(isset($_REQUEST['pid']) && $_REQUEST['pid'] != ''){
	      $map['pid'] =array('EQ', $_REQUEST['pid']);
       }else{
		  $map['pid'] =array('EQ', 0);
	   }
	   

	}
	
   public function _befor_index(){ 
   }
  
  
  public function _befor_add(){
	  $list=M("project")->where("pid=0")->select();
   
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
      $file = $_FILES;
      $start1 = I("start_time");
      $endtime1 = I("end_time");
      $data["start_time"] = strtotime($start1);
      $data["end_time"] = strtotime($endtime1);
      if($file){
          $upload =  new \Think\Upload();
          $info = $upload->upload();

          if($info){
              $date1 = date("Y-m-d");
              $img = "/".$date1."/".$info["img"]["savename"];
          }else{
              $this->mtReturn(404,"文件未上传成功",$_REQUEST['navTabId'],false);
          }
      }
      $data['img']=$img;

    return $data;

  }
  
  public function _befor_edit(){
     $list=M("project")->where("pid=0")->select();
     
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
      $file = $_FILES;
      $start1 = I("start_time");
      $endtime1 = I("end_time");
      $data["start_time"] = strtotime($start1);
      $data["end_time"] = strtotime($endtime1);
      if($file){
          $upload =  new \Think\Upload();
          $info = $upload->upload();

          if($info){
              $date1 = date("Y-m-d");
              $img = "/".$date1."/".$info["img"]["savename"];
          }else{
              $this->mtReturn(404,"文件未上传成功",$_REQUEST['navTabId'],false);
          }
      }
      $data['img']=$img;
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