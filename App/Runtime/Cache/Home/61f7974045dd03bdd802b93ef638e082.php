<?php if (!defined('THINK_PATH')) exit();?><div class="bjui-pageHeader">
<form id="pagerForm" data-toggle="ajaxsearch" action="/weiling/index.php?s=/Home/Fxchanpin" method="get">
	<input type="hidden" name="pageSize" value="<?php echo ($numPerPage); ?>">
    <input type="hidden" name="pageCurrent" value="<?php echo ((isset($_REQUEST['pageNum']) && ($_REQUEST['pageNum'] !== ""))?($_REQUEST['pageNum']):1); ?>">
        <div class="bjui-searchBar">
			<label>时间：</label><input type='text' data-toggle='datepicker' value='<?php echo ($_REQUEST['time1']); ?>' name='time1' class='form-control' size='12' />-<input type='text' data-toggle='datepicker' value='<?php echo ($_REQUEST['time2']); ?>' name='time2' class='form-control' size='12' />&nbsp;<label>产品分类：</label><select name='fenlei' data-toggle='selectpicker'><option value=''>全部</option><?php if(is_array($fenleilist)): foreach($fenleilist as $key=>$v): ?><option value='<?php echo ($v["fenlei"]); ?>'  <?php if($v["fenlei"] == $_REQUEST['fenlei']): ?>selected<?php else: echo ($_REQUEST['fenlei']); endif; ?> ><?php echo ($v["fenlei"]); ?></option><?php endforeach; endif; ?></select>&nbsp;
             <button type="submit"  class="btn-default" data-icon="search">查询</button>
             <a class="btn btn-orange" href="javascript:;" onclick="$(this).navtab('reloadForm', true);" data-icon="undo">清空查询</a>
		</div> 
</form>
    
</div>
<div class="bjui-pageContent tableContent" style="padding:8px;">
    <!--//--> 
                   <div class="col-md-12">
                    <div class="panel panel-default">
                          <div class="panel-heading"><h3 class="panel-title"><i class="fa fa-leaf"></i> 入库增长趋势 </h3></div>
                            <div style="min-height:185px">
							<img src="<?php echo U('fxchanpin/rukus',array('keys'=>$_REQUEST['keys'],'time1'=>$_REQUEST['time1'],'time2'=>$_REQUEST['time2'],'fenlei'=>$_REQUEST['fenlei']));?>">
						 </div>
                        </div>
                      </div>
                    <!--//-->  
					<div class="col-md-12">
                    <div class="panel panel-default">
                          <div class="panel-heading"><h3 class="panel-title"><i class="fa fa-pencil-square-o"></i> 出库增长趋势 </h3></div>
                            <div style="min-height:185px">
							<img src="<?php echo U('fxchanpin/chukus',array('keys'=>$_REQUEST['keys'],'time1'=>$_REQUEST['time1'],'time2'=>$_REQUEST['time2'],'fenlei'=>$_REQUEST['fenlei']));?>">
						 </div>
                        </div>
                      </div>
                  <!--//-->					  
</div>
<div class="bjui-pageFooter">
    <ul>
       <li><button type="button" class="btn-close" data-icon="close">关闭</button></li>
    </ul>
</div>