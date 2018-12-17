<?php

/**
 *      任务管理控制器
 *      [X-Mis] (C)2007-2099  
 *      This is NOT a freeware, use is subject to license terms
 *      http://www.xinyou88.com
 *      tel:400-000-9981
 *      qq:16129825
 */

namespace Home\Controller;
use Think\Controller;

class RenwuController extends CommonController{

   public function _initialize() {
        parent::_initialize();
        $this->dbname = CONTROLLER_NAME;
    }
	
   function _filter(&$map) {
	   if(!in_array(session('uid'),C('ADMINISTRATOR'))){
		  $map[]=array("uid"=>array('EQ', session("uid")),"juid"=>array('like','%'.session("uid").'%'),"_logic"=>"or");
	   }
	   if(isset($_REQUEST['time1']) && $_REQUEST['time1'] != ''&&isset($_REQUEST['time2']) && $_REQUEST['time2'] != ''){$map['jztime'] =array(array('egt',I('time1').' 00:00:00'),array('elt',I('time2').' 59:59:59'));}

	   if(isset($_REQUEST['jieguo']) && $_REQUEST['jieguo'] != ''){$map['jieguo'] =array('EQ', urldecode(I('jieguo'))); }


	}
	
   public function _befor_index(){ 
     $jieguolist =  M($this->dbname)->where(array('jieguo'=>array('neq','')))->distinct('jieguo')->field('jieguo')->select();
 $this->assign('jieguolist', $jieguolist); 
   }
  
  
  public function _befor_add(){
	  $attid=time();
	  $this->assign('attid',$attid);
    
  }
  
  public function _befor_insert($data){
      $data['jieguo']='等待处理';
	  return $data;
  }
	
   public function _after_add($id){
    
   }


  
  public function _befor_edit(){
     $model = D($this->dbname);
	 $info = $model->find(I('get.id'));
	 $attid=$info['attid'];
	 $this->assign('attid',$attid);
  }
   
  public function _befor_update($data){
    $data['beizhu']=I("beizhu1")."\r\n".session("truename").":".I('beizhu').date("Y-m-d H:i:s",time());
	unset($data['beizhu1']);
	return $data;
  }
  
    public function _after_edit($id){
     
   }

   public function _befor_view($id){
	   
   }
   
   public function _befor_del($id){
	   
   }
   
   public function _after_del(){
     
   }

   public function outxls() {
		$model = D($this->dbname);
		$map = $this->_search();
		if (method_exists($this, '_filter')) {
			$this->_filter($map);
		}
		$list = $model->where($map)->field('id,juid,juname,jztime,hid,mingcheng,biaoti,jieguo,content,beizhu')->select();
	    $headArr=array('ID','接收人ID','接收人','截止时间','合同ID','关联合同','任务标题','处理结果','任务内容','完成情况');
	    $filename='任务管理';
		$this->xlsout($filename,$headArr,$list);
	}
	
	public function fenxi(){
	 $this->display();
	}
	
	

}