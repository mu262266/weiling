<?php if (!defined('THINK_PATH')) exit();?><div class="bjui-pageHeader">
<form id="pagerForm" data-toggle="ajaxsearch" action="/123123/index.php?s=/Home/Fxhetong" method="get">
	
	<input type="hidden" name="pageSize" value="<?php echo ($numPerPage); ?>">
    <input type="hidden" name="pageCurrent" value="<?php echo ((isset($_REQUEST['pageNum']) && ($_REQUEST['pageNum'] !== ""))?($_REQUEST['pageNum']):1); ?>">
	 
        <div class="bjui-searchBar">
            <label>关键词：</label><input type="text" value="<?php echo ($_REQUEST['keys']); ?>" name="keys" class="form-control" size="12" />
				<label>添加时间：</label><input type='text' data-toggle='datepicker' value='<?php echo ($_REQUEST['time1']); ?>' name='time1' class='form-control' size='12' />-<input type='text' data-toggle='datepicker' value='<?php echo ($_REQUEST['time2']); ?>' name='time2' class='form-control' size='12' />&nbsp;<label>合同类型：</label><select name='type' data-toggle='selectpicker'><option value=''>全部</option><?php if(is_array($typelist)): foreach($typelist as $key=>$v): ?><option value='<?php echo ($v["type"]); ?>'  <?php if($v["type"] == $_REQUEST['type']): ?>selected<?php else: echo ($_REQUEST['type']); endif; ?> ><?php echo ($v["type"]); ?></option><?php endforeach; endif; ?></select>&nbsp;<label>业务员：</label><select name='jingban' data-toggle='selectpicker'><option value=''>全部</option><?php if(is_array($jingbanlist)): foreach($jingbanlist as $key=>$v): ?><option value='<?php echo ($v["jingban"]); ?>'  <?php if($v["jingban"] == $_REQUEST['jingban']): ?>selected<?php else: echo ($_REQUEST['jingban']); endif; ?> ><?php echo ($v["jingban"]); ?></option><?php endforeach; endif; ?></select>&nbsp;
             <button type="submit"  class="btn-default" data-icon="search">查询</button>
              <a class="btn btn-orange" href="javascript:;" onclick="$(this).navtab('reloadForm', true);" data-icon="undo">清空查询</a>
		</div> 
</form>
    
</div>
<div class="bjui-pageContent tableContent" style="padding:8px;">
    <!--//--> 
                   <div class="col-md-12">
                    <div class="panel panel-default">
                          <div class="panel-heading"><h3 class="panel-title"><i class="fa fa-leaf"></i>  增长趋势 </h3></div>
                            <div style="min-height:185px">
							<img src="<?php echo U('fxhetong/qushi',array('keys'=>$_REQUEST['keys'],'time1'=>$_REQUEST['time1'],'time2'=>$_REQUEST['time2'],'type'=>$_REQUEST['type'],'jingban'=>$_REQUEST['jingban']));?>">
							<Br/>
							<img src="<?php echo U('fxhetong/qushijin',array('keys'=>$_REQUEST['keys'],'time1'=>$_REQUEST['time1'],'time2'=>$_REQUEST['time2'],'type'=>$_REQUEST['type'],'jingban'=>$_REQUEST['jingban']));?>">
							<Br/>
							<img src="<?php echo U('fxhetong/qushishou',array('keys'=>$_REQUEST['keys'],'time1'=>$_REQUEST['time1'],'time2'=>$_REQUEST['time2'],'type'=>$_REQUEST['type'],'jingban'=>$_REQUEST['jingban']));?>">
							<Br/>
							<img src="<?php echo U('fxhetong/qushiwei',array('keys'=>$_REQUEST['keys'],'time1'=>$_REQUEST['time1'],'time2'=>$_REQUEST['time2'],'type'=>$_REQUEST['type'],'jingban'=>$_REQUEST['jingban']));?>">
						    <Br/>
							<img src="<?php echo U('fxhetong/qushipiao',array('keys'=>$_REQUEST['keys'],'time1'=>$_REQUEST['time1'],'time2'=>$_REQUEST['time2'],'type'=>$_REQUEST['type'],'jingban'=>$_REQUEST['jingban']));?>">
							<Br/>
							<img src="<?php echo U('fxhetong/daoqi',array('keys'=>$_REQUEST['keys'],'time1'=>$_REQUEST['time1'],'time2'=>$_REQUEST['time2'],'type'=>$_REQUEST['type'],'jingban'=>$_REQUEST['jingban']));?>">
						 </div>
                        </div>
                      </div>
                    <!--//-->  
					  <div class="col-md-6">
                      <div class="panel panel-default">
                          <div class="panel-heading"><h3 class="panel-title"><i class="fa fa-pencil-square-o"></i>  合同类型 </h3></div>
                            <div style="min-height:185px">
							<img src="<?php echo U('fxhetong/type',array('keys'=>$_REQUEST['keys'],'time1'=>$_REQUEST['time1'],'time2'=>$_REQUEST['time2'],'type'=>$_REQUEST['type'],'jingban'=>$_REQUEST['jingban']));?>">
						  </div>
                        </div>
                      </div>
                      <!--//--> 
                      <div class="col-md-6">
                        <div class="panel panel-default">
                          <div class="panel-heading"><h3 class="panel-title"><i class="fa fa-user-md"></i>  业务员分析 </h3></div>
                            <div style="min-height:185px">
							<img src="<?php echo U('fxhetong/jingban',array('keys'=>$_REQUEST['keys'],'time1'=>$_REQUEST['time1'],'time2'=>$_REQUEST['time2'],'type'=>$_REQUEST['type'],'jingban'=>$_REQUEST['jingban']));?>">
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