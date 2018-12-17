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

class HetongController extends CommonController{

   public function _initialize() {
        parent::_initialize();
        $this->dbname = CONTROLLER_NAME;
    }
	
   function _filter(&$map) {
	   if(!in_array(session('uid'),C('ADMINISTRATOR'))){
		 $map[]=array("uid"=>array('EQ', session("uid")),"juid"=>array('like','%'.session("uid").'%'),"_logic"=>"or");
	   }
	   if(isset($_REQUEST['time1']) && $_REQUEST['time1'] != ''&&isset($_REQUEST['time2']) && $_REQUEST['time2'] != ''){$map['addtime'] =array(array('egt',I('time1').' 00:00:00'),array('elt',I('time2').' 59:59:59'));}

	   if(isset($_REQUEST['type']) && $_REQUEST['type'] != ''){$map['type'] =array('EQ', urldecode(I('type'))); }
if(isset($_REQUEST['jingban']) && $_REQUEST['jingban'] != ''){$map['jingban'] =array('EQ', urldecode(I('jingban'))); }


	}
	
   public function _befor_index(){ 
     $typelist =  M($this->dbname)->where(array('type'=>array('neq','')))->distinct('type')->field('type')->select();
     $this->assign('typelist', $typelist); $jingbanlist =  M($this->dbname)->where(array('jingban'=>array('neq','')))->distinct('jingban')->field('jingban')->select();
     $this->assign('jingbanlist', $jingbanlist);
       
		$map = $this->_search();
		if (method_exists($this, '_filter')) {
			$this->_filter($map);
		}
		$jine =M($this->dbname)->where($map)->sum('jine');
        $yishou =M($this->dbname)->where($map)->sum('yishou');
		$weishou =M($this->dbname)->where($map)->sum('weishou');
		$kaipiao =M($this->dbname)->where($map)->sum('kaipiao');
		$yifu =M($this->dbname)->where($map)->sum('yifu');
        $this->assign('jine', $jine);	
        $this->assign('yishou', $yishou);
        $this->assign('weishou', $weishou);
        $this->assign('kaipiao', $kaipiao);	
        $this->assign('yifu', $yifu);		
   }
  
  
  public function _befor_add(){
	  $attid=time();
	  $this->assign('attid',$attid);
	  $this->assign('bianhao',C('BIANHAO_AUTO'));
    
  }
  
  public function _befor_insert($data){
    
	if(C('BIANHAO_AUTO')=='自动编号'){
	 unset($data['bianhao']);
     $data['bianhao'] = $this->noid(C('BIANHAO_NUM'),C('BIANHAO_GUIZE'));		
	}	
 
	  $data['shenhe']='等待审核';
	  $data['weishou']=I('jine');
	  return $data;
  }
	
   public function _after_add($id){
	$bianhao=M($this->dbname)->where(array("id"=>$id))->getField('bianhao');
    foreach ($_POST['xbianhao'] as $keys=>$v) {
		 $xdata[]=array(    
		                    'bianhao'=>$_POST['xbianhao'][$keys],
							'title'=>$_POST['xtitle'][$keys],
							'bianhao'=>$_POST['xbianhao'][$keys],
							'fenlei'=>$_POST['xfenlei'][$keys],
							'type'=>$_POST['xtype'][$keys],
							'xjiage'=>$_POST['xjiage'][$keys],
							'shuliang'=>$_POST['xshuliang'][$keys],
							'xiaoji'=>$_POST['xiaoji'][$keys],
							'danwei'=>$_POST['xdanwei'][$keys],
							'beizhu'=>$_POST['xbeizhu'][$keys],
							'number'=>$bianhao,
							'shenhe'=>'等待审核',
							'hid'=>$id
                          );
						$xiaoji+=$xdata[$keys]['xiaoji']; 
						D('hetongs')->add($xdata[$keys]);	
						  
	 }
	  $data['id']=$id;
	  $data['jine']=$xiaoji;
	  $data['weishou']=$xiaoji;
	  M($this->dbname)->save($data);
   }


  
  public function _befor_edit(){
     $model = D($this->dbname);
	 $info = $model->find(I('get.id'));
	 $attid=$info['attid'];
	 $this->assign('attid',$attid);
	 $edata['edit']=0;
     M("hetongs")->where(array("hid"=>I("id")))->save($edata);
  }
   
