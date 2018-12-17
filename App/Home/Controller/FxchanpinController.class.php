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

class FxchanpinController extends CommonController{


	
   function _filter(&$map) {
	  
	   if(isset($_REQUEST['time1']) && $_REQUEST['time1'] != ''&&isset($_REQUEST['time2']) && $_REQUEST['time2'] != ''){$map['shijian'] =array(array('egt',I('time1').' 00:00:00'),array('elt',I('time2').' 59:59:59'));}
       if(isset($_REQUEST['fenlei']) && $_REQUEST['fenlei'] != ''){$map['fenlei'] =array('EQ', urldecode(I('fenlei'))); }
	}
	
   
   public function index(){
	   $fenleilist =  M('chanpin')->where(array('fenlei'=>array('neq','')))->distinct('fenlei')->field('fenlei')->select();
       $this->assign('fenleilist', $fenleilist); 
	   $this->display();
   }
   
  public function rukus(){
	import("Org.Util.Chart");
    $chart = new \Chart;
	if(isset($_REQUEST['fenlei']) && $_REQUEST['fenlei'] != ''){
	  $jingban=" and fenlei='".$_REQUEST['fenlei']."'";	
	}
	if(isset($_REQUEST['time1']) && $_REQUEST['time1'] != ''){
		for($i=1;$i<=12;$i++){ 	
			$info=$info.",".$i;
			if($i<10){
			$co = M('rukus')->where("shijian like '%".substr($_REQUEST['time1'],0,4)."-%' and shijian like '%0".$i."-%'".$jingban)->sum('shuliang');
			}else{
			$co = M('rukus')->where("shijian like '%".substr($_REQUEST['time1'],0,4)."-%' and shijian like '%".$i."-%'".$jingban)->sum('shuliang');
			}
			$count=$count.",".$co;
		}
		$title = $_REQUEST['fenlei'].substr($_REQUEST['time1'],0,4).'年入库增长趋势'; 
	}else{
		for($i=1;$i<=12;$i++){ 	
			$info=$info.",".$i;
			if($i<10){
			$co = M('rukus')->where("shijian like '%".date("Y",time())."-%' and shijian like '%0".$i."-%'".$jingban)->sum('shuliang');
			}else{
			$co = M('rukus')->where("shijian like '%".date("Y",time())."-%' and shijian like '%".$i."-%'".$jingban)->sum('shuliang');
			}
			$count=$count.",".$co;
		}
	 $title = $_REQUEST['fenlei'].date("Y",time()).'年入库增长趋势'; 	
	}
    $data = explode(",", substr ($count, 1)); 
    $size = 140; 
    $width = 1100; 
    $height = 300; 
    $legend = explode(",", substr ($info, 1));
    ob_end_clean();
    $chart->createcolumnar($title,$data,$size,$height,$width,$legend);
	}
	
    public function chukus(){
	import("Org.Util.Chart");
    $chart = new \Chart;
	if(isset($_REQUEST['fenlei']) && $_REQUEST['fenlei'] != ''){
	  $jingban=" and fenlei='".$_REQUEST['fenlei']."'";	
	}
	if(isset($_REQUEST['time1']) && $_REQUEST['time1'] != ''){
		for($i=1;$i<=12;$i++){ 	
			$info=$info.",".$i;
			if($i<10){
			$co = M('chukus')->where("shijian like '%".substr($_REQUEST['time1'],0,4)."-%' and shijian like '%0".$i."-%'".$jingban)->sum('shuliang');
			}else{
			$co = M('chukus')->where("shijian like '%".substr($_REQUEST['time1'],0,4)."-%' and shijian like '%".$i."-%'".$jingban)->sum('shuliang');
			}
			$count=$count.",".$co;
		}
		$title = $_REQUEST['fenlei'].substr($_REQUEST['time1'],0,4).'年出库增长趋势'; 
	}else{
		for($i=1;$i<=12;$i++){ 	
			$info=$info.",".$i;
			if($i<10){
			$co = M('chukus')->where("shijian like '%".date("Y",time())."-%' and shijian like '%0".$i."-%'".$jingban)->sum('shuliang');
			}else{
			$co = M('chukus')->where("shijian like '%".date("Y",time())."-%' and shijian like '%".$i."-%'".$jingban)->sum('shuliang');
			}
			$count=$count.",".$co;
		}
	 $title = $_REQUEST['fenlei'].date("Y",time()).'年出库增长趋势'; 	
	}
    $data = explode(",", substr ($count, 1)); 
    $size = 140; 
    $width = 1100; 
    $height = 300; 
    $legend = explode(",", substr ($info, 1));
    ob_end_clean();
    $chart->createcolumnar($title,$data,$size,$height,$width,$legend);
	}
	


}