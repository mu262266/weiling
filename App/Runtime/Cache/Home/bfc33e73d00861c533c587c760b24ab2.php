<?php if (!defined('THINK_PATH')) exit();?>
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
<?php if(display(CONTROLLER_NAME.'/view')){ ?><td><a href="/weiling/index.php?s=/Home/Cust/view/id/<?php echo ($v['id']); ?>/navTabId/<?php echo CONTROLLER_NAME;?>"  data-toggle="dialog" data-width="900" data-height="500" data-id="dialog-mask" data-mask="true" >详细</a></td><?php } ?>
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