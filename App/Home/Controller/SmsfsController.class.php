<?php

/**
 *      发送记录控制器
 *      [X-Mis] (C)2007-2099  
 *      This is NOT a freeware, use is subject to license terms
 *      http://www.xinyou88.com
 *      tel:400-000-9981
 *      qq:16129825
 */

namespace Home\Controller;
use Think\Controller;

class SmsfsController extends CommonController{

   public function _initialize() {
        parent::_initialize();
        $this->dbname = CONTROLLER_NAME;
    }
	
   function _filter(&$map) {
	   if(!in_array(session('uid'),C('ADMINISTRATOR'))){
		   
	   }
	   
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
	   
   }
   
   public function _befor_del($id){
	   
   }

   public function outxls() {
		$model = D($this->dbname);
		$map = $this->_search();
		if (method_exists($this, '_filter')) {
			$this->_filter($map);
		}
		$list = $model->where($map)->field('id,cid,name,phone,content,url,jieguo,ip')->select();
	    $headArr=array('ID','用户ID','短信账户','接收手机','短信内容','来源网址','发送结果','来源IP');
	    $filename='发送记录';
		$this->xlsout($filename,$headArr,$list);
	}
	
	public function fenxi(){
	 $this->display();
	}
	
	

}