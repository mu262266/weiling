<?php

/**
 *      跟单记录控制器
 *      [X-Mis] (C)2007-2099  
 *      This is NOT a freeware, use is subject to license terms
 *      http://www.xinyou88.com
 *      tel:400-000-9981
 *      qq:16129825
 */

namespace Home\Controller;
use Think\Controller;

class CustgdController extends CommonController{

   public function _initialize() {
        parent::_initialize();
        $this->dbname = CONTROLLER_NAME;
    }
	
   function _filter(&$map) {
	   if(!in_array(session('uid'),C('ADMINISTRATOR'))){
		  $map['uid'] = array('EQ', session('uid')); 
	   }
	   if(isset($_REQUEST['time1']) && $_REQUEST['time1'] != ''&&isset($_REQUEST['time2']) && $_REQUEST['time2'] != ''){$map['xiaci'] =array(array('egt',I('time1').' 00:00:00'),array('elt',I('time2').' 59:59:59'));}

	   if(isset($_REQUEST['type']) && $_REQUEST['type'] != ''){$map['type'] =array('EQ', urldecode(I('type'))); }
if(isset($_REQUEST['jinzhan']) && $_REQUEST['jinzhan'] != ''){$map['jinzhan'] =array('EQ', urldecode(I('jinzhan'))); }


	}
	
   public function _befor_index(){ 
     $typelist =  M($this->dbname)->where(array('type'=>array('neq','')))->distinct('type')->field('type')->select();
 $this->assign('typelist', $typelist); $jinzhanlist =  M($this->dbname)->where(array('jinzhan'=>array('neq','')))->distinct('jinzhan')->field('jinzhan')->select();
 $this->assign('jinzhanlist', $jinzhanlist); 
   }
  
  
  public function _befor_add(){
	  $attid=time();
	  $this->assign('attid',$attid);
    
  }
  
  public function _befor_insert($data){
     $cdata = array('jinzhan'=>I('jinzhan'),'xiaci'=>I('xiaci'));
	 M('cust')-> where(array('id'=>I('cid')))->setField($cdata);
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
    $cdata = array('jinzhan'=>I('jinzhan'),'xiaci'=>I('xiaci'));
	M('cust')-> where(array('id'=>I('cid')))->setField($cdata);
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
		$list = $model->where($map)->field('id,cid,title,type,content,jinzhan,xiaci')->select();
	    $headArr=array('ID','客户ID','客户名称','跟单方式','跟单详情','进展阶段','下次联系');
	    $filename='跟单记录';
		$this->xlsout($filename,$headArr,$list);
	}
	
	public function fenxi(){
	 $this->display();
	}
	
	

}