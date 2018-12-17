<?php if (!defined('THINK_PATH')) exit();?><div class="bjui-pageContent tableContent">
    <form action="/weiling/index.php?s=/Home/Member/add/navTabId/<?php echo CONTROLLER_NAME;?>" class="pageForm" data-toggle="validate"
          enctype="multipart/form-data">

        <div class="pageFormContent" data-layout-h="0">
            <table class="table table-condensed table-hover" width="100%">
                <tbody>
                <tr>
                    <td>
                        <label for="j_title" class="control-label x85">登陆账号:</label>
                        <input type="text" data-rule="username,required" size="25" name="user_account" id="j_username"
                               value=""
                        <?php if($id == 0): else: ?>
                            disabled="disabled"<?php endif; ?>
                        >
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="j_title" class="control-label x85">登陆密码:</label>
                        <input type="password" data-rule="password,required" size="25" name="user_password" id="j_pwd"
                               value="">

                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="j_title" class="control-label x85">真实姓名：</label>
                        <input type="text" data-rule="chinese,required" size="25" name="real_name" id="j_truename"
                               value="">
                    </td>
                </tr>

                <tr>
                    <td>
                        <label for="j_title" class="control-label x85">用户角色：</label>
                        <select name="type"  data-toggle="selectpicker" data-rule="required">
                            <option value="0"> </option>
                            <option value="1">村医</option>
                            <option value="2">专家</option>

                        </select>
                    </td>
                </tr>

                <tr>
                    <td>
                        <label for="j_title" class="control-label x85">头像:</label>

                        <input type="file" name="headimg">
                    </td>
                </tr>

                <tr>
                    <td>
                        <label for="j_title" class="control-label x85">身份证：</label>
                        <input type="text" data-rule="ID_card,required" size="25" name="idcard" id="j_idcard" value="">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="j_title" class="control-label x85">电话： </label>
                        <input name="telephone" data-rule="mobile,required" id="j_phone" value="" type="text"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="j_title" class="control-label x85">性别：</label>
                        <select name="sex" data-toggle="selectpicker" data-rule="required">

                            <option value="0">男</option>
                            <option value="1">女</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="j_title" class="control-label x85">年龄： </label>
                        <input name="age" data-rule="required" id="j_age" value="" type="text"/>
                    </td>
                </tr>

                <tr>
                    <td>
                        <label for="j_title" class="control-label x85">出生日期：</label>
                        <input type="text" data-rule="date,required" size="25" name="birth" id="j_tel" value="">
                        <span>请按以下格式填写 2018/10/18</span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="j_title" class="control-label x85">所属地区：</label>
                        <input type="text" data-rule="required" size="25" name="area" id="j_area" value="">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="j_title" class="control-label x85">资质证明：</label>
                        <input type="text" data-rule="required" size="25" name="aptitude" id="j_aptitude" value="">
                    </td>
                </tr>

                <tr id="show1" style="display: none">
                    <td>
                        <label for="j_title" class="control-label x85">图文咨询价格：</label>
                        <input name="textprice" data-rule="" id="j_textprice" value="" type="text"/>
                    </td>
                </tr>
                <tr id="show2" style="display: none">
                    <td>
                        <label for="j_title" class="control-label x85">语音咨询价格：</label>
                        <input name="phoneprice" data-rule="" id="j_phoneprice" value="" type="text"/>

                    </td>
                </tr>
                <tr id="show3" style="display: none">
                    <td>
                        <label for="j_title" class="control-label x85">视频咨询价格：</label>
                        <input name="videoprice" data-rule="" id="j_videoprice" value="" type="text"/>
                    </td>
                </tr>
                <tr id="show5" style="display: none">
                    <td>
                        <label for="j_title" class="control-label x85">会诊开始时间：</label>
                        <input name="start_hour" data-rule="" id="j_start_hour" value="" type="text"/>
                    </td>
                </tr>
                <tr id="show6" style="display: none">
                    <td>
                        <label for="j_title" class="control-label x85">会诊结束时间：</label>
                        <input name="end_hour" data-rule="" id="j_end_hour" value="" type="text"/>
                    </td>
                </tr>
                <tr id="show4" style="display: none">
                    <td>
                        <label for="j_title" class="control-label x85">医院：</label>
                        <select name="hospital" data-toggle="" data-rule="required">
                            <option value="0">无</option>
                            <option value="1">123</option>
                        </select>
                    </td>
                </tr>
                <tr id="show7" style="display: none">
                    <td>
                        <label for="j_title" class="control-label x85">职位：</label>
                        <input name="position" data-rule="" id="j_position" value="" type="text"/>
                    </td>
                </tr>
                <tr id="show8" style="display: none">
                    <td>
                        <label for="j_title" class="control-label x85">简介：</label>
                        <input name="introduction" data-rule="" id="j_introduction" value="" type="text"/>
                    </td>
                </tr>
                <tr id="show9" style="display: none">
                    <td>
                        <label for="j_title" class="control-label x85">详细介绍：</label>
                        <input name="content" data-rule="" id="j_content" value="" type="text"/>
                    </td>
                </tr>
                <tr id="show10" style="display: none">
                    <td>

                        <label for="j_title" class="control-label x85">关联基层端：</label><br>
                        <?php if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><input type="checkbox" name="relation[]" value="<?php echo ($v['id']); ?>" ><?php echo ($v["real_name"]); ?><br><?php endforeach; endif; else: echo "" ;endif; ?>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </form>
</div>
<div class="bjui-pageFooter">
    <ul>
        <li>
            <button type="button" class="btn-close" data-icon="close">取消</button>
        </li>
        <li>
            <button type="submit" class="btn-default" data-icon="save">保存</button>
        </li>
    </ul>
</div>
<script>

    $(function () {
        $("select[name=type]").change(function () {
            var value = $(this).val();
            if (value != 2) {
                $("tr[id=show1]").hide();
                $("tr[id=show2]").hide();
                $("tr[id=show3]").hide();
                $("tr[id=show4]").hide();
                $("tr[id=show5]").hide();
                $("tr[id=show6]").hide();
                $("tr[id=show7]").hide();
                $("tr[id=show8]").hide();
                $("tr[id=show9]").hide();
                $("tr[id=show10]").hide();
            } else {
                $("tr[id=show1]").show();
                $("tr[id=show2]").show();
                $("tr[id=show3]").show();
                $("tr[id=show4]").show();
                $("tr[id=show5]").show();
                $("tr[id=show6]").show();
                $("tr[id=show7]").show();
                $("tr[id=show8]").show();
                $("tr[id=show9]").show();
                $("tr[id=show10]").show();
            }
        });
    });


</script>