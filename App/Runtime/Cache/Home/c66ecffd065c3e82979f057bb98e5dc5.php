<?php if (!defined('THINK_PATH')) exit();?><div class="bjui-pageContent">
    <form action="/weiling/index.php?s=/Home/Chanpin/add/navTabId/<?php echo CONTROLLER_NAME;?>" class="pageForm" data-toggle="validate">
		<input type="hidden" name="id" value="<?php echo ($id); ?>">
        <div class="pageFormContent" data-layout-h="0">
          <table class="table table-condensed table-hover" width="100%">
           <tbody>
			<tr><td><label for='bianhao_input' class='control-label x85'>产品编号:</label><input type='text' id='bianhao' name='bianhao' data-rule='required;' size='20'   value='<?php echo ($Rs["bianhao"]); ?>'  ></td><td><label for='title_input' class='control-label x85'>产品名称:</label><input type='text' id='title' name='title' data-rule='required;' size='20'   value='<?php echo ($Rs["title"]); ?>'  ></td></tr>
<tr><td><label for='fenlei_input' class='control-label x85'>产品分类:</label><select name='fenlei'  data-toggle='selectpicker' ><option value=''>请选择</option><?php if(is_array(C("CHANPIN_FENLEI"))): $i = 0; $__LIST__ = C("CHANPIN_FENLEI");if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$fenlei): $mod = ($i % 2 );++$i;?><option value='<?php echo ($fenlei); ?>' <?php if( $fenlei == $Rs['fenlei'] ): ?>selected<?php endif; ?> ><?php echo ($fenlei); ?></option><?php endforeach; endif; else: echo "" ;endif; ?></select></td><td><label for='type_input' class='control-label x85'>产品规格:</label><input type='text' id='type' name='type'  size='20'   value='<?php echo ($Rs["type"]); ?>'  ></td></tr>
<tr><td><label for='danwei_input' class='control-label x85'>计量单位:</label><select name='danwei'  data-toggle='selectpicker' ><option value=''>请选择</option><?php if(is_array(C("CHANPIN_DANWEI"))): $i = 0; $__LIST__ = C("CHANPIN_DANWEI");if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$danwei): $mod = ($i % 2 );++$i;?><option value='<?php echo ($danwei); ?>' <?php if( $danwei == $Rs['danwei'] ): ?>selected<?php endif; ?> ><?php echo ($danwei); ?></option><?php endforeach; endif; else: echo "" ;endif; ?></select></td><td><label for='rjiage_input' class='control-label x85'>入库价格:</label><input type='text' id='rjiage' name='rjiage' data-rule='required;number' size='20'   value='<?php echo ($Rs["rjiage"]); ?>'  ></td></tr>
<tr><td><label for='xjiage_input' class='control-label x85'>销售价格:</label><input type='text' id='xjiage' name='xjiage' data-rule='required;number' size='20'   value='<?php echo ($Rs["xjiage"]); ?>'  ></td></tr>
<tr><td colspan=2><label for='beizhu_input' class='control-label x85'>备注:</label><textarea name='beizhu'  cols='65' rows='5' ><?php echo ($Rs["beizhu"]); ?></textarea></td></tr>
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