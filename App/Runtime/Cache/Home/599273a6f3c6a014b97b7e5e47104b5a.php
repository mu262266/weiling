<?php if (!defined('THINK_PATH')) exit();?><div class="bjui-pageHeader">
<form id="pagerForm" data-toggle="ajaxsearch" action="/123123/index.php?s=/Home/Hetong" method="post">
	
	<input type="hidden" name="pageSize" value="<?php echo ($numPerPage); ?>">
    <input type="hidden" name="pageCurrent" value="<?php echo ((isset($_REQUEST['pageNum']) && ($_REQUEST['pageNum'] !== ""))?($_REQUEST['pageNum']):1); ?>">
	 
        <div class="bjui-searchBar">
            <label>关键词：</label><input type="text" value="<?php echo ($_REQUEST['keys']); ?>" name="keys" class="form-control" size="12" />
				<label>添加时间：</label><input type='text' data-toggle='datepicker' value='<?php echo ($_REQUEST['time1']); ?>' name='time1' class='form-control' size='12' />-<input type='text' data-toggle='datepicker' value='<?php echo ($_REQUEST['time2']); ?>' name='time2' class='form-control' size='12' />&nbsp;<label>合同类型：</label><select name='type' data-toggle='selectpicker'><option value=''>全部</option><?php if(is_array($typelist)): foreach($typelist as $key=>$v): ?><option value='<?php echo ($v["type"]); ?>'  <?php if($v["type"] == $_REQUEST['type']): ?>selected<?php else: echo ($_REQUEST['type']); endif; ?> ><?php echo ($v["type"]); ?></option><?php endforeach; endif; ?></select>&nbsp;<label>业务员：</label><select name='jingban' data-toggle='selectpicker'><option value=''>全部</option><?php if(is_array($jingbanlist)): foreach($jingbanlist as $key=>$v): ?><option value='<?php echo ($v["jingban"]); ?>'  <?php if($v["jingban"] == $_REQUEST['jingban']): ?>selected<?php else: echo ($_REQUEST['jingban']); endif; ?> ><?php echo ($v["jingban"]); ?></option><?php endforeach; endif; ?></select>&nbsp;
             <button type="submit"  class="btn-default" data-icon="search">查询</button>
              <a class="btn btn-orange" href="javascript:;" onclick="$(this).navtab('reloadForm', true);" data-icon="undo">清空查询</a>
			  <?php if(display(CONTROLLER_NAME.'/del')){ ?><span style="float:right;" ><a href="/123123/index.php?s=/Home/Hetong/del/navTabId/<?php echo CONTROLLER_NAME;?>" class="btn btn-red" data-toggle="doajax" data-confirm-msg="确定要清理吗？" data-icon="remove">清理</a></span> <?php } ?>
			  <?php if(display(CONTROLLER_NAME.'/outxls')){ ?><span style="float:right;margin-right:5px;"><a href="/123123/index.php?s=/Home/Hetong/outxls" class="btn btn-blue" data-toggle="doexport" data-confirm-msg="确定要导出吗？" data-icon="arrow-up">导出</a></span><?php } ?>
			  <?php if(display(CONTROLLER_NAME.'/add')){ ?><span style="float:right;margin-right:5px;"><a href="/123123/index.php?s=/Home/Hetong/add/navTabId/<?php echo CONTROLLER_NAME;?>" class="btn btn-green" data-toggle="dialog" data-width="900" data-height="500" data-id="dialog-mask" data-mask="true" data-icon="plus">新增</a></span><?php } ?>
		</div> 
</form>
    
</div>
<div class="bjui-pageContent tableContent">
     <table data-toggle="tablefixed" data-width="100%" data-layout-h="0" data-nowrap="true">
        <thead>
            <tr>
            <th width="10" height="30"></th>
            <th data-order-direction='desc' data-order-field='id'>ID</th>
<th data-order-direction='desc' data-order-field='type'>合同类型</th>
<th data-order-direction='desc' data-order-field='bianhao'>合同编号</th>
<th>合同名称</th>
<th>客户名称</th>
<th data-order-direction='desc' data-order-field='jine'>合同金额</th>
<th data-order-direction='desc' data-order-field='yishou'>已收款</th>
<th data-order-direction='desc' data-order-field='weishou'>未收款</th>
<th data-order-direction='desc' data-order-field='kaipiao'>已开票</th>
<th data-order-direction='desc' data-order-field='yifu'>已付款</th>
<th>业务员</th>
<th data-order-direction='desc' data-order-field='jztime'>截至日期</th>
<?php if(display(CONTROLLER_NAME.'/shenhe')){ ?><th>审核状态</th><?php } ?>
<th>添加人</th>
<th data-order-direction='desc' data-order-field='addtime'>添加时间</th>
			<?php if(display(CONTROLLER_NAME.'/view')){ ?><th width="40">详细</th><?php } ?>
		    <?php if(display(CONTROLLER_NAME.'/lock')){ ?><th>状态</th><?php } ?>
		    <?php if(display(CONTROLLER_NAME.'/edit')){ ?><th>编辑</th><?php } ?>
            </tr>
        </thead>
        <tbody>

          <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><tr>
		   <td></td>
		   <td><?php echo ($v["id"]); ?></td>
