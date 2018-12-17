<?php if (!defined('THINK_PATH')) exit();?><div class="bjui-pageContent tableContent">
    <form action="/123123/index.php?s=/Home/Cust/edit/navTabId/<?php echo CONTROLLER_NAME;?>" class="pageForm" data-toggle="validate">
		<input type="hidden" name="id" value="<?php echo ($id); ?>">
        <div class="pageFormContent" data-layout-h="0">
          <table class="table table-condensed table-hover" width="100%">
           <tbody>
		   <tr><td><label for='xuqiu_input' class='control-label x85'>需求类型:</label><select name='xuqiu'  data-toggle='selectpicker' ><option value=''>请选择</option><?php if(is_array(C("CUST_XUQIU"))): $i = 0; $__LIST__ = C("CUST_XUQIU");if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$xuqiu): $mod = ($i % 2 );++$i;?><option value='<?php echo ($xuqiu); ?>' <?php if( $xuqiu == $Rs['xuqiu'] ): ?>selected<?php endif; ?> ><?php echo ($xuqiu); ?></option><?php endforeach; endif; else: echo "" ;endif; ?></td><td><label for='title_input' class='control-label x85'>客户名称:</label><input type='text' id='title' name='title' data-rule='required;' size='20'   value='<?php echo ($Rs["title"]); ?>'  ></td></tr>
<tr><td><label for='name_input' class='control-label x85'>联系人:</label><input type='text' id='name' name='name'  size='20'   value='<?php echo ($Rs["name"]); ?>'  ></td><td><label for='dianhua_input' class='control-label x85'>手机号码:</label><input type='text' id='dianhua' name='dianhua' data-rule='required;' size='20'   value='<?php echo ($Rs["dianhua"]); ?>'  ></td></tr>
<tr><td><label for='dizhi_input' class='control-label x85'>联系地址:</label><input type='text' id='dizhi' name='dizhi'  size='20'   value='<?php echo ($Rs["dizhi"]); ?>'  ></td><td><label for='qq_input' class='control-label x85'>QQ:</label><input type='text' id='qq' name='qq'  size='20'   value='<?php echo ($Rs["qq"]); ?>'  ></td></tr>
<tr><td><label for='email_input' class='control-label x85'>电子邮箱:</label><input type='text' id='email' name='email'  size='20'   value='<?php echo ($Rs["email"]); ?>'  ></td><td><label for='laiyuan_input' class='control-label x85'>客户来源:</label><select name='laiyuan'  data-toggle='selectpicker' ><option value=''>请选择</option><?php if(is_array(C("CUST_LAIYUAN"))): $i = 0; $__LIST__ = C("CUST_LAIYUAN");if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$laiyuan): $mod = ($i % 2 );++$i;?><option value='<?php echo ($laiyuan); ?>' <?php if( $laiyuan == $Rs['laiyuan'] ): ?>selected<?php endif; ?> ><?php echo ($laiyuan); ?></option><?php endforeach; endif; else: echo "" ;endif; ?></td></tr>
<tr><td><label for='aihao_input' class='control-label x85'>兴趣爱好:</label><input type='text' id='aihao' name='aihao'  size='20'   value='<?php echo ($Rs["aihao"]); ?>'  ></td></tr>
<tr><td><label for='juname_input' class='control-label x85'>分享给:</label><input type='text' id='juname' name='juname'  size='20' data-toggle='lookup' data-url='/123123/index.php?s=/Home/basic/user/navTabId/<?php echo CONTROLLER_NAME;?>'  value='<?php echo ($Rs["juname"]); ?>'  ></td></tr>
<tr></tr>
<tr><td colspan=2><input type='hidden' id='juid' name='juid'  size='0'   value='<?php echo ($Rs["juid"]); ?>'  ></td></tr></tr>
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