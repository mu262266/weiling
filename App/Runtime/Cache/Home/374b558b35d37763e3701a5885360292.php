<?php if (!defined('THINK_PATH')) exit();?><div class="bjui-pageHeader">
<form id="pagerForm" data-toggle="ajaxsearch" action="/123123/index.php?s=/Home/Picture" method="post">
	
	<input type="hidden" name="pageSize" value="<?php echo ($numPerPage); ?>">
    <input type="hidden" name="pageCurrent" value="<?php echo ((isset($_REQUEST['pageNum']) && ($_REQUEST['pageNum'] !== ""))?($_REQUEST['pageNum']):1); ?>">
	 
        <div class="bjui-searchBar">
            <label>关键词：</label><input type="text" value="<?php echo ($_REQUEST['keys']); ?>" name="keys" class="form-control" size="15" />
			
             <button type="submit"  class="btn-default" data-icon="search">查询</button>
              <a class="btn btn-orange" href="javascript:;" onclick="$(this).navtab('reloadForm', true);" data-icon="undo">清空查询</a>
			  
			  <?php if(display(CONTROLLER_NAME.'/add')){ ?><span style="float:right;margin-right:5px;"><a href="/123123/index.php?s=/Home/Picture/add/navTabId/<?php echo CONTROLLER_NAME;?>" class="btn btn-green" data-toggle="dialog" data-width="600" data-height="450" data-id="dialog-mask" data-mask="true" data-icon="plus">新增</a></span><?php } ?>
		</div> 
</form>
    
</div>
<div class="bjui-pageContent tableContent">
     <table data-toggle="tablefixed" data-width="100%" data-layout-h="0" data-nowrap="true">
        <thead>
            <tr>
            <th width="30" height="30"></th>
            <th>编号</th>
			<th>图片</th>
			
			<th>轮播图名称</th>
			<th>链接地址</th>
            
            
            
	    	
           
            
			<?php if(display(CONTROLLER_NAME.'/lock')){ ?><th>状态</th><?php } ?>
            <?php if(display(CONTROLLER_NAME.'/edit')){ ?><th>编辑</th><?php } ?>
             <?php if(display(CONTROLLER_NAME.'/edit')){ ?><th>清理</th><?php } ?>
            </tr>
        </thead>
        <tbody>

          <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><tr>
		   <th width="30" height="30"></th>
		   <td><?php echo ($v["id"]); ?></td>
		   <td><img width="100px" height="100px" src="/123123/Uploads/Public/<?php echo ($v["img"]); ?>"> </td>
          
           <td><?php echo ($v["name"]); ?></td>
           <td><?php echo ($v["link"]); ?></td>
            
		   
		   
           
          
		  
		  <?php if(display(CONTROLLER_NAME.'/lock')){ ?><td><a href="/123123/index.php?s=/Home/Picture/lock/id/<?php echo ($v['id']); ?>/navTabId/<?php echo CONTROLLER_NAME;?>" data-toggle="doajax" data-confirm-msg="确定要操作吗？"><?php if($v["status"] == 1 ): ?><img src="/123123/Public/images/ok.gif" border="0"/><?php else: ?><img src="/123123/Public/images/locked.gif" border="0"/><?php endif; ?></a></td><?php } ?>
		   <?php if(display(CONTROLLER_NAME.'/edit')){ ?><td> <a href="/123123/index.php?s=/Home/Picture/edit/id/<?php echo ($v['id']); ?>/navTabId/<?php echo CONTROLLER_NAME;?>"   class="btn btn-green btn-sm" data-toggle="dialog" data-width="600" data-height="450" data-id="dialog-mask" data-mask="true" >编辑</a></td><?php } ?>

        <?php if(display(CONTROLLER_NAME.'/del')){ ?><td><span style="float:left;" ><a href="/123123/index.php?s=/Home/Picture/del/id/<?php echo ($v["id"]); ?>/navTabId/<?php echo CONTROLLER_NAME;?>" class="btn btn-red" data-toggle="doajax" data-confirm-msg="确定要清理<?php echo ($v["id"]); ?>吗？" data-icon="remove">清理</a></span></td> <?php } ?>
         </tr><?php endforeach; endif; else: echo "" ;endif; ?>
        </tbody>
    </table>
</div>
<div class="bjui-pageFooter">
        <div class="pages">
            <span>共 <?php echo ($totalCount); ?> 条  每页 <?php echo ($numPerPage); ?> 条</span>
        </div>
	    <div class="pagination-box" data-toggle="pagination" data-total="<?php echo ($totalCount); ?>" data-page-size="<?php echo ($numPerPage); ?>" data-page-current="<?php echo ($currentPage); ?>">
        </div>
</div>