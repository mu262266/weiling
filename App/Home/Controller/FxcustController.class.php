<?php

/**
 *      客户管理控制器
 *      [X-Mis] (C)2007-2099  
 *      This is NOT a freeware, use is subject to license terms
 *      http://www.xinyou88.com
 *      tel:400-000-9981
 *      qq:16129825
 */

namespace Home\Controller;
use Think\Controller;

class FxcustController extends CommonController{

   public function _initialize() {
        parent::_initialize();
        $this->dbname = 'cust';
    }
	
   function _filter(&$map) {
	   if(!in_array(session('uid'),C('ADMINISTRATOR'))){
	   //$map[]=array("uid"=>array('EQ', session("uid")),"juid"=>array('like','%'.session("uid").'%'),"_logic"=>"or");
	   }
	   if(isset($_REQUEST['time1']) && $_REQUEST['time1'] != ''&&isset($_REQUEST['time2']) && $_REQUEST['time2'] != ''){$map['addtime'] =array(array('egt',I('time1').' 00:00:00'),array('elt',I('time2').' 59:59:59'));}
	   if(isset($_REQUEST['xuqiu']) && $_REQUEST['xuqiu'] != ''){$map['xuqiu'] =array('EQ', urldecode(I('xuqiu'))); }
       if(isset($_REQUEST['laiyuan']) && $_REQUEST['laiyuan'] != ''){$map['laiyuan'] =array('EQ', urldecode(I('laiyuan'))); }
       if(isset($_REQUEST['jinzhan']) && $_REQUEST['jinzhan'] != ''){$map['jinzhan'] =array('EQ', urldecode(I('jinzhan'))); }


	}
	
   public function _befor_index(){ 
     $xuqiulist =  M($this->dbname)->where(array('xuqiu'=>array('neq','')))->distinct('xuqiu')->field('xuqiu')->select();
    $this->assign('xuqiulist', $xuqiulist); $laiyuanlist =  M($this->dbname)->where(array('laiyuan'=>array('neq','')))->distinct('laiyuan')->field('laiyuan')->select();
    $this->assign('laiyuanlist', $laiyuanlist); $jinzhanlist =  M($this->dbname)->where(array('jinzhan'=>array('neq','')))->distinct('jinzhan')->field('jinzhan')->select();
    $this->assign('jinzhanlist', $jinzhanlist); 
   }
  
  
   public function xuqiu(){
   $this->_fenxi('xuqiu','需求类型',1);
  }
 
   public function laiyuan(){
    $this->_fenxi('laiyuan','客户来源',1);
   }
   
   public function jinzhan(){
    $this->_fenxi('jinzhan','进展阶段',1);
   }
   
    public function yewu(){
    $this->_fenxi('uname','业务员分析',2);
   }
   
   public function qushi(){
	import("Org.Util.Chart");
    $chart = new \Chart;
	if(isset($_REQUEST['time1']) && $_REQUEST['time1'] != ''){
		for($i=1;$i<=12;$i++){ 	
			$info=$info.",".$i;
			if($i<10){
			$co = M($this->dbname)->where("addtime like '%".substr($_REQUEST['time1'],0,4)."-%' and addtime like '%0".$i."-%'")->count('id');
			}else{
			$co = M($this->dbname)->where("addtime like '%".substr($_REQUEST['time1'],0,4)."-%' and addtime like '%".$i."-%'")->count('id');
			}
			$count=$count.",".$co;
		}
		$title =  substr($_REQUEST['time1'],0,4).'年客户增长趋势'; 
	}else{
		for($i=1;$i<=12;$i++){ 	
			$info=$info.",".$i;
			if($i<10){
			$co = M($this->dbname)->where("addtime like '%".date("Y",time())."-%' and addtime like '%0".$i."-%'")->count('id');
			}else{
			$co = M($this->dbname)->where("addtime like '%".date("Y",time())."-%' and addtime like '%".$i."-%'")->count('id');
			}
			$count=$count.",".$co;
		}
	 $title = date("Y",time()).'年客户增长趋势'; 	
	}
    $data = explode(",", substr ($count, 1)); 
    $size = 140; 
    $width = 1100; 
    $height = 300; 
    $legend = explode(",", substr ($info, 1));
    ob_end_clean();
    $chart->createmonthline($title,$data,$size,$height,$width,$legend);
	}


	

}