<?php if (!defined('THINK_PATH')) exit();?><div class="bjui-pageHeader">
<form id="pagerForm" data-toggle="ajaxsearch" action="/123123/index.php?s=/Home/Cust" method="post">
	
	<input type="hidden" name="pageSize" value="<?php echo ($numPerPage); ?>">
    <input type="hidden" name="pageCurrent" value="<?php echo ((isset($_REQUEST['pageNum']) && ($_REQUEST['pageNum'] !== ""))?($_REQUEST['pageNum']):1); ?>">
	 
        <div class="bjui-searchBar">
            <label>关键词：</label><input type="text" value="<?php echo ($_REQUEST['keys']); ?>" name="keys" class="form-control" size="12" />
			 <label>添加时间：</label><input type='text' data-toggle='datepicker' value='<?php echo ($_REQUEST['time1']); ?>' name='time1' class='form-control' size='12' />-<input type='text' data-toggle='datepicker' value='<?php echo ($_REQUEST['time2']); ?>' name='time2' class='form-control' size='12' />&nbsp;<label>需求类型：</label><select name='xuqiu' data-toggle='selectpicker'><option value=''>全部</option><?php if(is_array($xuqiulist)): foreach($xuqiulist as $key=>$v): ?><option value='<?php echo ($v["xuqiu"]); ?>'  <?php if($v["xuqiu"] == $_REQUEST['xuqiu']): ?>selected<?php else: echo ($_REQUEST['xuqiu']); endif; ?> ><?php echo ($v["xuqiu"]); ?></option><?php endforeach; endif; ?></select>&nbsp;<label>来源：</label><select name='laiyuan' data-toggle='selectpicker'><option value=''>全部</option><?php if(is_array($laiyuanlist)): foreach($laiyuanlist as $key=>$v): ?><option value='<?php echo ($v["laiyuan"]); ?>'  <?php if($v["laiyuan"] == $_REQUEST['laiyuan']): ?>selected<?php else: echo ($_REQUEST['laiyuan']); endif; ?> ><?php echo ($v["laiyuan"]); ?></option><?php endforeach; endif; ?></select>&nbsp;<label>进展：</label><select name='jinzhan' data-toggle='selectpicker'><option value=''>全部</option><?php if(is_array($jinzhanlist)): foreach($jinzhanlist as $key=>$v): ?><option value='<?php echo ($v["jinzhan"]); ?>'  <?php if($v["jinzhan"] == $_REQUEST['jinzhan']): ?>selected<?php else: echo ($_REQUEST['jinzhan']); endif; ?> ><?php echo ($v["jinzhan"]); ?></option><?php endforeach; endif; ?></select>&nbsp;
             <button type="submit"  class="btn-default" data-icon="search">查询</button>
              <a class="btn btn-orange" href="javascript:;" onclick="$(this).navtab('reloadForm', true);" data-icon="undo">清空查询</a>
			  <?php if(display(CONTROLLER_NAME.'/del')){ ?><span style="float:right;" ><a href="/123123/index.php?s=/Home/Cust/del/navTabId/<?php echo CONTROLLER_NAME;?>" class="btn btn-red" data-toggle="doajax" data-confirm-msg="确定要清理吗？" data-icon="remove">清理</a></span> <?php } ?>
			  <?php if(display(CONTROLLER_NAME.'/outxls')){ ?><span style="float:right;margin-right:5px;"><a href="/123123/index.php?s=/Home/Cust/outxls" class="btn btn-blue" data-toggle="doexport" data-confirm-msg="确定要导出吗？" data-icon="arrow-up">导出</a></span><?php } ?>
			  <?php if(display(CONTROLLER_NAME.'/add')){ ?><span style="float:right;margin-right:5px;"><a href="/123123/index.php?s=/Home/Cust/add/navTabId/<?php echo CONTROLLER_NAME;?>" class="btn btn-green" data-toggle="dialog" data-width="900" data-height="500" data-id="dialog-mask" data-mask="true" data-icon="plus">新增</a></span><?php } ?>
		</div> 
</form>
    
