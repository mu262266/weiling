<?php

namespace Home\Controller;

use Think\Controller;
use Think\Upload;

class MemberController extends CommonController
{

    public function _initialize()
    {
        parent::_initialize();
        $this->dbname = 'app_member';
    }


    function _filter(&$map)
    {


    }

    public function _after_list($list)
    {

        foreach ($list as $k => $v) {
            $adminid = $v["adminid"];
            $list[$k]["adminname"] = M("user")->where("id='{$adminid}'")->getField("username");
        }
        return $list;
    }

    public function _befor_index()
    {
//        $data=M("app_member")->where("type=1")->select();
//        foreach ($data as $k=>$v){
//            $aaa[$k]["id"]=$data[$k]["id"];
//            $aaa[$k]["real_name"]=$data[$k]["real_name"];
//        }
//        dump($aaa);
    }


    public function _befor_add()
    {
        $list = orgcateTree($pid = 0, $level = 0, $type = 0);
        $data=M("app_member")->where("type=1")->select();
        foreach ($data as $k=>$v){
            $aaa[$k]["id"]=$data[$k]["id"];
            $aaa[$k]["real_name"]=$data[$k]["real_name"];
        }
        $this->assign('data',$aaa);
        $this->assign('list', $list);
    }

    public function _after_add($id)
    {
        $where["id"] = $id;
        $aa=M("app_member")->where($where)->find();
        $type=$aa["type"];
        if($type==2){
            $bb=$aa["relation"];
            $cc=json_decode($bb);
            dump($cc);
            foreach ($cc as $t){
                $data=array();
                $data["expertid"]=$id;
                $data["doctorid"]=$t;
                $ok=M("doctorrelation")->add($data);

            }
        }else{

        }


    }

    public function _befor_insert($data)
    {
        $phone = $data["telephone"];

        $ok = M("app_member")->where("telephone=$phone")->select();
        if ($ok) {
            $this->mtReturn(404, "手机号重复".$id, $_REQUEST['navTabId'], false);
        } else {
            $asd=$data["relation"];
            $data["relation"]=json_encode($asd);
            $file = $_FILES;
            $password = md5(md5(I('user_password')));
            $data['user_password'] = $password;
            $data["time"] = time();
            if ($data["sex"] == 0) {
                $data["sex"] = "男";
            }
            if ($data["sex"] == 1) {
                $data["sex"] = "女";
            }
            $logintime = time();
            $token = md5(md5(['user_account'] . ['password'] . $logintime));
            $data["token"] = $token;

            if ($file) {
                $upload = new \Think\Upload();
                $info = $upload->upload();

                if ($info) {
                    $date = date("Y-m-d");
                    $data["headimg"] = "/" . $date . "/" . $info["headimg"]["savename"];

                } else {
                    $this->mtReturn(404, "文件未上传成功" . $id, $_REQUEST['navTabId'], false);
                }
            }

//
//            if($data["type"]==2){
//                $data1["img"]=$data["headimg"];
//                if ($data["sex"] =="男" ) {
//                    $data1["sex"] = 0;
//                }
//                if ($data["sex"] =="女" ) {
//                    $data1["sex"] = 1;
//                }
//                $data1["textprice"]=$data["textprice"];
//                $data1["phoneprice"]=$data["phoneprice"];
//                $data1["videoprice"]=$data["videoprice"];
//                $data1["start_hour"]=$data["start_hour"];
//                $data1["end_hour"]=$data["end_hour"];
//                $data1["position"]=$data["position"];
//                $data1["introduction"]=$data["introduction"];
//                $data1["content"]=$data["content"];
//                $data1["age"]=$data["age"];
//                $data1["hospital"]=$data["hospital"];
//                $data1["name"]=$data["real_name"];
//                $aa=M("expert")->add($data1);
//                dump($data1);
//            }
            return $data;


        }
    }






    public function _befor_edit()
    {
        $list = orgcateTree($pid = 0, $level = 0, $type = 0);
        $this->assign('list', $list);
    }

    public function _befor_update($data)
    {
        $file = $_FILES;
        if ($file) {
            $upload = new \Think\Upload();
            $info = $upload->upload();

            if ($info) {
                $date = date("Y-m-d");
                $data["headimg"] = "/" . $date . "/" . $info["headimg"]["savename"];
                return $data;
            } else {
                $this->mtReturn(404, "文件未上传成功" . $id, $_REQUEST['navTabId'], false);
            }
        }


    }


    public function editrule()
    {
        $uid = I('get.id');
        //if ($uid<>session('uid')){
        M('auth_group_access')->where('uid=' . $uid . '')->delete();
        $gcdata['uid'] = $uid;
        $gcdata['group_id'] = M('auth_group')->where(array("title" => I('get.depname')))->getField('id');
        M('auth_group_access')->data($gcdata)->add();
        $gcdata['group_id'] = M('auth_group')->where(array("title" => I('get.posname')))->getField('id');
        M('auth_group_access')->data($gcdata)->add();
        $this->mtReturn(200, "设置成功" . $id, $_REQUEST['navTabId'], false);
        //}
    }

    public function del($id)
    {
        $id = D($this->dbname)->where(array("id" => $id))->delete();

        if ($id) {
            $this->mtReturn(200, '清理成功', $_REQUEST['navTabId'], false);
        } else {
            $this->mtReturn(404, '清理失败', $_REQUEST['navTabId'], false);

        }
    }

}