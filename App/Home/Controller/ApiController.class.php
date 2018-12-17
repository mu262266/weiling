<?php

namespace Home\Controller;

use Think\Controller;

class ApiController extends Controller
{


    //验证登录
    function login()
    {
        $username = $_REQUEST["username"];
        $password = $_REQUEST["password"];
        if (empty($username) || empty($password)) {
            $output = array('data' => array(), 'info' => '请输入用户名密码', 'code' => '400');
            exit(json_encode($output));
        }
        $where1["user_account"] = $username;
        $where1["user_password"] = md5(md5($password));
        $user = M("app_member")->where($where1)->select();
        $where2["telephone"] = $username;
        $where2["user_password"] = md5(md5($password));
        $uuser = M("app_member")->where($where2)->select();
        if ($user == "" && $uuser == "") {
            $output = array('data' => array(), 'info' => '账号或密码输入错误', 'code' => '401');
            exit(json_encode($output));
        }
        //$logintime = time();

        //$token = md5(md5(['user_account'] . $user['password'] . $logintime));

        //$data["token"] = $token;
        //$check1 = M("app_member")->where($where1)->save($data);
        //$check2 = M("app_member")->where($where2)->save($data);
//      if ($check1 || $check2) {
        $user2 = M("app_member")->where($where1)->find();
        $user3 = M("app_member")->where($where2)->find();
        unset($user2["password"]);
        unset($user2["hospital_rule"]);
        unset($user2["report_rule"]);
        unset($user2["price_rule"]);
        unset($user2["medicine_rule"]);
        unset($user3["password"]);
        unset($user3["hospital_rule"]);
        unset($user3["report_rule"]);
        unset($user3["price_rule"]);
        unset($user3["medicine_rule"]);


        $user2["birth"] = date("Y-m-d", $user2["birth"]);
        $user3["birth"] = date("Y-m-d", $user2["birth"]);
        $tmp1 = $user2["headimg"];
        $tmp2 = $user3["headimg"];
        $user2["headimg"] = __PATH__ . $tmp1;
        $user3["headimg"] = __PATH__ . $tmp2;

        if ($user2["type"] == 1) {
            $output = array('data' => $user2, 'info' => '登录成功', 'code' => '200');
            exit(json_encode($output));
        }

        if ($user3["type"] == 1) {
            $output = array('data' => $user3, 'info' => '登录成功', 'code' => '200');
            exit(json_encode($output));
        }

        if ($user2["type"] == 2 && $user3["type"] == 2) {
            $output = array('data' => array(), 'info' => '登录失败', 'code' => '400');
            exit(json_encode($output));
        }
        if ($user2["type"] == 3 && $user3["type"] == 3) {
            $output = array('data' => array(), 'info' => '登录失败', 'code' => '400');
            exit(json_encode($output));
        }
        if ($user2["type"] == 4 && $user3["type"] == 4) {
            $output = array('data' => array(), 'info' => '登录失败', 'code' => '400');
            exit(json_encode($output));
        }


//      } else {
//          $output = array('data' => $user, 'info' => '登录失败', 'code' => '400');
//          exit(json_encode($output));
//      }
    }

    //专家端验证登录
    function expertside_login()
    {

        $username = $_REQUEST["username"];
        $password = $_REQUEST["password"];
        if (empty($username) || empty($password)) {
            $output = array('data' => array(), 'info' => '请输入用户名密码', 'code' => '400');
            exit(json_encode($output));
        }
        $where1["user_account"] = $username;
        $where1["user_password"] = md5(md5($password));
        $user = M("app_member")->where($where1)->select();
        $where2["telephone"] = $username;
        $where2["user_password"] = md5(md5($password));
        $uuser = M("app_member")->where($where2)->select();
        if ($user == "" && $uuser == "") {
            $output = array('data' => array(), 'info' => '账号或密码输入错误', 'code' => '401');
            exit(json_encode($output));
        }
        //$logintime = time();

        // $token = md5(md5(['user_account'] . $user['password'] . $logintime));

        //$data["token"] = $token;
        //$check1 = M("app_member")->where($where1)->save($data);
        //$check2 = M("app_member")->where($where2)->save($data);
//      if ($check1 || $check2) {
        $user2 = M("app_member")->where($where1)->find();
        $user3 = M("app_member")->where($where2)->find();
        unset($user2["password"]);
        unset($user2["hospital_rule"]);
        unset($user2["report_rule"]);
        unset($user2["price_rule"]);
        unset($user2["medicine_rule"]);
        unset($user3["password"]);
        unset($user3["hospital_rule"]);
        unset($user3["report_rule"]);
        unset($user3["price_rule"]);
        unset($user3["medicine_rule"]);

        $user2["birth"] = date("Y-m-d", $user2["birth"]);
        $user3["birth"] = date("Y-m-d", $user2["birth"]);
        $tmp1 = $user2["headimg"];
        $tmp2 = $user3["headimg"];
        $user2["headimg"] = __PATH__ . $tmp1;
        $user3["headimg"] = __PATH__ . $tmp2;
        $id1 = $user2["id"];
        $id2 = $user3["id"];
        if ($id1) {
            $expert1 = M("expert")->where("app_id=$id1")->select();
            foreach ($expert1 as $exp1) {
                $user2["introduction"] = $exp1["introduction"];
                $did1 = $exp1["did"];
                $dname1 = M("department")->where("id=$did1")->getField("name");
                $user2["doctortype"] = $dname1;
            }
            $data = array();
            $data["id"] = $user2["id"];
            $data["idcard"] = $user2["idcard"];
            $data["real_name"] = $user2["real_name"];
            $data["telephone"] = $user2["telephone"];
            $data["headimg"] = $user2["headimg"];
            $data["mail"] = $user2["mail"];
            $data["birth"] = $user2["birth"];
            $data["area"] = $user2["area"];
            $data["aptitude"] = $user2["aptitude"];
            $data["type"] = $user2["type"];
            $data["token"] = $user2["token"];
            $data["expertid"] = $user2["expertid"];
            $data["money"] = $user2["money"];
            $data["introduction"] = $user2["introduction"];
            $data["doctortype"] = $user2["doctortype"];
            $data["sex"] = $user2["sex"];
            $data["user_account"] = $user2["user_account"];
        }
        if ($id2) {
            $expert2 = M("expert")->where("app_id=$id2")->select();
            foreach ($expert2 as $exp2) {
                $user3["introduction"] = $exp2["introduction"];
                $did2 = $exp2["did"];
                $dname2 = M("department")->where("id=$did2")->getField("name");
                $user3["doctortype"] = $dname2;
            }
            $data1 = array();
            $data1["id"] = $user3["id"];
            $data1["idcard"] = $user3["idcard"];
            $data1["real_name"] = $user3["real_name"];
            $data1["telephone"] = $user3["telephone"];
            $data1["headimg"] = $user3["headimg"];
            $data1["mail"] = $user3["mail"];
            $data1["birth"] = $user3["birth"];
            $data1["area"] = $user3["area"];
            $data1["aptitude"] = $user3["aptitude"];
            $data1["type"] = $user3["type"];
            $data1["token"] = $user3["token"];
            $data1["expertid"] = $user3["expertid"];
            $data1["money"] = $user3["money"];
            $data1["introduction"] = $user3["introduction"];
            $data1["doctortype"] = $user3["doctortype"];
            $data1["sex"] = $user3["sex"];
            $data1["user_account"] = $user3["user_account"];
        }

        if ($user2["type"] == 2) {
            $output = array('data' => $data, 'info' => '登录成功', 'code' => '200');
            exit(json_encode($output));
        }
        if ($user3["type"] == 2) {
            $output = array('data' => $data1, 'info' => '登录成功', 'code' => '200');
            exit(json_encode($output));
        }
        if ($user2["type"] == 1 && $user3["type"] == 1) {
            $output = array('data' => array(), 'info' => '登录失败', 'code' => '400');
            exit(json_encode($output));
        }
        if ($user2["type"] == 3 && $user3["type"] == 3) {
            $output = array('data' => array(), 'info' => '登录失败', 'code' => '400');
            exit(json_encode($output));
        }
        if ($user2["type"] == 4 && $user3["type"] == 4) {
            $output = array('data' => array(), 'info' => '登录失败', 'code' => '400');
            exit(json_encode($output));
        }

//      } else {
//          $output = array('data' => $user, 'info' => '登录失败', 'code' => '400');
//          exit(json_encode($output));
//      }
    }

    //发送短信
    function msg_send()
    {

        $mobile = $_REQUEST["mobile"];

        if (empty($mobile)) {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '400');
            exit(json_encode($output));
        }
        $code = rand(100000, 999999);

