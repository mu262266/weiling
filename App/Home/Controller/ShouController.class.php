<?php

/**
 *      收款记录控制器
 *      [X-Mis] (C)2007-2099  
 *      This is NOT a freeware, use is subject to license terms
 *      http://www.xinyou88.com
 *      tel:400-000-9981
 *      qq:16129825
 */

namespace Home\Controller;
use Think\Controller;

class ShouController extends CommonController{

   public function _initialize() {
        parent::_initialize();
        $this->dbname = CONTROLLER_NAME;
    }
	
   function _filter(&$map) {
	   if(!in_array(session('uid'),C('ADMINISTRATOR'))){
		   
	   }
	   
	   if(isset($_REQUEST['type']) && $_REQUEST['type'] != ''){$map['type'] =array('EQ', urldecode(I('type'))); }
       if(isset($_REQUEST['time1']) && $_REQUEST['time1'] != ''&&isset($_REQUEST['time2']) && $_REQUEST['time2'] != ''){$map['addtime'] =array(array('egt',I('time1').' 00:00:00'),array('elt',I('time2').' 59:59:59'));}
       if(isset($_REQUEST['jingban']) && $_REQUEST['jingban'] != ''){$map['jingban'] =array('EQ', urldecode(I('jingban'))); }
	}
	
   public function _befor_index(){ 
     $typelist =  M($this->dbname)->where(array('type'=>array('neq','')))->distinct('type')->field('type')->select();
 $this->assign('typelist', $typelist); $jingbanlist =  M($this->dbname)->where(array('jingban'=>array('neq','')))->distinct('jingban')->field('jingban')->select();
 $this->assign('jingbanlist', $jingbanlist); 
   }
  
  
  public function _befor_add(){
	  $attid=time();
	  $this->assign('attid',$attid);
    
  }
  
  public function _befor_insert($data){
	  $data['shenhe']='等待审核';
	  return $data;

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
     $hid=M('shou')->where('id='.$id)->getField('hid');
	 $jine=M('shou')->where('id='.$id)->getField('jine');
	 M("hetong")->where('id='.$hid)->setDec('yishou',$jine);
	 M("hetong")->where('id='.$hid)->setInc('weishou',$jine);
	 M('shenhe')->where(array('xid'=>$id,'type'=>CONTROLLER_NAME))->delete();
   }
   
    public function _after_del(){
     M($this->dbname)->where('shenhe<>"审核通过"')->delete(); 
   }

   public function outxls() {
		$model = D($this->dbname);
		$map = $this->_search();
		if (method_exists($this, '_filter')) {
			$this->_filter($map);
		}
		$list = $model->where($map)->field('id,hid,title,bianhao,type,jine,jingban,beizhu')->select();
	    $headArr=array('ID','合同ID','合同名称','合同编号','收款类型','收款金额','经办人','备注');
	    $filename='收款记录';
		$this->xlsout($filename,$headArr,$list);
	}
	
	public function dshenhe(){
		$model = D($this->dbname);
		$map = $this->_search();
		if (method_exists($this, '_filter')) {
			$this->_filter($map);
		}
		$map['shenhe']  =  array('neq','审核通过');
		$list = $model->where($map)->select();
	    $this->assign('list', $list);
		$this->display('index');
	}
	
	public function shenhe(){
	 if(IS_POST){
	   $upda["id"]=I("xid");
	   $upda["shenhe"]=I("title");
	   $upda["shenheren"]=session('truename');
	   D($this->dbname)->save($upda);
	    $data["type"]=$this->dbname;
		$data["title"]=I("title");
		$data["content"]=I("content");
		$data['uid']=session('uid');
        $data['uname'] = session('truename');
        $data['addtime'] = date("Y-m-d H:i:s",time());
		$data["xid"]=I("xid");
	    M("shenhe")->add($data);
		if($_POST['title']=="审核通过"){
		   $hid=M('shou')->where('id='.I("xid"))->getField('hid');
	       $jine=M('shou')->where('id='.I("xid"))->getField('jine');
	       M("hetong")->where('id='.$hid)->setInc('yishou',$jine);
		   M("hetong")->where('id='.$hid)->setDec('weishou',$jine);
		$this->mtReturn(200,"审核结果".$_POST['title'],$_REQUEST['navTabId'],true);		
	   }
	     $this->mtReturn(200,"审核结果".$_POST['title'],$_REQUEST['navTabId'],true);
	 }
	 $xid=I("get.id");
	 $shenhe=M($this->dbname)->where(array("id"=>I("get.id")))->getField('shenhe');
	 $list=M('shenhe')->where(array("xid"=>$xid,'type'=>$this->dbname))->select();
	 $this->assign('xid',$xid);
	 $this->assign('shenhe',$shenhe);
	 $this->assign('list',$list); 
	 $this->display();

   }
	

}