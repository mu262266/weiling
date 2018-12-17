<?php

/**
 *      产品管理控制器
 *      [X-Mis] (C)2007-2099  
 *      This is NOT a freeware, use is subject to license terms
 *      http://www.xinyou88.com
 *      tel:400-000-9981
 *      qq:16129825
 */

namespace Home\Controller;
use Think\Controller;

class ChanpinController extends CommonController{

   public function _initialize() {
        parent::_initialize();
        $this->dbname = CONTROLLER_NAME;
    }
	
   function _filter(&$map) {
	   if(!in_array(session('uid'),C('ADMINISTRATOR'))){
		   
	   }
	   
	   if(isset($_REQUEST['fenlei']) && $_REQUEST['fenlei'] != ''){$map['fenlei'] =array('EQ', urldecode(I('fenlei'))); }


	}
	
   public function _befor_index(){ 
     $fenleilist =  M($this->dbname)->where(array('fenlei'=>array('neq','')))->distinct('fenlei')->field('fenlei')->select();
 $this->assign('fenleilist', $fenleilist); 
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
   
   public function _after_del(){
     M($this->dbname)->where(array("kucun"=>array("elt",0)))->delete(); 	 
   }

   public function outxls() {
		$model = D($this->dbname);
		$map = $this->_search();
		if (method_exists($this, '_filter')) {
			$this->_filter($map);
		}
		$list = $model->where($map)->field('id,bianhao,title,fenlei,type,danwei,rjiage,xjiage,kucun')->select();
	    $headArr=array('ID','产品编号','产品名称','产品分类','产品规格','计量单位','入库价格','销售价格','库存数量');
	    $filename='产品管理';
		$this->xlsout($filename,$headArr,$list);
	}
	
	public function baojing() {
		$model = D($this->dbname);
		$map = $this->_search();
		if (method_exists($this, '_filter')) {
			$this->_filter($map);
		}
		$map['kucun']  =  array('elt',10);
		$list = $model->where($map)->select();
	    $this->assign('list', $list);
		$this->display('index');
	}
	

}