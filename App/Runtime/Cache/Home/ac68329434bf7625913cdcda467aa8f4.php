<?php if (!defined('THINK_PATH')) exit();?><div class="bjui-pageContent tableContent">
        <div class="pageFormContent" data-layout-h="0">
          <table class="table table-bordered table-striped table-hover">
           <tbody>
		   <tr><td><label for='id_input' class='control-label x85'>ID:</label><?php echo ($Rs["id"]); ?></td><td><label for='bianhao_input' class='control-label x85'>产品编号:</label><?php echo ($Rs["bianhao"]); ?></td></tr>
<tr><td><label for='title_input' class='control-label x85'>产品名称:</label><?php echo ($Rs["title"]); ?></td><td><label for='fenlei_input' class='control-label x85'>产品分类:</label><?php echo ($Rs["fenlei"]); ?></td></tr>
<tr><td><label for='type_input' class='control-label x85'>产品规格:</label><?php echo ($Rs["type"]); ?></td><td><label for='danwei_input' class='control-label x85'>计量单位:</label><?php echo ($Rs["danwei"]); ?></td></tr>
<tr><td><label for='rjiage_input' class='control-label x85'>入库价格:</label><?php echo ($Rs["rjiage"]); ?></td><td><label for='xjiage_input' class='control-label x85'>销售价格:</label><?php echo ($Rs["xjiage"]); ?></td></tr>
<tr><td><label for='kucun_input' class='control-label x85'>库存数量:</label><?php echo ($Rs["kucun"]); ?></td><td><label for='uname_input' class='control-label x85'>添加人:</label><?php echo ($Rs["uname"]); ?></td></tr>
<tr><td><label for='addtime_input' class='control-label x85'>添加时间:</label><?php echo ($Rs["addtime"]); ?></td><td><label for='uuname_input' class='control-label x85'>更新人:</label><?php echo ($Rs["uuname"]); ?></td></tr>
<tr><td><label for='updatetime_input' class='control-label x85'>更新时间:</label><?php echo ($Rs["updatetime"]); ?></td></tr>
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