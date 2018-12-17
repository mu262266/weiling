<?php if (!defined('THINK_PATH')) exit();?><div class="bjui-pageHeader">
<form id="pagerForm" data-toggle="ajaxsearch" action="/weiling/index.php?s=/Home/Menu" method="post">
	
	<input type="hidden" name="pageSize" value="<?php echo ($numPerPage); ?>">
    <input type="hidden" name="pageCurrent" value="<?php echo ((isset($_REQUEST['pageNum']) && ($_REQUEST['pageNum'] !== ""))?($_REQUEST['pageNum']):1); ?>">
	 
        <div class="bjui-searchBar">
		      <?php if(display(CONTROLLER_NAME.'/del')){ ?><span style="float:right;" ><a href="/weiling/index.php?s=/Home/Menu/del/navTabId/<?php echo CONTROLLER_NAME;?>" class="btn btn-red" data-toggle="doajax" data-confirm-msg="确定要清理吗？" data-icon="remove">清理</a></span><?php } ?>
			  <?php if(display(CONTROLLER_NAME.'/add')){ ?><span style="float:right;margin-right:5px;"><a href="/weiling/index.php?s=/Home/Menu/add/navTabId/<?php echo CONTROLLER_NAME;?>" class="btn btn-green" data-toggle="dialog" data-width="600" data-height="300" data-id="dialog-mask" data-mask="true" data-icon="plus">新增</a></span><?php } ?>
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
				<th>菜单名称</th>
				<th>排序</th>
				<th>链接网址</th>
				<?php if(display(CONTROLLER_NAME.'/lock')){ ?><th>状态</th><?php } ?>
				<?php if(display(CONTROLLER_NAME.'/edit')){ ?><th>操作</th><?php } ?>
            </tr>
        </thead>
        <tbody>
        <?php if(is_array($list)): foreach($list as $key=>$v): ?><tr>
        <td height=25></td><Td><?php echo ($v["id"]); ?></td><Td>
		<?php switch($v["level"]): case "0": ?>+<B><?php echo ($v["catename"]); ?></b><?php break;?> <?php case "1": ?>+--<?php echo ($v["catename"]); break; case "2": ?>+------<?php echo ($v["catename"]); break; default: endswitch;?>
	   </td>
	    <Td><?php echo ($v["sort"]); ?></td>
        <td><?php echo ($v["alink"]); ?></td>
        <?php if(display(CONTROLLER_NAME.'/lock')){ ?><td><a href="/weiling/index.php?s=/Home/Menu/lock/id/<?php echo ($v['id']); ?>/navTabId/<?php echo CONTROLLER_NAME;?>" data-toggle="doajax" data-confirm-msg="确定要操作吗？"><?php if($v["status"] == 1 ): ?><img src="/weiling/Public/images/ok.gif" border="0"/><?php else: ?><img src="/weiling/Public/images/locked.gif" border="0"/><?php endif; ?></a></td><?php } ?>
		<?php if(display(CONTROLLER_NAME.'/edit')){ ?><td> <a href="/weiling/index.php?s=/Home/Menu/edit/id/<?php echo ($v['id']); ?>/navTabId/<?php echo CONTROLLER_NAME;?>"   class="btn btn-green btn-sm" data-toggle="dialog" data-width="600" data-height="300" data-id="dialog-mask" data-mask="true" >编辑</a></td><?php } ?>

        </tr><?php endforeach; endif; ?>
        </tbody>
    </table>
</div>