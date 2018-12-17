<?php if (!defined('THINK_PATH')) exit();?><div class="bjui-pageContent tableContent">
        <div class="pageFormContent" data-layout-h="0">
          <table class="table table-bordered table-striped table-hover">
           <tbody>
		   <tr><td><label for='id_input' class='control-label x85'>ID:</label><?php echo ($Rs["id"]); ?></td><td><label for='cid_input' class='control-label x85'>客户ID:</label><?php echo ($Rs["cid"]); ?></td></tr>
<tr><td><label for='title_input' class='control-label x85'>客户名称:</label><?php echo ($Rs["title"]); ?></td><td><label for='name_input' class='control-label x85'>联系人:</label><?php echo ($Rs["name"]); ?></td></tr>
<tr><td><label for='sex_input' class='control-label x85'>性别:</label><?php echo ($Rs["sex"]); ?></td><td><label for='zhiwu_input' class='control-label x85'>部门职务:</label><?php echo ($Rs["zhiwu"]); ?></td></tr>
<tr><td><label for='dianhua_input' class='control-label x85'>手机号码:</label><?php echo ($Rs["dianhua"]); ?></td><td><label for='qq_input' class='control-label x85'>QQ:</label><?php echo ($Rs["qq"]); ?></td></tr>
<tr><td><label for='email_input' class='control-label x85'>电子邮箱:</label><?php echo ($Rs["email"]); ?></td><td><label for='aihao_input' class='control-label x85'>兴趣爱好:</label><?php echo ($Rs["aihao"]); ?></td></tr>
<tr></tr>
<tr><td><label for='uname_input' class='control-label x85'>添加人:</label><?php echo ($Rs["uname"]); ?></td><td><label for='addtime_input' class='control-label x85'>添加时间:</label><?php echo ($Rs["addtime"]); ?></td></tr>
<tr><td><label for='uuname_input' class='control-label x85'>更新人:</label><?php echo ($Rs["uuname"]); ?></td><td><label for='updatetime_input' class='control-label x85'>更新时间:</label><?php echo ($Rs["updatetime"]); ?></td></tr>
<tr></tr>
<tr><td colspan=2><label for='beizhu_input' class='control-label x85'>备注:</label><div style='display: inline-block; vertical-align: middle;'><?php echo ($Rs["beizhu"]); ?></div></td></tr>
           </tbody>
          </table>
        </div>
</div>
<div class="bjui-pageFooter">
    <ul>
       <li><button type="button" class="btn-close" data-icon="close">关闭</button></li>
    </ul>
</div>