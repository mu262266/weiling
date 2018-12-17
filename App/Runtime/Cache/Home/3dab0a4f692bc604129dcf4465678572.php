<?php if (!defined('THINK_PATH')) exit();?><div class="bjui-pageHeader">
<form id="pagerForm" data-toggle="ajaxsearch" action="/weiling/index.php?s=/Home/Member" method="post">
	
	<input type="hidden" name="pageSize" value="<?php echo ($numPerPage); ?>">
    <input type="hidden" name="pageCurrent" value="<?php echo ((isset($_REQUEST['pageNum']) && ($_REQUEST['pageNum'] !== ""))?($_REQUEST['pageNum']):1); ?>">
	 
        <div class="bjui-searchBar">
            <label>关键词：</label><input type="text" value="<?php echo ($_REQUEST['keys']); ?>" name="keys" class="form-control" size="15" />
			
             <button type="submit"  class="btn-default" data-icon="search">查询</button>
              <a class="btn btn-orange" href="javascript:;" onclick="$(this).navtab('reloadForm', true);" data-icon="undo">清空查询</a>
			  
			  <?php if(display(CONTROLLER_NAME.'/add')){ ?><span style="float:right;margin-right:5px;"><a href="/weiling/index.php?s=/Home/Member/add/navTabId/<?php echo CONTROLLER_NAME;?>" class="btn btn-green" data-toggle="dialog" data-width="600" data-height="450" data-id="dialog-mask" data-mask="true" data-icon="plus">新增</a></span><?php } ?>
		</div> 
</form>
    
</div>
<div class="bjui-pageContent tableContent">
     <table data-toggle="tablefixed" data-width="100%" data-layout-h="0" data-nowrap="true">
        <thead>
            <tr>
            <th width="30" height="30"></th>
            <th>编号</th>
			<th>登陆账号</th>
            <th>姓名</th>
            <th>身份证</th>
            <th>电话</th>
		    <th>头像</th>
            <th>用户角色</th>
	    	
           
            
			
             <?php if(display(CONTROLLER_NAME.'/edit')){ ?><th>编辑</th><?php } ?>
             <?php if(display(CONTROLLER_NAME.'/edit')){ ?><th>清理</th><?php } ?>
            </tr>
        </thead>
        <tbody>

          <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><tr>
		   <td></td>
		   <td><?php echo ($v["id"]); ?></td>
           <td><?php echo ($v["user_account"]); ?></td>
           <td><?php echo ($v["real_name"]); ?></td>
            <td><?php echo ($v["idcard"]); ?></td>
           <td><?php echo ($v["telephone"]); ?></td>
		   <td><img width="100px" height="100px" src="/weiling/Uploads/Public/<?php echo ($v["headimg"]); ?>"> </td>
		   <?php if($v["type"] == 1): ?><td>村医</td>
        <?php else: ?>
        <td>专家</td><?php endif; ?>
		   
		   
           
          
		  
		  
		   <?php if(display(CONTROLLER_NAME.'/edit')){ ?><td> <a href="/weiling/index.php?s=/Home/Member/edit/id/<?php echo ($v['id']); ?>/navTabId/<?php echo CONTROLLER_NAME;?>"   class="btn btn-green btn-sm" data-toggle="dialog" data-width="600" data-height="450" data-id="dialog-mask" data-mask="true" >编辑</a></td><?php } ?>

        <?php if(display(CONTROLLER_NAME.'/del')){ ?><td><span style="float:left;" ><a href="/weiling/index.php?s=/Home/Member/del/id/<?php echo ($v["id"]); ?>/navTabId/<?php echo CONTROLLER_NAME;?>" class="btn btn-red" data-toggle="doajax" data-confirm-msg="确定要清理<?php echo ($v["id"]); ?>吗？" data-icon="remove">清理</a></span></td> <?php } ?>
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