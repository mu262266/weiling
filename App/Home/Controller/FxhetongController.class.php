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

class FxhetongController extends CommonController{

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
  
  public function type(){
   $this->_fenxi('type','合同类型',1);
  }
 
    public function jingban(){
    $this->_fenxi('jingban','经办人分析',2);
   }

   
    public function qushi(){
	import("Org.Util.Chart");
    $chart = new \Chart;
	if(isset($_REQUEST['jingban']) && $_REQUEST['jingban'] != ''){
	  $jingban=" and jingban='".$_REQUEST['jingban']."'";  
	}
	if(isset($_REQUEST['time1']) && $_REQUEST['time1'] != ''){
		for($i=1;$i<=12;$i++){ 	
			$info=$info.",".$i;
			if($i<10){
			$co = M($this->dbname)->where("addtime like '%".substr($_REQUEST['time1'],0,4)."-%' and addtime like '%0".$i."-%'".$jingban)->count('id');
			}else{
			$co = M($this->dbname)->where("addtime like '%".substr($_REQUEST['time1'],0,4)."-%' and addtime like '%".$i."-%'".$jingban)->count('id');
			}
			$count=$count.",".$co;
		}
		$title =$_REQUEST['jingban'].substr($_REQUEST['time1'],0,4).'年合同增长趋势(数量)'; 
	}else{
		for($i=1;$i<=12;$i++){ 	
			$info=$info.",".$i;
			if($i<10){
			$co = M($this->dbname)->where("addtime like '%".date("Y",time())."-%' and addtime like '%0".$i."-%'".$jingban)->count('id');
			}else{
			$co = M($this->dbname)->where("addtime like '%".date("Y",time())."-%' and addtime like '%".$i."-%'".$jingban)->count('id');
			}
			$count=$count.",".$co;
		}
	 $title = $_REQUEST['jingban'].date("Y",time()).'年合同增长趋势(数量)'; 	
	}
    $data = explode(",", substr ($count, 1)); 
    $size = 140; 
    $width = 1100; 
    $height = 300; 
    $legend = explode(",", substr ($info, 1));
    ob_end_clean();
    $chart->createmonthline($title,$data,$size,$height,$width,$legend);
	}

	public function qushijin(){
	import("Org.Util.Chart");
    $chart = new \Chart;
	if(isset($_REQUEST['jingban']) && $_REQUEST['jingban'] != ''){
	  $jingban=" and jingban='".$_REQUEST['jingban']."'"; 
	}
	if(isset($_REQUEST['time1']) && $_REQUEST['time1'] != ''){
		for($i=1;$i<=12;$i++){ 	
			$info=$info.",".$i;
			if($i<10){
			$co = M($this->dbname)->where("addtime like '%".substr($_REQUEST['time1'],0,4)."-%' and addtime like '%0".$i."-%'".$jingban)->sum('jine');
			}else{
			$co = M($this->dbname)->where("addtime like '%".substr($_REQUEST['time1'],0,4)."-%' and addtime like '%".$i."-%'".$jingban)->sum('jine');
			}
			$count=$count.",".$co;
		}
		$title =$_REQUEST['jingban'].substr($_REQUEST['time1'],0,4).'年合同增长趋势(签约金额)'; 
	}else{
		for($i=1;$i<=12;$i++){ 	
			$info=$info.",".$i;
			if($i<10){
			$co = M($this->dbname)->where("addtime like '%".date("Y",time())."-%' and addtime like '%0".$i."-%'".$jingban)->sum('jine');
			}else{
			$co = M($this->dbname)->where("addtime like '%".date("Y",time())."-%' and addtime like '%".$i."-%'".$jingban)->sum('jine');
			}
			$count=$count.",".$co;
		}
	 $title =$_REQUEST['jingban'].date("Y",time()).'年合同增长趋势(签约金额)'; 	
	}
    $data = explode(",", substr ($count, 1)); 
    $size = 140; 
    $width = 1100; 
    $height = 300; 
    $legend = explode(",", substr ($info, 1));
    ob_end_clean();
    $chart->createcolumnar($title,$data,$size,$height,$width,$legend);
	}
	
	public function qushishou(){
	import("Org.Util.Chart");
    $chart = new \Chart;
	if(isset($_REQUEST['jingban']) && $_REQUEST['jingban'] != ''){
	  $jingban=" and jingban='".$_REQUEST['jingban']."'";	
	}
	if(isset($_REQUEST['time1']) && $_REQUEST['time1'] != ''){
		for($i=1;$i<=12;$i++){ 	
			$info=$info.",".$i;
			if($i<10){
			$co = M($this->dbname)->where("addtime like '%".substr($_REQUEST['time1'],0,4)."-%' and addtime like '%0".$i."-%'".$jingban)->sum('yishou');
			}else{
			$co = M($this->dbname)->where("addtime like '%".substr($_REQUEST['time1'],0,4)."-%' and addtime like '%".$i."-%'".$jingban)->sum('yishou');
			}
			$count=$count.",".$co;
		}
		$title =$_REQUEST['jingban'].substr($_REQUEST['time1'],0,4).'年合同增长趋势(已收款)'; 
	}else{
		for($i=1;$i<=12;$i++){ 	
			$info=$info.",".$i;
			if($i<10){
			$co = M($this->dbname)->where("addtime like '%".date("Y",time())."-%' and addtime like '%0".$i."-%'".$jingban)->sum('yishou');
			}else{
			$co = M($this->dbname)->where("addtime like '%".date("Y",time())."-%' and addtime like '%".$i."-%'".$jingban)->sum('yishou');
			}
			$count=$count.",".$co;
		}
	 $title =$_REQUEST['jingban'].date("Y",time()).'年合同增长趋势(已收款)'; 	
	}
    $data = explode(",", substr ($count, 1)); 
    $size = 140; 
    $width = 1100; 
    $height = 300; 
    $legend = explode(",", substr ($info, 1));
    ob_end_clean();
    $chart->createcolumnar($title,$data,$size,$height,$width,$legend);
	}
	
