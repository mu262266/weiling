<?php if (!defined('THINK_PATH')) exit();?><div class="bjui-pageContent tableContent">
        <div class="pageFormContent" data-layout-h="0">
          <table class="table table-bordered table-striped table-hover">
           <tbody>
		   <tr><td><label for='id_input' class='control-label x85'>ID:</label><?php echo ($Rs["id"]); ?></td><td><label for='hid_input' class='control-label x85'>合同ID:</label><?php echo ($Rs["hid"]); ?></td></tr>
<tr><td><label for='number_input' class='control-label x85'>合同编号:</label><?php echo ($Rs["number"]); ?></td><td><label for='bianhao_input' class='control-label x85'>产品编号:</label><?php echo ($Rs["bianhao"]); ?></td></tr>
<tr><td><label for='title_input' class='control-label x85'>产品名称:</label><?php echo ($Rs["title"]); ?></td><td><label for='fenlei_input' class='control-label x85'>产品分类:</label><?php echo ($Rs["fenlei"]); ?></td></tr>
<tr><td><label for='type_input' class='control-label x85'>产品规格:</label><?php echo ($Rs["type"]); ?></td><td><label for='danwei_input' class='control-label x85'>计量单位:</label><?php echo ($Rs["danwei"]); ?></td></tr>
<tr><td><label for='shuliang_input' class='control-label x85'>出库数量:</label><?php echo ($Rs["shuliang"]); ?></td><td><label for='beizhu_input' class='control-label x85'>备注:</label><?php echo ($Rs["beizhu"]); ?></td></tr>
<tr><td><label for='jingban_input' class='control-label x85'>经办人:</label><?php echo ($Rs["jingban"]); ?></td><td><label for='shijian_input' class='control-label x85'>出库时间:</label><?php echo ($Rs["shijian"]); ?></td></tr>
<tr><td><label for='shenhe_input' class='control-label x85'>审核状态:</label><?php echo ($Rs["shenhe"]); ?></td><td><label for='xid_input' class='control-label x85'>相关ID:</label><?php echo ($Rs["xid"]); ?></td></tr>
<tr><td><label for='edit_input' class='control-label x85'>是否编辑:</label><?php echo ($Rs["edit"]); ?></td>
           </tbody>
          </table>
        </div>
</div>
<div class="bjui-pageFooter">
    <ul>
       <li><button type="button" class="btn-close" data-icon="close">关闭</button></li>
    </ul>
</div>