<?php

/**
 *      合同明细表控制器
 *      [X-Mis] (C)2007-2099  
 *      This is NOT a freeware, use is subject to license terms
 *      http://www.xinyou88.com
 *      tel:400-000-9981
 *      qq:16129825
 */

namespace Home\Controller;
use Think\Controller;

class HetongsController extends CommonController{

   public function _initialize() {
        parent::_initialize();
        $this->dbname = CONTROLLER_NAME;
    }
	
   function _filter(&$map) {
	   if(!in_array(session('uid'),C('ADMINISTRATOR'))){
		   
	   }
	   
	   if(isset($_REQUEST['fenlei']) && $_REQUEST['fenlei'] != ''){$map['fenlei'] =array('EQ', urldecode(I('fenlei'))); }
if(isset($_REQUEST['shenhe']) && $_REQUEST['shenhe'] != ''){$map['shenhe'] =array('EQ', urldecode(I('shenhe'))); }


	}
	
   public function _befor_index(){ 
     $fenleilist =  M($this->dbname)->where(array('fenlei'=>array('neq','')))->distinct('fenlei')->field('fenlei')->select();
 $this->assign('fenleilist', $fenleilist); $shenhelist =  M($this->dbname)->where(array('shenhe'=>array('neq','')))->distinct('shenhe')->field('shenhe')->select();
 $this->assign('shenhelist', $shenhelist); 
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
   
   public function _after_del(){
	M($this->dbname)->where('shenhe<>"审核通过"')->delete();    
   }

   public function outxls() {
		$model = D($this->dbname);
		$map = $this->_search();
		if (method_exists($this, '_filter')) {
			$this->_filter($map);
		}
		$list = $model->where($map)->field('id,hid,bianhao,title,fenlei,type,danwei,xjiage,shuliang,xiaoji,beizhu,shenhe,edit')->select();
	    $headArr=array('ID','合同ID','产品编号','产品名称','产品分类','产品规格','计量单位','销售价格','数量','小计','备注','审核状态','edit');
	    $filename='合同明细表';
		$this->xlsout($filename,$headArr,$list);
	}
	
	public function fenxi(){
	 $this->display();
	}
	
	

}