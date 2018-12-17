<?php if (!defined('THINK_PATH')) exit();?><div class="bjui-pageContent tableContent">
    <form action="/weiling/index.php?s=/Home/Rule/add/navTabId/<?php echo CONTROLLER_NAME;?>" class="pageForm" data-toggle="validate">
		<input type="hidden" name="id" value="<?php echo ($id); ?>">
        <div class="pageFormContent" data-layout-h="0">
          <table class="table table-condensed table-hover" width="100%">
           <tbody>
			<tr><td>
               <label for="j_name" class="control-label x85">上级权限：</label><select  name="pid" data-toggle="selectpicker" data-rule="required">
               <option  value="0">顶级</option>
	          <?php if(is_array($list)): foreach($list as $key=>$v): ?><option <?php if($v["id"] == $Rs['pid'] ): ?>selected value="<?php echo ($Rs['pid']); ?>" <?php else: ?>value="<?php echo ($v["id"]); ?>"<?php endif; ?> >
             	<?php switch($v["level"]): case "0": ?>+<?php break;?> <?php case "1": ?>+--<?php break; case "2": ?>+------<?php break; default: endswitch;?>
	           <?php echo ($v["title"]); ?> <?php if($v["status"] == 1 ): else: ?><font color=red>[未启用]</font><?php endif; ?>
	           </option><?php endforeach; endif; ?>
             </select>
            </td></tr>
            <tr><td>
                <label for="j_title" class="control-label x85">权限名称：</label>
                <input type="text" data-rule="required" size="30" name="title" id="j_title" value="<?php echo ($Rs['title']); ?>" >
            </td></tr>
            <tr><td>
                <label for="j_title" class="control-label x85">权限网址：</label>
                <input type="text" data-rule="required" size="30" name="name" id="j_name" value="<?php echo ($Rs['name']); ?>" >
				<span>模块/动作/方法</span>
            </td></tr>
			<?php if($id == '' ): else: ?>
            <tr><td>
                <label for="j_status" class="control-label x85">是否启用：</label>
               <select name="status"  data-container="body"  id="j_status" data-toggle="selectpicker" data-rule="required">
			    <?php if($Rs['status'] == 1 ): ?><option value="1" selected>启用</option><?php else: ?><option value="0" selected>禁用</option><?php endif; ?>
                <option value="1">启用</option>
                <option value="0">禁用</option>
                 </select>
             </td></tr><?php endif; ?>
              <tr><td>
                <label for="j_sort" class="control-label x85">排序：</label>
                <input type="text"  size="5" data-toggle="spinner" data-min="0" data-max="100" data-step="1" data-rule="integer" name="sort" id="j_sort" value="<?php echo ($Rs['sort']); ?>" >
            </td></tr>
			<tr><td>
                <label for="j_sort" class="control-label x85">下级功能：</label>
               <input type="checkbox" name="view"  data-toggle="icheck" value="true" data-label="查看">
			   <input type="checkbox" name="add"  data-toggle="icheck" value="true" data-label="新增">
			   <input type="checkbox" name="edit"  data-toggle="icheck" value="true" data-label="编辑">
			   <input type="checkbox" name="lock"  data-toggle="icheck" value="true" data-label="锁定">
			   <input type="checkbox" name="del"  data-toggle="icheck" value="true" data-label="删除">
			   <input type="checkbox" name="outxls"  data-toggle="icheck" value="true" data-label="导出">
			   <input type="checkbox" name="shenhe"  data-toggle="icheck" value="true" data-label="审核">
			   <input type="checkbox" name="dayin"  data-toggle="icheck" value="true" data-label="打印">
			   </td></tr>
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