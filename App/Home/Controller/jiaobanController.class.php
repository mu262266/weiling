<?php

/**
 *      合同管理控制器
 *      [X-Mis] (C)2007-2099  
 *      This is NOT a freeware, use is subject to license terms
 *      http://www.xinyou88.com
 *      tel:400-000-9981
 *      qq:16129825
 */

namespace Home\Controller;
use Think\Controller;

class TjbiaoController extends CommonController{

   public function _initialize() {
        parent::_initialize();
        $this->dbname = 'hetong';
    }
	
   function _filter(&$map) {
	   if(!in_array(session('uid'),C('ADMINISTRATOR'))){
		 //$map[]=array("uid"=>array('EQ', session("uid")),"juid"=>array('like','%'.session("uid").'%'),"_logic"=>"or");
	   }
	   if(isset($_REQUEST['time1']) && $_REQUEST['time1'] != ''&&isset($_REQUEST['time2']) && $_REQUEST['time2'] != ''){$map['addtime'] =array(array('egt',I('time1').' 00:00:00'),array('elt',I('time2').' 59:59:59'));}
	   if(isset($_REQUEST['type']) && $_REQUEST['type'] != ''){$map['type'] =array('EQ', urldecode(I('type'))); }
       if(isset($_REQUEST['jingban']) && $_REQUEST['jingban'] != ''){$map['jingban'] =array('EQ', urldecode(I('jingban'))); }


	}
	
   public function _befor_index(){ 
     $typelist =  M($this->dbname)->where(array('type'=>array('neq','')))->distinct('type')->field('type')->select();
     $this->assign('typelist', $typelist); $jingbanlist =  M($this->dbname)->where(array('jingban'=>array('neq','')))->distinct('jingban')->field('jingban')->select();
     $this->assign('jingbanlist', $jingbanlist); 
   }
  
  
	
	
}