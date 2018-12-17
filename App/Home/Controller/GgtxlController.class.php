<?php

/**
 *      我的通讯录控制器
 *      [X-Mis] (C)2007-2099  
 *      This is NOT a freeware, use is subject to license terms
 *      http://www.xinyou88.com
 *      tel:400-000-9981
 *      qq:16129825
 */

namespace Home\Controller;
use Think\Controller;

class GgtxlController extends CommonController{

   public function _initialize() {
        parent::_initialize();
        $this->dbname = 'wdtxl';
    }
	
   function _filter(&$map) {
	   if(!in_array(session('uid'),C('ADMINISTRATOR'))){
		  $map['leixing'] = array('EQ', '公共'); 
	   }
	   	   if(isset($_REQUEST['time1']) && $_REQUEST['time1'] != ''&&isset($_REQUEST['time2']) && $_REQUEST['time2'] != ''){$map['addtime'] =array(array('egt',I('time1').' 00:00:00'),array('elt',I('time2').' 59:59:59'));}

	   if(isset($_REQUEST['leixing']) && $_REQUEST['leixing'] != ''){$map['leixing'] =array('EQ', urldecode(I('leixing'))); }
if(isset($_REQUEST['type']) && $_REQUEST['type'] != ''){$map['type'] =array('EQ', urldecode(I('type'))); }


	}
	
   public function _befor_index(){ 
     $leixinglist =  M($this->dbname)->where(array('leixing'=>array('neq','')))->distinct('leixing')->field('leixing')->select();
 $this->assign('leixinglist', $leixinglist); $typelist =  M($this->dbname)->where(array('type'=>array('neq','')))->distinct('type')->field('type')->select();
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
	   
   }
   
   public function _befor_del($id){
	   
   }

   public function outxls() {
		$model = D($this->dbname);
		$map = $this->_search();
		if (method_exists($this, '_filter')) {
			$this->_filter($map);
		}
		$list = $model->where($map)->field('id,title,sex,danwei,zhiwei,dianhua,email,qq,leixing,type,beizhu')->select();
	    $headArr=array('ID','姓名','性别','单位','职位','联系电话','电子邮箱','QQ','类型','分类','备注');
	    $filename='我的通讯录';
		$this->xlsout($filename,$headArr,$list);
	}
	
	public function fenxi(){
	 $this->display();
	}
	
	

}