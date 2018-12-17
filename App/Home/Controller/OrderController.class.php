<?php
/**
 * 订单管理
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/11/15
 * Time: 14:24
 */

namespace Home\Controller;


class OrderController extends CommonController
{
    public function _initialize() {
        parent::_initialize();
        $this->dbname = CONTROLLER_NAME;
    }


    function _filter(&$map) {

        if($_REQUEST["id"]){
            $map["oid"] = $oid;
        }

    }

    public function  _after_list($volist){


        foreach ($volist as $k=>$v){
            $address=$volist[$k]["address_id"];
            $volist[$k]["area"]=M("address")->where("id=$address")->getField("area");
            $volist[$k]["address"]=M("address")->where("id=$address")->getField("address");
        }

        return $volist;

    }

    public function commodity($id){

        $list=M("commodity")->where("numbering=$id")->select();

        $this->assign('list',$list);
        $this->display();

    }


    public function update($id){
        $payment_status=2;
        $id=M("order")->where("id={$id}")->setField("payment_status",$payment_status);
        if($id){
            $this->mtReturn(200,"修改成功",$_REQUEST['navTabId'],false);
        }else{
            $this->mtReturn(400,"修改失败",$_REQUEST['navTabId'],false);
        }
    }
    public function pay($id){
        $payment_status=1;
        $id=M("order")->where("id={$id}")->setField("payment_status",$payment_status);
        if($id){
            $this->mtReturn(200,"修改成功",$_REQUEST['navTabId'],false);
        }else{
            $this->mtReturn(200,"添加失败",$_REQUEST['navTabId'],false);
        }
    }
    public function send($id){
        $send_status=1;
        $id=M("order")->where("id={$id}")->setField("send_status",$send_status);
        if($id){
            $this->mtReturn(200,"发货成功",$_REQUEST['navTabId'],false);
        }else{
            $this->mtReturn(200,"发货失败",$_REQUEST['navTabId'],false);
        }
    }
    public function back($id){
        /*还需要修改*/
        $back_status=1;
        $id=M("order")->where("id={$id}")->setField("back_status",$back_status);
        if($id){
            $this->mtReturn(200,"退款申请已提交",$_REQUEST['navTabId'],false);
        }else{
            $this->mtReturn(200,"退款失败",$_REQUEST['navTabId'],false);
        }
    }
}