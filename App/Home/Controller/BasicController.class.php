<?php
namespace Home\Controller;
use Think\Controller;
use Common\Controller\BaseController;
class BasicController extends BaseController {
	
	public function _initialize(){

		if(!session('uid')){
			redirect(U('Public/login'));
		}
       
        $config =   S('DB_CONFIG_DATA');
        if(!$config){
            $config =   api('Config/lists');
            S('DB_CONFIG_DATA',$config);
        }
        C($config); 
	 
	}

  
   public function user(){
	    $info=M('user');
		if (isset($_REQUEST ['orderField'])) {$order = $_REQUEST ['orderField'];}
		if($order=='') {$order = $info->getPk();}
			
		if (isset($_REQUEST ['orderDirection'])) {$sort = $_REQUEST ['orderDirection'];}
		if($sort=='') {$sort = $asc ? 'asc' : 'desc';}

		if (isset($_REQUEST ['pageCurrent'])) {$pageCurrent = $_REQUEST ['pageCurrent'];}
		if($pageCurrent=='') {$pageCurrent =1;}   

       $key=I('keys');
	   if($key){
	   $where['username'] = array('like','%'.$key.'%');   
       $where['truename'] = array('like','%'.$key.'%');
       $where['depname'] = array('like','%'.$key.'%');
       $where['posname'] = array('like','%'.$key.'%');
       $where['_logic'] = 'or'; }
	 if(IS_POST&&isset($_REQUEST['filter']) && $_REQUEST['filter'] != ''){
		 $map['depname'] = array('EQ', I('filter'));
		 $where['_complex'] = $map;
		}
   $numPerPage=50;
   cookie('_currentUrl_', __SELF__);
   $list=$info->where($where)->order("`" . $order . "` " . $sort)->limit($numPerPage)->page($pageCurrent.','.$numPerPage.'')->select();
	$this->assign('list',$list);
    $count = $info->where($where)->count();
    $this->assign('totalCount', $count);
    $this->assign('currentPage', !empty($_GET['pageNum']) ? $_GET['pageNum'] : 1);
    $this->assign('numPerPage', $numPerPage); 
	$filters=orgcateTree($pid=0,$level=0,$type=0);
    $this->assign('filters',$filters);
    $this->display();
   }
   
   public function cust(){
   $info=M('cust');
       if (isset($_REQUEST ['orderField'])) {$order = $_REQUEST ['orderField'];}
		if($order=='') {$order = $info->getPk();}
			
		if (isset($_REQUEST ['orderDirection'])) {$sort = $_REQUEST ['orderDirection'];}
		if($sort=='') {$sort = $asc ? 'asc' : 'desc';}

		if (isset($_REQUEST ['pageCurrent'])) {$pageCurrent = $_REQUEST ['pageCurrent'];}
		if($pageCurrent=='') {$pageCurrent =1;}   
		
       $key=I('keys');
	   if($key){
       $where['title'] = array('like','%'.$key.'%');
	   $where['fenlei'] = array('like','%'.$key.'%');
       $where['xingming'] = array('like','%'.$key.'%');
	   $where['phone'] = array('like','%'.$key.'%');
       $where['_logic'] = 'or'; }
	   if(IS_POST&&isset($_REQUEST['filter']) && $_REQUEST['filter'] != ''){
		 $map['jinzhan'] = array('EQ', I('filter'));
		 $where['_complex'] = $map;
		}
   $numPerPage=10;
   cookie('_currentUrl_', __SELF__);
   $list=$info->where($where)->order("`" . $order . "` " . $sort)->limit($numPerPage)->page($pageCurrent.','.$numPerPage.'')->select();
    $this->assign('list',$list);
    $count = $info->where($where)->count();
	$filters=orgcateTree($pid=0,$level=0,$type=0);
    $this->assign('filters',$filters);
    $this->assign('totalCount', $count);
    $this->assign('currentPage', !empty($_GET['pageNum']) ? $_GET['pageNum'] : 1);
    $this->assign('numPerPage', $numPerPage); 
    $this->display();
   }
   
