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

class FxcaiwuController extends CommonController{


	
   function _filter(&$map) {
	  
	   if(isset($_REQUEST['time1']) && $_REQUEST['time1'] != ''&&isset($_REQUEST['time2']) && $_REQUEST['time2'] != ''){$map['shijian'] =array(array('egt',I('time1').' 00:00:00'),array('elt',I('time2').' 59:59:59'));}
	   if(isset($_REQUEST['jingban']) && $_REQUEST['jingban'] != ''){$map['jingban'] =array('EQ', urldecode(I('jingban'))); }
	}
	
   
   public function index(){
	   $jingbanlist =  M('hetong')->where(array('jingban'=>array('neq','')))->distinct('jingban')->field('jingban')->select();
       $this->assign('jingbanlist', $jingbanlist);
	   $this->display();
   }
   
  public function shou(){
	import("Org.Util.Chart");
    $chart = new \Chart;
	if(isset($_REQUEST['jingban']) && $_REQUEST['jingban'] != ''){
	  $jingban=" and jingban='".$_REQUEST['jingban']."'";	
	}
	if(isset($_REQUEST['time1']) && $_REQUEST['time1'] != ''){
		for($i=1;$i<=12;$i++){ 	
			$info=$info.",".$i;
			if($i<10){
			$co = M('shou')->where("addtime like '%".substr($_REQUEST['time1'],0,4)."-%' and addtime like '%0".$i."-%'".$jingban)->sum('jine');
			}else{
			$co = M('shou')->where("addtime like '%".substr($_REQUEST['time1'],0,4)."-%' and addtime like '%".$i."-%'".$jingban)->sum('jine');
			}
			$count=$count.",".$co;
		}
		$title = $_REQUEST['jingban'].substr($_REQUEST['time1'],0,4).'年收款增长趋势'; 
	}else{
		for($i=1;$i<=12;$i++){ 	
			$info=$info.",".$i;
			if($i<10){
			$co = M('shou')->where("addtime like '%".date("Y",time())."-%' and addtime like '%0".$i."-%'".$jingban)->sum('jine');
			}else{
			$co = M('shou')->where("addtime like '%".date("Y",time())."-%' and addtime like '%".$i."-%'".$jingban)->sum('jine');
			}
			$count=$count.",".$co;
		}
	 $title = $_REQUEST['jingban'].date("Y",time()).'年收款增长趋势'; 	
	}
    $data = explode(",", substr ($count, 1)); 
    $size = 140; 
    $width = 1100; 
    $height = 300; 
    $legend = explode(",", substr ($info, 1));
    ob_end_clean();
    $chart->createcolumnar($title,$data,$size,$height,$width,$legend);
	}
	
    public function fukuan(){
	import("Org.Util.Chart");
    $chart = new \Chart;
	if(isset($_REQUEST['jingban']) && $_REQUEST['jingban'] != ''){
	  $jingban=" and jingban='".$_REQUEST['jingban']."'";	
	}
	if(isset($_REQUEST['time1']) && $_REQUEST['time1'] != ''){
		for($i=1;$i<=12;$i++){ 	
			$info=$info.",".$i;
			if($i<10){
			$co = M('fukuan')->where("addtime like '%".substr($_REQUEST['time1'],0,4)."-%' and addtime like '%0".$i."-%'".$jingban)->sum('jine');
			}else{
			$co = M('fukuan')->where("addtime like '%".substr($_REQUEST['time1'],0,4)."-%' and addtime like '%".$i."-%'".$jingban)->sum('jine');
			}
			$count=$count.",".$co;
		}
		$title = $_REQUEST['jingban'].substr($_REQUEST['time1'],0,4).'年付款增长趋势'; 
	}else{
		for($i=1;$i<=12;$i++){ 	
			$info=$info.",".$i;
			if($i<10){
			$co = M('fukuan')->where("addtime like '%".date("Y",time())."-%' and addtime like '%0".$i."-%'".$jingban)->sum('jine');
			}else{
			$co = M('fukuan')->where("addtime like '%".date("Y",time())."-%' and addtime like '%".$i."-%'".$jingban)->sum('jine');
			}
			$count=$count.",".$co;
		}
	 $title = $_REQUEST['jingban'].date("Y",time()).'年付款增长趋势'; 	
	}
    $data = explode(",", substr ($count, 1)); 
    $size = 140; 
    $width = 1100; 
    $height = 300; 
    $legend = explode(",", substr ($info, 1));
    ob_end_clean();
    $chart->createcolumnar($title,$data,$size,$height,$width,$legend);
	}
	
	public function leixing(){
	import("Org.Util.Chart");
    $chart = new \Chart;
    if(isset($_REQUEST['time1']) && $_REQUEST['time1'] != ''&&isset($_REQUEST['time2']) && $_REQUEST['time2'] != ''){
		$map['addtime'] =array(array('egt',I('time1').' 00:00:00'),array('elt',I('time2').' 59:59:59'));
	    $title = $_REQUEST['jingban'].substr($_REQUEST['time1'],0,10).'-'.$_REQUEST['time2'].'付款类型'; 
	}else{
		$map="";
		$title = $_REQUEST['jingban'].'付款类型'; 
	}
	    $list = M('fukuan')->where($map)->distinct('leixing')->field('leixing')->select();
	    foreach ($list as $key =>$vo){	
		 $info=$info.",".$vo['leixing'];
		 $map['leixing']=$vo['leixing'];
		 if(isset($_REQUEST['jingban']) && $_REQUEST['jingban'] != ''){
	       $map['jingban']=$_REQUEST['jingban'];	
	     }
		 $co = M('fukuan')->where($map)->sum('jine');
		 $count=$count.",".$co;
		}
    $data = explode(",", substr ($count, 1)); 
    $size = 140; 
    $width = 500; 
    $height = 300; 
    $legend = explode(",", substr ($info, 1));
    ob_end_clean();
    $chart->create3dpie($title,$data,$size,$height,$width,$legend);
	}
	
	
	public function jingban(){
	import("Org.Util.Chart");
    $chart = new \Chart;
    if(isset($_REQUEST['time1']) && $_REQUEST['time1'] != ''&&isset($_REQUEST['time2']) && $_REQUEST['time2'] != ''){
		$map['addtime'] =array(array('egt',I('time1').' 00:00:00'),array('elt',I('time2').' 59:59:59'));
	    $title = substr($_REQUEST['time1'],0,10).'-'.$_REQUEST['time2'].'业务员付款分析'; 
	}else{
		$map="";
		$title = '业务员付款分析'; 
	}
	    $list = M('fukuan')->where($map)->distinct('jingban')->field('jingban')->select();
	    foreach ($list as $key =>$vo){	
		 $info=$info.",".$vo['jingban'];
		 $map['jingban']=$vo['jingban'];
		 $co = M('fukuan')->where($map)->sum('jine');
		 $count=$count.",".$co;
		}
	
    $data = explode(",", substr ($count, 1)); 
    $size = 140; 
    $width = 500; 
    $height = 300; 
    $legend = explode(",", substr ($info, 1));
    ob_end_clean();
    $chart->createcolumnar($title,$data,$size,$height,$width,$legend);
	}
	

}