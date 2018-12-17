<?php if (!defined('THINK_PATH')) exit();?>
<div class="bjui-pageHeader">
<form id="pagerForm" data-toggle="ajaxsearch" action="/weiling/index.php?s=/Home/Dep" method="post">
	
	<input type="hidden" name="pageSize" value="<?php echo ($numPerPage); ?>">
    <input type="hidden" name="pageCurrent" value="<?php echo ((isset($_REQUEST['pageNum']) && ($_REQUEST['pageNum'] !== ""))?($_REQUEST['pageNum']):1); ?>">
	 
        <div class="bjui-searchBar">
		      <?php if(display(CONTROLLER_NAME.'/del')){ ?><span style="float:right;" ><a href="/weiling/index.php?s=/Home/Dep/del/navTabId/<?php echo CONTROLLER_NAME;?>" class="btn btn-red" data-toggle="doajax" data-confirm-msg="确定要清理吗？" data-icon="remove">清理</a></span><?php } ?>
			  <?php if(display(CONTROLLER_NAME.'/add')){ ?><span style="float:right;margin-right:5px;"><a href="/weiling/index.php?s=/Home/Dep/add/type/1/navTabId/<?php echo CONTROLLER_NAME;?>" class="btn btn-green" data-toggle="dialog" data-width="600" data-height="300" data-id="dialog-mask" data-mask="true" data-icon="plus">新增职位</a></span><?php } ?>
			  <span><a class="btn btn-orange" href="javascript:;" onclick="$(this).navtab('reloadForm', true);" data-icon="undo">刷新</a></span>
		</div> 
</form>
    
</div>
<div class="bjui-pageContent tableContent">
     <table data-toggle="tablefixed" data-width="100%" data-layout-h="0" data-nowrap="true">
        <thead>
            <tr>
            <th width="30" height="30"></th>
            <th>编号</th>
			<th>职位名称</th>
			<?php if(display(CONTROLLER_NAME.'/edit')){ ?><th>操作</th><?php } ?>
			<th width="70%"></th>
            </tr>
        </thead>
        <tbody>

       <?php if(is_array($list)): foreach($list as $key=>$v): ?><tr>
        <td height=25></td><Td><?php echo ($v["id"]); ?></td><Td>
		<B>+</b><?php echo ($v["title"]); ?>
	    <?php echo ($v["sort"]); ?> <?php if($v["status"] == 1 ): else: ?><img src="/weiling/Public/images/locked.gif" border="0"/><?php endif; ?>
	    </td>
		<?php if(display(CONTROLLER_NAME.'/edit')){ ?><td> <a href="/weiling/index.php?s=/Home/Dep/edit/id/<?php echo ($v['id']); ?>/type/1/navTabId/<?php echo CONTROLLER_NAME;?>"   class="btn btn-green btn-sm" data-toggle="dialog" data-width="600" data-height="300" data-id="dialog-mask" data-mask="true" >编辑</a>
		    <a href="/weiling/index.php?s=/Home/Dep/editrule/id/<?php echo ($v['id']); ?>/type/1/navTabId/<?php echo CONTROLLER_NAME;?>"   class="btn btn-green btn-sm" data-toggle="dialog" data-width="950" data-height="500" data-id="dialog-mask" data-mask="true" >权限</a>
		</td><?php } ?>
		<td>
		</td>
        </tr><?php endforeach; endif; ?>
        </tbody>
    </table>
</div>