<?php

/**
 *      控制器
 *      [X-Mis] (C)2007-2099  
 *      This is NOT a freeware, use is subject to license terms
 *      http://www.xinyou88.com
 *      tel:400-000-9981
 *      qq:16129825
 */

namespace Home\Controller;
use Think\Controller;

class TjchanpinController extends CommonController{

    public function _initialize() {
        parent::_initialize();
        $this->dbname = 'chanpin';
    }
	
   function _filter(&$map) {
	  
	   if(isset($_REQUEST['time1']) && $_REQUEST['time1'] != ''&&isset($_REQUEST['time2']) && $_REQUEST['time2'] != ''){$map['shijian'] =array(array('egt',I('time1').' 00:00:00'),array('elt',I('time2').' 59:59:59'));}
       if(isset($_REQUEST['fenlei']) && $_REQUEST['fenlei'] != ''){$map['fenlei'] =array('EQ', urldecode(I('fenlei'))); }
	}
	
   
    public function _befor_index(){ 
	   $fenleilist =  M($this->dbname)->where(array('fenlei'=>array('neq','')))->distinct('fenlei')->field('fenlei')->select();
       $this->assign('fenleilist', $fenleilist); 
   }
   
	
	public function dayin(){
	   $model = D($this->dbname);
		$map = $this->_search();
		if (method_exists($this, '_filter')) {
			$this->_filter($map);
		}
	   $list=$model->where($map)->select();
       $this->assign('list', $list); 
	   $this->display();
   }

}