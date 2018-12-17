<?php if (!defined('THINK_PATH')) exit();?><div class="bjui-pageHeader">
<form id="pagerForm" data-toggle="ajaxsearch" action="/weiling/index.php?s=/Home/Fxcust" method="get">
	
	<input type="hidden" name="pageSize" value="<?php echo ($numPerPage); ?>">
    <input type="hidden" name="pageCurrent" value="<?php echo ((isset($_REQUEST['pageNum']) && ($_REQUEST['pageNum'] !== ""))?($_REQUEST['pageNum']):1); ?>">
	 
        <div class="bjui-searchBar">
            <label>关键词：</label><input type="text" value="<?php echo ($_REQUEST['keys']); ?>" name="keys" class="form-control" size="12" />
			 <label>添加时间：</label><input type='text' data-toggle='datepicker' value='<?php echo ($_REQUEST['time1']); ?>' name='time1' class='form-control' size='12' />-<input type='text' data-toggle='datepicker' value='<?php echo ($_REQUEST['time2']); ?>' name='time2' class='form-control' size='12' />&nbsp;<label>需求类型：</label><select name='xuqiu' data-toggle='selectpicker'><option value=''>全部</option><?php if(is_array($xuqiulist)): foreach($xuqiulist as $key=>$v): ?><option value='<?php echo ($v["xuqiu"]); ?>'  <?php if($v["xuqiu"] == $_REQUEST['xuqiu']): ?>selected<?php else: echo ($_REQUEST['xuqiu']); endif; ?> ><?php echo ($v["xuqiu"]); ?></option><?php endforeach; endif; ?></select>&nbsp;<label>来源：</label><select name='laiyuan' data-toggle='selectpicker'><option value=''>全部</option><?php if(is_array($laiyuanlist)): foreach($laiyuanlist as $key=>$v): ?><option value='<?php echo ($v["laiyuan"]); ?>'  <?php if($v["laiyuan"] == $_REQUEST['laiyuan']): ?>selected<?php else: echo ($_REQUEST['laiyuan']); endif; ?> ><?php echo ($v["laiyuan"]); ?></option><?php endforeach; endif; ?></select>&nbsp;<label>进展：</label><select name='jinzhan' data-toggle='selectpicker'><option value=''>全部</option><?php if(is_array($jinzhanlist)): foreach($jinzhanlist as $key=>$v): ?><option value='<?php echo ($v["jinzhan"]); ?>'  <?php if($v["jinzhan"] == $_REQUEST['jinzhan']): ?>selected<?php else: echo ($_REQUEST['jinzhan']); endif; ?> ><?php echo ($v["jinzhan"]); ?></option><?php endforeach; endif; ?></select>&nbsp;
             <button type="submit"  class="btn-default" data-icon="search">查询</button>
              <a class="btn btn-orange" href="javascript:;" onclick="$(this).navtab('reloadForm', true);" data-icon="undo">清空查询</a>
		</div> 
</form>
    
</div>
<div class="bjui-pageContent tableContent" style="padding:8px;">
                   <!--//--> 
                   <div class="col-md-12">
                    <div class="panel panel-default">
                          <div class="panel-heading"><h3 class="panel-title"><i class="fa fa-leaf"></i>  客户增长趋势 </h3></div>
                            <div style="min-height:185px">
							<img src="<?php echo U('fxcust/qushi',array('keys'=>$_REQUEST['keys'],'time1'=>$_REQUEST['time1'],'time2'=>$_REQUEST['time2'],'xuqiu'=>$_REQUEST['xuqiu'],'laiyuan'=>$_REQUEST['laiyuan'],'jinzhan'=>$_REQUEST['jinzhan']));?>">
						  </div>
                        </div>
                      </div>
                    <!--//--> 
                    <div class="col-md-6">
                    <div class="panel panel-default">
                          <div class="panel-heading"><h3 class="panel-title"><i class="fa fa-volume-up"></i>  需求分析 </h3></div>
                            <div style="min-height:185px">
							<img src="<?php echo U('fxcust/xuqiu',array('keys'=>$_REQUEST['keys'],'time1'=>$_REQUEST['time1'],'time2'=>$_REQUEST['time2'],'xuqiu'=>$_REQUEST['xuqiu'],'laiyuan'=>$_REQUEST['laiyuan'],'jinzhan'=>$_REQUEST['jinzhan']));?>">
						  </div>
                        </div>
                      </div>
                      <!--//--> 
                      <div class="col-md-6">
                        <div class="panel panel-default">
                          <div class="panel-heading"><h3 class="panel-title"><i class="fa fa-phone-square"></i>  客户来源 </h3></div>
                            <div style="min-height:185px">
							<img src="<?php echo U('fxcust/laiyuan',array('keys'=>$_REQUEST['keys'],'time1'=>$_REQUEST['time1'],'time2'=>$_REQUEST['time2'],'xuqiu'=>$_REQUEST['xuqiu'],'laiyuan'=>$_REQUEST['laiyuan'],'jinzhan'=>$_REQUEST['jinzhan']));?>">
						  </div>
                        </div>
                      </div>
                      <!--//-->
					  <div class="col-md-6">
                      <div class="panel panel-default">
                          <div class="panel-heading"><h3 class="panel-title"><i class="fa fa-pencil-square-o"></i>  进展阶段 </h3></div>
                            <div style="min-height:185px">
							<img src="<?php echo U('fxcust/jinzhan',array('keys'=>$_REQUEST['keys'],'time1'=>$_REQUEST['time1'],'time2'=>$_REQUEST['time2'],'xuqiu'=>$_REQUEST['xuqiu'],'laiyuan'=>$_REQUEST['laiyuan'],'jinzhan'=>$_REQUEST['jinzhan']));?>">
						  </div>
                        </div>
                      </div>
                      <!--//--> 
                      <div class="col-md-6">
                        <div class="panel panel-default">
                          <div class="panel-heading"><h3 class="panel-title"><i class="fa fa-user-md"></i>  业务员分析 </h3></div>
                            <div style="min-height:185px">
							<img src="<?php echo U('fxcust/yewu',array('keys'=>$_REQUEST['keys'],'time1'=>$_REQUEST['time1'],'time2'=>$_REQUEST['time2'],'xuqiu'=>$_REQUEST['xuqiu'],'laiyuan'=>$_REQUEST['laiyuan'],'jinzhan'=>$_REQUEST['jinzhan']));?>">
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