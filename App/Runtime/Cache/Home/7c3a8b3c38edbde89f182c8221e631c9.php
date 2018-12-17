<?php if (!defined('THINK_PATH')) exit();?><div class="bjui-pageHeader">
<form id="pagerForm" data-toggle="ajaxsearch" action="/weiling/index.php?s=/Home/Medicine" method="post">

	<input type="hidden" name="pageSize" value="<?php echo ($numPerPage); ?>">
    <input type="hidden" name="pageCurrent" value="<?php echo ((isset($_REQUEST['pageNum']) && ($_REQUEST['pageNum'] !== ""))?($_REQUEST['pageNum']):1); ?>">

        <div class="bjui-searchBar">
            <label>关键词：</label><input type="text" value="<?php echo ($_REQUEST['keys']); ?>" name="keys" class="form-control" size="15" />

             <button type="submit"  class="btn-default" data-icon="search">查询</button>
              <a class="btn btn-orange" href="javascript:;" onclick="$(this).navtab('reloadForm', true);" data-icon="undo">清空查询</a>

        <?php if(display(CONTROLLER_NAME.'/inxls')){ ?><span style="float:right;margin-right:5px;"><a href="/weiling/index.php?s=/Home/Medicine/inxls" class="btn btn-blue" data-toggle="doexport" data-confirm-msg="确定要导入吗？" data-icon="arrow-up">导入</a></span><?php } ?>

          <?php if(display(CONTROLLER_NAME.'/load')){ ?><span style="float:right;margin-right:5px;"><a href="/weiling/index.php?s=/Home/Medicine/load/navTabId/<?php echo CONTROLLER_NAME;?>" class="btn btn-red" data-toggle="dialog" data-width="400" data-height="200" data-id="dialog-mask" data-mask="true" data-icon="arrow-up">上传</a></span><?php } ?>

			  <?php if(display(CONTROLLER_NAME.'/add')){ ?><span style="float:right;margin-right:5px;"><a href="/weiling/index.php?s=/Home/Medicine/add/navTabId/<?php echo CONTROLLER_NAME;?>" class="btn btn-green"  <?php if(session('uid')==1){ ?>  style="display:none;" <?php } ?> data-toggle="dialog" data-width="600" data-height="450" data-id="dialog-mask" data-mask="true" data-icon="plus">新增</a></span><?php } ?>
		</div>
</form>

</div>
<div class="bjui-pageContent tableContent">
     <table data-toggle="tablefixed" data-width="100%" data-layout-h="0" data-nowrap="true">
        <thead>
            <tr>
            <th width="30" height="30"></th>
            <th>编号</th>
			<th>药品名称</th>
       <th>药品图片</th>
           <!--  <th>不良反应</th> -->
            <th>规格型号</th>
            <th>药品分类</th>
		   <!--  <th>剂型</th>
	    	<th>单位</th>
	    	<th>主要成分</th>
		    <th>用法用量</th>
        <!-- <th>贮存方式</th>
        <th>批准文号</th>
        <th>生产日期</th> -->
        <th>有效期限</th>
       <!--  <th>有效期至</th>
        <th>生产企业</th>
        <th>功能主治</th>-->
         <th data-order-direction='desc' data-order-field='num'>库存</th>



			      <?php if(display(CONTROLLER_NAME.'/view')){ ?><th width="40">详细</th><?php } ?>
            <?php if(display(CONTROLLER_NAME.'/edit')){ ?><th <?php if(session('uid')==1){ ?>style="display:none;"<?php } ?>>编辑</th><?php } ?>
            <th <?php if(session('uid')==1){ ?>style="display:none;"<?php } ?>>删除</th>
            </tr>
        </thead>
        <tbody>

          <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><tr>
		   <td></td>
		   <td><?php echo ($v["id"]); ?></td>
           <td><?php echo ($v["name"]); ?></td>
            <td><img width="100px" height="100px" src="/weiling/Uploads/Public/<?php echo ($v["img"]); ?>"> </td>
            <td><?php echo ($v["format"]); ?></td>
           <td><?php echo ($v["typename"]); ?></td>
	<!--	        <td><?php echo ($v["use"]); ?></td>-->
		   <td><?php echo ($v["upto"]); ?></td>

              <!--   <td><?php echo (msubstr($v["cure"],0,20)); ?></td>-->
        <td><?php echo (msubstr($v["num"],0,20)); ?></td>

       <?php if(display(CONTROLLER_NAME.'/view')){ ?><td><a href="/weiling/index.php?s=/Home/Medicine/view/id/<?php echo ($v['id']); ?>/navTabId/<?php echo CONTROLLER_NAME;?>"  data-toggle="dialog" data-width="900" data-height="500" data-id="dialog-mask" data-mask="true" >详细</a></td><?php } ?>



              <?php if(display(CONTROLLER_NAME.'/edit')){ ?><td <?php if(session('uid')==1){ ?>style="display:none;"<?php } ?>> <a href="/weiling/index.php?s=/Home/Medicine/edit/id/<?php echo ($v['id']); ?>/navTabId/<?php echo CONTROLLER_NAME;?>"   class="btn btn-green btn-sm" data-toggle="dialog" data-width="600" data-height="450" data-id="dialog-mask" data-mask="true" >编辑</a></td><?php } ?>


       <td <?php if(session('uid')==1){ ?>style="display:none;"<?php } ?>><a href="/weiling/index.php?s=/Home/Medicine/delete/id/<?php echo ($v['id']); ?>/navTabId/<?php echo CONTROLLER_NAME;?>"   class="btn btn-red" data-toggle="doajax" data-confirm-msg="确定要清理吗？" data-icon="remove">删除</a></td>
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