	public function qushiwei(){
	import("Org.Util.Chart");
    $chart = new \Chart;
	if(isset($_REQUEST['jingban']) && $_REQUEST['jingban'] != ''){
	  $jingban=" and jingban='".$_REQUEST['jingban']."'";  
	}
	if(isset($_REQUEST['time1']) && $_REQUEST['time1'] != ''){
		for($i=1;$i<=12;$i++){ 	
			$info=$info.",".$i;
			if($i<10){
			$co = M($this->dbname)->where("addtime like '%".substr($_REQUEST['time1'],0,4)."-%' and addtime like '%0".$i."-%'".$jingban)->sum('weishou');
			}else{
			$co = M($this->dbname)->where("addtime like '%".substr($_REQUEST['time1'],0,4)."-%' and addtime like '%".$i."-%'".$jingban)->sum('weishou');
			}
			$count=$count.",".$co;
		}
		$title =$_REQUEST['jingban'].substr($_REQUEST['time1'],0,4).'年合同增长趋势(未收款)'; 
	}else{
		for($i=1;$i<=12;$i++){ 	
			$info=$info.",".$i;
			if($i<10){
			$co = M($this->dbname)->where("addtime like '%".date("Y",time())."-%' and addtime like '%0".$i."-%'".$jingban)->sum('weishou');
			}else{
			$co = M($this->dbname)->where("addtime like '%".date("Y",time())."-%' and addtime like '%".$i."-%'".$jingban)->sum('weishou');
			}
			$count=$count.",".$co;
		}
	 $title = $_REQUEST['jingban'].date("Y",time()).'年合同增长趋势(未收款)'; 	
	}
    $data = explode(",", substr ($count, 1)); 
    $size = 140; 
    $width = 1100; 
    $height = 300; 
    $legend = explode(",", substr ($info, 1));
    ob_end_clean();
    $chart->createcolumnar($title,$data,$size,$height,$width,$legend);
	}
	
	public function qushipiao(){
	import("Org.Util.Chart");
    $chart = new \Chart;
	if(isset($_REQUEST['jingban']) && $_REQUEST['jingban'] != ''){
	  $jingban=" and jingban='".$_REQUEST['jingban']."'";
	}
	if(isset($_REQUEST['time1']) && $_REQUEST['time1'] != ''){
		for($i=1;$i<=12;$i++){ 	
			$info=$info.",".$i;
			if($i<10){
			$co = M($this->dbname)->where("addtime like '%".substr($_REQUEST['time1'],0,4)."-%' and addtime like '%0".$i."-%'".$jingban)->sum('kaipiao');
			}else{
			$co = M($this->dbname)->where("addtime like '%".substr($_REQUEST['time1'],0,4)."-%' and addtime like '%".$i."-%'".$jingban)->sum('kaipiao');
			}
			$count=$count.",".$co;
		}
		$title = $_REQUEST['jingban'].substr($_REQUEST['time1'],0,4).'年合同增长趋势(已开票)'; 
	}else{
		for($i=1;$i<=12;$i++){ 	
			$info=$info.",".$i;
			if($i<10){
			$co = M($this->dbname)->where("addtime like '%".date("Y",time())."-%' and addtime like '%0".$i."-%'".$jingban)->sum('kaipiao');
			}else{
			$co = M($this->dbname)->where("addtime like '%".date("Y",time())."-%' and addtime like '%".$i."-%'".$jingban)->sum('kaipiao');
			}
			$count=$count.",".$co;
		}
	 $title = $_REQUEST['jingban'].date("Y",time()).'年合同增长趋势(已开票)'; 	
	}
    $data = explode(",", substr ($count, 1)); 
    $size = 140; 
    $width = 1100; 
    $height = 300; 
    $legend = explode(",", substr ($info, 1));
    ob_end_clean();
    $chart->createcolumnar($title,$data,$size,$height,$width,$legend);
	}
	
	public function daoqi(){
	import("Org.Util.Chart");
    $chart = new \Chart;
	if(isset($_REQUEST['jingban']) && $_REQUEST['jingban'] != ''){
	  $jingban=" and jingban='".$_REQUEST['jingban']."'";
	}
	if(isset($_REQUEST['time1']) && $_REQUEST['time1'] != ''){
		for($i=1;$i<=12;$i++){ 	
			$info=$info.",".$i;
			if($i<10){
			$co = M($this->dbname)->where("jztime like '%".substr($_REQUEST['time1'],0,4)."-%' and jztime like '%0".$i."-%'".$jingban)->count('id');
			}else{
			$co = M($this->dbname)->where("jztime like '%".substr($_REQUEST['time1'],0,4)."-%' and jztime like '%".$i."-%'".$jingban)->count('id');
			}
			$count=$count.",".$co;
		}
		$title = $_REQUEST['jingban'].substr($_REQUEST['time1'],0,4).'年到期合同趋势'; 
	}else{
		for($i=1;$i<=12;$i++){ 	
			$info=$info.",".$i;
			if($i<10){
			$co = M($this->dbname)->where("jztime like '%".date("Y",time())."-%' and jztime like '%0".$i."-%'".$jingban)->count('id');
			}else{
			$co = M($this->dbname)->where("jztime like '%".date("Y",time())."-%' and jztime like '%".$i."-%'".$jingban)->count('id');
			}
			$count=$count.",".$co;
		}
	 $title = $_REQUEST['jingban'].date("Y",time()).'年到期合同趋势'; 	
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