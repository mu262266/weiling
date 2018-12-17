<?php if (!defined('THINK_PATH')) exit();?><div class="bjui-pageHeader">
<form id="pagerForm" data-toggle="ajaxsearch" action="/weiling/index.php?s=/Home/User" method="post">
	
	<input type="hidden" name="pageSize" value="<?php echo ($numPerPage); ?>">
    <input type="hidden" name="pageCurrent" value="<?php echo ((isset($_REQUEST['pageNum']) && ($_REQUEST['pageNum'] !== ""))?($_REQUEST['pageNum']):1); ?>">
	 
        <div class="bjui-searchBar">
            <label>关键词：</label><input type="text" value="<?php echo ($_REQUEST['keys']); ?>" name="keys" class="form-control" size="15" />
			<label>部门:</label>
            <select name="depname" data-toggle="selectpicker">
			<option value="">全部</option>
			    <?php if(is_array($dlist)): foreach($dlist as $key=>$v): ?><option value="<?php echo ($v["depname"]); ?>"  <?php if($v["depname"] == $_REQUEST['depname'] ): ?>selected<?php else: echo ($_REQUEST['depname']); endif; ?> ><?php echo ($v["depname"]); ?></option><?php endforeach; endif; ?>
            </select>&nbsp;
			<label>职位:</label>
            <select name="posname" data-toggle="selectpicker">
			<option value="">全部</option>
			    <?php if(is_array($plist)): foreach($plist as $key=>$v): ?><option value="<?php echo ($v["posname"]); ?>"  <?php if($v["posname"] == $_REQUEST['posname'] ): ?>selected<?php else: echo ($_REQUEST['posname']); endif; ?> ><?php echo ($v["posname"]); ?></option><?php endforeach; endif; ?>
            </select>&nbsp;
             <button type="submit"  class="btn-default" data-icon="search">查询</button>
              <a class="btn btn-orange" href="javascript:;" onclick="$(this).navtab('reloadForm', true);" data-icon="undo">清空查询</a>
			  <?php if(display(CONTROLLER_NAME.'/del')){ ?><span style="float:right;" ><a href="/weiling/index.php?s=/Home/User/del/navTabId/<?php echo CONTROLLER_NAME;?>" class="btn btn-red" data-toggle="doajax" data-confirm-msg="确定要清理吗？" data-icon="remove">清理</a></span><?php } ?>
			  <?php if(display(CONTROLLER_NAME.'/add')){ ?><span style="float:right;margin-right:5px;"><a href="/weiling/index.php?s=/Home/User/add/navTabId/<?php echo CONTROLLER_NAME;?>" class="btn btn-green" data-toggle="dialog" data-width="600" data-height="450" data-id="dialog-mask" data-mask="true" data-icon="plus">新增</a></span><?php } ?>
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
            <th>真实姓名</th>
		    <th>所在部门</th>
	    	<th>担任职位</th>
		    <th>固定电话</th>
            <th>移动电话</th>
            <th>电子邮箱</th>
			<th>QQ</th>
			<?php if(display(CONTROLLER_NAME.'/editrule')){ ?><th>权限</th><?php } ?>
            <th data-order-direction="desc" data-order-field="logintime">登陆时间</th>
		    <th>登陆IP</th>
		    <th data-order-direction="desc" data-order-field="logins">登陆次数</th>
		    <?php if(display(CONTROLLER_NAME.'/lock')){ ?><th>状态</th><?php } ?>
		    <?php if(display(CONTROLLER_NAME.'/edit')){ ?><th>编辑</th><?php } ?>
            </tr>
        </thead>
        <tbody>

          <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><tr>
		   <td></td>
		   <td><?php echo ($v["id"]); ?></td>
           <td><?php echo ($v["username"]); ?></td>
           <td><?php echo ($v["truename"]); ?></td>
		   <td><?php echo ($v["depname"]); ?> </td>
		   <td><?php echo ($v["posname"]); ?></td>
		   <td><?php echo ($v["tel"]); ?></td>
           <td><?php echo ($v["phone"]); ?></td>
           <td><?php echo ($v["email"]); ?></td>
		   <td><?php echo ($v["qq"]); ?></td>
		   <?php if(display(CONTROLLER_NAME.'/editrule')){ ?><td><a href="<?php echo U('editrule',array('id'=>$v['id'],depname=>$v['depname'],'posname'=>$v['posname'],'navTabId'=>CONTROLLER_NAME));?>" data-toggle="doajax" data-confirm-msg="确定要操作吗？"><?php M('auth_group_access')->where(array("group_id"=>0))->delete();if (M('auth_group_access')->where(array("uid"=>$v['id']))->count() > 0){echo "有";}else{echo "无";} ?></a></td><?php } ?>
           <td><?php echo ($v["logintime"]); ?></td>
		   <td><?php echo ($v["loginip"]); ?></td>
		   <td><?php echo ($v["logins"]); ?></td>
		   <?php if(display(CONTROLLER_NAME.'/lock')){ ?><td><a href="/weiling/index.php?s=/Home/User/lock/id/<?php echo ($v['id']); ?>/navTabId/<?php echo CONTROLLER_NAME;?>" data-toggle="doajax" data-confirm-msg="确定要操作吗？"><?php if($v["status"] == 1 ): ?><img src="/weiling/Public/images/ok.gif" border="0"/><?php else: ?><img src="/weiling/Public/images/locked.gif" border="0"/><?php endif; ?></a></td><?php } ?>
		   <?php if(display(CONTROLLER_NAME.'/edit')){ ?><td> <a href="/weiling/index.php?s=/Home/User/edit/id/<?php echo ($v['id']); ?>/navTabId/<?php echo CONTROLLER_NAME;?>"   class="btn btn-green btn-sm" data-toggle="dialog" data-width="600" data-height="450" data-id="dialog-mask" data-mask="true" >编辑</a></td><?php } ?>
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