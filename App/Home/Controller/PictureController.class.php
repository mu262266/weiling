<?php
namespace Home\Controller;
use Think\Controller;
use Think\Upload;
class PictureController extends CommonController {
   
    public function _initialize() {
        parent::_initialize();
        $this->dbname = CONTROLLER_NAME;
    }
	

            function _filter(&$map) {
		
		
	
	}

	

	public function _befor_index(){
   
   }
  

   
  
   public function _befor_add(){
    
  }
  
  public function _befor_insert($data){
     $file = $_FILES;
	 
	 $data["time"] =time();
	 
	 if($file){
    	 $upload =  new \Think\Upload();
    	 $info = $upload->upload();
    	 
	 if($info){
	 	 $date = date("Y-m-d");
	 	 $data["img"] = "/".$date."/".$info["img"]["savename"];
        
	 }else{
	 	$this->mtReturn(404,"文件未上传成功".$id,$_REQUEST['navTabId'],false);
	 }
    }
   
	 return $data;
  }
  
  
  
  public function _befor_edit(){
     
  }
  
    public function _befor_update($data){
    $file = $_FILES;	
    if($file){
    	 $upload =  new \Think\Upload();
    	 $info = $upload->upload();
    	 
	 if($info){
	 	 $date = date("Y-m-d");
	 	 $data["img"] = "/".$date."/".$info["img"]["savename"];
         
	 }else{
	 	$this->mtReturn(404,"文件未上传成功".$id,$_REQUEST['navTabId'],false);
	 }
    }
	
	 return $data;
	 
  }

   
   public function editrule(){
	$uid=I('get.id');
	//if ($uid<>session('uid')){
	M('auth_group_access')->where('uid='.$uid.'')->delete(); 
	$gcdata['uid']=$uid;
	$gcdata['group_id']=M('auth_group')->where(array("title"=>I('get.depname')))->getField('id');
	M('auth_group_access')->data($gcdata)->add();
	$gcdata['group_id']=M('auth_group')->where(array("title"=>I('get.posname')))->getField('id');
	M('auth_group_access')->data($gcdata)->add();
	$this->mtReturn(200,"设置成功".$id,$_REQUEST['navTabId'],false); 
	//}
  }

   public function del($id){
	 $id =  D($this->dbname)->where(array("id"=>$id))->delete();
    
    if($id){
    $this->mtReturn(200,'清理成功',$_REQUEST['navTabId'],false);
    }else{
     $this->mtReturn(404,'清理失败',$_REQUEST['navTabId'],false);

   }
   }
	
}