</div>
<div class="bjui-pageContent tableContent">
     <table data-toggle="tablefixed" data-width="100%" data-layout-h="0" data-nowrap="true">
        <thead>
            <tr>
            <th width="10" height="30"></th>
            <th data-order-direction='desc' data-order-field='id'>ID</th>
<th data-order-direction='desc' data-order-field='xuqiu'>需求类型</th>
<th>客户名称</th>
<th>联系人</th>
<th>手机号码</th>
<th>联系地址</th>
<th>QQ</th>
<th>客户来源</th>
<th data-order-direction='desc' data-order-field='jinzhan'>进展</th>
<th data-order-direction='desc' data-order-field='xiaci'>下次联系</th>
<th>添加人</th>
<th data-order-direction='desc' data-order-field='addtime'>添加时间</th>
<th>操作</th>
			<?php if(display(CONTROLLER_NAME.'/view')){ ?><th width="40">详细</th><?php } ?>
		    <?php if(display(CONTROLLER_NAME.'/lock')){ ?><th>状态</th><?php } ?>
		    <?php if(display(CONTROLLER_NAME.'/edit')){ ?><th>编辑</th><?php } ?>
            </tr>
        </thead>
        <tbody>

          <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><tr>
		   <td></td>
		   <td><?php echo ($v["id"]); ?></td>
<td><?php echo ($v["xuqiu"]); ?></td>
<td><?php echo (msubstr($v["title"],0,20)); ?></td>
<td><?php echo (msubstr($v["name"],0,20)); ?></td>
<td><?php echo (msubstr($v["dianhua"],0,20)); ?></td>
<td><?php echo (msubstr($v["dizhi"],0,20)); ?></td>
<td><?php echo (msubstr($v["qq"],0,20)); ?></td>
<td><?php echo (msubstr($v["laiyuan"],0,20)); ?></td>
<td><?php echo ($v["jinzhan"]); ?></td>
<td><?php echo (substr($v["xiaci"],0,10)); ?></td>
<td><?php echo (msubstr($v["uname"],0,20)); ?></td>
<td><?php echo (substr($v["addtime"],0,10)); ?></td>
<td>
<a href="<?php echo U('Custcon/add',array('cid'=>$v['id'],'title'=>$v['title'],'navTabId'=>CONTROLLER_NAME));?>"  class="btn btn-green btn-sm" data-toggle="dialog" data-width="900" data-height="500" data-id="dialog-mask" data-mask="true">联系人</a>
<a href="<?php echo U('Custgd/add',array('cid'=>$v['id'],'title'=>$v['title'],'navTabId'=>CONTROLLER_NAME));?>"   class="btn btn-green btn-sm" data-toggle="dialog" data-width="900" data-height="500" data-id="dialog-mask" data-mask="true">进展</a>
</td>
		   <?php if(display(CONTROLLER_NAME.'/view')){ ?><td><a href="/123123/index.php?s=/Home/Cust/view/id/<?php echo ($v['id']); ?>/navTabId/<?php echo CONTROLLER_NAME;?>"  data-toggle="dialog" data-width="900" data-height="500" data-id="dialog-mask" data-mask="true" >详细</a></td><?php } ?>
		   <?php if(display(CONTROLLER_NAME.'/lock')){ ?><td><a href="/123123/index.php?s=/Home/Cust/lock/id/<?php echo ($v['id']); ?>/navTabId/<?php echo CONTROLLER_NAME;?>" data-toggle="doajax" data-confirm-msg="确定要操作吗？"><?php if($v["status"] == 1 ): ?><img src="/123123/Public/images/ok.gif" border="0"/><?php else: ?><img src="/123123/Public/images/locked.gif" border="0"/><?php endif; ?></a></td><?php } ?>
		   <?php if(display(CONTROLLER_NAME.'/edit')){ ?><td> <a href="/123123/index.php?s=/Home/Cust/edit/id/<?php echo ($v['id']); ?>/navTabId/<?php echo CONTROLLER_NAME;?>"   class="btn btn-green btn-sm" data-toggle="dialog" data-width="900" data-height="500" data-id="dialog-mask" data-mask="true" >编辑</a></td><?php } ?>
		   </td>
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