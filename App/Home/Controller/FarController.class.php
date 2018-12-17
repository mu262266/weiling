<?php
namespace Home\Controller;
use Think\Controller;
use Think\Upload;
class FarController extends CommonController {
   
    public function _initialize() {
        parent::_initialize();
        $this->dbname = 'medicine';
    }
	

            function _filter(&$map) {
		
		
	
	}

	//  public function _after_list($list){
   
 //     foreach($list as $k=>$v){
 //     	$adminid= $v["adminid"];
 //     	$list[$k]["adminname"] = M("user")->where("id='{$adminid}'")->getField("username");
 //     }
 //    return $list;
	// }

	public function _befor_index(){
   
   }

  public function  _after_list($volist){
      
      foreach ($volist as $k => $v) {
      	$typeid = $volist[$k]["typeid"];

      	$volist[$k]["typename"] = M("mtype")->where("id={$typeid}")->getField("name");
      }
     return $volist;
   }

  public function _befor_view($id){
$list = M("medicine")->where("id={$id}")->find();
$typeid = $list["typeid"];
$typename = M("mtype")->where("id={$typeid}")->getField("name");
$this->assign('typename',$typename);

  }
  
    public function _befor_add(){
	  $list=M("mtype")->select();
     
	  $this->assign('list',$list);
    
  }
  
  public function _befor_insert($data){
     $file = $_FILES;
	 $start1 = I("start_time");
	 $endtime1 = I("end_time");
	 $data["start_time"] = strtotime($start1);
	 $data["end_time"] = strtotime($endtime1);
	 
	 
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
    $list=M("mtype")->select();
     
	  $this->assign('list',$list);
  }
  
    public function _befor_update($data){
    	
    if(I("headimg")){
    	 $upload =  new \Think\Upload();

	
	 if($upload){
	 	$data["headimg"] = $upload;
         return $data;
	 }else{
	 	$this->mtReturn(404,"文件未上传成功".$id,$_REQUEST['navTabId'],false); 
	 }
    }	
	
	
	 
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
   
   public function delete($id){
   $id = M("medicine")->where("id={$id}")->delete();
  
   if($id){
   	$this->mtReturn(200,"删除成功".$id,$_REQUEST['navTabId'],false); 
   }else{
    $this->mtReturn(200,"删除失败".$id,$_REQUEST['navTabId'],false); 
   }
   
   }

   public function clear(){
   	if($_POST){
      $total = I("total");
      $name =I("name");
      $num = I("num");
      $where["name"] = $name;

      $count1 = M("medicine")->where($where)->getField("num");
      if($num<=$count1){
      	$count2 = $count1-$num;
      	$data2["num"] = $count2;
      $id =  $id = M("medicine")->where($where)->save($data2);	
      	 if($id){
   	$this->mtReturn(200,"核销成功",$_REQUEST['navTabId'],false); 
   }else{
    $this->mtReturn(200,"核销失败",$_REQUEST['navTabId'],false); 
   }
      }else{
      	$this->mtReturn(200,"核销失败,数量超过库存",$_REQUEST['navTabId'],false); 
      }
   	}else{
   	  $this->display();
   	}
   
   }
    public function clear_ajax($name){
     $name2 =  urldecode($name);
     $where["name"] = $name2;
     $a = M("medicine")->where($where)->getField("price");

     $b = json_encode($a);
   	 echo $b;
   }

   public function _befor_del($id){
	 
   }
	
}