  public function _befor_update($data){

  }
  
   public function _after_edit($id){
     $id=I('post.id');
	 $bianhao=M($this->dbname)->where(array("id"=>$id))->getField('bianhao');
     foreach ($_POST['xbianhao'] as $keys=>$v) {
		 $xdata[]=array(    
		                    'id'=>$_POST['mid'][$keys],
		                    'bianhao'=>$_POST['xbianhao'][$keys],
							'title'=>$_POST['xtitle'][$keys],
							'bianhao'=>$_POST['xbianhao'][$keys],
							'fenlei'=>$_POST['xfenlei'][$keys],
							'type'=>$_POST['xtype'][$keys],
							'shuliang'=>$_POST['xshuliang'][$keys],
							'xjiage'=>$_POST['xjiage'][$keys],
							'danwei'=>$_POST['xdanwei'][$keys],
							'xiaoji'=>$_POST['xiaoji'][$keys],
							'beizhu'=>$_POST['xbeizhu'][$keys],
							'shenhe'=>'等待审核',
							'number'=>$bianhao,
							'hid'=>$id,
							'edit'=>1,	 
                          );
						$xiaoji+=$xdata[$keys]['xiaoji']; 
						$count=M("hetongs")->where(array('id'=>$_POST['mid'][$keys]))->count();
					    if ($count>0){
					    D('hetongs')->save($xdata[$keys]);  
					    }else{
					    D('hetongs')->add($xdata[$keys]);   
					    }
						  
	 }
	D('hetongs')->where(array("edit"=>0,'hid'=>$id))->delete();
	if($id!==""){
	  $data['id']=$id;
	  $data['jine']=$xiaoji;
	  $data['weishou']=$xiaoji;
	  M($this->dbname)->save($data);
	}
	
   }

   public function _befor_view($id){
	   
   }
   
   public function _befor_del($id){
	 M('hetongs')->where(array('hid'=>$id))->delete();
     M('shenhe')->where(array('xid'=>$id,'type'=>CONTROLLER_NAME))->delete(); 
   }
 
   public function _after_del(){
	 M($this->dbname)->where(array('shenhe'=>'等待审核'))->delete(); 
   }
  
   
   public function outxls() {
		$model = D($this->dbname);
		$map = $this->_search();
		if (method_exists($this, '_filter')) {
			$this->_filter($map);
		}
		$list = $model->where($map)->field('id,type,bianhao,mingcheng,cid,title,name,dianhua,jine,yishou,weishou,kaipiao,yifu,jingban,juid,juname,jztime,xufei,beizhu,content,shenhe')->select();
	    $headArr=array('ID','合同类型','合同编号','合同名称','客户ID','客户名称','联系人','联系电话','合同金额','已收款','未收款','已开票','已付款','经办人','分享给','分享给','截至日期','续费','备注说明','合同内容','审核状态');
	    $filename='合同管理';
		$this->xlsout($filename,$headArr,$list);
	}
	
	public function fenxi(){
	 $this->display();
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
		   M('hetongs')->where(array("hid"=>I("xid")))->setField('shenhe','审核通过');
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

    public function daoqi() {
		$model = D($this->dbname);
		$map = $this->_search();
		if (method_exists($this, '_filter')) {
			$this->_filter($map);
		}
		$map['jztime']  =  array(array('egt',date("Y-m-d",strtotime("-1 week"))),array('elt',date("Y-m-d",strtotime("+1 month"))));
		$list = $model->where($map)->select();
	    $this->assign('list', $list);
		$this->display('index');
	}

}