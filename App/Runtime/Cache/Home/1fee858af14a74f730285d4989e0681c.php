<?php if (!defined('THINK_PATH')) exit();?><div class="bjui-pageContent tableContent">
        <div class="pageFormContent" data-layout-h="0">
          <table class="table table-bordered table-striped table-hover">
           <tbody>
		   <tr><td><label for='id_input' class='control-label x85'>ID:</label><?php echo ($Rs["id"]); ?></td><td><label for='hid_input' class='control-label x85'>合同ID:</label><?php echo ($Rs["hid"]); ?></td></tr>
<tr><td><label for='bianhao_input' class='control-label x85'>合同编号:</label><?php echo ($Rs["bianhao"]); ?></td><td><label for='mingcheng_input' class='control-label x85'>合同名称:</label><?php echo ($Rs["mingcheng"]); ?></td></tr>
<tr><td><label for='title_input' class='control-label x85'>客户名称:</label><?php echo ($Rs["title"]); ?></td><td><label for='uname_input' class='control-label x85'>添加人:</label><?php echo ($Rs["uname"]); ?></td></tr>
<tr><td><label for='addtime_input' class='control-label x85'>添加时间:</label><?php echo ($Rs["addtime"]); ?></td><td><label for='uuname_input' class='control-label x85'>更新人:</label><?php echo ($Rs["uuname"]); ?></td></tr>
<tr><td><label for='updatetime_input' class='control-label x85'>更新时间:</label><?php echo ($Rs["updatetime"]); ?></td></tr>
<tr><td colspan=2><label for='content_input' class='control-label x85'>投诉内容:</label><div style='display: inline-block; vertical-align: middle;'><?php echo ($Rs["content"]); ?></div></td></tr></tr>
<tr><td colspan=2><label for='beizhu_input' class='control-label x85'>处理结果:</label><div style='display: inline-block; vertical-align: middle;'><?php echo ($Rs["beizhu"]); ?></div></td></tr>
           </tbody>
          </table>
        </div>
</div>
<div class="bjui-pageFooter">
    <ul>
       <li><button type="button" class="btn-close" data-icon="close">关闭</button></li>
    </ul>
</div>