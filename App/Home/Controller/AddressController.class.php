<?php
namespace Home\Controller;
use Think\Controller;
use Think\Upload;
class AddressController extends CommonController {
   
    public function _initialize() {
        parent::_initialize();
        $this->dbname = CONTROLLER_NAME;
    }
	

          function _filter(&$map) {
	   if(!in_array(session('uid'),C('ADMINISTRATOR'))){
	   }
	   if(isset($_REQUEST['time1']) && $_REQUEST['time1'] != ''&&isset($_REQUEST['time2']) && $_REQUEST['time2'] != ''){$map['birth'] =array(array('egt',I('time1').' 00:00:00'),array('elt',I('time2').' 59:59:59'));}
     
	   

	}

	 public function _after_list($list){
   
    //  foreach($list as $k=>$v){
    //  	$adminid= $v["adminid"];
    //  	$list[$k]["adminname"] = M("user")->where("id='{$adminid}'")->getField("username");
    //  }
   
     return $list;
	}

	public function _befor_index(){
   
   }
  

   
  
   public function _befor_add(){
     $list=orgcateTree($pid=0,$level=0,$type=0);
     $this->assign('list',$list);
  }
  
  public function _befor_insert($data){
  	
        $tmp = I("birth");
        $birth = strtotime($tmp);
        $data["birth"] = $birth;
	 // $password=md5(I('password'));
	 // $data['password']=$password;
	 // $data["time"] =time();
	 // if($file){
  //   	 $upload =  new \Think\Upload();
  //   	 $info = $upload->upload();
    	 
	 // if($info){
	 // 	$date = date("Y-m-d");
	 // 	 $data["headimg"] = "/".$date."/".$info["headimg"]["savename"];
        
	 // }else{
	 // 	$this->mtReturn(404,"文件未上传成功".$id,$_REQUEST['navTabId'],false); 
	 // }
  //   }
   
	 return $data;
  }
  
  
  
  public function _befor_edit(){
     $list=orgcateTree($pid=0,$level=0,$type=0);
     $this->assign('list',$list);
  }
  
    public function _befor_update($data){
    	
        $tmp = I("birth");
        $birth = strtotime($tmp);
        $data["birth"] = $birth;
	
	return $data;
	 
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