<?php if (!defined('THINK_PATH')) exit();?><SCRIPT language=JavaScript>
function CheckAll(form)
  {
  for (var i=0;i<form.elements.length;i++)
    {
    var e = form.elements[i];
    if (e.name != 'chkall' )
       e.checked = form.chkall.checked;
    }
  }
//-->
    </SCRIPT>
<div class="bjui-pageContent tableContent">
 <form action="/weiling/index.php?s=/Home/Dep/EditRule/navTabId/<?php echo CONTROLLER_NAME;?>" class="pageForm" data-toggle="validate">
 <input type="hidden" name="id" value="<?php echo ($id); ?>">
    <div class="pageFormContent" data-layout-h="0">
     <table class="table table-condensed table-hover" width="100%">
        <thead>
            <tr>
            <th width="30" height="30"></th>
				<th><input onclick=CheckAll(this.form) type=checkbox value=on name=chkall /> 全选</th>
				<th>菜单</th>
            </tr>
        </thead>
        <tbody>
       <?php if(is_array($list)): foreach($list as $key=>$v): ?><tr>
        <td height=25></td><Td>
	   <input type="checkbox" name="rules[]" <?php if(in_array($v[id],$rs)): ?>checked="checked"<?php endif; ?> value="<?php echo ($v["id"]); ?>">  <?php echo ($v["title"]); ?>
        
	    </td>
		<td>
		<Table width="100%">
		<?php $list1 = M('auth_rule')->where('level=1 and pid='.$v['id'])->order('sort')->select(); ?>
		<?php if(is_array($list1)): foreach($list1 as $key=>$v): ?><Tr><Td height=30 width=200>
        <input type="checkbox" name="rules[]" <?php if(in_array($v[id],$rs)): ?>checked="checked"<?php endif; ?> value="<?php echo ($v["id"]); ?>">  <?php echo ($v["title"]); ?>
	    </td>
		<td>
		
		<?php $list2 = M('auth_rule')->where('level=2 and pid='.$v['id'])->order('sort')->select(); ?>
		<?php if(is_array($list2)): foreach($list2 as $key=>$v): ?><span style="width:150px;">
	    <input type="checkbox" name="rules[]" <?php if(in_array($v[id],$rs)): ?>checked="checked"<?php endif; ?> value="<?php echo ($v["id"]); ?>">  <?php echo ($v["title"]); endforeach; endif; ?> 
	
		</td>
		</tr><?php endforeach; endif; ?> 
		</table>
		</td>
        </tr><?php endforeach; endif; ?>
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