<?php if (!defined('THINK_PATH')) exit();?><div class="bjui-pageContent tableContent">
    <form action="/weiling/index.php?s=/Home/Custgd/add/navTabId/<?php echo CONTROLLER_NAME;?>" class="pageForm" data-toggle="validate">
		<input type="hidden" name="id" value="<?php echo ($id); ?>">
        <div class="pageFormContent" data-layout-h="0">
          <table class="table table-condensed table-hover" width="100%">
           <tbody>
			<tr><td><label for='title_input' class='control-label x85'>客户名称:</label><input type='text' id='title' name='title'  size='20' data-toggle='lookup' data-url='/weiling/index.php?s=/Home/basic/cust/navTabId/<?php echo CONTROLLER_NAME;?>'  value='<?php echo I("title");?>'  ></td></tr>
<tr><td><label for='type_input' class='control-label x85'>跟单方式:</label><select name='type'  data-toggle='selectpicker' ><option value=''>请选择</option><?php if(is_array(C("CUSTGD_TYPE"))): $i = 0; $__LIST__ = C("CUSTGD_TYPE");if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$type): $mod = ($i % 2 );++$i;?><option value='<?php echo ($type); ?>' <?php if( $type == $Rs['type'] ): ?>selected<?php endif; ?> ><?php echo ($type); ?></option><?php endforeach; endif; else: echo "" ;endif; ?></td></tr>
<tr><td><label for='jinzhan_input' class='control-label x85'>进展阶段:</label><select name='jinzhan'  data-toggle='selectpicker' ><option value=''>请选择</option><?php if(is_array(C("CUSTGD_JINZHAN"))): $i = 0; $__LIST__ = C("CUSTGD_JINZHAN");if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$jinzhan): $mod = ($i % 2 );++$i;?><option value='<?php echo ($jinzhan); ?>' <?php if( $jinzhan == $Rs['jinzhan'] ): ?>selected<?php endif; ?> ><?php echo ($jinzhan); ?></option><?php endforeach; endif; else: echo "" ;endif; ?></td><td><label for='xiaci_input' class='control-label x85'>下次联系:</label><input type='text' data-toggle='datepicker' data-pattern='yyyy-MM-dd HH:mm:ss' id='xiaci' name='xiaci'   size='20'   value='<?php echo ($Rs["xiaci"]); ?>'  ></td></tr>
<tr></tr>
<tr><td colspan=2><input type='hidden' id='cid' name='cid'  size='0'   value='<?php echo I("cid");?>'  ></td></tr></tr>
<tr><td colspan=2><label for='content_input' class='control-label x85'>跟单详情:</label><textarea name='content'  cols='65' rows='5' ><?php echo ($Rs["content"]); ?></textarea></td></tr>
           </tbody>
          </table>
        </div>
    </form>
</div>
<div class="bjui-pageFooter">
    <ul>
       <li><button type="button" class="btn-close" data-icon="close">取消</button></li>
       <li><button type="submit" class="btn-default" data-icon="save">保存</button></li>
    </ul>
</div>