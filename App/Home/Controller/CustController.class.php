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

class CustController extends CommonController{

   public function _initialize() {
        parent::_initialize();
        $this->dbname = CONTROLLER_NAME;
    }
	
   function _filter(&$map) {
	   if(!in_array(session('uid'),C('ADMINISTRATOR'))){
	   $map[]=array("uid"=>array('EQ', session("uid")),"juid"=>array('like','%'.session("uid").'%'),"_logic"=>"or");
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
	   M('custcon')->where(array('cid'=>$id))->delete(); 
 M('custgd')->where(array('cid'=>$id))->delete(); 
 
   }

   public function outxls() {
		$model = D($this->dbname);
		$map = $this->_search();
		if (method_exists($this, '_filter')) {
			$this->_filter($map);
		}
		$list = $model->where($map)->field('id,xuqiu,title,name,dianhua,dizhi,qq,email,laiyuan,jinzhan,xiaci,aihao,juid,juname,beizhu')->select();
	    $headArr=array('ID','需求类型','客户名称','联系人','手机号码','联系地址','QQ','电子邮箱','客户来源','进展','下次联系','兴趣爱好','JUID','分享给','备注');
	    $filename='客户管理';
		$this->xlsout($filename,$headArr,$list);
	}
	
	    public function daoqi() {
		$model = D($this->dbname);
		$map = $this->_search();
		if (method_exists($this, '_filter')) {
			$this->_filter($map);
		}
		$map['xiaci']  =  array(array('egt',date("Y-m-d",strtotime("-1 week"))),array('elt',date("Y-m-d",strtotime("+1 month"))));
		$list = $model->where($map)->select();
	    $this->assign('list', $list);
		$this->display();
	}
	
	public function cheng() {
		$model = D($this->dbname);
		$map = $this->_search();
		if (method_exists($this, '_filter')) {
			$this->_filter($map);
		}
		$map['jinzhan']  =  '成交客户';
		$list = $model->where($map)->select();
	    $this->assign('list', $list);
		$this->display('index');
	}
	

}