        $time = time();
        $data["mobile"] = $mobile;
        $data["code"] = $code;
        $data["sendtime"] = $time;
        $id = M("mobilecode")->add($data);
        if ($id) {
            $content = '【威灵】您的验证码是' . $code . '，请尽快认证！';
            $flag = sendsms($mobile, $content);
            if (strpos($flag, "Faild") == true) {
                $output = array('data' => $data, 'info' => '短信发送失败', 'code' => '401');
                exit(json_encode($output));
            } else {
                $output = array('data' => $data, 'info' => '短信发送成功', 'code' => '200');
                exit(json_encode($output));
            }
        } else {
            $output = array('data' => $data, 'info' => '短信发送失败', 'code' => '401');
            exit(json_encode($output));
        }
    }

    //修改密码
    function password_change($token = "", $mobile = "", $code = "", $password = "")
    {

        if ($token == "" || $password == "" || $mobile == "" || $code == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }
        $data["user_password"] = md5(md5($password));
        $where["mobile"] = $mobile;
        $where["code"] = $code;
        $ok = M("mobilecode")->where($where)->find();
        if ($ok) {
            $ok1 = M("app_member")->where(array("token" => $token))->save($data);

            if ($ok1) {
                $output = array('data' => array(), 'info' => '修改成功', 'code' => '200');
                exit(json_encode($output));
            } else {
                $output = array('data' => array(), 'info' => 'token验证失败', 'code' => '400');
                exit(json_encode($output));
            }
        } else {
            $output = array('data' => array(), 'info' => '验证失败', 'code' => '400');
            exit(json_encode($output));
        }

    }

    //忘记密码
    function password_forget($mobile = "", $code = "", $password = "")
    {
        if ($password == "" || $mobile == "" || $code == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }
        $data["user_password"] = md5(md5($password));
        $where["mobile"] = $mobile;
        $where["code"] = $code;
        $ok = M("mobilecode")->where($where)->find();
        if ($ok) {
            $ok1 = M("app_member")->where("telephone=$mobile")->save($data);

            if ($ok1) {
                $output = array('data' => array(), 'info' => '修改成功', 'code' => '200');
                exit(json_encode($output));
            } else {
                $output = array('data' => array(), 'info' => '验证失败', 'code' => '400');
                exit(json_encode($output));
            }
        } else {
            $output = array('data' => array(), 'info' => '验证失败', 'code' => '400');
            exit(json_encode($output));
        }
    }

    //修改个人资料
    function datum_change($token = "", $headimg = "", $name = "", $birth = "", $sex = "", $mail = "", $type = "")
    {
        if ($token == "" || $type == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }

        if ($type == 1) {
            if ($headimg != "") {
                $data["headimg"] = $headimg;
            }

            if ($name != "") {
                $data["real_name"] = $name;
            }
            if ($birth != "") {
                $data["birth"] = strtotime($birth);
            }
            if ($sex != "") {
                $data["sex"] = $sex;
            }
            if ($mail != "") {
                $data["mail"] = $mail;
            }

            $where["token"] = $token;
            $list = M("app_member")->where($where)->save($data);

            if ($list) {
                $user = M("app_member")->where($where)->find();
                $head = $user["headimg"];
                $user["birth"] = date("Y-m-d", $user["birth"]);
                $user["headimg"] = __PATH__ . $head;
                unset($user["password"]);
                unset($user["hospital_rule"]);
                unset($user["report_rule"]);
                unset($user["price_rule"]);
                unset($user["medicine_rule"]);
                $output = array('data' => $user, 'info' => '修改成功', 'code' => '200');
                exit(json_encode($output));
            } else {
                $output = array('data' => array(), 'info' => '修改失败', 'code' => '400');
                exit(json_encode($output));
            }

        }
        if ($type == 2) {
            if ($headimg != "") {
                $data["headimg"] = $headimg;
                $data1["img"] = $headimg;
            }

            if ($name != "") {
                $data["real_name"] = $name;
                $data1["name"] = $name;
            }
            if ($birth != "") {
                $data["birth"] = strtotime($birth);
            }
            if ($sex != "") {
                $data["sex"] = $sex;
                $data1["sex"] = $sex;
            }
            if ($mail != "") {
                $data["mail"] = $mail;
            }

            $where["token"] = $token;
            $uid = getuid($token);
            $list = M("app_member")->where($where)->save($data);
            $list1 = M("expert")->where("app_id=$uid")->save($data1);
            if ($list) {
                $user = M("app_member")->where($where)->find();
                $id = $user["id"];
                $expert = M("expert")->where("app_id=$id")->select();
                foreach ($expert as $exp) {
                    $user["introduction"] = $exp["introduction"];
                    $did = $exp["did"];
                    $dname = M("department")->where("id=$did")->getField("name");
                    $user["doctortype"] = $dname;
                }
                $head = $user["headimg"];
                $user["birth"] = date("Y-m-d", $user["birth"]);
                $user["headimg"] = __PATH__ . $head;
                unset($user["password"]);
                unset($user["hospital_rule"]);
                unset($user["report_rule"]);
                unset($user["price_rule"]);
                unset($user["medicine_rule"]);
                $output = array('data' => $user, 'info' => '修改成功', 'code' => '200');
                exit(json_encode($output));
            } else {
                $output = array('data' => array(), 'info' => '修改失败', 'code' => '400');
                exit(json_encode($output));
            }

        }

    }

    //首页轮播
    function banner()
    {
        $list = M("picture")->where("status=1")->select();
        if ($list) {
            foreach ($list as $k => $v) {
                $tmp = $v["img"];
                $list[$k]["img"] = __PATH__ . $tmp;
                unset($list[$k]["name"]);
                unset($list[$k]["status"]);
            }
            $output = array('data' => $list, 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));
        } else {
            $output = array('data' => array(), 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));
        }
    }

    //地址增加
    function address_add($token = "", $name = "", $mobile = "", $area = "", $address = "", $isDefault = "")
    {
        if ($token == "" || $name == "" || $mobile == "" || $area == "" || $address == "" || $isDefault == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }
        $where["token"] = $token;
        $uid = M("app_member")->where($where)->getField("id");
        $data["uid"] = $uid;
        $data["name"] = $name;
        $data["mobile"] = $mobile;
        $data["area"] = $area;
        $data["address"] = $address;
        $data["isDefault"] = $isDefault;
        if ($isDefault == 1) {
            $change_default["isDefault"] = 0;
            M("address")->where(array("uid" => $uid, "isDefault" => 1))->save($change_default);
        }

        $id = M("address")->add($data);

        if ($id) {
            $output = array('data' => array(), 'info' => '添加成功', 'code' => '200');
            exit(json_encode($output));
        } else {
            $output = array('data' => array(), 'info' => '添加失败', 'code' => '400');
            exit(json_encode($output));
        }
    }

    //地址列表
    function address_list($token = "")
    {

        if ($token == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }

        $uid = getuid($token);
        $list = M("address")->where(array("uid" => $uid))->select();

        foreach ($list as $k => $v) {
            unset($list[$k]["uid"]);
            $list[$k]["isDefault"] = $list[$k]["isdefault"];
            unset($list[$k]["isdefault"]);
        }

        if ($list) {
            $output = array('data' => $list, 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));
        } else {
            $output = array('data' => array(), 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));
        }
    }

    //地址修改
    function address_change($id = "", $token = "", $name = "", $mobile = "", $area = "", $address = "", $isDefault = "")
    {

        if ($token == "" || $id == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }
        $uid = getuid($token);
        if ($name != "") {
            $data["name"] = $name;
        }
        if ($mobile != "") {
            $data["mobile"] = $mobile;
        }
        if ($area != "") {
            $data["area"] = $area;
        }
        if ($address != "") {
            $data["address"] = $address;
        }
        if ($isDefault != "") {
            $data["isDefault"] = $isDefault;
            if ($isDefault == 1) {
                $change_default["isDefault"] = 0;
                M("address")->where(array("uid" => $uid, "isDefault" => 1))->save($change_default);
            }

        }

        $where["token"] = $token;
        $data["uid"] = $uid;
        M("address")->where(array("id" => $id))->save($data);

        $output = array('data' => array(), 'info' => '修改成功', 'code' => '200');
        exit(json_encode($output));


    }


    //地址删除
    function address_del($token = "", $id = "")
    {
        if ($token == "" || $id == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }
        $list = M("address")->where(array("id" => $id))->delete();
        if ($list) {
            $output = array('data' => array(), 'info' => '删除成功', 'code' => '200');
            exit(json_encode($output));
        } else {
            $output = array('data' => array(), 'info' => '删除失败', 'code' => '400');
            exit(json_encode($output));
        }
    }

    //地址默认
    function address_default($token = "", $id = "")
    {
        if ($token == "" || $id == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }
        $uid = getuid($token);
        $data["isDefault"] = 0;
        M("address")->where(array("uid" => $uid, "isDefault" => 1))->save($data);
        $data2["isDefault"] = 1;
        $list = M("address")->where(array("id" => $id))->save($data2);

        if ($list) {
            $output = array('data' => array(), 'info' => '默认设置成功', 'code' => '200');
            exit(json_encode($output));
        } else {
            $output = array('data' => array(), 'info' => '默认设置失败', 'code' => '400');
            exit(json_encode($output));
        }
    }

    //药品一级分类
    function medicinetype_one()
    {
        $list = M("Mtype")->where("level=0")->field("id,name")->order("sort")->select();
        if ($list) {
            $output = array('data' => $list, 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));
        } else {
            $output = array('data' => array(), 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));
        }

    }

    //药品二级分类
    function medicinetype_two($pid = "")
    {

        if ($pid == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }

        $list = M("Mtype")->where("pid={$pid}")->field("id,name,img")->select();

        foreach ($list as $k => $v) {
            $img = __PATH__ . $list[$k]["img"];
            $list[$k]["img"] = $img;
        }

        if ($list) {
            $output = array('data' => $list, 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));
        } else {
            $output = array('data' => array(), 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));
        }

    }

    //药品列表
    function medicine_list($pid = "", $token = "", $field = "", $type = "")
    {
        if ($pid == "" || $token == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }
        $sql = M("medicine");
        $uid = getuid($token);
        $where["app_id"] = array("like", "%$uid%");
        $where["typeid"] = $pid;
        if ($field) {
            $where["name"] = array("like", "%$field%");
        }
        $sql = $sql->where($where);
        if ($type == 1) {
            $sql = $sql->order("count ASC");
        }
        if ($type == 2) {
            $sql = $sql->order("count DESC");
        }
        if ($type == 3) {
            $sql = $sql->order("price ASC");
        }
        if ($type == 4) {
            $sql = $sql->order("count DESC");
        }
        $list = $sql->select();
        foreach ($list as $k => $v) {
            $img = __PATH__ . $list[$k]["img"];
            $list[$k]["img"] = $img;
            $time2 = $list[$k]["start_time"];
            $time3 = $list[$k]["end_time"];
            $list[$k]["start_time"] = date("Y-m-d", $time2);
            $list[$k]["end_time"] = date("Y-m-d", $time3);
            $list[$k]["link_url"] = "http://weiling.host7.lnasp.com/weiling/index.php/home/api/medicine_view?id=" . $list[$k]["id"];
        }
        if ($list) {
            $output = array('data' => $list, 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));
        } else {
            $output = array('data' => array(), 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));
        }

    }

    //药商列表
    function seller_list($token = "")
    {
        if ($token == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }
        $uid = getuid($token);
        $tmp = M("app_member")->where("id=$uid")->getField("seller_id");

        $length = strlen($tmp);
        $end_str = $length - 1;
        $tmp2 = substr($tmp, 0, $end_str);
        $yaoshang_list = explode(",", $tmp2);

        if ($yaoshang_list) {
            foreach ($yaoshang_list as $yaoshang) {
                $list[] = M("yaoshang")->where("id=$yaoshang")->field("id,name,img,link")->find();

            }

            foreach ($list as $k => $v) {
                $img = __PATH__ . $list[$k]["img"];
                $list[$k]["img"] = $img;
            }

            if ($list) {
                $output = array('data' => $list, 'info' => '查询成功', 'code' => '200');
                exit(json_encode($output));

            } else {
                $output = array('data' => array(), 'info' => '暂无数据', 'code' => '200');
                exit(json_encode($output));
            }
        } else {
            $output = array('data' => array(), 'info' => '暂无数据', 'code' => '200');
            exit(json_encode($output));
        }

    }


    //药品药商
    function medicine_seller($pid = "", $seller_id = "", $field = "", $type = "")
    {
        if ($pid == "" || $seller_id == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }
        $uid = M("yaoshang")->where("id={$seller_id}")->getField("uid");
        $where["typeid"] = $pid;
        $where["uid"] = $uid;
        $sql = M("Medicine");
        if ($field) {
            $where["name"] = array("like", "%$field%");
        }
        $sql = $sql->where($where);

        if ($type == 1) {
            $sql = $sql->order("price ASC");
        }
        if ($type == 2) {
            $sql = $sql->order("count DESC");
        }
        $list = $sql->select();
        foreach ($list as $k => $v) {
            $img = $list[$k]["img"];
            $list[$k]["img"] = __PATH__ . $img;
            $time2 = $list[$k]["start_time"];
            $time3 = $list[$k]["end_time"];
            $list[$k]["start_time"] = date("Y-m-d", $time2);
            $list[$k]["end_time"] = date("Y-m-d", $time3);
            $list[$k]["link_url"] = "http://weiling.host7.lnasp.com/weiling/index.php/home/api/medicine_view?id=" . $list[$k]["id"];
        }
        if ($list) {
            $output = array('data' => $list, 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));

        } else {
            $output = array('data' => array(), 'info' => '暂无数据', 'code' => '200');
            exit(json_encode($output));
        }
    }

    //加入购物车
    function cart_add($token = '', $id = '', $uid = '', $num = '')
    {
        if ($token == "" || $id == '' || $uid == '' || $num == '') {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }
        if ($uid) {
            $seller = M("yaoshang")->where("uid=$uid")->getField("name");
            $seller_id = M("yaoshang")->where("uid=$uid")->getField("id");
            $data['seller_id'] = $seller_id;
            $data['seller_name'] = $seller;
        }
        if ($id) {
            $price = M("medicine")->where("id=$id")->getField("price");
            $img = M("medicine")->where("id=$id")->getField("img");
            $data['name'] = M("medicine")->where("id=$id")->getField("name");
            $data['format'] = M("medicine")->where("id=$id")->getField("format");
            $data['typeid'] = M("medicine")->where("id=$id")->getField("typeid");
            $data['d_price'] = $price;
            $data['mid'] = $id;
            $data['uid'] = $uid;
            $data['img'] = $img;
            $data['price'] = $price * $num;
            $data['num'] = $num;
            $data['token'] = getuid($token);
        }
        $a = M("cart")->where("mid=$id")->select();
        if ($a) {
            foreach ($a as $b => $c) {
                $dprice = M("medicine")->where("id=$id")->getField("price");
                $aaa = $a[$b]['num'] + $num;
                $data['num'] = $aaa;
                $where["id"] = $a[$b]["id"];
                $data['price'] = $dprice * $aaa;
            }
            $ok2 = M("cart")->where($where)->save($data);
            if ($ok2) {
                $output = array('data' => array(), 'info' => '添加成功', 'code' => '200');
                exit(json_encode($output));
            } else {
                $output = array('data' => array(), 'info' => '添加失败', 'code' => '400');
                exit(json_encode($output));
            }
        }
        $ok = M("cart")->add($data);
        if ($ok) {
            $output = array('data' => array(), 'info' => '添加成功', 'code' => '200');
            exit(json_encode($output));
        } else {
            $output = array('data' => array(), 'info' => '添加失败', 'code' => '400');
            exit(json_encode($output));
        }

    }

    //购物车界面
    function cart_list($token = '')
    {
        if ($token == '') {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }
        if ($token) {
            $id = getuid($token);
            $seller_name = M("cart")->where("token=$id")->field("seller_name,seller_id")->select();
            $seller_name = unique_arr($seller_name);
            foreach ($seller_name as $v) {
                $seller_name2[] = $v;
            }
            $seller_name = $seller_name2;
            foreach ($seller_name as $k => $v) {
                $where["seller_name"] = $seller_name[$k]["seller_name"];
                $where["token"] = $id;
                $arr2 = M("cart")->where($where)->select();
                foreach ($arr2 as $a => $b) {
                    $img = __PATH__ . $arr2[$a]["img"];
                    $arr2[$a]["img"] = $img;

                }
                $seller_name[$k]["goods"] = $arr2;
            }
        }
        if ($seller_name) {
            $output = array('data' => $seller_name, 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));
        } else {
            $output = array('data' => array(), 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));
        }
    }

    //购物车商品数据变更
    function cart_change($token = '', $list = '')
    {
        if ($token == "" || $list == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }
        $arr = json_decode($list);

        foreach ($arr as $v) {
            $cid = $v->cartid;
            $num = $v->num;
            $p = M("cart")->where("id={$cid}")->getField("d_price");
            $pp = $p * $num;
            $price = sprintf("%.2f", $pp);
            $data = array();
            $data['num'] = $num;
            $data['price'] = $price;
            $ok = M("cart")->where("id={$cid}")->setField($data);
        }

        if ($ok) {
            $output = array('data' => array(), 'info' => '修改成功', 'code' => '200');
            exit(json_encode($output));
        }
    }

    //购物车删除商品
    function cart_del($token = '', $id = '')
    {
        if ($token == "" || $id == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }
        $ok = M("cart")->where("id=$id")->delete();
        if ($ok) {
            $output = array('data' => array(), 'info' => '删除成功', 'code' => '200');
            exit(json_encode($output));
        } else {
            $output = array('data' => array(), 'info' => '删除失败', 'code' => '400');
            exit(json_encode($output));
        }
    }

    //查看订单
    function medicine_orderpaylist($token = "", $type = "")
    {
        if ($token == "" || $type == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }
        $uid = getuid($token);
        //全部订单=1 待付款=2 待收货=3 已完成=4 已取消=5
        if ($type == 1) {
            $data = array();
            $l = M("order")->where("uid=$uid and payment_status!=3 and payment_status!=2")->select();
            foreach ($l as $k => $v) {
                $data[$k]["ordernumber"] = $l[$k]["numbering"];
                $data[$k]["create_time"] = date("Y-m-d H:i:s", $l[$k]["create_time"]);
                $data[$k]["allprice"] = $l[$k]["z_price"];
                $ordernumber = $l[$k]["numbering"];
                $n = M("commodity")->where("numbering=$ordernumber")->getField("num", true);
                $data[$k]["seller_name"] = M("commodity")->where("numbering=$ordernumber")->getField("seller_name");
                $num = array_sum($n);
                $data[$k]["allnum"] = (string)$num;
                $data[$k]["link"] = "http://weiling.host7.lnasp.com/weiling/index.php/home/api/medicineorder_view?ordernumber=" . $data[$k]["ordernumber"];

                if ($l[$k]["payment_status"] == 0) {
                    $data[$k]["order_status"] = "待付款";
                    $data[$k]["pay_time"] = "待付款";
                }

                if ($l[$k]["send_status"] == 2 && $l[$k]["payment_status"] == 1) {
                    $data[$k]["order_status"] = "已完成";
                    $data[$k]["pay_time"] = date("Y-m-d H:i:s", $l[$k]["pay_time"]);
                }
                if ($l[$k]["send_status"] != 2 && $l[$k]["payment_status"] == 1) {
                    $data[$k]["order_status"] = "待收货";
                    $data[$k]["pay_time"] = date("Y-m-d H:i:s", $l[$k]["pay_time"]);
                }


                $medicine = array();
                $m = M("commodity")->where("numbering=$ordernumber")->select();
                foreach ($m as $a => $b) {
                    $medicine[$a]["medicineid"] = $m[$a]["mid"];
                    $medicine[$a]["name"] = $m[$a]["name"];
                    $medicine[$a]["format"] = $m[$a]["format"];
                    $medicine[$a]["dprice"] = $m[$a]["d_price"];
                    $medicine[$a]["num"] = $m[$a]["num"];
                    $medicine[$a]["price"] = $m[$a]["price"];
                    $medicine[$a]["img"] = __PATH__ . $m[$a]["img"];
                }
                $data[$k]["medicine"] = $medicine;
            }
            if ($l) {
                $output = array('data' => $data, 'info' => '查询成功', 'code' => '200');
                exit(json_encode($output));
            } else {
                $output = array('data' => array(), 'info' => '暂无数据', 'code' => '200');
                exit(json_encode($output));
            }
        }
        if ($type == 2) {
            $where["uid"] = $uid;
            $where["payment_status"] = 0;
            $l = M("order")->where($where)->select();
            foreach ($l as $k => $v) {
                $data[$k]["ordernumber"] = $l[$k]["numbering"];
                $data[$k]["create_time"] = date("Y-m-d H:i:s", $l[$k]["create_time"]);
                $data[$k]["allprice"] = $l[$k]["z_price"];
                $ordernumber = $l[$k]["numbering"];
                $n = M("commodity")->where("numbering=$ordernumber")->getField("num", true);
                $data[$k]["seller_name"] = M("commodity")->where("numbering=$ordernumber")->getField("seller_name");
                $num = array_sum($n);
                $data[$k]["allnum"] = (string)$num;
                $data[$k]["link"] = "http://weiling.host7.lnasp.com/weiling/index.php/home/api/medicineorder_view?ordernumber=" . $data[$k]["ordernumber"];

                if ($l[$k]["payment_status"] == 0) {
                    $data[$k]["order_status"] = "待支付";
                    $data[$k]["pay_time"] = "待支付";
                }
                $medicine = array();
                $m = M("commodity")->where("numbering=$ordernumber")->select();
                foreach ($m as $a => $b) {
                    $medicine[$a]["medicineid"] = $m[$a]["mid"];
                    $medicine[$a]["name"] = $m[$a]["name"];
                    $medicine[$a]["format"] = $m[$a]["format"];
                    $medicine[$a]["dprice"] = $m[$a]["d_price"];
                    $medicine[$a]["num"] = $m[$a]["num"];
                    $medicine[$a]["price"] = $m[$a]["price"];
                    $medicine[$a]["img"] = __PATH__ . $m[$a]["img"];
                }
                $data[$k]["medicine"] = $medicine;
            }
            if ($l) {
                $output = array('data' => $data, 'info' => '查询成功', 'code' => '200');
                exit(json_encode($output));
            } else {
                $output = array('data' => array(), 'info' => '暂无数据', 'code' => '200');
                exit(json_encode($output));
            }
        }
        if ($type == 3) {
            $l = M("order")->where("uid=$uid and payment_status=1 and send_status!=2")->select();
            foreach ($l as $k => $v) {
                $data[$k]["ordernumber"] = $l[$k]["numbering"];
                $data[$k]["create_time"] = date("Y-m-d H:i:s", $l[$k]["create_time"]);
                $data[$k]["allprice"] = $l[$k]["z_price"];
                $ordernumber = $l[$k]["numbering"];
                $n = M("commodity")->where("numbering=$ordernumber")->getField("num", true);
                $data[$k]["seller_name"] = M("commodity")->where("numbering=$ordernumber")->getField("seller_name");
                $num = array_sum($n);
                $data[$k]["allnum"] = (string)$num;
                $data[$k]["link"] = "http://weiling.host7.lnasp.com/weiling/index.php/home/api/medicineorder_view?ordernumber=" . $data[$k]["ordernumber"];

                if ($l[$k]["payment_status"] == 1 && $l[$k]["send_status"] != 2) {
                    $data[$k]["order_status"] = "待收货";
                    $data[$k]["pay_time"] = date("Y-m-d H:i:s", $l[$k]["pay_time"]);
                }
                $medicine = array();
                $m = M("commodity")->where("numbering=$ordernumber")->select();
                foreach ($m as $a => $b) {
                    $medicine[$a]["medicineid"] = $m[$a]["mid"];
                    $medicine[$a]["name"] = $m[$a]["name"];
                    $medicine[$a]["format"] = $m[$a]["format"];
                    $medicine[$a]["dprice"] = $m[$a]["d_price"];
                    $medicine[$a]["num"] = $m[$a]["num"];
                    $medicine[$a]["price"] = $m[$a]["price"];
                    $medicine[$a]["img"] = __PATH__ . $m[$a]["img"];
                }
                $data[$k]["medicine"] = $medicine;
            }
            if ($l) {
                $output = array('data' => $data, 'info' => '查询成功', 'code' => '200');
                exit(json_encode($output));
            } else {
                $output = array('data' => array(), 'info' => '暂无数据', 'code' => '200');
                exit(json_encode($output));
            }
        }
        if ($type == 4) {
            $where["uid"] = $uid;
            $where["payment_status"] = 1;
            $where["send_status"] = 2;
            $l = M("order")->where($where)->select();
            foreach ($l as $k => $v) {
                $data[$k]["ordernumber"] = $l[$k]["numbering"];
                $data[$k]["create_time"] = date("Y-m-d H:i:s", $l[$k]["create_time"]);
                $data[$k]["allprice"] = $l[$k]["z_price"];
                $ordernumber = $l[$k]["numbering"];
                $n = M("commodity")->where("numbering=$ordernumber")->getField("num", true);
                $data[$k]["seller_name"] = M("commodity")->where("numbering=$ordernumber")->getField("seller_name");
                $num = array_sum($n);
                $data[$k]["allnum"] = (string)$num;
                $data[$k]["link"] = "http://weiling.host7.lnasp.com/weiling/index.php/home/api/medicineorder_view?ordernumber=" . $data[$k]["ordernumber"];

                if ($l[$k]["send_status"] == 2 && $l[$k]["payment_status"] == 1) {
                    $data[$k]["order_status"] = "已完成";
                    $data[$k]["pay_time"] = date("Y-m-d H:i:s", $l[$k]["pay_time"]);
                }

                $medicine = array();
                $m = M("commodity")->where("numbering=$ordernumber")->select();
                foreach ($m as $a => $b) {
                    $medicine[$a]["medicineid"] = $m[$a]["mid"];
                    $medicine[$a]["name"] = $m[$a]["name"];
                    $medicine[$a]["format"] = $m[$a]["format"];
                    $medicine[$a]["dprice"] = $m[$a]["d_price"];
                    $medicine[$a]["num"] = $m[$a]["num"];
                    $medicine[$a]["price"] = $m[$a]["price"];
                    $medicine[$a]["img"] = __PATH__ . $m[$a]["img"];
                }
                $data[$k]["medicine"] = $medicine;
            }
            if ($l) {
                $output = array('data' => $data, 'info' => '查询成功', 'code' => '200');
                exit(json_encode($output));
            } else {
                $output = array('data' => array(), 'info' => '暂无数据', 'code' => '200');
                exit(json_encode($output));
            }
        }
        if ($type == 5) {
            $where["uid"] = $uid;
            $where["payment_status"] = 3;
            $l = M("order")->where($where)->select();
            foreach ($l as $k => $v) {
                $data[$k]["ordernumber"] = $l[$k]["numbering"];
                $data[$k]["create_time"] = date("Y-m-d H:i:s", $l[$k]["create_time"]);
                $data[$k]["allprice"] = $l[$k]["z_price"];
                $ordernumber = $l[$k]["numbering"];
                $n = M("commodity")->where("numbering=$ordernumber")->getField("num", true);
                $data[$k]["seller_name"] = M("commodity")->where("numbering=$ordernumber")->getField("seller_name");
                $num = array_sum($n);
                $data[$k]["allnum"] = (string)$num;
                $data[$k]["link"] = "http://weiling.host7.lnasp.com/weiling/index.php/home/api/medicineorder_view?ordernumber=" . $data[$k]["ordernumber"];

                if ($l[$k]["payment_status"] == 3) {
                    $data[$k]["order_status"] = "已取消";
                    $data[$k]["pay_time"] = "无";
                }

                $medicine = array();
                $m = M("commodity")->where("numbering=$ordernumber")->select();
                foreach ($m as $a => $b) {
                    $medicine[$a]["medicineid"] = $m[$a]["mid"];
                    $medicine[$a]["name"] = $m[$a]["name"];
                    $medicine[$a]["format"] = $m[$a]["format"];
                    $medicine[$a]["dprice"] = $m[$a]["d_price"];
                    $medicine[$a]["num"] = $m[$a]["num"];
                    $medicine[$a]["price"] = $m[$a]["price"];
                    $medicine[$a]["img"] = __PATH__ . $m[$a]["img"];
                }
                $data[$k]["medicine"] = $medicine;
            }
            if ($l) {
                $output = array('data' => $data, 'info' => '查询成功', 'code' => '200');
                exit(json_encode($output));
            } else {
                $output = array('data' => array(), 'info' => '暂无数据', 'code' => '200');
                exit(json_encode($output));
            }
        }

    }

    //订单修改
    function medicineorder_change($token = '', $ordernumber = '', $type = '')
    {
        if ($token == "" || $ordernumber == "" || $type == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }
        $uid = getuid($token);
        //取消订单=1 确认收货=2 加入逾期=3 申请退货=4
        if ($type == 1) {
            $where1["uid"] = $uid;
            $where1["numbering"] = $ordernumber;
            $data["payment_status"] = 3;
            $ok1 = M("order")->where($where1)->save($data);
            if ($ok1) {
                $output = array('data' => array(), 'info' => '操作成功', 'code' => '200');
                exit(json_encode($output));
            } else {
                $output = array('data' => array(), 'info' => '操作失败', 'code' => '200');
                exit(json_encode($output));
            }
        }
        if ($type == 2) {
            $where2["uid"] = $uid;
            $where2["numbering"] = $ordernumber;
            $data["send_status"] = 2;
            $ok2 = M("order")->where($where2)->save($data);

            $m = M("commodity")->where("numbering=$ordernumber")->field("mid,num")->select();

            foreach ($m as $a => $b) {
                $id = $m[$a]["mid"];
                $n = $m[$a]["num"];
                $yao = M("medicine")->where("id=$id")->select();
                foreach ($yao as $k => $v) {
                    $where["name"] = $yao[$k]["name"];
                    $where["price"] = $yao[$k]["price"];
                    $where["blfy"] = $yao[$k]["blfy"];
                    $where["mtype"] = $yao[$k]["mtype"];
                    $where["format"] = $yao[$k]["format"];
                    $where["typeid"] = $yao[$k]["typeid"];
                    $where["count"] = $yao[$k]["count"];
                    $where["use"] = $yao[$k]["use"];
                    $where["storage"] = $yao[$k]["storage"];
                    $where["pzwh"] = $yao[$k]["pzwh"];
                    $where["start_time"] = $yao[$k]["start_time"];
                    $where["upto"] = $yao[$k]["upto"];
                    $where["end_time"] = $yao[$k]["end_time"];
                    $where["company"] = $yao[$k]["company"];
                    $where["cure"] = $yao[$k]["cure"];
                    $where["pyjm"] = $yao[$k]["pyjm"];
                    $where["ypph"] = $yao[$k]["ypph"];
                    $where["img"] = $yao[$k]["img"];
                    $where["uid"] = 0;
                    $where["app_id"] = $uid;
                    $ok = M("medicine")->where($where)->select();
                    if ($ok) {
                        $d["num"] = $n;
                        $okk = M("medicine")->where($where)->save($d);
                    } else {
                        $da = array();
                        $da["name"] = $yao[$k]["name"];
                        $da["price"] = $yao[$k]["price"];
                        $da["blfy"] = $yao[$k]["blfy"];
                        $da["mtype"] = $yao[$k]["mtype"];
                        $da["format"] = $yao[$k]["format"];
                        $da["typeid"] = $yao[$k]["typeid"];
                        $da["count"] = $yao[$k]["count"];
                        $da["use"] = $yao[$k]["use"];
                        $da["storage"] = $yao[$k]["storage"];
                        $da["pzwh"] = $yao[$k]["pzwh"];
                        $da["start_time"] = $yao[$k]["start_time"];
                        $da["upto"] = $yao[$k]["upto"];
                        $da["end_time"] = $yao[$k]["end_time"];
                        $da["company"] = $yao[$k]["company"];
                        $da["cure"] = $yao[$k]["cure"];
                        $da["pyjm"] = $yao[$k]["pyjm"];
                        $da["ypph"] = $yao[$k]["ypph"];
                        $da["img"] = $yao[$k]["img"];
                        $da["uid"] = 0;
                        $da["app_id"] = $uid;
                        $okk = M("medicine")->add($da);
                    }
                }
            }

            if ($ok2 && $okk) {
                $output = array('data' => array(), 'info' => '操作成功', 'code' => '200');
                exit(json_encode($output));
            } else {
                $output = array('data' => array(), 'info' => '操作失败', 'code' => '200');
                exit(json_encode($output));
            }
        }
        if ($type == 3) {
            $where3["uid"] = $uid;
            $where3["numbering"] = $ordernumber;
            $data["payment_status"] = 2;
            $ok3 = M("order")->where($where3)->save($data);
            if ($ok3) {
                $output = array('data' => array(), 'info' => '操作成功', 'code' => '200');
                exit(json_encode($output));
            } else {
                $output = array('data' => array(), 'info' => '操作失败', 'code' => '200');
                exit(json_encode($output));
            }
        }
        if ($type == 4) {
            $where4["uid"] = $uid;
            $where4["numbering"] = $ordernumber;
            $data["back_status"] = 1;
            $ok4 = M("order")->where($where4)->save($data);
            if ($ok4) {
                $output = array('data' => array(), 'info' => '操作成功', 'code' => '200');
                exit(json_encode($output));
            } else {
                $output = array('data' => array(), 'info' => '操作失败', 'code' => '200');
                exit(json_encode($output));
            }
        }
    }


    //添加订单
    function medicine_order_add($token = '', $addid = '', $type = '', $content = '', $cartid = '')
    {
        if ($token == "" || $addid == "" || $type == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }


        if ($type == 1) {
            $code = date('Ymd') . substr(implode(NULL, array_map('ord', str_split(substr(uniqid(), 7, 13), 1))), 0, 8);
            $arr = explode(",", $content);
            $mid = $arr[0];
            $num = $arr[1];
            $uuid = getuid($token);

            $uid = M("medicine")->where("id=$mid")->getField("uid");
            $seller = M("yaoshang")->where("uid=$uid")->getField("name");
            $seller_id = M("yaoshang")->where("uid=$uid")->getField("id");
            $price = M("medicine")->where("id=$mid")->getField("price");
            $img = M("medicine")->where("id=$mid")->getField("img");

            $data['seller_id'] = $seller_id;
            $data['seller_name'] = $seller;
            $data['mid'] = $mid;
            $data['num'] = $num;
            $data['name'] = M("medicine")->where("id=$mid")->getField("name");
            $data['format'] = M("medicine")->where("id=$mid")->getField("format");
            $data['img'] = $img;
            $data['numbering'] = $code;
            $data['d_price'] = $price;
            $data['price'] = $price * $num;
            $data['uid'] = $uuid;

            $ok1 = M("commodity")->add($data);

            $data1['numbering'] = $code;
            $data1['z_price'] = $price * $num;
            $data1['payment_status'] = 0;
            $data1['back_status'] = 0;
            $data1['send_status'] = 0;
            $data1['create_time'] = time();
            $data1['pay_time'] = 0;
            $data1['address_id'] = $addid;
            $data1['uid'] = $uuid;
            $data1['freight'] = 0;
            $data1["payment"] = 0;

            $ok2 = M("order")->add($data1);

            $time1 = $data1['create_time'];

            $d = array();
            $pp = M("order")->where("create_time=$time1")->getField("z_price", true);
            $p = array_sum($pp);
            $d['orderNumber'] = M("order")->where("create_time=$time1")->getField("numbering", true);
            $d['allPrice'] = sprintf("%.2f", $p);

            if ($ok1 && $ok2) {
                $output = array('data' => $d, 'info' => '添加成功', 'code' => '200');
                exit(json_encode($output));
            } else {
                $output = array('data' => array(), 'info' => '添加失败', 'code' => '400');
                exit(json_encode($output));
            }
        }
        if ($type == 2) {

            $arr = explode(",", $cartid);

            foreach ($arr as $cid) {
                $seller[] = M("cart")->where("id=$cid")->getField("seller_id", true);
                $medicine[] = M("cart")->where("id=$cid")->find();
            }
            foreach ($seller as $k => $v) {

                foreach ($seller[$k] as $kk => $vv) {
                    $seller2[] = $seller[$k][$kk];
                }
            }
            $seller3 = array_unique($seller2);

            foreach ($seller3 as $a => $b) {

                $arr2 = array();
                $seller_id = $seller3[$a];
                $code = date('Ymd') . substr(implode(NULL, array_map('ord', str_split(substr(uniqid(), 7, 13), 1))), 0, 8);
                $uuid = getuid($token);
                $data1['payment_status'] = 0;
                $data1['back_status'] = 0;
                $data1['send_status'] = 0;
                $data1['create_time'] = time();
                $data1['pay_time'] = 0;
                $data1['address_id'] = $addid;
                $data1['uid'] = $uuid;
                $data1['freight'] = 0;
                $data1["payment"] = 0;
                $data1["numbering"] = $code;
                $ok1 = M("order")->add($data1);
                $time1 = $data1['create_time'];

                foreach ($medicine as $aa => $bb) {

                    $seller_id2 = $medicine[$aa]["seller_id"];

                    if ($seller_id == $seller_id2) {
                        $iid = $medicine[$aa]["id"];
                        unset($medicine[$aa]["id"]);
                        unset($medicine[$aa]["token"]);
                        $medicine[$aa]["numbering"] = $code;
                        $ok2 = M("commodity")->add($medicine[$aa]);
                        $price = M("commodity")->where("numbering=$code")->getField("price", true);
                        $data2['z_price'] = array_sum($price);
                        $ok3 = M("order")->where("numbering=$code")->save($data2);
                        if ($ok1 && $ok2 && $ok3) {
                            $ok = M("cart")->where("id=$iid")->delete();
                        }
                        $arr2[] = $medicine[$aa];
                        $seller3[$a] = $arr2;
                    }
                }
            }
            $d = array();
            $pp = M("order")->where("create_time=$time1")->getField("z_price", true);
            $p = array_sum($pp);
            $d['orderNumber'] = M("order")->where("create_time=$time1")->getField("numbering", true);
            $d['allPrice'] = sprintf("%.2f", $p);
            if ($ok) {
                $output = array('data' => $d, 'info' => '添加成功', 'code' => '200');
                exit(json_encode($output));
            } else {
                $output = array('data' => array(), 'info' => '添加失败', 'code' => '400');
                exit(json_encode($output));
            }
        }
    }


    //返回支付信息列表
    function medicine_order_paylist($orderNumber = '')
    {
        if ($orderNumber == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }
        $arr = json_decode($orderNumber);
        foreach ($arr as $o) {
            $allnum = M("commodity")->where("numbering=$o")->getField("num");
            $price = M("order")->where("numbering=$o")->getField("z_price");
            $freight = 0;
            $allprice = $price + $freight;
            $arr = M("commodity")->where("numbering=$o")->select();
            foreach ($arr as $k => $v) {
                $img = __PATH__ . $arr[$k]['img'];
                $arr[$k]['img'] = $img;
                unset($arr[$k]['seller_id']);
                unset($arr[$k]['numbering']);
                unset($arr[$k]['uid']);
            }

            $data = array();
            $data["orderNumber"] = $o;
            $data["allNum"] = $allnum;
            $data["freight"] = sprintf("%.2f", $freight);
            $data["allPrice"] = sprintf("%.2f", $allprice);
            $data["medicine"] = $arr;
            $arr1[] = $data;

        }

        if ($data) {
            $output = array('data' => $arr1, 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));
        } else {
            $output = array('data' => array(), 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));
        }


    }

    //入库
    function medicine_in($img = "", $name = "", $typeid = "", $storage = "", $upto = "", $num = "", $blfy = "", $mtype = "", $format = "", $count = "", $main = "", $use = "", $pzwh = "", $start_time = "", $company = "", $ypph = "", $token = "", $price = "")
    {
        if ($img == "" || $name == "" || $typeid == "" || $storage == "" || $upto == "" || $num == "" || $token == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }

        $data["img"] = $img;
        $data["app_id"] = getuid($token);
        $data["price"] = $price;
        $data["name"] = $name;
        $data["typeid"] = $typeid;
        $data["storage"] = $storage;
        $data["upto"] = $upto;
        $data["num"] = $num;
        $data["blfy"] = $blfy;
        $data["mtype"] = $mtype;
        $data["format"] = $format;
        $data["count"] = $count;
        $data["main"] = $main;
        $data["use"] = $use;
        $data["pzwh"] = $pzwh;
        $data["start_time"] = strtotime($start_time);
        $data["company"] = $company;
        $data["ypph"] = $ypph;
        $data["uid"] = 0;

        $id = M("medicine")->add($data);
        if ($id) {
            $output = array('data' => array(), 'info' => '添加成功', 'code' => '200');
            exit(json_encode($output));
        } else {
            $output = array('data' => array(), 'info' => '添加失败', 'code' => '200');
            exit(json_encode($output));
        }
    }

    //出库
    function medicine_out($name = "", $phone = "", $address = "", $worker = "", $beizhu = "", $token = "", $list = "", $price = "", $num = "")
    {
        if ($name == "" || $phone == "" || $address == "" || $worker == "" || $beizhu == "" || $token == "" || $list == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }
        $meidcine = "";

        $uid = getuid($token);
        $arr = json_decode($list);
        $time = time();
        foreach ($arr as $k => $v) {
            $medicine_id = $arr[$k]->id;
            $price = $arr[$k]->price;
            $num = $arr[$k]->num;

            $past_num = M("medicine")->where("id={$medicine_id}")->getField("num");
            $now_num = $past_num - $num;
            $aa["num"] = $now_num;

            M("medicine")->where("id={$medicine_id}")->save($aa);

            $data["mid"] = $medicine_id;
            $data["price"] = $price;
            $data["allprice"] = $price * $num;
            $data["num"] = $num;
            $data["app_id"] = $uid;
            $data["time"] = $time;
            $data["name"] = M("medicine")->where("id=$medicine_id")->getField("name");
            $data["format"] = M("medicine")->where("id=$medicine_id")->getField("format");
            $data["img"] = M("medicine")->where("id=$medicine_id")->getField("img");
            M("chukus")->add($data);
        }
        $info["name"] = $name;
        $info["phone"] = $phone;
        $info["address"] = $address;
        $info["worker"] = $worker;
        $info["beizhu"] = $beizhu;
        $info["app_id"] = $uid;
        $info["time"] = $time;
        $id = M("chuku")->add($info);

        if ($id) {
            $output = array('data' => array(), 'info' => '出库成功', 'code' => '200');
            exit(json_encode($output));
        } else {
            $output = array('data' => array(), 'info' => '出库失败', 'code' => '200');
            exit(json_encode($output));
        }

    }

    //出库记录
    public function medicine_outrecord($token = '')
    {
        if ($token == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }
        $uid = getuid($token);
        $l = M("chuku")->where("app_id=$uid")->field("time,name,phone,address,beizhu,worker")->select();
        foreach ($l as $k => $v) {
            $t = $l[$k]["time"];
            $p = M("chukus")->where("time=$t")->getField("price", true);
            $pp = array_sum($p);
            $price1 = sprintf("%.2f", $pp);
            $l[$k]["price"] = $price1;
            $arr = M("chukus")->where("time=$t")->select();
            foreach ($arr as $a => $b) {
                $img = __PATH__ . $arr[$a]["img"];
                $arr[$a]["img"] = $img;
            }
            $l[$k]["time"] = date("Y-m-d H:i:s", $t);
            $l[$k]["list"] = $arr;
        }

        if ($l) {
            $output = array('data' => $l, 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));
        } else {
            $output = array('data' => array(), 'info' => '暂无数据', 'code' => '200');
            exit(json_encode($output));
        }
    }


    //返回图片路径
    function img_path($img = "")
    {
        if ($img != "") {

            $img = base64_decode($img);

            $date = date("Y-m-d");
            $time = time();
            $rand = rand(10000, 99999);
            $img_name = $rand . $time . ".jpg";
            $savepath = "Uploads/Public/" . $date . "/";
            if (!file_exists($savepath)) {
                mkdir($savepath, 0777, true);
            }
            $road = "/" . $date . "/" . $img_name;
            file_put_contents($savepath . $img_name, $img);
        }
        if ($road) {
            $arr["road"] = $road;
            $output = array('data' => $arr, 'info' => '添加成功', 'code' => '200');
            exit(json_encode($output));
        } else {
            $output = array('data' => array(), 'info' => '添加失败', 'code' => '400');
            exit(json_encode($output));
        }


    }

    //出库药品列表
    function medicineout_list($token = "", $field = "")
    {
        if ($token == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }
        $uid = getuid($token);
        $sql = M("medicine");
        $where["app_id"] = $uid;
        if ($field) {
            $where["name"] = array("like", "%$field%");
        }
        $list = $sql->where($where)->select();
        foreach ($list as $k => $v) {
            $img = __PATH__ . $list[$k]["img"];
            $list[$k]["img"] = $img;
            $time2 = $list[$k]["start_time"];
            $time3 = $list[$k]["end_time"];
            $list[$k]["start_time"] = date("Y-m-d", $time2);
            $list[$k]["end_time"] = date("Y-m-d", $time3);
        }
        if ($list) {
            $output = array('data' => $list, 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));
        } else {
            $output = array('data' => array(), 'info' => '暂无数据', 'code' => '200');
            exit(json_encode($output));
        }
    }

    //预约医院列表
    function bookHospital_list($field = "")
    {
        $sql = M("hospital");
        if ($field) {
            $where["name"] = array("like", "%$field%");
            $sql = $sql->where($where);
        }
        $list = $sql->select();
        if ($list) {
            foreach ($list as $k => $v) {
                $data[$k]["id"] = $list[$k]["id"];
                $data[$k]["name"] = $list[$k]["name"];
                $data[$k]["link"] = "http://reg.sj-hospital.org/";
                $data[$k]["img"] = __PATH__ . $list[$k]["img"];
            }
            $output = array('data' => $data, 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));
        } else {
            $output = array('data' => array(), 'info' => '暂无数据', 'code' => '200');
            exit(json_encode($output));
        }

    }

    function bookHospital_list1($field = "")
    {
        $sql = M("hospital");
        if ($field) {
            $where["name"] = array("like", "%$field%");
            $sql = $sql->where($where);
        }
        $list = $sql->select();
        if ($list) {
            foreach ($list as $k => $v) {
                $data[$k]["id"] = $list[$k]["id"];
                $data[$k]["name"] = $list[$k]["name"];
                $data[$k]["link"] = "http://weiling.host7.lnasp.com/weiling/index.php/home/api/hospital_view?id=" . $list[$k]["id"];
                $data[$k]["img"] = __PATH__ . $list[$k]["img"];
            }
            $output = array('data' => $data, 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));
        } else {
            $output = array('data' => array(), 'info' => '暂无数据', 'code' => '200');
            exit(json_encode($output));
        }

    }


    //百科
    function baike_list($field = "")
    {
        $sql = M("baike");
        $where["type"] = 0;
        if ($field) {
            $where["title"] = array("like", "%$field%");
        }
        $sql = $sql->where($where);
        $list = $sql->select();
        if ($list) {
            foreach ($list as $k => $v) {
                $data[$k]["id"] = $list[$k]["id"];
                $data[$k]["title"] = $list[$k]["title"];
                $data[$k]["link"] = "http://weiling.host7.lnasp.com/weiling/index.php/home/api/detail_view?id=" . $list[$k]["id"] . "&type=0";

            }
            $output = array('data' => $data, 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));
        } else {
            $output = array('data' => array(), 'info' => '暂无数据', 'code' => '200');
            exit(json_encode($output));
        }

    }


    //库存盘点
    function medicine_profitloss($id = "", $type = "", $num = "", $token = "")
    {
        if ($id == "" || $type == "" || $num == "" || $token == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }

        $uid = getuid($token);
        $data1["medicine_id"] = $id;
        $medicine = M("medicine")->where("id=$id")->find();

        $data1["type"] = $type;
        $data1["time"] = time();
        $data1["uid"] = $uid;
        $data1["num"] = $num;
        $data1["medicine_name"] = $medicine["name"];
        $data1["medicine_format"] = $medicine["format"];
        $data1["medicine_endtime"] = $medicine["end_time"];
        $data1["medicine_company"] = $medicine["company"];
        $data1["medicine_img"] = $medicine["img"];

        M("check")->add($data1);


        $past_num = M("medicine")->where("id=$id")->getField("num");

        //盘盈
        if ($type == 1) {
            $data["num"] = $past_num + $num;

            $sql = M("medicine")->where("id={$id}")->save($data);

        }
        //盘亏
        if ($type == 2) {
            $data["num"] = $past_num - $num;
            $sql = M("medicine")->where("id={$id}")->save($data);
        }

        $output = array('data' => array(), 'info' => '操作成功', 'code' => '200');
        exit(json_encode($output));

    }

    //盘点记录
    function medicine_profit_detail($token = "")
    {
        if ($token == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }

        $uid = getuid($token);

        $list = M("check")->where("uid={$uid}")->order("time DESC")->select();

        foreach ($list as $k => $v) {
            $medicine_id = $list[$k]["medicine_id"];
            $time1 = $list[$k]["time"];
            $list[$k]["time"] = date("Y-m-d H:i:s", $time1);
            $list[$k]["link"] = "http://www.baidu.com";

            $img = $list[$k]["medicine_img"];

            $time3 = $list[$k]["medicine_endtime"];

            $list[$k]["medicine_endtime"] = date("Y-m-d", $time3);
            $list[$k]["medicine_img"] = __PATH__ . $img;


        }
        if ($list) {
            $output = array('data' => $list, 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));
        } else {
            $output = array('data' => array(), 'info' => '暂无数据', 'code' => '200');
            exit(json_encode($output));
        }


    }

    //出库盘点药品列表
    function medicine_profitlist($token = "", $field = "", $type = "")
    {
        if ($token == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }
        $sql = M("medicine");
        $uid = getuid($token);
        $where["app_id"] = $uid;
        if ($field) {
            $where["name"] = array("like", "%$field%");
        }
        $sql = $sql->where($where);
        if ($type == 1) {
            $sql = $sql->order("count ASC");
        }
        if ($type == 2) {
            $sql = $sql->order("count DESC");
        }
        if ($type == 3) {
            $sql = $sql->order("price ASC");
        }
        if ($type == 4) {
            $sql = $sql->order("count DESC");
        }

        $list = $sql->select();

        foreach ($list as $k => $v) {
            $img = __PATH__ . $list[$k]["img"];

            $list[$k]["img"] = $img;
            $time2 = $list[$k]["start_time"];
            $time3 = $list[$k]["end_time"];
            $list[$k]["start_time"] = date("Y-m-d", $time2);
            $list[$k]["end_time"] = date("Y-m-d", $time3);
        }

        if ($list) {
            $output = array('data' => $list, 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));
        } else {
            $output = array('data' => array(), 'info' => '暂无数据', 'code' => '200');
            exit(json_encode($output));
        }

    }

    public function detail_view($id = "")
    {
        if ($id == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }
        if ($id == 17) {
            $this->display("Baike/aboutus2");
        }
        if ($id == 6) {
            $this->display("Baike/aboutus");
        } else if ($id == 5) {
            $this->display("Baike/help");
        } else {
            $list = M("baike")->where("id=$id")->find();
            $list["time"] = date("Y-m-d", $list["time"]);
            $list["content"] = htmlspecialchars_decode($list["content"]);
            $this->assign("list", $list);
            $this->display("Baike/app_detail");
        }
    }

    public function aboutus()
    {

        $sql = M("baike");
        $where["type"] = 2;
        $sql = $sql->where($where);
        $list = $sql->select();
        if ($list) {
            foreach ($list as $k => $v) {
                $data[$k]["id"] = $list[$k]["id"];
                $data[$k]["title"] = $list[$k]["title"];
                $data[$k]["link"] = "http://weiling.host7.lnasp.com/weiling/index.php/home/api/detail_view?id=" . $list[$k]["id"] . "&type=2";

            }
            $output = array('data' => $data, 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));
        } else {
            $output = array('data' => array(), 'info' => '暂无数据', 'code' => '200');
            exit(json_encode($output));
        }
    }

    public function aboutus2()
    {

        $sql = M("baike");
        $where["type"] = 3;
        $sql = $sql->where($where);
        $list = $sql->select();
        if ($list) {
            foreach ($list as $k => $v) {
                $data[$k]["id"] = $list[$k]["id"];
                $data[$k]["title"] = $list[$k]["title"];
                $data[$k]["link"] = "http://weiling.host7.lnasp.com/weiling/index.php/home/api/detail_view?id=" . $list[$k]["id"] . "&type=3";

            }
            $output = array('data' => $data, 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));
        } else {
            $output = array('data' => array(), 'info' => '暂无数据', 'code' => '200');
            exit(json_encode($output));
        }
    }

    public function medicine_view($id = "", $type = "")
    {
        if ($id == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }
        $list = M("medicine")->where("id=$id")->find();
        $list["start_time"] = date("Y-m-d", $list["start_time"]);
        $this->assign("list", $list);
        $this->assign("type", $type);
        $this->display("Medicine/app_detail");

    }

    public function medicineorder_view($ordernumber = "")
    {
        if ($ordernumber == '') {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }
        $list = M("order")->where("numbering=$ordernumber")->find();
        $pp = $list["z_price"] + $list["freight"];
        $price = sprintf("%.2f", $pp);
        $list["allprice"] = $price;
        $list["create_time"] = date("Y-m-d H:i:s", $list["create_time"]);
        if ($list["pay_time"] == 0) {
            $list["pay_time"] = '';
        } else {
            $list["pay_time"] = date("Y-m-d H:i:s", $list["pay_time"]);
        }

        if ($list["payment"] == 0) {
            $list["payment"] = "";
        }
        if ($list["payment"] == 1) {
            $list["payment"] = "账户余额支付";
        }
        if ($list["payment"] == 2) {
            $list["payment"] = "支付宝支付";
        }
        if ($list["payment"] == 3) {
            $list["payment"] = "微信支付";
        }
        $addressid = $list["address_id"];
        $medicine = M("commodity")->where("numbering=$ordernumber")->select();
        $address = M("address")->where("id=$addressid")->select();

        foreach ($address as $a) {
            $list["name"] = $a["name"];
            $list["mobile"] = $a["mobile"];
            $list["area"] = $a["area"];
            $list["address"] = $a["address"];
        }

        $this->assign("list", $list);
        $this->assign("medicine", $medicine);
        $this->display("Order/medicineorder_detail");
    }

    public function hospital_view($id = "")
    {
        if ($id == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }
        $list = M("hospital")->where("id=$id")->find();
        $list["time"] = date("Y-m-d", $list["time"]);
        $list["content"] = htmlspecialchars_decode($list["content"]);
        $this->assign("list", $list);
        $this->display("Hospital/app_detail");

    }

    public function expert_view($id = "")
    {
        if ($id == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }
        $list = M("expert")->where("id=$id")->find();
        $list["sex"] == 0 ? $sex = "女" : $sex = "男";
        $list["sex"] = $sex;
        $list["content"] = htmlspecialchars_decode($list["content"]);
        $list["depart"] = M("department")->where("id={$list['did']}")->getField("name");
        $this->assign("list", $list);
        $this->display("Hospital/expert");

    }

    public function heart_detail($id = "")
    {
//  	if($id ==""){
//  		$output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
//          exit(json_encode($output));
//  	}
//  	$list =M("expert")->where("id=$id")->find();
//  	$list["sex"]==0 ? $sex="女" : $sex="男";
//  	$list["sex"] =$sex;
//  	$list["content"] = htmlspecialchars_decode ($list["content"]);
//  	$list["depart"] = M("department")->where("id={$list['did']}")->getField("name");
//  	$this->assign("list",$list);
        $this->display("Hospital/heart_detail");

    }

    //患者添加
    public function patient_add($token = '', $name = '', $idcard = '', $bodyweight = '', $height = '', $age = '', $birthday = '', $phone = '', $sex = '', $marriage = '', $symptom = '', $birthplace = '', $work = '', $medical_history = '', $nation = '', $address = '')
    {
        if ($token == "" || $name == '' || $sex == '' || $birthday == '') {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }
        $uid = getuid($token);
        $data['uid'] = $uid;
        $data['name'] = $name;
        $data['idcard'] = $idcard;
        $data['body_weight'] = $bodyweight;
        $data['birthday'] = $birthday;
        $data['phone'] = $phone;
        $data['sex'] = $sex;
        $data['age'] = $age;
        $data['height'] = $height;
        $data['marriage'] = $marriage;
        $data['symptom'] = $symptom;
        $data['birthplace'] = $birthplace;
        $data['work'] = $work;
        $data['medical_history'] = $medical_history;
        $data['nation'] = $nation;
        $data['address'] = $address;


        $ok = M("patient")->add($data);

        if ($ok) {
            $output = array('data' => array(), 'info' => '添加成功', 'code' => '200');
            exit(json_encode($output));
        } else {
            $output = array('data' => array(), 'info' => '添加失败', 'code' => '400');
            exit(json_encode($output));
        }

    }

    public function patient_list($field = "", $token = "")
    {
        if ($token == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }

        $sql = M("patient");
        if ($field) {
            $where["name"] = array("like", "%$field%");

        }
        $uid = getuid($token);
        $where["uid"] = $uid;
        $sql = $sql->where($where);
        $list = $sql->select();

        if ($list) {
            $output = array('data' => $list, 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));
        } else {
            $output = array('data' => array(), 'info' => '暂无数据', 'code' => '200');
            exit(json_encode($output));
        }

    }

    public function patient_detail($id = "")
    {
        if ($id == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }

        $sql = M("patient");


        $where["id"] = $id;
        $sql = $sql->where($where);
        $list = $sql->find();

        if ($list) {
            $output = array('data' => $list, 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));
        } else {
            $output = array('data' => array(), 'info' => '暂无数据', 'code' => '200');
            exit(json_encode($output));
        }

    }

    public function doctor_list()
    {
        $list = M("ecgexpert")->select();
        foreach ($list as $k => $v) {
            $list[$k]["img"] = __PATH__ . $list[$k]["img"];
        }
        $output = array('data' => $list, 'info' => '暂无数据', 'code' => '200');
        exit(json_encode($output));
    }

    public function department_onelist()
    {
        $list = M("department")->where("level=0")->field("id,name")->select();
        if ($list) {
            $output = array('data' => $list, 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));
        } else {
            $output = array('data' => array(), 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));
        }
    }

    public function department_twolist($pid = "")
    {
        if ($pid == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }

        $list = M("department")->where("pid={$pid}")->field("id,name")->select();


        if ($list) {
            $output = array('data' => $list, 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));

        } else {
            $output = array('data' => array(), 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));
        }

    }


    public function department_doctorlist($id = '')
    {
        if ($id == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }
        $list = M("expert")->where("did=$id")->select();
        foreach ($list as $k => $v) {
            $list[$k]["link"] = "http://weiling.host7.lnasp.com/weiling/index.php/home/api/expert_view?id=" . $list[$k]["id"];
            $list[$k]["img"] = __PATH__ . $list[$k]["img"];
        }
        if ($list) {
            $output = array('data' => $list, 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));

        } else {
            $output = array('data' => array(), 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));
        }


    }


    public function training_onelist()
    {
        $list = M("training")->where("level=0")->field("id,name")->select();
        if ($list) {
            $output = array('data' => $list, 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));
        } else {
            $output = array('data' => array(), 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));
        }
    }

    public function training_twolist($pid = "")
    {
        if ($pid == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }

        $list = M("training")->where("pid={$pid}")->field("id,name")->select();


        if ($list) {
            $output = array('data' => $list, 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));

        } else {
            $output = array('data' => array(), 'info' => '暂无数据', 'code' => '200');
            exit(json_encode($output));
        }
    }

    public function training_lessionlist($type = "", $filetype = "", $token = "")
    {
        if ($token == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }
        $uid = getuid($token);
        $where["appid"] = $uid;
        if ($type) {
            $where["type"] = $type;
        }
        if ($filetype) {
            $where["filetype"] = $filetype;
        }
        $list = M("lession")->where($where)->select();

        foreach ($list as $k => $v) {
            $list[$k]["img"] = __PATH__ . $list[$k]["img"];
            $list[$k]["link"] = "http://weiling.host7.lnasp.com/weiling/index.php/home/api/lession_view?id=" . $list[$k]["id"];
            $list[$k]["filetype"] == 0 ? $list[$k]["filetype"] = "视频" : "PPT";
        }

        if ($list) {
            $output = array('data' => $list, 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));

        } else {
            $output = array('data' => array(), 'info' => '暂无数据', 'code' => '200');
            exit(json_encode($output));
        }
    }


    public function lession_view($id = "", $type = "")
    {
        if ($id == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }
        $list = M("lession")->where("id=$id")->find();
        $list["type"] == 0 ? $list["type"] = "必修课" : $list["type"] = "选修课";
        $list["img"] = __PATH__ . $list["img"];
        $this->assign("list", $list);

        if ($filetype == 0) {
            $this->display("Training/app_detail");
        } else {
            $this->display("Training/app_detail");
        }

    }

    //意见反馈
    public function feedback($token = '', $phone = '', $content = '')
    {
        if ($token == "" || $phone == "" || $content == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }
        $appid = getuid($token);
        $data['appid'] = $appid;
        $data['phone'] = $phone;
        $data['content'] = $content;
        $ok = M("feedback")->add($data);
        if ($ok) {
            $output = array('data' => array(), 'info' => '反馈成功', 'code' => '200');
            exit(json_encode($output));
        } else {
            $output = array('data' => array(), 'info' => '反馈失败', 'code' => '400');
            exit(json_encode($output));
        }
    }


    //会诊医院列表
    public function consultation_hospitallist($field = '')
    {
        if ($field) {
            $where["name"] = array("like", "%$field%");
            $l = M("hospital")->where($where)->select();
            $d = array();
            foreach ($l as $k => $v) {
                $d[$k]["id"] = $l[$k]["id"];
                $d[$k]["name"] = $l[$k]["name"];
                $d[$k]["textprice"] = $l[$k]["textprice"];
                $d[$k]["phoneprice"] = $l[$k]["phoneprice"];
                $d[$k]["videoprice"] = $l[$k]["videoprice"];
                $d[$k]["img"] = __PATH__ . $l[$k]["img"];
                $d[$k]["link"] = "http://weiling.host7.lnasp.com/weiling/index.php/home/api/hospital_view?id=" . $l[$k]["id"];
            }
            $output = array('data' => $d, 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));
        } else {
            $list = M("hospital")->select();
            $data = array();
            foreach ($list as $k => $v) {
                $data[$k]["id"] = $list[$k]["id"];
                $data[$k]["name"] = $list[$k]["name"];
                $data[$k]["textprice"] = $list[$k]["textprice"];
                $data[$k]["phoneprice"] = $list[$k]["phoneprice"];
                $data[$k]["videoprice"] = $list[$k]["videoprice"];
                $data[$k]["img"] = __PATH__ . $list[$k]["img"];
                $data[$k]["link"] = "http://weiling.host7.lnasp.com/weiling/index.php/home/api/hospital_view?id=" . $list[$k]["id"];
            }
            $output = array('data' => $data, 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));
        }
    }

    //会诊订单添加
    public function consultation_order_add($token = '', $type = '', $consultative = '', $content = '', $patientid = '', $price = '', $img = '', $expertid = '', $hospitalid = '')
    {
        if ($token == "" || $type == '' || $consultative == '' || $content == '' || $patientid == '' || $price == '') {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }
        $list = array();
        $data["price"] = $price;
        $data["img"] = $img;
        $data["content"] = $content;
        $data["patientid"] = $patientid;
        $data["time"] = time();
        $data["appid"] = getuid($token);
        $data["pay_status"] = 0;
        $data["order_status"] = 0;
        $data["consultative"] = $consultative;//视频咨询=1 语音咨询=2 图文咨询=3

        if ($consultative == 1) {
            $list["consultative"] = "视频咨询";
        }
        if ($consultative == 2) {
            $list["consultative"] = "语音咨询";
        }
        if ($consultative == 3) {
            $list["consultative"] = "图文咨询";
        }

        $data["type"] = $type; //医院会诊=1 专家会诊=2 平台会诊=3
        $data["ordernumber"] = date('Ymd') . substr(implode(NULL, array_map('ord', str_split(substr(uniqid(), 7, 13), 1))), 0, 8);
        if ($type == 1) {
            $data["hospitalid"] = $hospitalid;
            $data["expertid"] = 0;
            $list["name"] = M("hospital")->where("id=$hospitalid")->getField("name");
            $list["img"] = __PATH__ . M("hospital")->where("id=$hospitalid")->getField("img");
            $list["type"] = "医院会诊";
        }
        if ($type == 2) {
            $data["hospitalid"] = $hospitalid;
            $data["expertid"] = $expertid;
            $list["name"] = M("expert")->where("id=$expertid")->getField("name");
            $list["img"] = __PATH__ . M("expert")->where("id=$expertid")->getField("img");
            $list["type"] = "专家会诊";
        }
        if ($type == 3) {
            $data["hospitalid"] = 0;
            $data["expertid"] = 0;
            $list["name"] = "";
            $list["img"] = "";
            $list["type"] = "平台会诊";
        }
        $list["ordernumber"] = date('Ymd') . substr(implode(NULL, array_map('ord', str_split(substr(uniqid(), 7, 13), 1))), 0, 8);
        $list["price"] = $price;
        $ok = M("consultation_order")->add($data);


        if ($ok) {
            $output = array('data' => $list, 'info' => '添加成功', 'code' => '200');
            exit(json_encode($output));
        } else {
            $output = array('data' => array(), 'info' => '添加失败', 'code' => '400');
            exit(json_encode($output));
        }
    }

    //自主会诊价格
    public function consultation_independentprice()
    {
        $price = M("consultationprice")->select();
        foreach ($price as $k => $v) {
            $data["textprice"] = $price[$k]["textprice"];
            $data["phoneprice"] = $price[$k]["phoneprice"];
            $data["videoprice"] = $price[$k]["videoprice"];
        }
        if ($data) {
            $output = array('data' => $data, 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));
        } else {
            $output = array('data' => array(), 'info' => '暂无数据', 'code' => '200');
            exit(json_encode($output));
        }
    }

    public function consultation_orderlist($token = '', $status = '')
    {
        if ($token == "" || $status == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }
        $uid = getuid($token);
        $status1 = $status;
        if ($status1 == 1) {
            $list = M("consultation_order")->where("appid=$uid")->select();
            foreach ($list as $k => $v) {
                $id = $list[$k]["patientid"];
                $patient = M("patient")->where("id=$id")->getField("name");
                $list[$k]["patientname"] = $patient;
                $type = $list[$k]["type"];
                $list[$k]["time"] = date("Y-m-d", $list[$k]["time"]);
                $orderstatus = $list[$k]["order_status"];
                if ($orderstatus == 0) {
                    $list[$k]["order_status"] = "未接单";
                } else {
                    $list[$k]["order_status"] = "已接单";
                }
                if ($type == 1) {
                    $a = "医院会诊";
                    $list[$k]["type"] = $a;
                }
                if ($type == 2) {
                    $a = "专家会诊";
                    $list[$k]["type"] = $a;
                }
                if ($type == 3) {
                    $a = "平台会诊";
                    $list[$k]["type"] = $a;
                }
                $consultative = $list[$k]["consultative"];
                if ($consultative == 1) {
                    $aa = "视频咨询";
                    $list[$k]["consultative"] = $aa;
                }
                if ($consultative == 2) {
                    $aa = "语音咨询";
                    $list[$k]["consultative"] = $aa;
                }
                if ($consultative == 3) {
                    $aa = "图文咨询";
                    $list[$k]["consultative"] = $aa;
                }
            }
        }
        if ($status1 == 2) {
            $where["type"] = 1;
            $where["appid"] = $uid;
            $list = M("consultation_order")->where($where)->select();
            foreach ($list as $k => $v) {
                $id = $list[$k]["patientid"];
                $patient = M("patient")->where("id=$id")->getField("name");
                $list[$k]["patientname"] = $patient;
                $a = "医院会诊";
                $list[$k]["type"] = $a;
                $list[$k]["time"] = date("Y-m-d", $list[$k]["time"]);
                $orderstatus = $list[$k]["order_status"];
                if ($orderstatus == 0) {
                    $list[$k]["order_status"] = "未接单";
                } else {
                    $list[$k]["order_status"] = "已接单";
                }
                $consultative = $list[$k]["consultative"];
                if ($consultative == 1) {
                    $aa = "视频咨询";
                    $list[$k]["consultative"] = $aa;
                }
                if ($consultative == 2) {
                    $aa = "语音咨询";
                    $list[$k]["consultative"] = $aa;
                }
                if ($consultative == 3) {
                    $aa = "图文咨询";
                    $list[$k]["consultative"] = $aa;
                }
            }
        }
        if ($status1 == 3) {
            $where["type"] = 2;
            $where["appid"] = $uid;
            $list = M("consultation_order")->where($where)->select();
            foreach ($list as $k => $v) {
                $id = $list[$k]["patientid"];
                $patient = M("patient")->where("id=$id")->getField("name");
                $list[$k]["patientname"] = $patient;
                $a = "专家会诊";
                $list[$k]["type"] = $a;
                $list[$k]["time"] = date("Y-m-d", $list[$k]["time"]);
                $orderstatus = $list[$k]["order_status"];
                if ($orderstatus == 0) {
                    $list[$k]["order_status"] = "未接单";
                } else {
                    $list[$k]["order_status"] = "已接单";
                }
                $consultative = $list[$k]["consultative"];
                if ($consultative == 1) {
                    $aa = "视频咨询";
                    $list[$k]["consultative"] = $aa;
                }
                if ($consultative == 2) {
                    $aa = "语音咨询";
                    $list[$k]["consultative"] = $aa;
                }
                if ($consultative == 3) {
                    $aa = "图文咨询";
                    $list[$k]["consultative"] = $aa;
                }
            }
        }
        if ($status1 == 4) {
            $where["type"] = 3;
            $where["appid"] = $uid;
            $list = M("consultation_order")->where($where)->select();
            foreach ($list as $k => $v) {
                $id = $list[$k]["patientid"];
                $patient = M("patient")->where("id=$id")->getField("name");
                $list[$k]["patientname"] = $patient;
                $a = "自主会诊";
                $list[$k]["type"] = $a;
                $list[$k]["time"] = date("Y-m-d", $list[$k]["time"]);
                $orderstatus = $list[$k]["order_status"];
                if ($orderstatus == 0) {
                    $list[$k]["order_status"] = "未接单";
                } else {
                    $list[$k]["order_status"] = "已接单";
                }
                $consultative = $list[$k]["consultative"];
                if ($consultative == 1) {
                    $aa = "视频咨询";
                    $list[$k]["consultative"] = $aa;
                }
                if ($consultative == 2) {
                    $aa = "语音咨询";
                    $list[$k]["consultative"] = $aa;
                }
                if ($consultative == 3) {
                    $aa = "图文咨询";
                    $list[$k]["consultative"] = $aa;
                }
            }
        }

        if ($list) {
            $output = array('data' => $list, 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));
        } else {
            $output = array('data' => array(), 'info' => '暂无数据', 'code' => '200');
            exit(json_encode($output));
        }
    }

    public function medicine_orderlist($token = '')
    {
        if ($token == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }
        $data = array();
        $uid = getuid($token);
        $list = M("order")->where("uid=$uid")->select();
        foreach ($list as $k => $v) {
            $numbering = $list[$k]["numbering"];
            $paystatus = $list[$k]["payment_status"];
            $sendstatus = $list[$k]["send_status"];
            $data[$k]["ordernumber"] = $numbering;
            $data[$k]["sellername"] = M("commodity")->where("numbering=$numbering")->getField("seller_name");

            if ($paystatus == 0) {
                $data[$k]["orderstatus"] = "待付款";
            }
            if ($sendstatus == 0 && $paystatus == 1) {
                $data[$k]["orderstatus"] = "待发货";
            }
            if ($sendstatus == 1 && $paystatus == 1) {
                $data[$k]["orderstatus"] = "待收货";
            }
            if ($sendstatus == 2 && $paystatus == 1) {
                $data[$k]["orderstatus"] = "已完成";
            }

            $data[$k]["allprice"] = $list[$k]["z_price"];
            $data[$k]["time"] = date("Y-m-d", $list[$k]["create_time"]);
        }

        if ($data) {
            $output = array('data' => $data, 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));
        } else {
            $output = array('data' => array(), 'info' => '暂无数据', 'code' => '200');
            exit(json_encode($output));
        }
    }

    //药品支付接口（账户余额支付完成）
    public function medicine_pay($token = '', $orderNumber = '', $type = '')
    {
        if ($token == "" || $orderNumber == "" || $type == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }
        $uid = getuid($token);
        $price = M("order")->where("numbering=$orderNumber")->getField("z_price");
        if ($type == 1) {
            $money = M("app_member")->where("id=$uid")->getField("money");
            if ($money > $price) {
                $data["money"] = $money - $price;
                $data1["payment_status"] = 1;
                $data1["pay_time"] = time();
                $data1["payment"] = 1; //账户余额=1 支付宝=2 微信=3
                $ok = M("app_member")->where("id=$uid")->save($data);
                $ok1 = M("order")->where("numbering=$orderNumber")->save($data1);
                if ($ok && $ok1) {
                    $output = array('data' => array(), 'info' => '支付成功', 'code' => '200');
                    exit(json_encode($output));
                } else {
                    $output = array('data' => array(), 'info' => '支付失败', 'code' => '400');
                    exit(json_encode($output));
                }
            } else {
                $output = array('data' => array(), 'info' => '余额不足', 'code' => '400');
                exit(json_encode($output));
            }

        }

    }

    //会诊支付接口（账户余额支付完成）
    public function consultation_pay($token = '', $orderNumber = '', $type = '')
    {
        if ($token == "" || $orderNumber == "" || $type == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }
        $uid = getuid($token);
        $price = M("consultation_order")->where("ordernumber=$orderNumber")->getField("z_price");
        if ($type == 1) {
            $money = M("app_member")->where("id=$uid")->getField("money");
            if ($money > $price) {
                $data["money"] = $money - $price;
                $data1["payment_status"] = 1;
                $data1["pay_time"] = time();
                $data1["payment"] = 1; //账户余额=1 支付宝=2 微信=3
                $ok = M("app_member")->where("id=$uid")->save($data);
                $ok1 = M("order")->where("ordernumber=$orderNumber")->save($data1);
                if ($ok && $ok1) {
                    $output = array('data' => array(), 'info' => '支付成功', 'code' => '200');
                    exit(json_encode($output));
                } else {
                    $output = array('data' => array(), 'info' => '支付失败', 'code' => '400');
                    exit(json_encode($output));
                }
            } else {
                $output = array('data' => array(), 'info' => '余额不足', 'code' => '400');
                exit(json_encode($output));
            }
        }
    }

    //专家端会诊请求
    public function expertside_requestlist($token = '')
    {
        if ($token == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }
        $arr = array();
        $uid = getuid($token);
        $expertid = M("app_member")->where("id=$uid")->getField("expertid");
        $hospitalid = M("expert")->where("id=$expertid")->getField("hospitalid");

        //医院会诊单
        $where1["pay_status"] = 1;
        $where1["order_status"] = 0;
        $where1["hospitalid"] = $hospitalid;
        $a = M("consultation_order")->where($where1)->field("id,type,time,patientid,appid,hospitalid,expertid,ordernumber,content,price,consultative")->select();

        //专家会诊单
        $where2["pay_status"] = 1;
        $where2["order_status"] = 0;
        $where2["expertid"] = $expertid;
        $b = M("consultation_order")->where($where2)->field("id,type,time,patientid,appid,hospitalid,expertid,ordernumber,content,price,consultative")->select();

        //平台会诊单
        $where3["pay_status"] = 1;
        $where3["order_status"] = 0;
        $where3["expertid"] = 0;
        $where3["hospitalid"] = 0;
        $c = M("consultation_order")->where($where3)->field("id,type,time,patientid,appid,hospitalid,expertid,ordernumber,content,price,consultative")->select();

        foreach ($a as $k => $v) {
            $arr[] = $a[$k];
        }
        foreach ($b as $k => $v) {
            $arr[] = $b[$k];
        }
        foreach ($c as $k => $v) {
            $arr[] = $c[$k];
        }
        $arr = unique_arr($arr);
        foreach ($arr as $v) {
            $arr2[] = $v;
        }
        $arr = $arr2;

        $data = array_map(create_function('$n', 'return $n["time"];'), $arr);
        array_multisort($data, SORT_DESC, $arr);

        foreach ($arr as $aa => $bb) {
            if ($arr[$aa]["consultative"] == 1) {
                $arr[$aa]["consultative"] = "视频咨询";
            }
            if ($arr[$aa]["consultative"] == 2) {
                $arr[$aa]["consultative"] = "语音咨询";
            }
            if ($arr[$aa]["consultative"] == 3) {
                $arr[$aa]["consultative"] = "图文咨询";
            }
            $appid = $arr[$aa]["appid"];
            $pid = $arr[$aa]["patientid"];
            $patient = M("patient")->where("id={$pid}")->getField("name");
            $doctor = M("app_member")->where("id={$appid}")->getField("real_name");
            $phone = M("patient")->where("id={$pid}")->getField("phone");
            $arr[$aa]["doctor"] = $doctor;
            $arr[$aa]["patient"] = $patient;
            $arr[$aa]["phone"] = $phone;
            $arr[$aa]["time"] = date("Y-m-d H:i:s", $arr[$aa]["time"]);
            $arr[$aa]["price"] = sprintf("%.2f", $arr[$aa]["price"]);
            $arr[$aa]["link"] = "";
        }

        if ($arr) {
            $output = array('data' => $arr, 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));
        } else {
            $output = array('data' => array(), 'info' => '暂无数据', 'code' => '200');
            exit(json_encode($output));
        }
    }

    //专家端会诊接单
    public function expertside_accept($token = '', $ordernumber = '', $type = '')
    {
        if ($token == "" || $ordernumber == "" || $type == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }
        $uid = getuid($token);
        $expertid = M("app_member")->where("id=$uid")->getField("expertid");
        $hospitalid = M("expert")->where("id=$expertid")->getField("hospitalid");
        $data = array();
        $data["order_status"] = 1;
        $data["expertid"] = $expertid;
        $data["hospitalid"] = $hospitalid;
        if ($type == 1) {
            $ok = M("consultation_order")->where("ordernumber=$ordernumber")->save($data);
        }
        if ($type == 2) {
            $ok = M("ecgorder")->where("ordernumber=$ordernumber")->save($data);
        }

        if ($ok) {
            $output = array('data' => array(), 'info' => '接单成功', 'code' => '200');
            exit(json_encode($output));
        } else {
            $output = array('data' => array(), 'info' => '接单失败', 'code' => '200');
            exit(json_encode($output));
        }
    }

    //专家端会诊结束
    public function expertside_end($ordernumber = '', $type = '')
    {
        if ($ordernumber == "" || $type == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }
        $data = array();
        $data["order_status"] = 2;
        $data["end_time"] = time();
        if ($type == 1) {
            $ok = M("consultation_order")->where("ordernumber=$ordernumber")->save($data);
            if ($ok) {
                $output = array('data' => array(), 'info' => '结束会诊成功', 'code' => '200');
                exit(json_encode($output));
            } else {
                $output = array('data' => array(), 'info' => '结束会诊失败', 'code' => '200');
                exit(json_encode($output));
            }
        }
        if ($type == 2) {
            $ok = M("ecgorder")->where("ordernumber=$ordernumber")->save($data);
            if ($ok) {
                $output = array('data' => array(), 'info' => '结束会诊成功', 'code' => '200');
                exit(json_encode($output));
            } else {
                $output = array('data' => array(), 'info' => '结束会诊失败', 'code' => '200');
                exit(json_encode($output));
            }
        }

    }

    //专家端当前会诊列表
    public function expertside_currentlist($token = '')
    {
        if ($token == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }
        $uid = getuid($token);
        $expertid = M("app_member")->where("id=$uid")->getField("expertid");
        $where["expertid"] = $expertid;
        $where["order_status"] = 1;
        $data = M("consultation_order")->where($where)->select();
        foreach ($data as $k => $v) {
            if ($data[$k]["consultative"] == 1) {
                $list[$k]["consultative"] = "视频咨询";
            }
            if ($data[$k]["consultative"] == 2) {
                $list[$k]["consultative"] = "语音咨询";
            }
            if ($data[$k]["consultative"] == 3) {
                $list[$k]["consultative"] = "图文咨询";
            }
            $appid = $data[$k]["appid"];
            $pid = $data[$k]["patientid"];
            $patient = M("patient")->where("id={$pid}")->getField("name");
            $doctor = M("app_member")->where("id={$appid}")->getField("real_name");
            $phone = M("patient")->where("id={$pid}")->getField("phone");
            $list[$k]["doctor"] = $doctor;
            $list[$k]["patient"] = $patient;
            $list[$k]["phone"] = $phone;
            $list[$k]["content"] = $data[$k]["content"];
            $list[$k]["ordernumber"] = $data[$k]["ordernumber"];
            $list[$k]["time"] = date("Y-m-d H:i:s", $data[$k]["time"]);
            $list[$k]["price"] = sprintf("%.2f", $data[$k]["price"]);
            $list[$k]["link"] = "";
        }
        if ($list) {
            $output = array('data' => $list, 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));
        } else {
            $output = array('data' => array(), 'info' => '暂无数据', 'code' => '200');
            exit(json_encode($output));
        }
    }

    //专家端会诊完成列表
    public function expertside_endlist($token = '')
    {
        if ($token == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }
        $list = array();
        $uid = getuid($token);
        $expertid = M("app_member")->where("id=$uid")->getField("expertid");
        $where["expertid"] = $expertid;
        $where["order_status"] = 2;
        $data = M("consultation_order")->where($where)->select();
        foreach ($data as $k => $v) {
            if ($data[$k]["consultative"] == 1) {
                $list[$k]["consultative"] = "视频咨询";
            }
            if ($data[$k]["consultative"] == 2) {
                $list[$k]["consultative"] = "语音咨询";
            }
            if ($data[$k]["consultative"] == 3) {
                $list[$k]["consultative"] = "图文咨询";
            }
            $appid = $data[$k]["appid"];
            $pid = $data[$k]["patientid"];
            $patient = M("patient")->where("id={$pid}")->getField("name");
            $doctor = M("app_member")->where("id={$appid}")->getField("real_name");
            $phone = M("patient")->where("id={$pid}")->getField("phone");
            $list[$k]["doctor"] = $doctor;
            $list[$k]["patient"] = $patient;
            $list[$k]["phone"] = $phone;
            $list[$k]["content"] = $data[$k]["content"];
            $list[$k]["ordernumber"] = $data[$k]["ordernumber"];
            $list[$k]["time"] = date("Y-m-d H:i:s", $data[$k]["time"]);
            $list[$k]["endtime"] = date("Y-m-d H:i:s", $data[$k]["end_time"]);
            $list[$k]["price"] = sprintf("%.2f", $data[$k]["price"]);
            $list[$k]["link"] = "";
        }
        if ($list) {
            $output = array('data' => $list, 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));
        } else {
            $output = array('data' => array(), 'info' => '暂无数据', 'code' => '200');
            exit(json_encode($output));
        }
    }

    //心电订单
    public function expertside_ecgorderlist($token = "")
    {
        if ($token == "") {
            $output = array('data' => array(), 'info' => '缺少必要参数', 'code' => '401');
            exit(json_encode($output));
        }

        $data = array();
        $uid = getuid($token);
        $expertid = M("app_member")->where("id=$uid")->getField("expertid");
        $list = M("ecgorder")->where("expertid=$expertid and pay_status=1")->select();
        foreach ($list as $k => $v) {
            $data[$k]["ordernumber"] = $list[$k]["ordernumber"];
            $data[$k]["price"] = sprintf("%.2f", $list[$k]["price"]);
            $data[$k]["content"] = $list[$k]["content"];
            $data[$k]["time"] = date("Y-m-d H:i:s", $list[$k]["time"]);
            $appid = $list[$k]["appid"];
            $pid = $list[$k]["patientid"];
            $patient = M("patient")->where("id={$pid}")->getField("name");
            $patientsex = M("patient")->where("id={$pid}")->getField("sex");
            $patientage = M("patient")->where("id={$pid}")->getField("age");
            $doctor = M("app_member")->where("id={$appid}")->getField("real_name");
            $phone = M("patient")->where("id={$pid}")->getField("phone");
            $data[$k]["patient"] = $patient;
            $data[$k]["patientsex"] = $patientsex;
            $data[$k]["patientage"] = $patientage;
            $data[$k]["phone"] = $phone;
            $data[$k]["doctor"] = $doctor;
            $data[$k]["link"] = "";
            //未接单=0 已接单=1 会诊完成=2
            if ($list[$k]["order_status"] == 0) {
                $data[$k]["order_status"] = "待接单";
            }
            if ($list[$k]["order_status"] == 1) {
                $data[$k]["order_status"] = "进行中";
            }
            if ($list[$k]["order_status"] == 2) {
                $data[$k]["order_status"] = "已完成";
            }
        }
        if ($list) {
            $output = array('data' => $data, 'info' => '查询成功', 'code' => '200');
            exit(json_encode($output));
        } else {
            $output = array('data' => array(), 'info' => '暂无数据', 'code' => '200');
            exit(json_encode($output));
        }

    }


}