   	public function chanpin(){
    $info=M('chanpin');
       if (isset($_REQUEST ['orderField'])) {$order = $_REQUEST ['orderField'];}
		if($order=='') {$order = $info->getPk();}
			
		if (isset($_REQUEST ['orderDirection'])) {$sort = $_REQUEST ['orderDirection'];}
		if($sort=='') {$sort = $asc ? 'asc' : 'desc';}

		if (isset($_REQUEST ['pageCurrent'])) {$pageCurrent = $_REQUEST ['pageCurrent'];}
		if($pageCurrent=='') {$pageCurrent =1;}   
		
       $key=I('keys');
	   if($key){
       $where['title'] = array('like','%'.$key.'%');
	   $where['fenlei'] = array('like','%'.$key.'%');
       $where['type'] = array('like','%'.$key.'%');
	   $where['bianhao'] = array('like','%'.$key.'%');
       $where['_logic'] = 'or'; }
	   if(IS_POST&&isset($_REQUEST['filter']) && $_REQUEST['filter'] != ''){
		 $map['fenlei'] = array('EQ', I('filter'));
		 $where['_complex'] = $map;
		}
   $numPerPage=10;
   cookie('_currentUrl_', __SELF__);
   $list=$info->where($where)->order("`" . $order . "` " . $sort)->limit($numPerPage)->page($pageCurrent.','.$numPerPage.'')->select();
    $filters = M("chanpin")->distinct('fenlei')->field('fenlei')->select();
    $this->assign('filters',$filters);
    $this->assign('list',$list);
    $count = $info->where($where)->count();
    $this->assign('totalCount', $count);
    $this->assign('currentPage', !empty($_GET['pageNum']) ? $_GET['pageNum'] : 1);
    $this->assign('numPerPage', $numPerPage); 
    $this->display();
   }
   
   public function hetong(){
   $info=M('hetong');
       if (isset($_REQUEST ['orderField'])) {$order = $_REQUEST ['orderField'];}
		if($order=='') {$order = $info->getPk();}
			
		if (isset($_REQUEST ['orderDirection'])) {$sort = $_REQUEST ['orderDirection'];}
		if($sort=='') {$sort = $asc ? 'asc' : 'desc';}

		if (isset($_REQUEST ['pageCurrent'])) {$pageCurrent = $_REQUEST ['pageCurrent'];}
		if($pageCurrent=='') {$pageCurrent =1;}   
		
       $key=I('keys');
	   if($key){
       $where['title'] = array('like','%'.$key.'%');
	   $where['type'] = array('like','%'.$key.'%');
       $where['mingcheng'] = array('like','%'.$key.'%');
	   $where['dianhua'] = array('like','%'.$key.'%');
       $where['_logic'] = 'or'; }
	   if(IS_POST&&isset($_REQUEST['filter']) && $_REQUEST['filter'] != ''){
		 $map['type'] = array('EQ', I('filter'));
		 $where['_complex'] = $map;
		}
   $numPerPage=10;
   cookie('_currentUrl_', __SELF__);
   $list=$info->where($where)->order("`" . $order . "` " . $sort)->limit($numPerPage)->page($pageCurrent.','.$numPerPage.'')->select();
    $this->assign('list',$list);
    $count = $info->where($where)->count();
	$filters = M("hetong")->distinct('type')->field('type')->select();
    $this->assign('filters',$filters);
    $this->assign('totalCount', $count);
    $this->assign('currentPage', !empty($_GET['pageNum']) ? $_GET['pageNum'] : 1);
    $this->assign('numPerPage', $numPerPage); 
    $this->display();
   }
   
   public function wdtype(){
	$list = M("wendang")->where(array("uid"=>session("uid")))->distinct('type')->field('type')->select();
    $this->assign('list', $list); 
    $this->display(); 
    }
	
   public function txltype(){
	$list = M("wdtxl")->where(array("uid"=>session("uid")))->distinct('type')->field('type')->select();
    $this->assign('list', $list); 
    $this->display(); 
   }
   
   public function sktype(){
	$list = M("shou")->distinct('type')->field('type')->select();
    $this->assign('list', $list); 
    $this->display(); 
   }
   
   public function fktype(){
	$list = M("fukuan")->distinct('type')->field('type')->select();
    $this->assign('list', $list); 
    $this->display(); 
   }
   
   public function fkleixing(){
	$list = M("fukuan")->distinct('leixing')->field('leixing')->select();
    $this->assign('list', $list); 
    $this->display(); 
   }
   
   public function jingban(){
	$list = M("hetong")->distinct('jingban')->field('jingban')->select();
    $this->assign('list', $list); 
    $this->display(); 
   }
   
   public function sjingban(){
	$list = M("shou")->distinct('jingban')->field('jingban')->select();
    $this->assign('list', $list); 
    $this->display(); 
   }
   

	
}