<td><?php echo ($v["type"]); ?></td>
<td><?php echo ($v["bianhao"]); ?></td>
<td><?php echo (msubstr($v["mingcheng"],0,20)); ?></td>
<td><?php echo (msubstr($v["title"],0,20)); ?></td>
<td><?php echo ($v["jine"]); ?></td>
<td><?php echo ($v["yishou"]); ?></td>
<td><?php echo ($v["weishou"]); ?></td>
<td><?php echo ($v["kaipiao"]); ?></td>
<td><?php echo ($v["yifu"]); ?></td>
<td><?php echo (msubstr($v["jingban"],0,20)); ?></td>
<td><?php echo (substr($v["jztime"],0,10)); ?></td>
<?php if(display(CONTROLLER_NAME.'/shenhe')){ ?><td>
<a href="/123123/index.php?s=/Home/Hetong/shenhe/id/<?php echo ($v['id']); ?>/navTabId/<?php echo CONTROLLER_NAME;?>"   class="btn btn-green btn-sm" data-toggle="dialog" data-width="900" data-height="500" data-id="dialog-mask" data-mask="true" ><?php echo ($v["shenhe"]); ?></a>
</td><?php } ?>
<td><?php echo (msubstr($v["uname"],0,20)); ?></td>
<td><?php echo (substr($v["addtime"],0,10)); ?></td>

		   <?php if(display(CONTROLLER_NAME.'/view')){ ?><td><a href="/123123/index.php?s=/Home/Hetong/view/id/<?php echo ($v['id']); ?>/navTabId/<?php echo CONTROLLER_NAME;?>"  data-toggle="dialog" data-width="900" data-height="500" data-id="dialog-mask" data-mask="true" >详细</a></td><?php } ?>
		   <?php if(display(CONTROLLER_NAME.'/lock')){ ?><td><a href="/123123/index.php?s=/Home/Hetong/lock/id/<?php echo ($v['id']); ?>/navTabId/<?php echo CONTROLLER_NAME;?>" data-toggle="doajax" data-confirm-msg="确定要操作吗？"><?php if($v["status"] == 1 ): ?><img src="/123123/Public/images/ok.gif" border="0"/><?php else: ?><img src="/123123/Public/images/locked.gif" border="0"/><?php endif; ?></a></td><?php } ?>
		   <?php if(display(CONTROLLER_NAME.'/edit')){ ?><td>
		   <?php if($v['shenhe'] == '审核通过'): ?><a href="/123123/index.php?s=/Home/Hetong/dayin/id/<?php echo ($v['id']); ?>/navTabId/<?php echo CONTROLLER_NAME;?>" class="btn btn-green btn-sm"  target="_blank" >打印</a>
		   <?php else: ?>
		   <a href="/123123/index.php?s=/Home/Hetong/edit/id/<?php echo ($v['id']); ?>/navTabId/<?php echo CONTROLLER_NAME;?>"   class="btn btn-green btn-sm" data-toggle="dialog" data-width="900" data-height="500" data-id="dialog-mask" data-mask="true" ><?php echo ($v["shenhe"]); ?>/编辑</a><?php endif; ?></td><?php } ?>
		   </td>
         </tr><?php endforeach; endif; else: echo "" ;endif; ?>
        </tbody>
    </table>
</div>
<div class="bjui-pageFooter">
<table  width="100%" ><Tr><Td height="30" align="right">合计：合同金额<?php echo ($jine); ?> 已收款：<?php echo ($yishou); ?> 未收款：<?php echo ($weishou); ?> 已开票：<?php echo ($kaipiao); ?> 已付款：<?php echo ($yifu); ?></td></tr></table>
        <div class="pages">
            <span>共 <?php echo ($totalCount); ?> 条  每页 <?php echo ($numPerPage); ?> 条</span>
        </div>
	    <div class="pagination-box" data-toggle="pagination" data-total="<?php echo ($totalCount); ?>" data-page-size="<?php echo ($numPerPage); ?>" data-page-current="<?php echo ($currentPage); ?>">
        </div>
</div>