<?php

/**
 *      消息管理控制器
 *      [X-Mis] (C)2007-2099  
 *      This is NOT a freeware, use is subject to license terms
 *      http://www.xinyou88.com
 *      tel:400-000-9981
 *      qq:16129825
 */

namespace Home\Controller;
use Think\Controller;
use Common\Controller\BaseController;
class MsgController extends BaseController{

   public function _initialize() {
        if(!session('uid')){redirect(U('Public/login'));}
		$config =   S('DB_CONFIG_DATA');
        if(!$config){
            $config =   api('Config/lists');
            S('DB_CONFIG_DATA',$config);
        }
        C($config); 
        $this->dbname = CONTROLLER_NAME;
    }
	
   function _filter(&$map) {
	   if(!in_array(session('uid'),C('ADMINISTRATOR'))){
		   $map['juid'] = array('EQ', session('uid')); 
	   }
	   
	   if(isset($_REQUEST['type']) && $_REQUEST['type'] != ''){$map['type'] =array('EQ', urldecode(I('type'))); }


	}
	
   public function _befor_index(){ 
     $typelist =  M($this->dbname)->where(array('type'=>array('neq','')))->distinct('type')->field('type')->select();
 $this->assign('typelist', $typelist); 
   }
  
  
  public function _befor_add(){
	  $attid=time();
	  $this->assign('attid',$attid);
    
  }
  
  public function _befor_insert($data){

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

  }
  
    public function _after_edit($id){
     
   }
   
   public function _befor_view($id){  
    //$this->sendSMS('13812349563','尊敬的客户：恭喜您！您于{Time}成为本店会员，会员卡号为{CardID}，感谢您的光临！');
	//$this->sendEmail('18951251872','验证码为12015200，24小时之内有效','16129825@qq.com');
	$count=M('msg')->where(array('viewtime'=>array('lt','2000-01-01'),'id'=>$id))->count(); 
    if($count>0){
	 D($this->dbname)->where(array('id'=>$id))->setField('viewtime',date("Y-m-d H:i:s",time()));	
	}	
   }
   

   public function _befor_del($id){
	   
   }

   public function outxls() {
		$model = D($this->dbname);
		$map = $this->_search();
		if (method_exists($this, '_filter')) {
			$this->_filter($map);
		}
		$list = $model->where($map)->field('id,type,content,juid,viewtime')->select();
	    $headArr=array('ID','类型','内容','接收人ID','查看时间');
	    $filename='消息管理';
		$this->xlsout($filename,$headArr,$list);
	}
	
	public function fenxi(){
	 $this->display();
	}
	
	

}